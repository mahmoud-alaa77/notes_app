import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note/note_cubit.dart';
import 'package:transformable_list_view/transformable_list_view.dart';

import '../models/note_model.dart';
import 'note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });


  @override


  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).notes ?? [];
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child:ListView.builder(
              itemBuilder: (context, index) {
                return  NoteItem(
                  note: notes[index],
                );
              },
              itemCount: notes.length,
            ),
          
           );
      },
    );
  }
}

// List<NoteModel> notes=BlocProvider.of<NoteCubit>(context).notes!;