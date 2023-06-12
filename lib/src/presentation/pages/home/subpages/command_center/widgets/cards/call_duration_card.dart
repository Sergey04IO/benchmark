import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/app/core/utils/datetime_util.dart';
import 'package:benchmark/src/app/core/utils/format_util.dart';
import 'package:benchmark/src/data/helper/models/command_center/call_duration/call_duration_help_model.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
import 'package:benchmark/src/presentation/widgets/charts/area/area_chart.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CallDurationCard extends StatefulWidget {
  const CallDurationCard({
    super.key,
    this.width,
    this.model,
  });

  final double? width;
  final CallDurationHelpModel? model;

  @override
  State<CallDurationCard> createState() => _CallDurationCardState();
}

class _CallDurationCardState extends State<CallDurationCard>
    with SingleTickerProviderStateMixin {
  final NumberFormat _numberFormat = FormatUtil.int;

  late AnimationController _controller;
  late CurvedAnimation _animation;

  late Tween<double> _callDurationTween;
  late Animation<double> _callDurationAnimation;

  @override
  void initState() {
    super.initState();
    _init();
    _controller.forward();
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
      title: LocaleKeys.commandCenter_callDurationHeader.tr(args: ['CallRail']),
      minWidth: 250,
      width: widget.width,
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
        _buildCompanyName(),
        const SizedBox(height: 20),
        _buildDataRow(),
      ],
    );
  }

  Widget _buildCompanyName() {
    return Text(
      LocaleKeys.commandCenter_companyName.tr(
        args: ['The KIIp Factory'],
      ),
      style: CommandCenterTextTheme.of(context)
          ?.bodySmallTextStyle
          ?.withOpacity(0.75),
    );
  }

  Widget _buildDataRow() {
    return SizedBox(
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: _buildTimeStats()),
          Expanded(child: _buildGraph()),
        ],
      ),
    );
  }

  Widget _buildTimeStats() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextOneLine(
          _getCallTime(),
          style: CommandCenterTextTheme.of(context)
              ?.headerGiganticTextStyle
              ?.withOpacity(0.75),
        ),
        TextOneLine(
          LocaleKeys.commandCenter_basedOnCalls.tr(args: [
            _getCallsNumber(),
          ]),
          style: CommandCenterTextTheme.of(context)
              ?.bodySmallTextStyle
              ?.withOpacity(0.75),
        ),
      ],
    );
  }

  Widget _buildGraph() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: AreaChart(
        values: widget.model?.chartValues ?? [],
        maxExtent: widget.model?.getChartMaxExtent(),
        isCommandCenter: true,
      ),
    );
  }

  String _getCallTime() {
    final value = _callDurationAnimation.value.toInt();
    final result = DateTimeUtil.getFormattedDuration(
      duration: Duration(seconds: value),
    );
    return result;
  }

  String _getCallsNumber() {
    final result = _numberFormat.format(
      widget.model?.numberOfCalls ?? 0,
    );
    return result;
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
    _callDurationTween = Tween(
      begin: 0,
      end: _getValue(widget.model?.callTime),
    );
    _callDurationAnimation = _callDurationTween.animate(_animation);
  }

  void _update() {
    // TODO: implement
  }

  double _getValue(num? value) {
    final result = value?.toDouble() ?? 0.0;
    return result;
  }
}
