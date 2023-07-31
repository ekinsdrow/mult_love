import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mult_love/features/comics/data/models/comics_category.dart';
import 'package:mult_love/features/comics/data/repositories/comics_category_repository.dart';

part 'comics_bloc_event.dart';
part 'comics_bloc_state.dart';
part 'comics_bloc.freezed.dart';

class ComicsBloc extends Bloc<ComicsBlocEvent, ComicsBlocState> {
  ComicsBloc({
    required this.comicsCategoryRepository,
  }) : super(const _Loading()) {
    on<ComicsBlocEvent>(_fetch);
  }

  final IComicsCategoryRepository comicsCategoryRepository;
  Future<void> _fetch(
    ComicsBlocEvent event,
    Emitter<ComicsBlocState> emit,
  ) async {
    emit(const _Loading());

    try {
      final comicsCategories =
          await comicsCategoryRepository.getComicsCategories(
        url: event.url,
        serialUrl: event.serialUrl,
      );

      emit(
        _Success(
          comicsCategories: comicsCategories,
        ),
      );
    } catch (_) {
      emit(const _Error());
      rethrow;
    }
  }
}
