import 'dart:math';

import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/generated/assets/assets.gen.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/app/core/utils/format_util.dart';
import 'package:benchmark/src/data/helper/models/command_center/cac/cac_help_model.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/containers/divider_gradient_container.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CacCard extends StatefulWidget {
  const CacCard({
    super.key,
    this.width,
    this.model,
  });

  final double? width;

  final CacHelpModel? model;

  @override
  State<CacCard> createState() => _CacCardState();
}

class _CacCardState extends State<CacCard> with SingleTickerProviderStateMixin {
  late double _cardWidth;
  late double _sectionPadding;

  late final AnimationController _controller;
  late final CurvedAnimation _animation;

  late final Tween<double> _valueTween;
  late final Tween<double> _prevValueTween;
  late final Tween<double> _diffTween;

  late final Animation<double> _valueAnimation;
  late final Animation<double> _prevValueAnimation;
  late final Animation<double> _diffAnimation;

  @override
  void initState() {
    super.initState();
    _init();
    _controller.forward();
  }

  @override
  void didUpdateWidget(covariant CacCard oldWidget) {
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
    final title = LocaleKeys.commandCenter_cacCardTitle
        .tr(args: ['${widget.model?.duration}']);
    return LayoutBuilder(builder: (context, constraints) {
      _cardWidth = widget.width ?? constraints.maxWidth;
      _sectionPadding = _cardWidth / 30;
      _sectionPadding = _sectionPadding + _sectionPadding / 2;
      return CommandCenterCard(
        width: _cardWidth,
        minWidth: 300,
        title: title,
        child: _buildContent(),
      );
    });
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
        _buildIconsRow(),
        const SizedBox(height: 15),
        _buildValuesRow(),
      ],
    );
  }

  Widget _buildIconsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIcon(Assets.icons.quickbooksLogo.path),
        const SizedBox(width: 10),
        Text(
          '+',
          style: CommandCenterTextTheme.of(context)?.headerMediumTextStyle,
        ),
        const SizedBox(width: 10),
        _buildIcon(Assets.icons.salesforceLogo.path),
      ],
    );
  }

  Widget _buildValuesRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(child: _buildMainSection()),
        _buildDivider(),
        Expanded(child: _buildSecondarySection()),
      ],
    );
  }

  Widget _buildMainSection() {
    final value = FormatUtil.int.format(_valueAnimation.value);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(right: _sectionPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '\$$value',
                style: CommandCenterTextTheme.of(context)
                    ?.headerGiganticTextStyle
                    ?.withOpacity(0.75),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                LocaleKeys.commandCenter_value.tr(),
                style: CommandCenterTextTheme.of(context)
                    ?.bodySmallTextStyle
                    ?.withBoldFontWeight()
                    .withOpacity(0.75),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSecondarySection() {
    final percent = FormatUtil.doublePrecTwo.format(_diffAnimation.value);
    final columnLeftPadding = _sectionPadding - _sectionPadding / 3;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(left: columnLeftPadding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildPercentIcon(
                iconColor: AppColors.primaryColor,
              ),
              Expanded(
                child: Text(
                  '$percent%',
                  style: CommandCenterTextTheme.of(context)
                      ?.headerMediumTextStyle
                      ?.withOpacity(0.75),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 3),
        Padding(
          padding: EdgeInsets.only(left: _sectionPadding),
          child: _buildPrevValue(),
        )
      ],
    );
  }

  Widget _buildPrevValue() {
    // final prevTr = LocaleKeys.commandCenter_prev.tr();
    // final daysTr = LocaleKeys.commandCenter_somedays
    // .tr(args: ['${widget.model?.duration}']);
    final formattedValue = FormatUtil.int.format(_prevValueAnimation.value);
    // final text = 'vs \$$formattedValue $prevTr $daysTr';
    final text = '\$$formattedValue';
    return Text(
      text,
      maxLines: 2,
      style: CommandCenterTextTheme.of(context)
          ?.bodyMediumTextStyle
          ?.copyWith(height: 1)
          .withOpacity(0.5),
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildDivider() {
    return const SizedBox(
      height: 60,
      child: DividerGradientContainer(
        orientation: Axis.vertical,
        gradientStops: 5,
      ),
    );
  }

  Widget _buildPercentIcon({Color? iconColor}) {
    return Transform.rotate(
      angle: pi / 2,
      child: Icon(
        Icons.play_arrow,
        size: 30,
        color: iconColor,
      ),
    );
  }

  Widget _buildIcon(String iconPath) {
    return Image.asset(
      iconPath,
      width: 20,
      height: 20,
    );
  }

  void _init() {
    _controller = AnimationController(
      vsync: this,
      duration: CommonConstants.numbersAnimDuration,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    );
    _valueTween = Tween(
      begin: 0.0,
      end: _getValue(widget.model?.value),
    );
    _prevValueTween = Tween(
      begin: 0.0,
      end: _getValue(widget.model?.prevValue),
    );
    _diffTween = Tween(
      begin: 0.0,
      end: _getValue(widget.model?.getPercent()),
    );
    _valueAnimation = _valueTween.animate(_animation);
    _prevValueAnimation = _prevValueTween.animate(_animation);
    _diffAnimation = _diffTween.animate(_animation);
  }

  double _getValue(num? value) {
    final result = value?.toDouble() ?? 0.0;
    return result;
  }

  void _update() {
    _valueTween.begin =
        _isAnimating(_valueAnimation) ? _valueAnimation.value : _valueTween.end;
    _prevValueTween.begin = _isAnimating(_prevValueAnimation)
        ? _prevValueAnimation.value
        : _prevValueTween.end;
    _diffTween.begin =
        _isAnimating(_diffAnimation) ? _diffAnimation.value : _diffTween.end;

    _controller.reset();
    _valueTween.end = _getValue(widget.model?.value);
    _prevValueTween.end = _getValue(widget.model?.prevValue);
    _diffTween.end = _getValue(widget.model?.getPercent());

    _controller.forward();
  }

  bool _isAnimating(Animation<double>? animation) {
    return animation?.status == AnimationStatus.forward;
  }
}
