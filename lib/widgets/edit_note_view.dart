import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22,vertical: 10),
      child: Column(
        children: [
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.done_outline,
          ),
          CustomTextField(
              hint: "Title"
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: "Content",
          maxLines: 5,
          ),

        ],
      ),
    );
  }
}
