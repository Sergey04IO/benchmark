import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/generated/assets/assets.gen.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/app/core/utils/format_util.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/containers/divider_gradient_container.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class VideoStatsCard extends StatelessWidget {
  const VideoStatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CommandCenterCard(
      minWidth: 400,
      width: MediaQuery.of(context).size.width / 3,
      height: 200,
      title: LocaleKeys.commandCenter_videoStats.tr(args: ['Wistia']),
      child: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: _buildImageContainer(
                context,
                imagePath: Assets.images.metricManagement.path,
                subtitle: LocaleKeys.commandCenter_videoStatsImageSubtitle.tr(),
              ),
            ),
            _buildDivider(),
            Expanded(
              child: _buildValueContainer(
                context,
                amount: 563,
                subtitle: LocaleKeys.commandCenter_playCount.tr(),
              ),
            ),
            _buildDivider(),
            Expanded(
              child: _buildValueContainer(
                context,
                amount: 75,
                valueTrailing: '%',
                subtitle: LocaleKeys.commandCenter_engagement.tr(),
              ),
            ),
            _buildDivider(),
            Expanded(
              child: _buildValueContainer(
                context,
                amount: 49,
                valueTrailing: '%',
                subtitle: LocaleKeys.commandCenter_playRate.tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildValueContainer(
    BuildContext context, {
    int? amount,
    String? subtitle,
    String? valueTrailing,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildAmount(
            context,
            amount: amount,
            trailing: valueTrailing,
          ),
          _buildSubtitle(
            context,
            text: subtitle,
          ),
        ],
      ),
    );
  }

  Widget _buildImageContainer(
    BuildContext context, {
    String? subtitle,
    String? imagePath,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildImage(imagePath),
          const SizedBox(height: 5),
          _buildSubtitle(
            context,
            text: subtitle,
          ),
        ],
      ),
    );
  }

  Widget _buildAmount(
    BuildContext context, {
    int? amount,
    String? trailing,
  }) {
    final formatter = FormatUtil.getNumberFormat();
    final value = formatter.format(amount);
    final result = trailing != null ? '$value$trailing' : value;
    return Text(
      result,
      style: CommandCenterTextTheme.of(context)
          ?.headerMediumTextStyle
          ?.withOpacity(
            0.75,
          ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildSubtitle(
    BuildContext context, {
    String? text,
  }) {
    return Text(
      text ?? '',
      style:
          CommandCenterTextTheme.of(context)?.bodySmallTextStyle?.withOpacity(
                0.75,
              ),
      textAlign: TextAlign.center,
      maxLines: 4,
    );
  }

  Widget _buildImage(
    String? imagePath,
  ) {
    return Image.asset(
      imagePath ?? '',
      width: double.infinity,
    );
  }

  Widget _buildDivider() {
    return const DividerGradientContainer(
      orientation: Axis.vertical,
      gradientStops: 10,
    );
  }
}
