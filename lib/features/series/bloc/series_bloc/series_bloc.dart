import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/seasons/data/models/season.dart';
import 'package:mult_love/features/series/data/models/series.dart';
import 'package:mult_love/features/series/data/repositories/series_repository.dart';

part 'series_event.dart';
part 'series_state.dart';
part 'series_bloc.freezed.dart';

class SeriesBloc extends Bloc<SeriesEvent, SeriesState> {
  final ISeriesRepository seriesRepository;

  SeriesBloc({
    required this.seriesRepository,
  }) : super(
          const _Loading(),
        ) {
    on<SeriesEvent>(_fetch);
  }

  FutureOr<void> _fetch(
    SeriesEvent event,
    Emitter<SeriesState> emit,
  ) async {
    emit(
      const _Loading(),
    );
    try {
      final series = await seriesRepository.getSeries(
        season: event.season,
        serial: event.serial,
      );

      emit(
        _Success(
          series: series,
        ),
      );
    } catch (e) {
      emit(
        const _Error(),
      );
    }
  }
}
