import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/generated/assets/assets.gen.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/app/core/utils/format_util.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/containers/divider_gradient_container.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class FollowersCard extends StatelessWidget {
  const FollowersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CommandCenterCard(
      minWidth: 250,
      width: MediaQuery.of(context).size.width / 3,
      title: LocaleKeys.commandCenter_followersHeader.tr(),
      child: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildFirstRow(context),
        const SizedBox(height: 20),
        const DividerGradientContainer(),
        const SizedBox(height: 20),
        _buildSecondRow(context),
      ],
    );
  }

  Widget _buildFirstRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildMediaContainer(
          context,
          iconPath: Assets.icons.facebookLogo.path,
          amount: 26472,
          subtitle: LocaleKeys.commandCenter_likes.tr(),
        ),
        _buildMediaContainer(
          context,
          iconPath: Assets.icons.youtubeLogo.path,
          amount: 13911,
          subtitle: LocaleKeys.commandCenter_subscribers.tr(),
        ),
        _buildMediaContainer(
          context,
          iconPath: Assets.icons.instagramLogo.path,
          amount: 6524,
          subtitle: LocaleKeys.commandCenter_followers.tr(),
        ),
      ],
    );
  }

  Widget _buildSecondRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildMediaContainer(
          context,
          iconPath: Assets.icons.googlePlusLogo.path,
          amount: 5093,
          subtitle: LocaleKeys.commandCenter_circledBy.tr(),
        ),
        _buildMediaContainer(
          context,
          iconPath: Assets.icons.twitterLogo.path,
          amount: 45322,
          subtitle: LocaleKeys.commandCenter_followers.tr(),
        ),
        _buildMediaContainer(
          context,
          iconPath: Assets.icons.linkedinLogo.path,
          amount: 1765,
          subtitle: LocaleKeys.commandCenter_followers.tr(),
        ),
      ],
    );
  }

  Widget _buildMediaContainer(
    BuildContext context, {
    String? iconPath,
    int? amount,
    String? subtitle,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildIcon(
          iconPath ?? '',
        ),
        const SizedBox(height: 5),
        _buildAmount(
          context,
          amount: amount,
        ),
        _buildSubtitle(
          context,
          text: subtitle,
        ),
      ],
    );
  }

  Widget _buildIcon(String path) {
    return Image.asset(
      path,
      width: 30,
      height: 30,
    );
  }

  Widget _buildAmount(
    BuildContext context, {
    int? amount,
  }) {
    final formatter = FormatUtil.getNumberFormat();
    final value = formatter.format(amount);
    return Text(
      value,
      style: CommandCenterTextTheme.of(context)
          ?.headerMediumTextStyle
          ?.withOpacity(
            0.75,
          ),
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
    );
  }
}
