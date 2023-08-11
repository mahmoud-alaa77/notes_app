import 'package:flutter/material.dart';

import 'note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ListView.builder(
          padding: EdgeInsetsDirectional.zero,
          itemBuilder: (context, index) {
            return const NoteItem();
          },
          itemCount: 5,
        ),
      ),
    );
  }
}
