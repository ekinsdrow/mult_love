import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mult_love/features/comics_category/data/models/comics.dart';
import 'package:mult_love/features/comics_category/data/repositories/comics_repository.dart';

part 'comics_category_event.dart';
part 'comics_category_state.dart';
part 'comics_category_bloc.freezed.dart';

class ComicsCategoryBloc
    extends Bloc<ComicsCategoryEvent, ComicsCategoryState> {
  ComicsCategoryBloc({
    required this.comicsRepository,
  }) : super(const _Loading()) {
    on<ComicsCategoryEvent>(_fetch);
  }

  final IComicsRepository comicsRepository;
  Future<void> _fetch(
    ComicsCategoryEvent event,
    Emitter<ComicsCategoryState> emit,
  ) async {
    emit(const _Loading());

    try {
      final comicses =
          await comicsRepository.getComics(
        url: event.url,
        serialUrl: event.serialUrl,
      );

      emit(
        _Success(
          comicses: comicses,
        ),
      );
    } catch (_) {
      emit(const _Error());
      rethrow;
    }
  }
}
