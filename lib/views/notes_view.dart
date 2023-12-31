import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/note/note_cubit.dart';
import '../widgets/notes_view_body.dart';
import '../widgets/show_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: const NotesViewBody(),
          floatingActionButton: FloatingActionButton(onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(16),
              ),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              },
            );
          },
            child: const Icon(Icons.add),
          ),
        )


    );
  }
}