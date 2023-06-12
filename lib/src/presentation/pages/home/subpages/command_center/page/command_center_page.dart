import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/app/config/di/injector.dart';
import 'package:benchmark/src/app/core/enums/home_page.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/data/helper/model_helper/samples.dart';
import 'package:benchmark/src/presentation/bloc/command_center/command_center_cubit.dart';
import 'package:benchmark/src/presentation/bloc/home/home_cubit.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/layouts/desktop_layout.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/layouts/mobile_layout.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/layouts/tablet_layout.dart';
import 'package:benchmark/src/presentation/widgets/buttons/radio_buttons.dart';
import 'package:benchmark/src/presentation/widgets/indicators/scale_dots_loading_indicator.dart';
import 'package:benchmark/src/presentation/widgets/scrolling/app_scrollbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CommandCenterPage extends StatefulWidget {
  const CommandCenterPage({super.key});

  @override
  State<CommandCenterPage> createState() => _CommandCenterPageState();
}

class _CommandCenterPageState extends State<CommandCenterPage> {
  final CommandCenterCubit _cubit = getIt<CommandCenterCubit>();
  final HomeCubit _homeCubit = getIt<HomeCubit>();

  late double width;
  bool isInitialized = false;

  @override
  void initState() {
    super.initState();
    _homeCubit.stream.listen((event) {
      event.maybeWhen(
        commonState: (model) {
          if (model.page.isCommandCenter && model.appBarTitle == null) {
            _init();
          }
        },
        orElse: () {},
      );
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!isInitialized) {
      _init();
      isInitialized = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return AppScrollbar(
      child: _buildConsumer(),
    );
  }

  Widget _buildConsumer() {
    return BlocConsumer<CommandCenterCubit, CommandCenterState>(
      bloc: _cubit,
      listener: (context, state) {},
      buildWhen: (previous, current) {
        return current is Data || current is Error || current is Loading;
      },
      builder: (context, state) {
        return state.maybeWhen(
          data: _buildContent,
          error: _buildError,
          loading: _buildLoading,
          orElse: SizedBox.shrink,
        );
      },
    );
  }

  Widget _buildContent(Sample sample) {
    if (width > 1200) {
      return CommandCenterDesktopLayout(sample: sample);
    } else if (width <= 1200 && width >= 750) {
      return CommandCenterTabletLayout(sample: sample);
    }
    return CommandCenterMobileLayout(sample: sample);
  }

  Widget _appBarTitle() {
    return RadioButtons(
      key: const ValueKey(HomePageType.commandCenter),
      values: CommandCenterSamples.samples.values.toList(),
      onSelected: _cubit.onSampleChanged,
      selectedColor: AppColors.blue0F3,
      unselectedTextColor: AppColors.grey0A4,
    );
  }

  Widget _buildError(String error) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Text(error),
      ),
    );
  }

  Widget _buildLoading() {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: const ScaleDotsLoadingIndicator(),
      ),
    );
  }

  void _init() {
    _homeCubit.setCommandCenterTheme(
      context,
      title: _appBarTitle(),
    );
    _cubit.init();
  }
}
