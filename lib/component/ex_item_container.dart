import 'package:flutter/material.dart';
import 'package:flutterfirst/data/ex_list_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ExItem extends StatelessWidget {
  const ExItem({super.key, required this.exModel});

  final ExModel exModel;

  @override
  Widget build(BuildContext context) {
    return Card(child: ListTile(
      title: Text(exModel.petName),
      subtitle: Text(exModel.customerName),
      trailing: Container(color: Colors.greenAccent, width: 10, height: 10,),
      onTap: () => _showToast(context, exModel.petName),
      onLongPress: () => makeToast(exModel.customerName),
    ));
  }

}

void makeToast (String msg) {
  Fluttertoast.showToast(msg: msg);
}

void _showToast(BuildContext context, String msg) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: Text(msg),
      action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}