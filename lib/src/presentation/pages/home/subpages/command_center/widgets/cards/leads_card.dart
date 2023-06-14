import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/app/core/utils/format_util.dart';
import 'package:benchmark/src/app/core/utils/numbers_util.dart';
import 'package:benchmark/src/data/helper/models/command_center/leads/leads_help_model.dart';
import 'package:benchmark/src/presentation/helper/widgets_helper.dart';
import 'package:benchmark/src/presentation/models/helper_models/extremum/extremum.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LeadsCard extends StatefulWidget {
  const LeadsCard({
    super.key,
    this.height = 164,
    this.width,
    this.model,
  });

  final double height;
  final double? width;

  final LeadsHelpModel? model;

  @override
  State<LeadsCard> createState() => _LeadsCardState();
}

class _LeadsCardState extends State<LeadsCard>
    with SingleTickerProviderStateMixin {
  TextStyle? _secondaryValueTextStyle;
  late Size _maxValueSize;
  late Size _minValueSize;
  late double _cardWidth;
  late double _contentWidth;

  final double _sliderHeight = 20;
  final double _mainIndicatorWidth = 6;
  late double _extraLineHeight;

  final _formatter = FormatUtil.int;

  late final AnimationController _controller;
  late final CurvedAnimation _animation;

  late final Tween<double> _valueTween;
  late final Tween<double> _prevValueTween;
  late final Tween<double> _valuePosTween;
  late final Tween<double> _prevValuePosTween;

  late final Animation<double> _valueAnimation;
  late final Animation<double> _prevValueAnimation;
  late final Animation<double> _valuePosAnimation;
  late final Animation<double> _prevValuePosAnimation;

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _assignDependencies();
    _controller.forward();
  }

  @override
  void didUpdateWidget(covariant LeadsCard oldWidget) {
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
    return LayoutBuilder(builder: (contex, constraints) {
      _cardWidth = widget.width ?? constraints.maxWidth;
      _contentWidth = _cardWidth - 32;
      return CommandCenterCard(
        width: _cardWidth,
        height: widget.height,
        title: LocaleKeys.commandCenter_leadsThisMonth.tr(),
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
    // final mainIndicatorPosition = _getValuePosition(value: widget.model?.value);
    // final prevValuePosition = _getValuePosition(value: widget.model?.prevValue);
    final mainIndicatorPosition = _valuePosAnimation.value;
    final prevValuePosition = _prevValuePosAnimation.value;
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Column(
        children: [
          const SizedBox(height: 50),
          Stack(
            clipBehavior: Clip.none,
            children: [
              _buildMainValue(
                mainIndicatorPosition,
              ),
              _buildSlider(
                mainIndicatorPosition: mainIndicatorPosition,
                prevValuePosition: prevValuePosition,
              ),
              _buildPreviousValue(
                indicatorPosition: prevValuePosition,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMainValue(
    double indicatorPosition,
  ) {
    // final value = _formatter.format(widget.model?.value ?? 0);
    final value = _formatter.format(_valueAnimation.value);
    final style = CommandCenterTextTheme.of(context)
        ?.headerGiganticTextStyle
        ?.copyWith(height: 1.2)
        .withOpacity(0.75);
    final testSize = _getTextSize(
      value,
      style: style,
    );
    final (left, right) = _getLeftRightPositions(
      value,
      indicatorPosition: indicatorPosition,
      style: style,
      indicatorWidth: _mainIndicatorWidth,
      textSize: testSize,
    );
    return Positioned(
      top: -50,
      left: left,
      right: right,
      child: Text(
        value,
        style: style,
      ),
    );
  }

  Widget _buildSlider({
    required double mainIndicatorPosition,
    double? prevValuePosition,
  }) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: 0,
          child: _buildSerif(
            color: AppColors.blue0F3,
            value: 0,
          ),
        ),
        _buildBackContainer(),
        _buildFrontContainer(width: mainIndicatorPosition),
        Positioned(
          right: 0,
          child: _buildSerif(
            color: AppColors.grey050,
            value: widget.model?.maxValue,
            alignment: Alignment.centerRight,
          ),
        ),
        _buildMainIndicator(mainIndicatorPosition),
        Positioned(
          left: prevValuePosition,
          child: _buildDashedIndicator(),
        ),
      ],
    );
  }

  Widget _buildBackContainer() {
    return Container(
      height: _sliderHeight,
      width: _contentWidth,
      decoration: const BoxDecoration(
        color: AppColors.grey050,
      ),
    );
  }

  Widget _buildFrontContainer({double? width}) {
    return Container(
      height: _sliderHeight,
      width: width,
      decoration: const BoxDecoration(
        color: AppColors.blue0F3,
      ),
    );
  }

  Widget _buildSerif({
    Color? color,
    num? value,
    Alignment alignment = Alignment.center,
  }) {
    final formattedValue = _formatter.format(value ?? 0);
    return Stack(
      clipBehavior: Clip.none,
      alignment: alignment,
      children: [
        Container(
          height: _extraLineHeight,
          width: 2,
          decoration: BoxDecoration(
            color: color,
          ),
        ),
        Positioned(
          top: _extraLineHeight,
          child: _buildSecondaryValue(
            text: formattedValue,
          ),
        ),
      ],
    );
  }

  Widget _buildMainIndicator(
    double mainIndicatorPosition,
  ) {
    final position =
        (mainIndicatorPosition + _mainIndicatorWidth) > _contentWidth
            ? mainIndicatorPosition - _mainIndicatorWidth
            : mainIndicatorPosition;
    return Positioned(
      left: position,
      bottom: 0,
      child: Container(
        height: _extraLineHeight,
        width: _mainIndicatorWidth,
        decoration: const BoxDecoration(
          color: AppColors.whiteFFF,
        ),
      ),
    );
  }

  Widget _buildDashedIndicator() {
    return SizedBox(
      height: _extraLineHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            5,
            (index) {
              return Container(
                height: 2.5,
                width: 1,
                decoration: BoxDecoration(
                  color: AppColors.whiteFFF.withOpacity(0.75),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSecondaryValue({
    required String text,
  }) {
    return Text(
      text,
      style: _secondaryValueTextStyle,
    );
  }

  Widget _buildPreviousValue({
    required double indicatorPosition,
  }) {
    final formatted = _formatter.format(_prevValueAnimation.value);
    final lastMonthTr = LocaleKeys.commandCenter_lastMonth.tr();
    final text = '$formatted ($lastMonthTr)';
    final testSize = _getTextSize(
      text,
      style: _secondaryValueTextStyle,
    );
    final (left, right) = _getLeftRightPositions(
      text,
      indicatorPosition: indicatorPosition,
      style: _secondaryValueTextStyle,
      indicatorWidth: _mainIndicatorWidth,
      textSize: testSize,
    );

    final bottom = _getPrevValueBottomOffset(
      style: _secondaryValueTextStyle,
      prevTextSize: testSize,
      left: left,
    );
    return Positioned(
      bottom: bottom,
      left: left,
      right: right,
      child: _buildSecondaryValue(
        text: text,
      ),
    );
  }

  double _getValuePosition({
    num? value,
  }) {
    final max = widget.model?.maxValue;
    final result = NumbersUtil.convertValueByRange(
      value: value,
      oldRange: Extremum(max: max ?? 0),
      newRange: Extremum(max: _contentWidth),
    );
    return result;
  }

  Size _getTextSize(String text, {TextStyle? style}) {
    return WidgetsHelper.getTextSize(
      context,
      text: text,
      style: style ?? const TextStyle(),
    );
  }

  (double? left, double? right) _getLeftRightPositions(
    String text, {
    double indicatorPosition = 0,
    double indicatorWidth = 0,
    TextStyle? style,
    Size textSize = Size.zero,
  }) {
    final halfValueWidth = textSize.width / 2;
    final halfIndicatorWidth = indicatorWidth / 2;
    final rightEdge = indicatorPosition + halfValueWidth - halfIndicatorWidth;
    final position = indicatorPosition - halfValueWidth + halfIndicatorWidth;
    final double? left = position < 0
        ? 0
        : rightEdge > _contentWidth
            ? null
            : position;
    final double? right = rightEdge > _contentWidth ? 0 : null;

    return (left, right);
  }

  double _getPrevValueBottomOffset({
    TextStyle? style,
    Size prevTextSize = Size.zero,
    double? left = 0,
  }) {
    double additionalOffset = 0;
    final prev = (left ?? 0) + prevTextSize.width;
    final max = _contentWidth - _maxValueSize.width;

    final isOverflow = left == null || prev > max || left < _minValueSize.width;

    if (isOverflow) {
      additionalOffset = 10;
    }

    final bottom = -_extraLineHeight - additionalOffset;
    return bottom;
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
      end: _getAnimValue(widget.model?.value),
    );
    _prevValueTween = Tween(
      begin: 0.0,
      end: _getAnimValue(widget.model?.prevValue),
    );
    _valuePosTween = Tween(
      begin: 0.0,
      end: 0.0,
    );
    _prevValuePosTween = Tween(
      begin: 0.0,
      end: 0.0,
    );
    _valueAnimation = _valueTween.animate(_animation);
    _prevValueAnimation = _prevValueTween.animate(_animation);
    _valuePosAnimation = _valuePosTween.animate(_animation);
    _prevValuePosAnimation = _prevValuePosTween.animate(_animation);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _valuePosTween.end = _getValuePosition(value: widget.model?.value);
      _prevValuePosTween.end =
          _getValuePosition(value: widget.model?.prevValue);
    });
  }

  void _update() {
    _valueTween.begin =
        _isAnimating(_valueAnimation) ? _valueAnimation.value : _valueTween.end;
    _prevValueTween.begin = _isAnimating(_prevValueAnimation)
        ? _prevValueAnimation.value
        : _prevValueTween.end;
    _valuePosTween.begin = _isAnimating(_valuePosAnimation)
        ? _valuePosAnimation.value
        : _valuePosTween.end;
    _prevValuePosTween.begin = _isAnimating(_prevValuePosAnimation)
        ? _prevValuePosAnimation.value
        : _prevValuePosTween.end;
    _controller.reset();

    _valueTween.end = _getAnimValue(widget.model?.value);
    _prevValueTween.end = _getAnimValue(widget.model?.prevValue);
    _valuePosTween.end = _getValuePosition(value: widget.model?.value);
    _prevValuePosTween.end = _getValuePosition(value: widget.model?.prevValue);
    _controller.forward();
  }

  void _assignDependencies() {
    _extraLineHeight = _sliderHeight + 5;
    _secondaryValueTextStyle = CommandCenterTextTheme.of(context)
        ?.bodySmallTextStyle
        ?.withOpacity(0.5);
    _maxValueSize = _getTextSize(
      _formatter.format(widget.model?.maxValue ?? 0),
      style: _secondaryValueTextStyle,
    );
    _minValueSize = _getTextSize(
      _formatter.format(0),
      style: _secondaryValueTextStyle,
    );
  }

  bool _isAnimating(Animation<double>? animation) {
    return animation?.status == AnimationStatus.forward;
  }

  double _getAnimValue(num? value) {
    final result = value?.toDouble() ?? 0.0;
    return result;
  }
}
