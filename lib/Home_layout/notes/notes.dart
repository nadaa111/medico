import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../DatabaseUtils/notes_database.dart';
import '../../models/my_notes.dart';
import 'add_buttomSheet.dart';
import 'notes.items.dart';

class NoteLayout extends StatelessWidget {
  String? titleupdate="";
  String? contentupdate="";

  static const String routeName = 'NoteLayout';


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,

          title: Text(
            'My Notes',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          actions:<Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Icon(
                Icons.edit,
                color: Colors.black,
              ),
            ),
          ]
      ),
      body:
      Padding(

        padding: const EdgeInsets.all(8.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child:
              FutureBuilder<QuerySnapshot<Mynotes>>(
                  future:getnotetofirestore(),
                  builder:(context, snapshot) {
                    if (snapshot.connectionState==ConnectionState.waiting){
                      return Center(child: CircularProgressIndicator());
                    }
                    if(snapshot.hasError){
                      return Center(child: Text('something went wrong'));
                    }
                    var notes=snapshot.data?.docs.map((docs) => docs.data()).toList()??[];
                    return Expanded(
                      child: ListView.builder(
                          itemCount: notes.length,
                          itemBuilder: (context,Index){
                            return NotesItem(notes[Index]);

                          }),
                    );
                  }),
            ),




          ],

        ),
      ),




      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF2C698D),
        child: const Icon(Icons.add),
        onPressed: () {showModalBottomSheet(

            isScrollControlled: true,
            context: context, builder: (context)=>Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: addButtomSheet()));},
      ),

    );

  }



}

