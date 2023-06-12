import 'dart:math';

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/app/core/enums/traffic_section_type.dart';
import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/generated/assets/assets.gen.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/app/core/utils/format_util.dart';
import 'package:benchmark/src/data/helper/models/command_center/traffic/traffic_help_model.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/containers/divider_gradient_container.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
import 'package:benchmark/src/presentation/widgets/charts/area/area_chart.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TrafficCard extends StatefulWidget {
  const TrafficCard({
    super.key,
    this.width,
    this.model,
  });

  final double? width;

  final TrafficHelpModel? model;

  @override
  State<TrafficCard> createState() => _TrafficCardState();
}

class _TrafficCardState extends State<TrafficCard>
    with SingleTickerProviderStateMixin {
  final _numberFormat = FormatUtil.int;
  final _doubleFormat = FormatUtil.doublePrecTwo;

  late final AnimationController _controller;
  late final CurvedAnimation _animation;

  late final Tween<double> _advertasingValueTween;
  late final Tween<double> _advertasingPrevValueTween;
  late final Tween<double> _advertasingDiffTween;
  late final Tween<double> _sessionValueTween;
  late final Tween<double> _sessionPrevValueTween;
  late final Tween<double> _sessionDiffTween;

  late final Animation<double> _advertasingValueAnimation;
  late final Animation<double> _advertasingPrevValueAnimation;
  late final Animation<double> _advertasingDiffAnimation;
  late final Animation<double> _sessionValueAnimation;
  late final Animation<double> _sessionPrevValueAnimation;
  late final Animation<double> _sessionDiffAnimation;

  @override
  void initState() {
    super.initState();
    _init();
    _controller.forward();
  }

  @override
  void didUpdateWidget(covariant TrafficCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.model != widget.model) {
      _update();
    }
  }

  @override
  void dispose() {
    _animation.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommandCenterCard(
      minWidth: 246,
      width: widget.width,
      title: LocaleKeys.commandCenter_trafficHeader
          .tr(args: ['QuickBooks & Google Analytics:']),
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return _buildBody();
      },
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        _buildSection(
          section: TrafficSectionType.session,
          model: widget.model?.advertising,
          usePrefix: true,
          iconPath: Assets.icons.quickbooksLogo.path,
          title: LocaleKeys.commandCenter_advertisingAndPromotion.tr(),
          percentIconColor: AppColors.redC4C,
        ),
        const SizedBox(height: 15),
        const DividerGradientContainer(),
        const SizedBox(height: 15),
        _buildSection(
          section: TrafficSectionType.session,
          model: widget.model?.session,
          iconPath: Assets.icons.googleAnalyticsLogo.path,
          title: LocaleKeys.commandCenter_sessionTraffic.tr(),
          percentIconColor: AppColors.primaryColor,
        ),
      ],
    );
  }

  Widget _buildSection({
    required TrafficSectionType section,
    TrafficItemHelpModel? model,
    bool usePrefix = false,
    required String iconPath,
    required String title,
    Color? percentIconColor,
  }) {
    final value = _numberFormat.format(_getSectionValue(section));
    return Column(
      children: [
        _buildSectionFirstRow(
          iconPath: iconPath,
          title: title,
          value: usePrefix ? '\$$value' : value,
        ),
        const SizedBox(height: 10),
        _buildSectionSecondRow(
          section: section,
          model: model,
          percentIconColor: percentIconColor,
          usePrefix: usePrefix,
        ),
      ],
    );
  }

  Widget _buildSectionFirstRow({
    required String iconPath,
    required String title,
    required String value,
  }) {
    return Row(
      children: [
        _buildIcon(iconPath),
        const SizedBox(width: 10),
        Expanded(child: _buildSectionTitle(text: title)),
        const SizedBox(width: 10),
        _buildMainValue(text: value),
      ],
    );
  }

  Widget _buildIcon(
    String iconPath,
  ) {
    return Image.asset(
      iconPath,
      width: 25,
      height: 25,
    );
  }

  Widget _buildSectionTitle({
    required String text,
  }) {
    return TextOneLine(
      text,
      style: CommandCenterTextTheme.of(context)
          ?.headerMediumTextStyle
          ?.withFontWeight(FontWeight.w400)
          .withOpacity(0.75),
    );
  }

  Widget _buildMainValue({
    required String text,
  }) {
    return TextOneLine(
      text,
      style: CommandCenterTextTheme.of(context)
          ?.headerMediumTextStyle
          ?.withOpacity(0.75),
    );
  }

  Widget _buildSectionSecondRow({
    required TrafficSectionType section,
    TrafficItemHelpModel? model,
    bool usePrefix = false,
    Color? percentIconColor,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          flex: 2,
          child: _buildGraph(model),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: _buildSecondRowTrailing(
            section: section,
            usePrefix: usePrefix,
            iconColor: percentIconColor,
          ),
        )
      ],
    );
  }

  Widget _buildGraph(TrafficItemHelpModel? data) {
    return SizedBox(
      height: 50,
      child: AreaChart(
        values: data?.chartValues ?? [],
        maxExtent: data?.getChartMaxExtent(),
        isCommandCenter: true,
      ),
    );
  }

  Widget _buildSecondRowTrailing({
    required TrafficSectionType section,
    bool usePrefix = false,
    Color? iconColor,
  }) {
    final persent = _doubleFormat.format(_getSectionDiffValue(section));
    final prev = _numberFormat.format(_getSectionPrevValue(section));
    final prevValue = usePrefix ? '\$$prev' : prev;
    final prevTr = LocaleKeys.commandCenter_prev.tr();
    final prevResult = 'vs $prevValue ($prevTr)';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _buildPercentValue(
          text: '$persent%',
          iconColor: iconColor,
        ),
        const SizedBox(height: 5),
        _buildPrevValue(
          text: prevResult,
        ),
      ],
    );
  }

  Widget _buildPercentValue({
    required String text,
    Color? iconColor,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          style: CommandCenterTextTheme.of(context)
              ?.bodyMediumTextStyle
              ?.copyWith(height: 1)
              .withBoldFontWeight(),
        ),
        Transform.rotate(
          angle: -pi / 2,
          child: Icon(
            Icons.play_arrow,
            size: 20,
            color: iconColor,
          ),
        ),
      ],
    );
  }

  Widget _buildPrevValue({
    required String text,
  }) {
    return Text(
      text,
      maxLines: 2,
      style: CommandCenterTextTheme.of(context)
          ?.bodyMediumTextStyle
          ?.copyWith(height: 1)
          .withOpacity(0.5),
      textAlign: TextAlign.end,
      overflow: TextOverflow.ellipsis,
    );
  }

  void _init() {
    _controller = AnimationController(
      vsync: this,
      duration: CommonConstants.primaryAnimDuration,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    );
    _advertasingValueTween = Tween(
      begin: 0,
      end: _getValue(widget.model?.advertising?.value),
    );
    _advertasingPrevValueTween = Tween(
      begin: 0,
      end: _getValue(widget.model?.advertising?.prevValue),
    );
    _advertasingDiffTween = Tween(
      begin: 0,
      end: _getValue(widget.model?.advertising?.getPercent()),
    );
    _sessionValueTween = Tween(
      begin: 0,
      end: _getValue(widget.model?.session?.value),
    );
    _sessionPrevValueTween = Tween(
      begin: 0,
      end: _getValue(widget.model?.session?.prevValue),
    );
    _sessionDiffTween = Tween(
      begin: 0,
      end: _getValue(widget.model?.session?.getPercent()),
    );
    _advertasingValueAnimation = _advertasingValueTween.animate(_animation);
    _advertasingPrevValueAnimation =
        _advertasingPrevValueTween.animate(_animation);
    _advertasingDiffAnimation = _advertasingDiffTween.animate(_animation);
    _sessionValueAnimation = _sessionValueTween.animate(_animation);
    _sessionPrevValueAnimation = _sessionPrevValueTween.animate(_animation);
    _sessionDiffAnimation = _sessionDiffTween.animate(_animation);
  }

  void _update() {
    _advertasingValueTween.begin = _isAnimating(_advertasingValueAnimation)
        ? _advertasingValueAnimation.value
        : _advertasingValueTween.end;
    _advertasingPrevValueTween.begin =
        _isAnimating(_advertasingPrevValueAnimation)
            ? _advertasingPrevValueAnimation.value
            : _advertasingPrevValueTween.end;
    _advertasingDiffTween.begin = _isAnimating(_advertasingDiffAnimation)
        ? _advertasingDiffAnimation.value
        : _advertasingDiffTween.end;
    _sessionValueTween.begin = _isAnimating(_sessionValueAnimation)
        ? _sessionValueAnimation.value
        : _sessionValueTween.end;
    _sessionPrevValueTween.begin = _isAnimating(_sessionPrevValueAnimation)
        ? _sessionPrevValueAnimation.value
        : _sessionPrevValueTween.end;
    _sessionDiffTween.begin = _isAnimating(_sessionDiffAnimation)
        ? _sessionDiffAnimation.value
        : _sessionDiffTween.end;
    _controller.reset();

    _advertasingValueTween.end = _getValue(widget.model?.advertising?.value);
    _advertasingPrevValueTween.end =
        _getValue(widget.model?.advertising?.prevValue);
    _advertasingDiffTween.end =
        _getValue(widget.model?.advertising?.getPercent());
    _sessionValueTween.end = _getValue(widget.model?.session?.value);
    _sessionPrevValueTween.end = _getValue(widget.model?.session?.prevValue);
    _sessionDiffTween.end = _getValue(widget.model?.session?.getPercent());
    _controller.forward();
  }

  bool _isAnimating(Animation<double>? animation) {
    return animation?.status == AnimationStatus.forward;
  }

  double _getValue(num? value) {
    final result = value?.toDouble() ?? 0.0;
    return result;
  }

  double _getSectionValue(TrafficSectionType section) {
    final result = section.isAdvertising
        ? _advertasingValueAnimation.value
        : _sessionValueAnimation.value;
    return result;
  }

  double _getSectionPrevValue(TrafficSectionType section) {
    final result = section.isAdvertising
        ? _advertasingPrevValueAnimation.value
        : _sessionPrevValueAnimation.value;
    return result;
  }

  double _getSectionDiffValue(TrafficSectionType section) {
    final result = section.isAdvertising
        ? _advertasingDiffAnimation.value
        : _sessionDiffAnimation.value;
    return result;
  }
}
