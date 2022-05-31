import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/main/data/repository/serials_repository.dart';

part 'serials_event.dart';
part 'serials_state.dart';
part 'serials_bloc.freezed.dart';

class SerialsBloc extends Bloc<SerialsEvent, SerialsState> {
  final ISerialsRepository serialsRepository;

  SerialsBloc({
    required this.serialsRepository,
  }) : super(const _Loading()) {
    on<SerialsEvent>(_fetch);
  }

  FutureOr<void> _fetch(
    SerialsEvent event,
    Emitter<SerialsState> emit,
  ) async {
    emit(
      const _Loading(),
    );
    try {
      final serials = await serialsRepository.getSerials();

      emit(
        _Success(serials: serials),
      );
    } catch (e) {
      emit(
        const _Error(),
      );
    }
  }
}
