import 'package:benchmark/src/app/config/di/injector.dart';
import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/generated/assets/assets.gen.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/data/helper/models/command_center/multi_chart/multi_chart_help_model.dart';
import 'package:benchmark/src/presentation/bloc/command_center/command_center_cubit.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/charts/multi_chart.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MultiChartCard extends StatefulWidget {
  const MultiChartCard({
    super.key,
    this.useAnimations = true,
    this.height = 300,
    this.width,
    this.model,
  });

  final bool useAnimations;
  final double height;
  final double? width;

  final MultiChartHelpModel? model;

  @override
  State<MultiChartCard> createState() => _MultiChartCardState();
}

class _MultiChartCardState extends State<MultiChartCard>
    with SingleTickerProviderStateMixin {
  final CommandCenterCubit _cubit = getIt<CommandCenterCubit>();

  // late AnimationController _controller;
  // late CurvedAnimation _animation;

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = AnimationController(
  //     duration: const Duration(milliseconds: 1500),
  //     vsync: this,
  //   );
  //   _animation = CurvedAnimation(
  //     parent: _controller,
  //     curve: Curves.bounceOut,
  //   );
  //   _controller.forward();
  // }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   _animation.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return CommandCenterCard(
      title: LocaleKeys.commandCenter_multiChartHeader
          .tr(args: ['Pingdom & Google']),
      height: widget.height,
      width: widget.width,
      minWidth: 350,
      minHeight: 200,
      child: Expanded(
        child: Column(
          children: [
            // SlideFadeAnimatable(
            //   listenable: _animation,
            //   useAnimation: widget.useAnimations,
            //   child: _buildSubtitleAndLegend(),
            // ),
            _buildSubtitleAndLegend(),
            const SizedBox(height: 10),
            Expanded(
              child: MultiChart(
                useAnimations: widget.useAnimations,
                model: widget.model,
              ),
            ),
            const SizedBox(height: 10),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildSubtitleAndLegend() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildSubtitle(),
        const SizedBox(height: 10),
        _buildLegend(),
      ],
    );
  }

  Widget _buildSubtitle() {
    return Row(
      children: [
        _buildIcon(
          Assets.icons.googleAnalyticsLogo.path,
        ),
        const SizedBox(width: 10),
        Text(
          '+',
          style: CommandCenterTextTheme.of(context)
              ?.subtitleTextStyle
              ?.withOpacity(0.9),
        ),
        const SizedBox(width: 10),
        _buildClippedIcon(
          Assets.icons.pingdomLogo.path,
        ),
        const SizedBox(width: 10),
        Text(
          LocaleKeys.commandCenter_multiChartWebSite.tr(),
          style: CommandCenterTextTheme.of(context)?.headerMediumTextStyle,
        ),
      ],
    );
  }

  Widget _buildClippedIcon(
    String path, {
    BorderRadius borderRadius = const BorderRadius.all(
      Radius.circular(7),
    ),
  }) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: _buildIcon(path),
    );
  }

  Widget _buildIcon(String path) {
    return Image.asset(
      path,
      width: 25,
      height: 25,
    );
  }

  Widget _buildLegend() {
    return Wrap(
      runAlignment: WrapAlignment.end,
      crossAxisAlignment: WrapCrossAlignment.end,
      runSpacing: 5,
      children: [
        _buildLegendItem(
          text: LocaleKeys.commandCenter_multiChartPageLoadTime
              .tr(args: ['[GA]']),
          color: AppColors.blue2BB,
          isLine: false,
        ),
        const SizedBox(width: 20),
        _buildLegendItem(
          text: LocaleKeys.commandCenter_multiChartRedirectionTime
              .tr(args: ['[GA]']),
          color: AppColors.green528,
        ),
        const SizedBox(width: 20),
        _buildLegendItem(
          text: LocaleKeys.commandCenter_multiChartServerResponseTime
              .tr(args: ['[GA]']),
          color: AppColors.orangeE2A,
        ),
        const SizedBox(width: 20),
        _buildLegendItem(
          text: LocaleKeys.commandCenter_multiChartResponseTime
              .tr(args: ['[Pingdom]']),
          color: AppColors.redC4C,
        ),
      ],
    );
  }

  Widget _buildLegendItem({
    required String text,
    bool isLine = true,
    Color? color,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 20,
          height: isLine ? 2 : 10,
          decoration: BoxDecoration(
            color: color,
          ),
        ),
        const SizedBox(width: 5),
        Text(
          text,
          style: CommandCenterTextTheme.of(context)
              ?.bodySmallTextStyle
              ?.withOpacity(0.75),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    final range = _cubit.getMultiChartCardAxisDates(locale: context.locale);

    final theme = CommandCenterTextTheme.of(context);
    final dateStyle = theme?.bodySmallTextStyle?.withOpacity(0.75);
    final rangerStyle = theme?.bodySmallTextStyle?.withOpacity(0.25);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          range.from,
          style: dateStyle,
        ),
        const SizedBox(width: 15),
        Text(
          'to',
          style: rangerStyle,
        ),
        const SizedBox(width: 15),
        Text(
          range.to,
          style: dateStyle,
        ),
      ],
    );
  }
}
