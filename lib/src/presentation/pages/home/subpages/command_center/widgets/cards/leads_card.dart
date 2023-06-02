import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/app/core/utils/format_util.dart';
import 'package:benchmark/src/app/core/utils/numbers_util.dart';
import 'package:benchmark/src/data/helper/data/command_center/leads_help_data.dart';
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
  });

  final double height;
  final double? width;

  @override
  State<LeadsCard> createState() => _LeadsCardState();
}

class _LeadsCardState extends State<LeadsCard> {
  TextStyle? _secondaryValueTextStyle;
  late Size _maxValueSize;
  late Size _minValueSize;
  late double _cardWidth;
  late double _contentWidth;

  final double _sliderHeight = 20;
  final double _mainIndicatorWidth = 6;
  late double _extraLineHeight;

  late LeadsHelpModel _data;
  final _formatter = FormatUtil.int;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _assignDependencies();
  }

  @override
  Widget build(BuildContext context) {
    _cardWidth = MediaQuery.of(context).size.width / 3;
    _contentWidth = _cardWidth - 32;
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
    final mainIndicatorPosition = _getValuePosition(value: _data.value);
    final prevValuePosition = _getValuePosition(value: _data.prevValue);
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
                value: _data.prevValue,
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
    final value = _formatter.format(_data.value ?? 0);
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
            value: _data.maxValue,
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
    num? value,
    required double indicatorPosition,
  }) {
    final formatted = _formatter.format(value ?? 0);
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
    final max = _data.maxValue;
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

  void _assignDependencies() {
    _extraLineHeight = _sliderHeight + 5;
    _data = LeadsHelpData.data;
    _secondaryValueTextStyle = CommandCenterTextTheme.of(context)
        ?.bodySmallTextStyle
        ?.withOpacity(0.5);
    _maxValueSize = _getTextSize(
      _formatter.format(_data.maxValue ?? 0),
      style: _secondaryValueTextStyle,
    );
    _minValueSize = _getTextSize(
      _formatter.format(0),
      style: _secondaryValueTextStyle,
    );
  }
}
