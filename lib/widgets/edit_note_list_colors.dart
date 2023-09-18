
import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';

import '../constants/constants.dart';
import 'color_item.dart';

class EditNoteListColors extends StatefulWidget {
  const EditNoteListColors({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteListColors> createState() => _EditNoteListColorsState();
}

class _EditNoteListColorsState extends State<EditNoteListColors> {
 late int currentIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex=kColors.indexOf(Color(widget.note.color));

  }
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        width: 16,
      ),
      scrollDirection: Axis.horizontal,

      itemBuilder: (context, index) => GestureDetector(
        onTap: (){

          currentIndex=index;
         widget.note.color=kColors[index].value ;
          setState(() {});
        },
        child:  ColorItem(
          isActive: currentIndex== index,
          color: kColors[index],
        ),
      ),
      itemCount: kColors.length,
    );
  }
}
