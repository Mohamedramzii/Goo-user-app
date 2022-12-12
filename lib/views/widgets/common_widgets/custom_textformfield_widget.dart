import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';

class Custom_TextFormField_widget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller = TextEditingController();
  final FormFieldSetter<String> onsave;
  final FormFieldValidator<String> onvalidate;
  final TextInputType textInputType;

  Custom_TextFormField_widget({
    Key? key,
    required this.hintText,
    required this.onsave,
    required this.onvalidate,
    required this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onSaved: onsave,
      validator: onvalidate,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14.sp,
          color: Colors.grey,
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: KprimaryColor),
            borderRadius: BorderRadius.circular(20)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(20)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(20)),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }
}
