// import 'package:flutter/material.dart';
// import 'package:flutter_bloc_practice_f12/api_vanilla_implementation/bloc/album_api_bloc.dart';
// import 'package:flutter_bloc_practice_f12/api_vanilla_implementation/events/album_events.dart';
// import 'package:flutter_bloc_practice_f12/api_vanilla_implementation/states/album_state.dart';
// import 'package:flutter_bloc_practice_f12/api_vanilla_implementation/widgets/album_error_widget.dart';
// import 'package:flutter_bloc_practice_f12/api_vanilla_implementation/widgets/album_initial_widget.dart';
// import 'package:flutter_bloc_practice_f12/api_vanilla_implementation/widgets/album_loaded_widget.dart';
// import 'package:flutter_bloc_practice_f12/api_vanilla_implementation/widgets/album_loading_widgets.dart';

// class AlbumVanillaApiPageDesign extends StatefulWidget {
//   const AlbumVanillaApiPageDesign({super.key});

//   @override
//   State<AlbumVanillaApiPageDesign> createState() =>
//       _AlbumVanillaApiPageDesignState();
// }

// class _AlbumVanillaApiPageDesignState extends State<AlbumVanillaApiPageDesign> {
//   final AlbumApiBloc _albumApiBloc = AlbumApiBloc();

//   void fetchApiData() {
//     print("entered");
//     _albumApiBloc.albumEventSink.add(AlbumApiFetchEvent());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Album Api's Vanilla implementation"),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: StreamBuilder(
//           stream: _albumApiBloc.albumStateStream,
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               switch (snapshot.data.runtimeType) {
//                 case AlbumApiInitialState:
//                   return const AlbumInitialWidget();
//                 case AlbumApiLoadingState:
//                   return const AlbumLoadingWidget();
//                 case AlbumLoadedState:
//                   return ALbumLoadedWidget(
//                       albums: (snapshot.data as AlbumLoadedState).albums);
//                 default:
//                   return AlbumErrorWidget(
//                       errorMessage:
//                           (snapshot.data as AlbumApiErrorState).message);
//               }
//             } else {
//               return const Text("Oops !! NO Data Found ");
//             }
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: fetchApiData,
//         child: const Icon(Icons.download_for_offline_outlined),
//       ),
//     );
//   }
// }
