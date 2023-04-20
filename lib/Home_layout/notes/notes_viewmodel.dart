import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:grad_project/DatabaseUtils/notes_database.dart';
import 'package:grad_project/models/my_notes.dart';
import '../../basenavigator.dart';
import 'note_navigator.dart';

class NoteViewModel extends BaseViewModel<NoteeNavigator> {
  // var auth = FirebaseAuth.instance;

  Future<void> AddOrUpdateNotesToDB(String descriptions, String title)  async{
    // final credential = await auth.getRedirectResult();
    try {
      var col = await DatabaseUtilsNotes.getNotesCollection().get();
      if(col.docs.isEmpty){
        log(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>isEMpty");
        var docId = DatabaseUtilsNotes.getNotesCollection().doc();
       Mynotes note = Mynotes(
        
          id: docId.id, descriptions: descriptions, title: title,
        );
        await DatabaseUtilsNotes.AddNoteToFirestore(note);
      }else{
        log(">>>>>>>>>>>>>>>>>>>>>>>isNotEMpty");
        Mynotes? note = col.docs[0].data();
        await DatabaseUtilsNotes.Updateenotetofirestore(note);
      }
    } on Exception catch (e, stacktrace) {
      debugPrint(e.toString() + ">>>>>>>>>>>>>>>>>>>StackTrace: $stacktrace" );
    }

  }
  void UpdateNoteToDB(String descriptions, String title)  {
    // final credential = await auth.getRedirectResult();
   Mynotes note = Mynotes(
        
       descriptions: descriptions, title: title,
        );
      // id: credential.user?.uid ?? ""
    
    DatabaseUtilsNotes.AddNoteToFirestore(note).then((value) {
      print("Clinic updated");
    }).catchError((error) {});
  }
}