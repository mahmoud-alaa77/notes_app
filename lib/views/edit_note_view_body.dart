import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';

import '../widgets/edit_note_view.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: EditNoteView(
          note:note ,
        ),
      ),
    );
  }
}
