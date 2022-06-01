import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/series/data/models/series.dart';
import 'package:mult_love/features/specific_series/data/models/specific_series.dart';
import 'package:mult_love/features/specific_series/data/repositories/specific_series_repository.dart';

part 'specific_series_event.dart';
part 'specific_series_state.dart';
part 'specific_series_bloc.freezed.dart';

class SpecificSeriesBloc
    extends Bloc<SpecificSeriesEvent, SpecificSeriesState> {
  final ISpecificSeriesRepository specificSeriesRepository;

  SpecificSeriesBloc({
    required this.specificSeriesRepository,
  }) : super(const _Loading()) {
    on<SpecificSeriesEvent>(_fetch);
  }

  FutureOr<void> _fetch(
    SpecificSeriesEvent event,
    Emitter<SpecificSeriesState> emit,
  ) async {
    emit(
      const _Loading(),
    );

    try {
      final specificSeries = await specificSeriesRepository.getSeries(
        series: event.series,
        serial: event.serial,
      );

      emit(
        _Success(
          specificSeries,
        ),
      );
    } catch (e) {
      emit(
        const _Error(),
      );
      rethrow;
    }
  }
}
