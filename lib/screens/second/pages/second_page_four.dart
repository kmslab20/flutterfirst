import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutterfirst/component/ex_item_custom_container.dart';
import 'package:flutterfirst/data/ex_list_model.dart';
import 'package:get/get.dart';

import '../../../count_controller_with_reactive.dart';

class MySecondPageFragmentFour extends StatelessWidget {
  const MySecondPageFragmentFour({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final CountControllerWithReactive c = Get.put(CountControllerWithReactive());

    return Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Upper",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child:
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: AnimationLimiter(
                      child: ListView.builder(
                        itemCount: exList.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return AnimationConfiguration.staggeredList(position: index, duration: const Duration(milliseconds: 375),
                            child: SlideAnimation(
                              verticalOffset: 50.0,
                              child: FadeInAnimation(
                                child: ExCustomItem(exModel: exList[index]),
                              ),
                            )
                          );
                        }
                      ),
                    )
                )
              ),
            ],
          ),
        )
    );

  }
}