import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:note_app/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved, this.onChange});

  final String hint;
  final int maxLines;

  final void Function(String?)? onSaved;

  final void Function(String?)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required ';
        } else {
          return null;
        }
      },
      cursorColor: kPrimary,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimary),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          8,
        ),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}