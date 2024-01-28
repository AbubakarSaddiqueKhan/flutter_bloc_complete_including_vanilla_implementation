import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../album_model.dart';
import '../album_service.dart';

part 'album_api_event.dart';
part 'album_api_state.dart';

// The bloc is the special type of the stream  which input's the the event's and their corresponding states .
// Perform all your work'd here on the bases of which the state will be returned .
class AlbumApiBloc extends Bloc<AlbumApiEvent, AlbumApiState> {
  // Make the final constructor of the (specialized) service class .
  final AlbumService _albumService = AlbumService();
  // Pass the initial state in the parameter of the constructor of the block .
  AlbumApiBloc() : super(AlbumApiInitialState()) {
    on<FetchAlbumsEvent>((event, emit) async {
      // Here above as the template of the on we use the album api event ( general class because here we have the only one event  ) in case we have many states then we should use the generalized states .
      // Now here we will emit the state on the bases of the event's .
      emit(AlbumApiLoadingState());
      try {
        List<AlbumModel> albums = await _albumService.fetchAlbums();
        emit(AlbumApiLoadedState(albums: albums));
      } catch (e) {
        emit(AlbumApiErrorState(errorMessage: e.toString()));
      }
    });

    // on<FetchAlbumsEvent>((event, emit) {

    // },);
  }
}
