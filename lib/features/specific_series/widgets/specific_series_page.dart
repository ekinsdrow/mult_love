import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mult_love/common/assets/constants.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/seasons/data/models/season.dart';
import 'package:mult_love/features/series/data/models/series.dart';
import 'package:mult_love/features/specific_series/bloc/specific_series_bloc/specific_series_bloc.dart';
import 'package:mult_love/features/specific_series/di/specific_series_scope.dart';

class SpecificSeriesPage extends StatelessWidget {
  const SpecificSeriesPage({
    Key? key,
    required this.season,
    required this.serial,
    required this.series,
  }) : super(key: key);

  final Serial serial;
  final Season season;
  final Series series;

  @override
  Widget build(BuildContext context) {
    return SpecificSeriesScope(
      series: series,
      serial: serial,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(
              Constants.mediumPadding,
            ),
            child: BlocBuilder<SpecificSeriesBloc, SpecificSeriesState>(
              builder: (context, state) => state.when(
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: () => const Center(
                  child: Text('Ошибка при запросе серии'),
                ),
                success: (series) => Center(
                  child: Text(
                    series.videoLink,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
