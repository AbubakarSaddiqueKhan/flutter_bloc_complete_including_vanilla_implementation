// import 'package:flutter/material.dart';

// import '../album_model.dart';

// // Make an abstract class of the name album state this will become the parent class of all of the possible state's .

// // Must add the annotation of the immutable with all of the possible classes of state's .
// @immutable
// abstract class AlbumApiState {
//   const AlbumApiState();
// }

// // There are only four possible state's for fetching api's in our case .

// @immutable
// class AlbumApiInitialState extends AlbumApiState {}

// @immutable
// class AlbumApiLoadingState extends AlbumApiState {}

// @immutable
// class AlbumLoadedState extends AlbumApiState {
//   final List<AlbumModel> albums;
//   const AlbumLoadedState({required this.albums});
// }

// @immutable
// class AlbumApiErrorState extends AlbumApiState {
//   final String message;
//   const AlbumApiErrorState({required this.message});
// }
