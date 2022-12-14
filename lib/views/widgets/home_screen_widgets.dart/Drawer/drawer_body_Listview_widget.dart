import 'package:flutter/material.dart';
import 'package:goo_userapp/constants/constants.dart';

class Drawer_Body extends StatelessWidget {
  final Icon leadingicon;
  final String text;
  
  const Drawer_Body(
      {super.key,
      required this.leadingicon,
      required this.text,
     });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leadingicon,
      title: Text(text,style: DefaultTextTheme.copyWith(fontSize: 20),),
      trailing:const Icon(Icons.arrow_forward_ios_rounded,
                    size: 25, color: Colors.black),
    );
  }
}
