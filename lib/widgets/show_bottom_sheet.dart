
import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';
class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: (
  Column(
  children: [
    SizedBox(
        height: 32,
    ),
        CustomTextField(
          hint: "Title",
        ),
    SizedBox(
        height: 16,
    ),
    CustomTextField(
        hint: "Content",
        maxLines: 5,
    ),
    SizedBox(
        height: 50,
    ),
    CustomButton(),
    SizedBox(
      height: 32,
    ),
  ],

        )),
      ),
    );
  }
}


