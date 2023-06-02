import 'dart:math';

import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/generated/assets/assets.gen.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/app/core/utils/format_util.dart';
import 'package:benchmark/src/data/helper/data/command_center/cac_data.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/containers/divider_gradient_container.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CacCard extends StatefulWidget {
  const CacCard({
    super.key,
    this.width,
  });

  final double? width;

  @override
  State<CacCard> createState() => _CacCardState();
}

class _CacCardState extends State<CacCard> {
  late double cardWidth;
  late double sectionPadding;

  final data = CacData.data;

  @override
  Widget build(BuildContext context) {
    final durationPartTitle =
        LocaleKeys.commandCenter_lastDays.tr(args: ['${data.duration}']);
    final title = LocaleKeys.commandCenter_cacCardTitle
        .tr(args: ['Quickbooks & Saleforce:', durationPartTitle]);
    return LayoutBuilder(builder: (context, constraints) {
      cardWidth = widget.width ?? constraints.maxWidth;
      sectionPadding = cardWidth / 30;
      sectionPadding = sectionPadding + sectionPadding / 2;
      return CommandCenterCard(
        width: cardWidth,
        minWidth: 300,
        title: title,
        child: _buildContent(),
      );
    });
  }

  Widget _buildContent() {
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
    final value = FormatUtil.int.format(data.value ?? 0);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(right: sectionPadding),
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
                LocaleKeys.commandCenter_cacValue.tr(),
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

  // Widget _buildMainSection() {
  //   final value = FormatUtil.int.format(data.value ?? 0);
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.end,
  //     crossAxisAlignment: CrossAxisAlignment.end,
  //     children: [
  //       Padding(
  //         padding: EdgeInsets.only(right: sectionPadding),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.end,
  //           children: [
  //             Text(
  //               '\$$value',
  //               style: CommandCenterTextTheme.of(context)
  //                   ?.headerGiganticTextStyle
  //                   ?.withOpacity(0.75),
  //             ),
  //             Text(
  //               LocaleKeys.commandCenter_cacValue.tr(),
  //               style: CommandCenterTextTheme.of(context)
  //                   ?.bodySmallTextStyle
  //                   ?.withBoldFontWeight()
  //                   .withOpacity(0.75),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Widget _buildSecondarySection() {
    final percent = FormatUtil.doublePrecTwo.format(data.getPercent());
    final columnLeftPadding = sectionPadding - sectionPadding / 3;
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
          padding: EdgeInsets.only(left: sectionPadding),
          child: _buildPrevValue(value: data.prevValue),
        )
      ],
    );
  }

  Widget _buildPrevValue({
    num? value,
  }) {
    final prevTr = LocaleKeys.commandCenter_prev.tr();
    final daysTr =
        LocaleKeys.commandCenter_somedays.tr(args: ['${data.duration}']);
    final formattedValue = FormatUtil.int.format(data.prevValue ?? 0);
    final text = 'vs \$$formattedValue $prevTr $daysTr';
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
}
