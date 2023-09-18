import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note/note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_widgets/custom_text_field.dart';
import 'package:note_app/widgets/edit_note_list_colors.dart';

import 'custom_widgets/custom_app_bar.dart';


class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});
final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {

  String? title,content;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 10),
      child: Column(
        children: [
           CustomAppBar(
            title: "Edit Note",
            icon: Icons.done_outline,
            onPressed: (){
              widget.note.title=title ?? widget.note.title;
              widget.note.subTitle=content ?? widget.note.subTitle;
widget.note.save();
              BlocProvider.of<NoteCubit>(context).fetchAllNotes();

              Navigator.pop(context);

            },
          ),
          CustomTextField(
onChange: (value){
  title=value;
},
              hint: widget.note.title
          ),
          const SizedBox(
            height: 16,
          ),
           CustomTextField(
            onChange: (value){
              content=value;
            },
            hint:  widget.note.subTitle,
          maxLines: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child:  EditNoteListColors(
                note:widget.note ,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
