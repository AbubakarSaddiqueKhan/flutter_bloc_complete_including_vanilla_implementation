part of 'album_api_bloc.dart';

// Make all of the possible event's .
// In our case we have only one event of fetch Albums ( or you make two event's for albums and album fetch ) .

// Must use the immutable annotation with all of the event's .
@immutable
sealed class AlbumApiEvent {}

@immutable
final class FetchAlbumsEvent extends AlbumApiEvent {}
