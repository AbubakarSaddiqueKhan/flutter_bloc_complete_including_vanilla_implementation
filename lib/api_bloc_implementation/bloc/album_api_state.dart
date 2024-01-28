part of 'album_api_bloc.dart';

// Make all of the possible states .
// In our case of api we only have the following 4 states .

@immutable
sealed class AlbumApiState {
  const AlbumApiState();
}

final class AlbumApiInitialState extends AlbumApiState {}

final class AlbumApiLoadingState extends AlbumApiState {}

final class AlbumApiLoadedState extends AlbumApiState {
  final List<AlbumModel> albums;

  const AlbumApiLoadedState({required this.albums});
}

final class AlbumApiErrorState extends AlbumApiState {
  final String errorMessage;
  const AlbumApiErrorState({required this.errorMessage});
}
