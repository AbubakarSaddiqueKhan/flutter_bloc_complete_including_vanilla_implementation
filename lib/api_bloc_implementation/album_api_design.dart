import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practice_f12/api_bloc_implementation/bloc/album_api_bloc.dart';

import 'album_model.dart';

// use the block builder at the home property of the material app  or at the top of the widget tree .
// To access or consume your block at any where you want's .

class AlbumApiDesign extends StatefulWidget {
  const AlbumApiDesign({super.key});

  @override
  State<AlbumApiDesign> createState() => _AlbumApiDesignState();
}

class _AlbumApiDesignState extends State<AlbumApiDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Album API Design Page"),
        centerTitle: true,
      ),
      body: Center(
        // Bloc builder is used to build the widget's base on the bloc and return the corresponding widget's based on the state .
        child: BlocBuilder<AlbumApiBloc, AlbumApiState>(
          builder: (context, albumState) {
            if (albumState is AlbumApiInitialState) {
              return const AlbumInitialWidget();
            } else if (albumState is AlbumApiLoadingState) {
              return const AlbumLoadingWidget();
            } else if (albumState is AlbumApiLoadedState) {
              return AlbumLoadedWidget(albums: albumState.albums);
            } else {
              return AlbumErrorWidget(
                  errorMessage:
                      (albumState as AlbumApiErrorState).errorMessage);
            }
          },
        ),
      ),
    );
  }
}

class AlbumInitialWidget extends StatelessWidget {
  const AlbumInitialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
      onTap: () {
        context.read<AlbumApiBloc>().add(FetchAlbumsEvent());
      },
      child: Container(
        width: 300,
        height: 70,
        color: Colors.blueGrey,
        alignment: Alignment.center,
        child: const Text(
          "Fetch Data",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    ));
  }
}

class AlbumLoadingWidget extends StatelessWidget {
  const AlbumLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class AlbumLoadedWidget extends StatelessWidget {
  const AlbumLoadedWidget({super.key, required this.albums});
  final List<AlbumModel> albums;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                child: Text(albums[index].id.toString()),
              ),
              title: Text(albums[index].title),
              trailing: Text(albums[index].userId.toString()),
            ));
  }
}

class AlbumErrorWidget extends StatelessWidget {
  const AlbumErrorWidget({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text(
        errorMessage,
        style: const TextStyle(color: Colors.white, fontSize: 46),
      ),
    );
  }
}
