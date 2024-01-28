import 'package:flutter/material.dart';
import 'package:flutter_bloc_practice_f12/api_vanilla_implementation/bloc/album_api_bloc.dart';
import 'package:flutter_bloc_practice_f12/api_vanilla_implementation/events/album_events.dart';

class AlbumInitialWidget extends StatefulWidget {
  const AlbumInitialWidget({super.key});

  @override
  State<AlbumInitialWidget> createState() => _AlbumInitialWidgetState();
}

class _AlbumInitialWidgetState extends State<AlbumInitialWidget> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      "Click on floating Action button to fetch api's",
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
