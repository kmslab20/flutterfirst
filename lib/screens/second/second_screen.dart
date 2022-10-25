import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/second/pages/second_page_four.dart';
import 'package:flutterfirst/screens/second/pages/second_page_one.dart';
import 'package:flutterfirst/screens/second/pages/second_page_three.dart';
import 'package:flutterfirst/screens/second/pages/second_page_two.dart';

class MySecondPage extends StatefulWidget {
  const MySecondPage({super.key, required this.title});

  final String title;

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  int _counter = 0;
  int _tabIndex = 0;
  final _fragments = [const MySecondPageFragmentOne(title: 'first',),
    const MySecondPageFragmentTwo(title: 'second'),
    const MySecondPageFragmentThree(title: 'three'),
    const MySecondPageFragmentFour(title: 'four')];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: _fragments[_tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() {
          _tabIndex = index;
        }),
        currentIndex: _tabIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Tab1',
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: 'Tab2',
              icon: Icon(Icons.home_filled)
          ),
          BottomNavigationBarItem(
              label: 'Tab3',
              icon: Icon(Icons.list)
          ),
          BottomNavigationBarItem(
              label: 'Tab4',
              icon: Icon(Icons.list_outlined)
          )],
      ),
    );
  }
}