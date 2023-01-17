part of 'load_file_cubit.dart';

@freezed
class LoadFileState with _$LoadFileState {
  const factory LoadFileState.initial() = _Initial;
  const factory LoadFileState.loading() = _Loading;
  const factory LoadFileState.dataLoaded(List<Content> data) = _DataLoaded;
}
