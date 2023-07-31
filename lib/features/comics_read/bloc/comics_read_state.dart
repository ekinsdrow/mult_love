part of 'comics_read_bloc.dart';

@freezed
class ComicsReadState with _$ComicsReadState {
  const factory ComicsReadState.loading() = _Loading;
  const factory ComicsReadState.error() = _Error;
  const factory ComicsReadState.success({
    required ComicsModelPage comicsPage,
  }) = _Success;
}
