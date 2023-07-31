import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mult_love/features/comics_read/data/models/comics_page.dart';
import 'package:mult_love/features/comics_read/data/repositories/comics_read_repository.dart';

part 'comics_read_event.dart';
part 'comics_read_state.dart';
part 'comics_read_bloc.freezed.dart';

class ComicsReadBloc extends Bloc<ComicsReadEvent, ComicsReadState> {
  ComicsReadBloc({
    required this.comicsReadRepository,
  }) : super(const _Loading()) {
    on<_Fetch>(_fetch);
    on<_NextPage>(_nextPage);
  }

  final IComicsReadRepository comicsReadRepository;

  Future<void> _fetch(
    _Fetch event,
    Emitter<ComicsReadState> emit,
  ) async {
    emit(const _Loading());

    try {
      final page = await comicsReadRepository.getComicsRead(
        url: event.url,
        page: 1,
        serialUrl: event.serialUrl,
      );

      emit(
        _Success(
          comicsPage: page,
        ),
      );
    } catch (_) {
      emit(const _Error());
    }
  }

  Future<void> _nextPage(
    _NextPage event,
    Emitter<ComicsReadState> emit,
  ) async {
    emit(const _Loading());

    try {
      final page = await comicsReadRepository.getComicsRead(
        url: event.url,
        page: event.number,
        serialUrl: event.serialUrl,
      );

      emit(
        _Success(
          comicsPage: page,
        ),
      );
    } catch (_) {
      emit(const _Error());
    }
  }
}
