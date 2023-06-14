import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/generated/assets/assets.gen.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/app/core/utils/format_util.dart';
import 'package:benchmark/src/data/helper/models/command_center/video_stats/video_stats_help_model.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/containers/divider_gradient_container.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class VideoStatsCard extends StatefulWidget {
  const VideoStatsCard({
    super.key,
    this.height = 180,
    this.width,
    this.model,
  });

  final double height;
  final double? width;

  final VideoStatsHelpModel? model;

  @override
  State<VideoStatsCard> createState() => _VideoStatsCardState();
}

class _VideoStatsCardState extends State<VideoStatsCard>
    with SingleTickerProviderStateMixin {
  final NumberFormat _numberFormat = FormatUtil.int;

  late AnimationController _controller;
  late CurvedAnimation _animation;

  late Tween<double> _playCountTween;
  late Tween<double> _engagementTween;
  late Tween<double> _playRateTween;

  late Animation<double> _playCountAnimation;
  late Animation<double> _engagementAnimation;
  late Animation<double> _playRateAnimation;

  @override
  void initState() {
    super.initState();
    _init();
    _controller.forward();
  }

  @override
  void didUpdateWidget(covariant VideoStatsCard oldWidget) {
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
      minWidth: 400,
      height: widget.height,
      width: widget.width,
      title: LocaleKeys.commandCenter_videoStats.tr(),
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
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: _buildImageContainer(
              imagePath: Assets.images.metricManagement.path,
              subtitle: LocaleKeys.commandCenter_videoStatsImageSubtitle.tr(),
            ),
          ),
          _buildDivider(),
          Expanded(
            child: _buildValueContainer(
              amount: _playCountAnimation.value,
              subtitle: LocaleKeys.commandCenter_playCount.tr(),
            ),
          ),
          _buildDivider(),
          Expanded(
            child: _buildValueContainer(
              amount: _engagementAnimation.value,
              valueTrailing: '%',
              subtitle: LocaleKeys.commandCenter_engage.tr(),
            ),
          ),
          _buildDivider(),
          Expanded(
            child: _buildValueContainer(
              amount: _playRateAnimation.value,
              valueTrailing: '%',
              subtitle: LocaleKeys.commandCenter_playRate.tr(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildValueContainer({
    double? amount,
    String? subtitle,
    String? valueTrailing,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildAmount(
            amount: amount,
            trailing: valueTrailing,
          ),
          _buildSubtitle(
            text: subtitle,
          ),
        ],
      ),
    );
  }

  Widget _buildImageContainer({
    String? subtitle,
    String? imagePath,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildImage(imagePath),
          const SizedBox(height: 5),
          _buildSubtitle(
            text: subtitle,
          ),
        ],
      ),
    );
  }

  Widget _buildAmount({
    double? amount,
    String? trailing,
  }) {
    final value = _getFormattedValue(amount);
    final result = trailing != null ? '$value$trailing' : value;
    return Text(
      result,
      style: CommandCenterTextTheme.of(context)
          ?.headerMediumTextStyle
          ?.withOpacity(0.75),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildSubtitle({
    String? text,
  }) {
    return Text(
      text ?? '',
      style: CommandCenterTextTheme.of(context)
          ?.bodySmallTextStyle
          ?.withOpacity(0.75),
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      maxLines: 3,
    );
  }

  Widget _buildImage(
    String? imagePath,
  ) {
    return Image.asset(
      imagePath ?? '',
      width: double.infinity,
      height: widget.height / 3,
    );
  }

  Widget _buildDivider() {
    return const DividerGradientContainer(
      orientation: Axis.vertical,
      gradientStops: 10,
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
    _playCountTween = Tween(
      begin: 0,
      end: _getValue(widget.model?.playCount),
    );
    _engagementTween = Tween(
      begin: 0,
      end: _getValue(widget.model?.engagement),
    );
    _playRateTween = Tween(
      begin: 0,
      end: _getValue(widget.model?.playRate),
    );
    _playCountAnimation = _playCountTween.animate(_animation);
    _engagementAnimation = _engagementTween.animate(_animation);
    _playRateAnimation = _playRateTween.animate(_animation);
  }

  void _update() {
    _playCountTween.begin = _isAnimating(_playCountAnimation)
        ? _playCountAnimation.value
        : _playCountTween.end;
    _engagementTween.begin = _isAnimating(_engagementAnimation)
        ? _engagementAnimation.value
        : _engagementTween.end;
    _playRateTween.begin = _isAnimating(_playRateAnimation)
        ? _playRateAnimation.value
        : _playRateTween.end;

    _controller.reset();
    _playCountTween.end = _getValue(widget.model?.playCount);
    _engagementTween.end = _getValue(widget.model?.engagement);
    _playRateTween.end = _getValue(widget.model?.playRate);

    _controller.forward();
  }

  bool _isAnimating(Animation<double>? animation) {
    return animation?.status == AnimationStatus.forward;
  }

  double _getValue(num? value) {
    final result = value?.toDouble() ?? 0.0;
    return result;
  }

  String _getFormattedValue(num? amount) {
    final value = _numberFormat.format(amount ?? 0);
    return value;
  }
}
