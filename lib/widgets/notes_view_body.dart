
import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';

import 'note_item.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Padding(
        padding:EdgeInsets.symmetric(
            horizontal: 22,
        vertical: 10
        ),
        child: Column(
          children: [
          CustomAppBar(),
           NotesListView(),
          ],
        ),
      ),
    );
  }
}
