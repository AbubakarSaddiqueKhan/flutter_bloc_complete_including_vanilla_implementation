// // Make a class of the album api  block

// import 'dart:async';

// import 'package:flutter_bloc_practice_f12/api_vanilla_implementation/album_model.dart';
// import 'package:flutter_bloc_practice_f12/api_vanilla_implementation/album_service.dart';
// import 'package:flutter_bloc_practice_f12/api_vanilla_implementation/events/album_events.dart';
// import 'package:flutter_bloc_practice_f12/api_vanilla_implementation/states/album_state.dart';

// class AlbumApiBloc {
//   // Make the stream controller for both of the state's and the event's .

//   final StreamController<AlbumApiEvents> _albumEventStreamController =
//       StreamController<AlbumApiEvents>();
//   final StreamController<AlbumApiState> _albumStateStreamController =
//       StreamController<AlbumApiState>();

//   // Make the getter of the stream of the album state .

//   Stream<AlbumApiState> get albumStateStream =>
//       _albumStateStreamController.stream;

//   StreamSink<AlbumApiEvents> get albumEventSink =>
//       _albumEventStreamController.sink;

//   // Now make a constructor of the album bloc class .

//   AlbumApiBloc() {
//     // When the constructor of the album api bloc is called then we have to add the initial state in the state stream controller .

//     _albumStateStreamController.add(AlbumApiInitialState());
//     _albumEventStreamController.stream.listen(mapEventToState);
//   }

//   void mapEventToState(AlbumApiEvents albumApiEvents) async {
//     AlbumService albumService = AlbumService();

//     if (albumApiEvents is AlbumApiFetchEvent) {
//       _albumStateStreamController.add(AlbumApiInitialState());
//       try {
//         // Now it's time to add the loading widget
//         _albumStateStreamController.add(AlbumApiLoadingState());
//         // Now it's time to fetch the data using the api service
//         List<AlbumModel> albums = await albumService.fetchAlbums();
//         // now we have to add the above fetched album's in the album loaded state and ad the loaded state in the stream of states .
//         _albumStateStreamController.add(AlbumLoadedState(albums: albums));
//       } catch (e) {
//         _albumStateStreamController
//             .add(AlbumApiErrorState(message: e.toString()));
//       }
//     } else {}
//   }
// }
