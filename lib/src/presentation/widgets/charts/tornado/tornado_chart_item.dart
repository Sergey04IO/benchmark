import 'dart:math';

import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/app/core/enums/value_bigger.dart';
import 'package:benchmark/src/app/core/extensions/random_extensions.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/domain/entities/tornado/tornado_entity.dart';
import 'package:benchmark/src/presentation/models/helper_models/bars_width/bars_width_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TornadoChartItem extends StatefulWidget {
  const TornadoChartItem({
    super.key,
    required this.model,
  });

  final TornadoEntity model;

  @override
  State<TornadoChartItem> createState() => _TornadoChartItemState();
}

class _TornadoChartItemState extends State<TornadoChartItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late CurvedAnimation _animation;

  late Tween<double> _leftBarValueTween;
  late Tween<double> _rightBarValueTween;
  Tween<double>? _leftBarTween;
  Tween<double>? _rightBarTween;
  late Animation<double> _leftBarValueAnimation;
  late Animation<double> _rightBarValueAnimation;
  Animation<double>? _leftBarAnimation;
  Animation<double>? _rightBarAnimation;

  bool animationEnded = false;

  final double leftBarValueOffset = 20;
  final double rightBarValueOffset = 8;
  final double leftBarNamePadding = 8;
  final double spaceBetweenLeftBarAndOuterText = 8;
  final double horizontalSpaceBetweenBars = 2;
  final double valueFormatEdge = 100;
  final double barMinSizePadding = 8;

  late NumberFormat _formatter;

  double _barMaxWidth = 0;
  double? _barMaxValueCoef;

  bool shouldAnimateOpacity = true;
  double? nameInitialsTextWidth;

  @override
  void initState() {
    super.initState();
    _init();
    _assignBarMaxValue();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      nameInitialsTextWidth = _getNameTextSize(
        _getInitials(widget.model.title),
      ).width;
      _controller.forward();
    });
  }

  @override
  void didUpdateWidget(covariant TornadoChartItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.model != widget.model) {
      _assignBarMaxValue();
      shouldAnimateOpacity = false;
      setState(() {});
      _updateValues();
    }
  }

  @override
  void dispose() {
    _controller.removeStatusListener(_animStatusListener);
    _controller.dispose();
    _animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = widget.model;
    final nameTextWidth = _getNameTextSize(model.title ?? '').width;

    final leftBarValueWidth = _getNameTextSize(
            _formatter.format(model.dateValue ?? '') + (model.unit ?? ''))
        .width;
    final rightBarValueWidth = _getNameTextSize(
            _formatter.format(model.benchmarkValue ?? '') + (model.unit ?? ''))
        .width;

    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 10,
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        _barMaxWidth = (constraints.maxWidth / 2) - horizontalSpaceBetweenBars;
        return AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return _buildBarsItem(
              width: _barMaxWidth,
              model: model,
              nameTextWidth: nameTextWidth,
              leftBarValueWidth: leftBarValueWidth,
              rightBarValueWidth: rightBarValueWidth,
            );
          },
        );
      }),
    );
  }

  Widget _buildBarsItem({
    double width = 0,
    required TornadoEntity model,
    double? nameTextWidth,
    double leftBarValueWidth = 0,
    double rightBarValueWidth = 0,
  }) {
    final max = model.dateValue?.compareTo(model.benchmarkValue ?? 0);
    final ValueBigger valueBigger = max == 1
        ? ValueBigger.first
        : max == -1
            ? ValueBigger.second
            : ValueBigger.equal;

    final barsSizes = _calculateBarsWidth(
      model: model,
      leftBarValueWidth: leftBarValueWidth,
      rightBarValueWidth: rightBarValueWidth,
      width: width,
    );

    double leftBarWidth = barsSizes.leftBarWidth;
    double rightBarWidth = barsSizes.rightBarWidth;

    if (!_animation.isCompleted) {
      leftBarWidth = _leftBarAnimation?.value ?? 0;
      rightBarWidth = _rightBarAnimation?.value ?? 0;
    }

    final leftValue =
        _formatter.format(_leftBarValueAnimation.value) + (model.unit ?? '');
    final rightValue =
        _formatter.format(_rightBarValueAnimation.value) + (model.unit ?? '');

    final shouldDisplayOuterBarName = (leftBarWidth -
            (leftBarValueWidth + leftBarValueOffset + leftBarNamePadding)) <
        ((nameTextWidth ?? 0) + leftBarNamePadding);
    final bool isTextNotOverflow =
        ((width - leftBarWidth) - spaceBetweenLeftBarAndOuterText) >
            nameTextWidth!;

    double nameInitialsMaxWidth = leftBarWidth -
        leftBarValueWidth -
        leftBarValueOffset -
        (leftBarNamePadding * 2);

    nameInitialsMaxWidth = nameInitialsMaxWidth < 0 ? 0 : nameInitialsMaxWidth;

    final enoughSpaceForInnerInitials = nameInitialsTextWidth != null &&
        nameInitialsTextWidth! < nameInitialsMaxWidth;

    final enoughForOuterInitials = (width - barsSizes.leftBarWidth) >
        ((nameInitialsTextWidth ?? 0) + spaceBetweenLeftBarAndOuterText);

    final x = (leftBarWidth -
            leftBarValueWidth -
            nameTextWidth -
            (leftBarNamePadding * 2)) <
        (nameInitialsTextWidth ?? 0);

    final displayNameInitials = enoughSpaceForInnerInitials &&
        x &&
        shouldDisplayOuterBarName &&
        !isTextNotOverflow;

    final displayOuterName =
        shouldDisplayOuterBarName && isTextNotOverflow && animationEnded;
    final displayInitials = shouldDisplayOuterBarName &&
        !isTextNotOverflow &&
        animationEnded &&
        !displayNameInitials &&
        enoughForOuterInitials;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AnimatedSwitcher(
                duration: CommonConstants.secondaryAnimDuration,
                reverseDuration: CommonConstants.secondaryAnimDuration,
                child: displayOuterName
                    ? Text(
                        model.title ?? '',
                        style: _getGreenTextStyle(),
                      )
                    : displayInitials
                        ? Text(
                            _getInitials(model.title),
                            style: _getGreenTextStyle(),
                          )
                        : const SizedBox.shrink(),
              ),
              if (displayOuterName || displayInitials)
                SizedBox(width: spaceBetweenLeftBarAndOuterText),
              _buildBar(
                text: model.title,
                value: leftValue,
                textStyle: _getWhiteTextStyle(),
                width: leftBarWidth > width ? width : leftBarWidth,
                barColor: AppColors.primaryColor,
                alignment: Alignment.centerRight,
                valueBigger: valueBigger,
                shouldDisplayText: !shouldDisplayOuterBarName,
                nameInitialsMaxWidth: nameInitialsMaxWidth,
                displayNameInitials: displayNameInitials,
              ),
            ],
          ),
        ),
        SizedBox(width: horizontalSpaceBetweenBars),
        Expanded(
          child: Row(
            children: [
              _buildBar(
                value: rightValue,
                textStyle: _getGreenTextStyle(),
                barColor: AppColors.secondaryColor,
                width: rightBarWidth > width ? width : rightBarWidth,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBar({
    String? value,
    String? text,
    TextStyle? textStyle,
    Color? barColor,
    double width = 0,
    Alignment alignment = Alignment.centerLeft,
    ValueBigger valueBigger = ValueBigger.equal,
    bool shouldDisplayText = false,
    double? nameInitialsMaxWidth,
    bool? displayNameInitials,
  }) {
    return Stack(
      alignment: alignment,
      children: [
        Container(
          width: width,
          height: 30,
          alignment: alignment,
          color: barColor,
        ),
        Positioned(
          right: alignment == Alignment.centerLeft ? null : leftBarValueOffset,
          left: alignment == Alignment.centerRight ? null : rightBarValueOffset,
          child: _buildBarAmountValue(
            value: value ?? '',
            style: textStyle,
          ),
        ),
        Positioned(
          left: leftBarNamePadding,
          child: AnimatedSwitcher(
            duration: CommonConstants.secondaryAnimDuration,
            child: text != null && shouldDisplayText
                ? Text(
                    text,
                    style: textStyle,
                  )
                : text != null &&
                        displayNameInitials != null &&
                        displayNameInitials
                    ? AnimatedSwitcher(
                        duration: CommonConstants.secondaryAnimDuration,
                        child: SizedBox(
                          width: nameInitialsMaxWidth,
                          child: Text(
                            _getInitials(text),
                            style: textStyle,
                            softWrap: false,
                            maxLines: 1,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                      )
                    : const SizedBox(),
          ),
        ),
        _buildValueIcon(
          text: text,
          valueBigger: valueBigger,
          textStyle: textStyle,
        ),
      ],
    );
  }

  Widget _buildValueIcon({
    String? text,
    ValueBigger valueBigger = ValueBigger.equal,
    TextStyle? textStyle,
  }) {
    if (text != null && valueBigger.isNotEqual) {
      return Positioned(
        right: 5,
        child: Icon(
          color: Colors.white,
          size: 15,
          valueBigger.isFirst ? Icons.arrow_drop_up : Icons.arrow_drop_down,
        ),
      );
    } else if (text != null) {
      return Positioned(
        right: 8,
        child: Text(
          '=',
          style: textStyle,
        ),
      );
    }
    return const SizedBox.shrink();
  }

  Widget _buildBarAmountValue({
    required String value,
    TextStyle? style,
  }) {
    return Opacity(
      opacity: shouldAnimateOpacity ? _animation.value : 1,
      child: Text(
        value,
        style: style,
      ),
    );
  }

  Size _getNameTextSize(String text) {
    final textSize = calculateTextSize(
      context,
      text: text,
      style: _getGreenTextStyle(),
    );
    return textSize;
  }

  Size calculateTextSize(
    BuildContext context, {
    required String text,
    required TextStyle style,
  }) {
    final double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      textDirection: Directionality.of(context),
      textScaleFactor: textScaleFactor,
    )..layout();

    return textPainter.size;
  }

  void _animStatusListener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      animationEnded = true;
    } else {
      animationEnded = false;
    }
  }

  BarsWidthModel _calculateBarsWidth({
    double width = 0,
    required TornadoEntity model,
    double leftBarValueWidth = 0,
    double rightBarValueWidth = 0,
  }) {
    final leftBarMinWidth =
        leftBarValueOffset + leftBarValueWidth + barMinSizePadding;
    final rightBarMinWidth =
        rightBarValueOffset + rightBarValueWidth + barMinSizePadding;
    final barMaxWidth = width - horizontalSpaceBetweenBars;
    final max = model.dateValue?.compareTo(model.benchmarkValue ?? 0);
    final ValueBigger valueBigger = max == 1
        ? ValueBigger.first
        : max == -1
            ? ValueBigger.second
            : ValueBigger.equal;

    final biggerCompareCoef = valueBigger.isFirst
        ? (model.benchmarkValue! / model.dateValue!)
        : valueBigger.isEqual
            ? 1
            : model.dateValue! / model.benchmarkValue!;

    final rightBiggerCoef = valueBigger.isFirst ? biggerCompareCoef : 1;
    final leftBiggerCoef = valueBigger.isSecond ? biggerCompareCoef : 1;

    final barSizeCoef = barMaxWidth * (_barMaxValueCoef ?? 1);

    final isLeftMin = (barSizeCoef * leftBiggerCoef) < leftBarMinWidth;
    final isRightMin = (barSizeCoef * rightBiggerCoef) < rightBarMinWidth;

    double leftBarWidth = barSizeCoef;
    double rightBarWidth = barSizeCoef;

    rightBarWidth *= rightBiggerCoef;
    leftBarWidth *= leftBiggerCoef;

    if (isLeftMin) {
      leftBarWidth = leftBarMinWidth;
      rightBarWidth += leftBarMinWidth - (barSizeCoef * leftBiggerCoef);
    } else if (isRightMin) {
      rightBarWidth = rightBarMinWidth;
      leftBarWidth += rightBarMinWidth - (barSizeCoef * rightBiggerCoef);
    }
    return BarsWidthModel(leftBarWidth, rightBarWidth);
  }

  BarsWidthModel _getBarsEndValue() {
    final leftBarValueWidth = _getNameTextSize(
            _formatter.format(widget.model.dateValue!) +
                (widget.model.unit ?? ''))
        .width;
    final rightBarValueWidth = _getNameTextSize(
            _formatter.format(widget.model.benchmarkValue!) +
                (widget.model.unit ?? ''))
        .width;
    final value = _calculateBarsWidth(
      model: widget.model,
      leftBarValueWidth: leftBarValueWidth,
      rightBarValueWidth: rightBarValueWidth,
      width: _barMaxWidth,
    );
    return value;
  }

  void _assignFormatter() {
    _formatter = widget.model.benchmarkValue! < valueFormatEdge ||
            widget.model.dateValue! < valueFormatEdge
        ? NumberFormat('#,###,##0.00')
        : NumberFormat('#,###,###');
  }

  void _updateValues() {
    _assignFormatter();

    final barsWidth = _getBarsEndValue();

    _leftBarValueTween.begin = isAnimating(_leftBarValueAnimation)
        ? _leftBarValueAnimation.value
        : _leftBarValueTween.end;
    _rightBarValueTween.begin = isAnimating(_rightBarValueAnimation)
        ? _rightBarValueAnimation.value
        : _rightBarValueTween.end;
    _leftBarTween?.begin = isAnimating(_leftBarAnimation)
        ? _leftBarAnimation?.value
        : _leftBarTween?.end;
    _rightBarTween?.begin = isAnimating(_rightBarAnimation)
        ? _rightBarAnimation?.value
        : _rightBarTween?.end;
    _controller.reset();
    _leftBarValueTween.end = widget.model.dateValue?.toDouble() ?? 0;
    _rightBarValueTween.end = widget.model.benchmarkValue?.toDouble() ?? 0;
    _leftBarTween?.end = barsWidth.leftBarWidth;
    _rightBarTween?.end = barsWidth.rightBarWidth;

    _controller.forward();
  }

  bool isAnimating(Animation<double>? animation) {
    return animation?.status == AnimationStatus.forward;
  }

  void _init() {
    _assignFormatter();

    _controller = AnimationController(
      vsync: this,
      duration: CommonConstants.primaryAnimDuration,
    );
    _controller.addStatusListener(_animStatusListener);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    );
    _leftBarValueTween =
        Tween(begin: 0.0, end: widget.model.dateValue?.toDouble() ?? 0);
    _rightBarValueTween =
        Tween(begin: 0.0, end: widget.model.benchmarkValue?.toDouble() ?? 0);
    _leftBarValueAnimation = _leftBarValueTween.animate(_animation);
    _rightBarValueAnimation = _rightBarValueTween.animate(_animation);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final barsWidth = _getBarsEndValue();
      _leftBarTween = Tween(begin: 0.0, end: barsWidth.leftBarWidth);
      _rightBarTween = Tween(begin: 0.0, end: barsWidth.rightBarWidth);
      _leftBarAnimation = _leftBarTween?.animate(_animation);
      _rightBarAnimation = _rightBarTween?.animate(_animation);
    });
  }

  String _getInitials(String? string, {int? limitTo}) {
    if (string == null || string.isEmpty) return '';
    final buffer = StringBuffer();
    final split = string.split(' ');
    for (var i = 0; i < (limitTo ?? split.length); i++) {
      buffer.write(split[i][0]);
    }

    return buffer.toString();
  }

  TextStyle _getGreenTextStyle() {
    return const TextStyle(
      color: AppColors.primaryColor,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle _getWhiteTextStyle() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 12,
    );
  }

  num? _getBiggerValue() {
    final max =
        widget.model.dateValue?.compareTo(widget.model.benchmarkValue ?? 0);
    final num? valueBigger = max == 1
        ? widget.model.dateValue
        : max == -1
            ? widget.model.benchmarkValue
            : 0;
    return valueBigger;
  }

  void _assignBarMaxValue() {
    final value = _getBiggerValue();
    if (value != null) {
      if (value == 0) {
        _barMaxValueCoef = 0.5;
      } else {
        final random = Random().doubleInRange(start: value, end: value * 1.3);
        _barMaxValueCoef = value / random;
      }
    }
  }
}
