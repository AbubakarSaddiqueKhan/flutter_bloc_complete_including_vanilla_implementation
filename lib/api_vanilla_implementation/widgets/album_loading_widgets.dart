import 'package:flutter/material.dart';

class AlbumLoadingWidget extends StatefulWidget {
  const AlbumLoadingWidget({super.key});

  @override
  State<AlbumLoadingWidget> createState() => _AlbumLoadingWidgetState();
}

class _AlbumLoadingWidgetState extends State<AlbumLoadingWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
