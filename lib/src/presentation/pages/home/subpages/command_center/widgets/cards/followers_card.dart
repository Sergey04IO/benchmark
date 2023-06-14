import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/generated/assets/assets.gen.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/app/core/utils/format_util.dart';
import 'package:benchmark/src/data/helper/models/command_center/followers/followers_help_model.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/containers/divider_gradient_container.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class FollowersCard extends StatefulWidget {
  const FollowersCard({
    super.key,
    this.height = 265,
    this.width,
    this.model,
  });

  final double height;
  final double? width;
  final FollowersHelpModel? model;

  @override
  State<FollowersCard> createState() => _FollowersCardState();
}

class _FollowersCardState extends State<FollowersCard>
    with SingleTickerProviderStateMixin {
  final NumberFormat _numberFormat = FormatUtil.int;

  late AnimationController _controller;
  late CurvedAnimation _animation;

  late Tween<double> _facebookTween;
  late Tween<double> _youtubeTween;
  late Tween<double> _instagramTween;
  late Tween<double> _googlePlusTween;
  late Tween<double> _twitterTween;
  late Tween<double> _linkedInTween;

  late Animation<double> _facebookAnimation;
  late Animation<double> _youtubeAnimation;
  late Animation<double> _instagramAnimation;
  late Animation<double> _googlePlusAnimation;
  late Animation<double> _twitterAnimation;
  late Animation<double> _linkedInAnimation;

  @override
  void initState() {
    super.initState();
    _init();
    _controller.forward();
  }

  @override
  void didUpdateWidget(covariant FollowersCard oldWidget) {
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
      minWidth: 250,
      height: widget.height,
      width: widget.width,
      title: LocaleKeys.commandCenter_followersHeader.tr(),
      child: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return _buildBody();
      },
    );
  }

  Widget _buildBody() {
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
      children: [
        Expanded(
          child: _buildMediaContainer(
            context,
            iconPath: Assets.icons.facebookLogo.path,
            amount: _facebookAnimation.value,
            subtitle: LocaleKeys.commandCenter_likes.tr(),
          ),
        ),
        Expanded(
          child: _buildMediaContainer(
            context,
            iconPath: Assets.icons.youtubeLogo.path,
            amount: _youtubeAnimation.value,
            subtitle: LocaleKeys.commandCenter_subscribers.tr(),
          ),
        ),
        Expanded(
          child: _buildMediaContainer(
            context,
            iconPath: Assets.icons.instagramLogo.path,
            amount: _instagramAnimation.value,
            subtitle: LocaleKeys.commandCenter_followers.tr(),
          ),
        ),
      ],
    );
  }

  Widget _buildSecondRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildMediaContainer(
            context,
            iconPath: Assets.icons.googlePlusLogo.path,
            amount: _googlePlusAnimation.value,
            subtitle: LocaleKeys.commandCenter_circledBy.tr(),
          ),
        ),
        Expanded(
          child: _buildMediaContainer(
            context,
            iconPath: Assets.icons.twitterLogo.path,
            amount: _twitterAnimation.value,
            subtitle: LocaleKeys.commandCenter_followers.tr(),
          ),
        ),
        Expanded(
          child: _buildMediaContainer(
            context,
            iconPath: Assets.icons.linkedinLogo.path,
            amount: _linkedInAnimation.value,
            subtitle: LocaleKeys.commandCenter_followers.tr(),
          ),
        ),
      ],
    );
  }

  Widget _buildMediaContainer(
    BuildContext context, {
    String? iconPath,
    double? amount,
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
    double? amount,
  }) {
    final value = _getFormattedValue(amount);
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

  void _init() {
    _controller = AnimationController(
      vsync: this,
      duration: CommonConstants.numbersAnimDuration,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    );
    _facebookTween = Tween(
      begin: 0,
      end: _getValue(widget.model?.facebook),
    );
    _youtubeTween = Tween(
      begin: 0,
      end: _getValue(widget.model?.youtube),
    );
    _instagramTween = Tween(
      begin: 0,
      end: _getValue(widget.model?.instagram),
    );
    _googlePlusTween = Tween(
      begin: 0,
      end: _getValue(widget.model?.googlePlus),
    );
    _twitterTween = Tween(
      begin: 0,
      end: _getValue(widget.model?.twitter),
    );
    _linkedInTween = Tween(
      begin: 0,
      end: _getValue(widget.model?.linkedIn),
    );
    _facebookAnimation = _facebookTween.animate(_animation);
    _youtubeAnimation = _youtubeTween.animate(_animation);
    _instagramAnimation = _instagramTween.animate(_animation);
    _googlePlusAnimation = _googlePlusTween.animate(_animation);
    _twitterAnimation = _twitterTween.animate(_animation);
    _linkedInAnimation = _linkedInTween.animate(_animation);
  }

  void _update() {
    _facebookTween.begin = _isAnimating(_facebookAnimation)
        ? _facebookAnimation.value
        : _facebookTween.end;
    _youtubeTween.begin = _isAnimating(_youtubeAnimation)
        ? _youtubeAnimation.value
        : _youtubeTween.end;
    _instagramTween.begin = _isAnimating(_instagramAnimation)
        ? _instagramAnimation.value
        : _instagramTween.end;
    _googlePlusTween.begin = _isAnimating(_googlePlusAnimation)
        ? _googlePlusAnimation.value
        : _googlePlusTween.end;
    _twitterTween.begin = _isAnimating(_twitterAnimation)
        ? _twitterAnimation.value
        : _twitterTween.end;
    _linkedInTween.begin = _isAnimating(_linkedInAnimation)
        ? _linkedInAnimation.value
        : _linkedInTween.end;
    _controller.reset();
    _facebookTween.end = _getValue(widget.model?.facebook);
    _youtubeTween.end = _getValue(widget.model?.youtube);
    _instagramTween.end = _getValue(widget.model?.instagram);
    _googlePlusTween.end = _getValue(widget.model?.googlePlus);
    _twitterTween.end = _getValue(widget.model?.twitter);
    _linkedInTween.end = _getValue(widget.model?.linkedIn);
    _controller.forward();
  }

  bool _isAnimating(Animation<double>? animation) {
    return animation?.status == AnimationStatus.forward;
  }

  String _getFormattedValue(double? amount) {
    final value = _numberFormat.format(amount ?? 0);
    return value;
  }

  double _getValue(int? value) {
    final double result = value?.toDouble() ?? 0.0;
    return result;
  }
}
