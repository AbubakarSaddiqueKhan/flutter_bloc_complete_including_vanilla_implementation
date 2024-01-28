import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/counter_bloc.dart';

class CounterPageDesign extends StatefulWidget {
  const CounterPageDesign({super.key});

  @override
  State<CounterPageDesign> createState() => _CounterPageDesignState();
}

class _CounterPageDesignState extends State<CounterPageDesign> {
  // final CounterBloc _counterBloc = CounterBloc();
  @override
  Widget build(BuildContext context) {
    void increment() {
      context.read<CounterBloc>().add(CounterIncrementEvent());
    }

    void decrement() {
      context.read<CounterBloc>().add(CounterDecrementEvent());
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Page Design"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  state.count.toString(),
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                );
              },
            ),
            SizedBox(
              width: 700,
              height: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: decrement,
                    child: Container(
                      width: 200,
                      height: 60,
                      alignment: Alignment.center,
                      color: Colors.blue,
                      child: const Text("Decrement"),
                    ),
                  ),
                  InkWell(
                    onTap: increment,
                    child: Container(
                      width: 200,
                      height: 60,
                      alignment: Alignment.center,
                      color: Colors.amber,
                      child: const Text("Increment"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
