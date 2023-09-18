import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../constants/constants.dart';
import '../../models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

 bool isDone=false;
 doneNote(){
   if(isDone== false){
     isDone=true;
   }else{
     isDone=false;
   }
   emit(NoteDone());
 }

  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);

    notes = notesBox.values.toList();
    emit(NoteSuccess());
  }


}
