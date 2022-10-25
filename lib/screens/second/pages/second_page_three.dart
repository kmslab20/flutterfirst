import 'package:flutter/material.dart';
import 'package:flutterfirst/component/ex_item_container.dart';
import 'package:flutterfirst/data/ex_list_model.dart';
import 'package:get/get.dart';

import '../../../count_controller_with_reactive.dart';

class MySecondPageFragmentThree extends StatelessWidget {
  const MySecondPageFragmentThree({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final CountControllerWithReactive c = Get.put(CountControllerWithReactive());

    return Scaffold(
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Upper",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Expanded(child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: ListView.builder(
                      itemCount: exList.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ExItem(exModel: exList[index]);
                      }))),
            ],
          ),
        )
    );

  }
}