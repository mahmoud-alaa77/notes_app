import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note/note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view_body.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return  EditNoteViewBody(
              note: note,
            );
          },
        ));
      },
      child: Container(
          padding: const EdgeInsetsDirectional.only(
            top: 20,
            bottom: 20,
            start: 16,
          ),
          margin: const EdgeInsetsDirectional.symmetric(vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(16),
            color:  Color(note.color),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style:  const TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    //fontWeight: FontWeight.bold,
                  ),

                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    note.subTitle,
                    style: TextStyle(
                      color: Colors.black.withOpacity(.4),
                      fontSize: 18,
                    ),
                  ),
                ),
                trailing:Row(mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        showDialog(context: context, builder: (context) =>
                            AlertDialog(
                              title: const Text('Do you want to delete this note?'),
                              //content: const Text('AlertDialog description'),
                              actions: <Widget>[

                                TextButton(
                                  onPressed: () {
                                    note.delete();
                                    BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                                    Navigator.pop(context);
                                  },
                                  child: const Text('YES',style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 20
                                  ),),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);

                                  },
                                  child: const Text('NO',style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20
                                  ),),
                                ),
                              ],
                            )
                        );

                      },

                      icon: const Icon(
                        Icons.delete,
                        color: Colors.black,
                        size: 32,
                      ),
                    ),

                  ],
                )


              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 24, top: 16),
                child: Text(
                  note.date,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

/*

 */


