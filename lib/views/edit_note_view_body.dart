import 'package:flutter/material.dart';

import '../widgets/edit_note_view.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: EditNoteView(),
      ),
    );
  }
}
