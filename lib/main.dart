import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practice_f12/api_bloc_implementation/album_api_design.dart';
import 'package:flutter_bloc_practice_f12/api_vanilla_implementation/album_vanilla_api_page_design.dart';
import 'package:flutter_bloc_practice_f12/counter_block_vanilla_implementation/bloc/counter_block.dart';
import 'package:flutter_bloc_practice_f12/counter_block_vanilla_implementation/events/counter_events.dart';
import 'package:flutter_bloc_practice_f12/counter_bloc_implementation/bloc/counter_bloc.dart';
import 'package:flutter_bloc_practice_f12/counter_bloc_implementation/counter_page_design.dart';

import 'api_bloc_implementation/bloc/album_api_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: BlocProvider<CounterBloc>(
      //   create: (context) => CounterBloc(),
      //   child: const CounterPageDesign(),
      // ),
      home: BlocProvider<AlbumApiBloc>(
        create: (context) => AlbumApiBloc(),
        // child: const MyHomePage(title: 'Flutter Demo Home Page'),
        child: const AlbumApiDesign(),
      ),
      // home: const CounterBlockVanillaImplementationDesignPage(
      //     title: "Counter Bloc vanilla Implementation"),

      // home: const AlbumVanillaApiPageDesign(),
    );
  }
}

// class CounterBlockVanillaImplementationDesignPage extends StatefulWidget {
//   const CounterBlockVanillaImplementationDesignPage(
//       {super.key, required this.title});

//   final String title;

//   @override
//   State<CounterBlockVanillaImplementationDesignPage> createState() =>
//       _CounterBlockVanillaImplementationDesignPageState();
// }

// class _CounterBlockVanillaImplementationDesignPageState
//     extends State<CounterBlockVanillaImplementationDesignPage> {
//   // make the final constructor of of the bloc  .

//   final CounterBloc _counterBloc = CounterBloc();

//   void _incrementCounter() {
//     _counterBloc.counterEventSink.add(CounterIncrementEvent());
//   }

//   void _decrementCounter() {
//     _counterBloc.counterEventSink.add(CounterDecrementEvent());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text(widget.title),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text(
//                 'You have pushed the button this many times:',
//               ),
//               StreamBuilder(
//                   stream: _counterBloc.counterStreamState,
//                   builder: (context, snapshot) {
//                     if (snapshot.hasData) {
//                       return Text(
//                         snapshot.data!.counter.toString(),
//                         style: Theme.of(context).textTheme.headlineMedium,
//                       );
//                     } else {
//                       return const Text(
//                         '0',
//                       );
//                     }
//                   }),
//             ],
//           ),
//         ),
//         floatingActionButton: ButtonBar(
//           children: [
//             FloatingActionButton(
//               onPressed: _incrementCounter,
//               tooltip: 'Increment',
//               child: const Icon(Icons.add),
//             ),
//             const SizedBox(
//               width: 50,
//             ),
//             FloatingActionButton(
//               onPressed: _decrementCounter,
//               tooltip: 'Decrement',
//               child: const Icon(Icons.remove),
//             ),
//           ],
//         ));
//   }
// }
