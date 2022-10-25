import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../count_controller_with_reactive.dart';

class MySecondPageFragmentTwo extends StatelessWidget {
  const MySecondPageFragmentTwo({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final CountControllerWithReactive c = Get.put(CountControllerWithReactive());

    return Scaffold(
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times @.@:',
              ),
              Obx(() {
                return Text(
                    '${c.count}',
                    style: Theme.of(context).textTheme.headline4,
                  );
              })
            ],
          ),
        ),
        floatingActionButton:  FloatingActionButton(
            onPressed: () => c.increase(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          )
    );

  }
}