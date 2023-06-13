import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/app/config/di/injector.dart';
import 'package:benchmark/src/app/config/navigation/app_router/app_router.dart';
import 'package:benchmark/src/presentation/bloc/home/home_cubit.dart';
import 'package:benchmark/src/presentation/models/ui_models/home/home_ui_model/home_ui_model.dart';
import 'package:benchmark/src/presentation/widgets/scaffold/common_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomeCubit _cubit = getIt<HomeCubit>();

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        AnalyticsRoute(),
        CommandCenterRoute(),
      ],
      builder: (context, child) {
        return BlocConsumer<HomeCubit, HomeState>(
          bloc: _cubit,
          listener: (context, state) {},
          buildWhen: (previous, current) {
            return current is CommonState;
          },
          builder: (context, state) {
            return state.maybeWhen(
              commonState: (model) {
                return _buildScaffold(
                  child: child,
                  model: model,
                );
              },
              orElse: () => _buildScaffold(child: child),
            );
          },
        );
      },
    );
  }

  Widget _buildScaffold({
    required Widget child,
    HomeUIModel? model,
  }) {
    return CommonScaffold(
      title: model?.appBarTitle,
      appBarColor: model?.appBarColor,
      backgroundColor: model?.backgroundColor,
      iconColor: model?.iconColor,
      child: child,
    );
  }
}
