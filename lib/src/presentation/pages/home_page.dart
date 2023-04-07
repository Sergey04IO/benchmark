import 'dart:async';

import 'package:benchmark/src/app/config/di/injector.dart';
import 'package:benchmark/src/app/core/constants/app_colors.dart';
import 'package:benchmark/src/domain/entities/area/area_entity.dart';
import 'package:benchmark/src/domain/entities/sector_index/sector_index_entity.dart';
import 'package:benchmark/src/presentation/bloc/home/home_cubit.dart';
import 'package:benchmark/src/presentation/bloc/settings/settings_cubit.dart';
import 'package:benchmark/src/presentation/models/ui_models/home/home_ui_model.dart';
import 'package:benchmark/src/presentation/widgets/buttons/radio_buttons.dart';
import 'package:benchmark/src/presentation/widgets/cards/area_card.dart';
import 'package:benchmark/src/presentation/widgets/cards/benchmark_card.dart';
import 'package:benchmark/src/presentation/widgets/cards/index_card.dart';
import 'package:benchmark/src/presentation/widgets/cards/sectors_overview_card.dart';
import 'package:benchmark/src/presentation/widgets/indicators/common_loading_indicator.dart';
import 'package:benchmark/src/presentation/widgets/navigation/app_drawer.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeCubit _cubit = getIt<HomeCubit>();
  final SettingsCubit _settingsCubit = getIt<SettingsCubit>();
  final double _horizontalPadding = 30;
  final double _betweenPadding = 20;

  late StreamSubscription<SettingsState> _settingsStream;

  @override
  void initState() {
    super.initState();
    _settingsCubit.getDataSource();
    _settingsStream = _settingsCubit.stream.listen((state) {
      state.maybeWhen(
        gsheetsData: () {
          _cubit.getData();
        },
        excelData: (file) async {
          _cubit.getData(excelFile: file?.excel);
        },
        orElse: () {},
      );
    });
  }

  @override
  void dispose() {
    _settingsStream.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _buildConsumer();
  }

  Widget _buildConsumer() {
    return BlocConsumer<HomeCubit, HomeState>(
      bloc: _cubit,
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeWhen(
          loading: _buildLoading,
          data: _buildContent,
          error: _buildError,
          orElse: SizedBox.shrink,
        );
      },
    );
  }

  Widget _buildContent(HomeUIModel model) {
    return _buildScaffold(
      title: RadioButtons(
        values: model.dates,
        onSelected: (value) {
          _cubit.onSelectedDate(value);
        },
      ),
      child: _buildBody(model),
    );
  }

  Widget _buildLoading() {
    return _buildScaffold(
      child: const CommonLoadingIndicator(),
    );
  }

  Widget _buildError(String error) {
    return _buildScaffold(
      child: Center(
        child: Text(error),
      ),
    );
  }

  Widget _buildScaffold({
    required Widget child,
    Widget? title,
  }) {
    return Scaffold(
      backgroundColor: AppColors.grey2F3,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(243, 243, 243, 1),
        titleSpacing: 0,
        title: title,
        iconTheme: const IconThemeData(color: AppColors.primaryColor),
      ),
      drawer: Drawer(
        child: AppDrawer(),
      ),
      body: SizedBox(
        width: double.infinity,
        child: child,
      ),
    );
  }

  Widget _buildBody(HomeUIModel uiModel) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: _horizontalPadding,
        ),
        child: width > 1200
            ? _buildTwoRowsContent(uiModel)
            : _buildOneRowContent(uiModel),
      ),
    );
  }

  Widget _buildOneRowContent(HomeUIModel uiModel) {
    return Column(
      children: [
        BenchmarkCard(
          models: uiModel.tornadoData?[uiModel.selectedDate] ?? [],
          width: _getContentWidth(),
          selectedDate: uiModel.selectedDate,
        ),
        const SizedBox(height: 20),
        _buildAreaChartCards(uiModel),
        const SizedBox(height: 20),
        SectorsOverviewCard(
          width: _getContentWidth(),
          models: uiModel.sectorsOverviewData?[uiModel.selectedDate] ?? [],
        ),
        const SizedBox(height: 20),
        _buildIndexChartCards(uiModel),
      ],
    );
  }

  Widget _buildTwoRowsContent(HomeUIModel uiModel) {
    return Column(
      children: [
        Row(
          children: [
            BenchmarkCard(
              models: uiModel.tornadoData?[uiModel.selectedDate] ?? [],
              width: _getContentWidth(),
              selectedDate: uiModel.selectedDate,
            ),
            SizedBox(width: _betweenPadding),
            SectorsOverviewCard(
              height: _getBenchmarkCardHeight(uiModel),
              width: _getContentWidth(),
              models: uiModel.sectorsOverviewData?[uiModel.selectedDate] ?? [],
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            _buildAreaChartCards(uiModel),
            SizedBox(width: _betweenPadding),
            _buildIndexChartCards(uiModel),
          ],
        ),
      ],
    );
  }

  Widget _buildAreaChartCards(HomeUIModel model) {
    return SizedBox(
      width: _getContentWidth(),
      child: _buildOneRowOfAreaCards(model),
    );
  }

  Widget _buildOneRowOfAreaCards(HomeUIModel uiModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (uiModel.areasData != null &&
            uiModel.areasData![uiModel.selectedDate] != null)
          ...uiModel.areasData![uiModel.selectedDate]!.mapIndexed(
            (index, model) {
              final length = uiModel.areasData![uiModel.selectedDate]!.length;
              final width = MediaQuery.of(context).size.width;
              if (width < 650 && _isLastElement(index, length)) {
                return const SizedBox();
              }
              return _buildAreaCard(
                index: index,
                model: model,
                length: length,
                uiModel: uiModel,
              );
            },
          ).toList(),
      ],
    );
  }

  Widget _buildAreaCard({
    int index = 0,
    required AreaEntity model,
    required HomeUIModel uiModel,
    required int length,
  }) {
    final width = MediaQuery.of(context).size.width;
    final isFirst = index == 0;
    final isLastInRow = _isLastElement(index, length) || width < 650;
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: isFirst
                  ? const EdgeInsets.only(right: 10)
                  : EdgeInsets.only(
                      left: 10,
                      right: isLastInRow ? 0 : 10,
                    ),
              child: AreaCard(
                height: _getIndexCardHeight(uiModel),
                model: model,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndexChartCards(HomeUIModel model) {
    return SizedBox(
      width: _getContentWidth(),
      child: _buildRowOfIndexCards(model),
    );
  }

  Widget _buildRowOfIndexCards(HomeUIModel uiModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (uiModel.sectorsIndexData != null &&
            uiModel.sectorsIndexData![uiModel.selectedDate] != null)
          ...uiModel.sectorsIndexData![uiModel.selectedDate]!.mapIndexed(
            (index, model) {
              final length =
                  uiModel.sectorsIndexData![uiModel.selectedDate]!.length;
              final width = MediaQuery.of(context).size.width;
              if (width < 650 && _isLastElement(index, length)) {
                return const SizedBox();
              }
              return _buildIndexCard(
                index: index,
                model: model,
                length: length,
              );
            },
          ).toList(),
      ],
    );
  }

  Widget _buildIndexCard({
    int index = 0,
    required SectorIndexEntity model,
    required int length,
  }) {
    final width = MediaQuery.of(context).size.width;
    final isFirst = index == 0;
    final isLastInRow = _isLastElement(index, length) || width < 650;
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: isFirst
                  ? const EdgeInsets.only(right: 10)
                  : EdgeInsets.only(
                      left: 10,
                      right: isLastInRow ? 0 : 10,
                    ),
              child: IndexCard(
                model: model,
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _isLastElement(int index, int lenght) {
    return index == lenght - 1;
  }

  double _getContentWidth() {
    final fullScreenEmptySpace = _betweenPadding + _horizontalPadding * 2;
    final width = MediaQuery.of(context).size.width;
    final value = width <= 800
        ? width
        : width > 800 && width <= 1000
            ? (width / 4) * 3
            : width > 1000 && width <= 1200
                ? (width / 3) * 2
                : (width - fullScreenEmptySpace) / 2;
    return value;
  }

  double _getBenchmarkCardHeight(HomeUIModel model) {
    const double minHeight = 49;
    if (model.tornadoData?[model.selectedDate]?.isEmpty ?? true) {
      return minHeight;
    }
    final models = model.tornadoData?[model.selectedDate];
    final double result = minHeight + (models?.length ?? 0) * 40;
    return result;
  }

  double _getIndexCardHeight(HomeUIModel model) {
    const double minHeight = 129;
    if (model.sectorsIndexData?[model.selectedDate]?.isEmpty ?? true) {
      return minHeight;
    }
    final List<int> modelsBarsValuesLengths = [];
    model.sectorsIndexData?[model.selectedDate]?.forEach((element) {
      modelsBarsValuesLengths.add(element.values.length);
    });

    final max = modelsBarsValuesLengths.max;
    final double result = minHeight + max * 35;
    return result;
  }
}