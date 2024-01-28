import 'package:flutter/material.dart';
import 'package:flutter_bloc_practice_f12/api_vanilla_implementation/album_model.dart';

class ALbumLoadedWidget extends StatelessWidget {
  const ALbumLoadedWidget({super.key, required this.albums});

  final List<AlbumModel> albums;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: albums.length,
      itemBuilder: (context, index) => ListTile(
        leading: CircleAvatar(
          child: Text(albums[index].id.toString()),
        ),
        title: Text(albums[index].title),
        trailing: Text(albums[index].userId.toString()),
      ),
    );
  }
}
