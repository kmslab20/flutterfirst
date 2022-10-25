import 'package:flutter/material.dart';
import 'package:flutterfirst/data/ex_list_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ExCustomItem extends StatelessWidget {
  const ExCustomItem({super.key, required this.exModel});

  final ExModel exModel;

  @override
  Widget build(BuildContext context) {
    return
    Card(
      child: InkWell(onTap: () => makeToast(exModel.customerName), child: Container(
        height: 64,
        color: Colors.white,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: Container( // left container
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 8),
                // color: Colors.blueGrey,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 8,
                        height: 64,
                        padding: const EdgeInsets.only(left: 10),
                        color: Colors.lightBlue,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        margin: const EdgeInsets.only(left: 8, top: 2),
                        color: Colors.black45,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10, top: 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(exModel.petName, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                            Container(margin: const EdgeInsets.only(top: 6), child: Text(exModel.customerName),)
                          ],
                        ),
                      )
                      ,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [

                        ],
                      )
                    ]
                ),
              ),),
              IntrinsicWidth(child: Container(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Container(margin: const EdgeInsets.only(top: 8), child: Text(exModel.visitingStatus.toString(), style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.lightBlue)),),
                    Container(
                      margin: const EdgeInsets.only(bottom: 14),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(exModel.phoneNumber, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                          Container(margin: const EdgeInsets.only(top: 6, left: 6), child: Text(exModel.hospitalUserName),)
                        ],
                      ),
                    )
                  ],
                ),
              ))
            ]
        ),
      ))
      );
  }
}

void makeToast (String msg) {
  Fluttertoast.showToast(msg: msg);
}