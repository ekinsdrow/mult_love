import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mult_love/features/seasons/data/models/season.dart';
import 'package:mult_love/features/seasons/data/repositories/seasons_repository.dart';

part 'seasons_event.dart';
part 'seasons_state.dart';
part 'seasons_bloc.freezed.dart';

class SeasonsBloc extends Bloc<SeasonsEvent, SeasonsState> {
  final ISeasonsRepository seasonsRepository;

  SeasonsBloc({
    required this.seasonsRepository,
  }) : super(const _Loading()) {
    on<SeasonsEvent>(_fetch);
  }

  FutureOr<void> _fetch(
    SeasonsEvent event,
    Emitter<SeasonsState> emit,
  ) async {
    emit(
      const _Loading(),
    );
    try {
      final seasons = await seasonsRepository.getSeasons(
        serialLink: event.serialLink,
      );

      emit(
        _Success(seasons: seasons),
      );
    } catch (e) {
      emit(
        const _Error(),
      );
    }
  }
}
