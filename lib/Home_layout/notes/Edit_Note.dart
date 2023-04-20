import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grad_project/Home_layout/notes/notes_viewmodel.dart';
import '../../models/my_notes.dart';

class EditNoteBottomsheet extends StatefulWidget {
  final noteid;

   const EditNoteBottomsheet({this.noteid});


  @override
  State<EditNoteBottomsheet> createState() => _EditNoteBottomsheetState();
}

class _EditNoteBottomsheetState extends State<EditNoteBottomsheet> {
   var titleController=TextEditingController( );

var descriptionController=TextEditingController( );

GlobalKey<FormState> formkey=GlobalKey<FormState>();

NoteViewModel viewModel = NoteViewModel();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
             SizedBox(height: 10,),
            Text('Add New Note',style: TextStyle(
                            fontSize:20 )),
            SizedBox(height: 10,),
            Form(
              key: formkey,
              child: Column(
              children: [
                TextFormField(
                  controller: titleController,
                  validator: (text){
                    if(text==''){
                    return'please enter title';
                  }
                   return null;
                  },
                  decoration: InputDecoration(
                  label: Text('Task Title') ,
                  
                   enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Color(0xFF2C698D))
      )
                  )
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: descriptionController,
                  validator: (text){
                    if(text==''){
                    return'please enter description';
                  }
                   return null;
                  },
                  maxLines: 5,
                  decoration: InputDecoration(
                  label: Text('Note Content') ,
                  
                  
                   enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(color:Color(0xFF2C698D))
      )
                  )
                ),
    
                
                 ],
            ),
            ),
    
    
            //Form(
              //key: formkey,
              //child: Column(
              //children: [
                
    
                
             // ],
           // )
            //),
            SizedBox(height: 15,),
           
           
            Container(
              width: double.infinity,
                            height: 46.13,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF2C698D),
                                    
                                  ),
                onPressed: (){
                  

                ValidateNote();

                        Navigator.pop(context);
                       
                      

                        
                      
              }, child: Text('Save Changes')),
            ),
                        SizedBox(height: 15,),

          ],
        ),
      ),
    );
  }
  hideLoading(BuildContext context){
    Navigator.pop(context);
  }
 Future<void> ValidateNote() async{
    if (formkey.currentState!.validate()) {
      await viewModel.AddOrUpdateNotesToDB(
          titleController.text,
          descriptionController.text,
         );
    }
  }

  @override
  NoteViewModel  initViewModel() {
    return NoteViewModel ();
  }

}