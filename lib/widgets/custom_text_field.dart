
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines =1});
final String hint;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return  TextField(

      cursorColor: kPrimary,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(kPrimary),

      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([color]) {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(
            color: color ?? Colors.white
        )
    );
  }
}