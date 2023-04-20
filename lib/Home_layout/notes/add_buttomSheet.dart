import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/DatabaseUtils/notes_database.dart';
import 'package:grad_project/shared/components/componet.dart';
import '../../models/my_notes.dart';
import 'notes_viewmodel.dart';

class addButtomSheet extends StatefulWidget {
  
  @override
  State<addButtomSheet> createState() => _addButtomSheetState();
}

class _addButtomSheetState extends State<addButtomSheet> {
var titleController=TextEditingController();

var descriptionController=TextEditingController();

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
               
                 if(formkey.currentState!.validate()){
                
                        Mynotes note=Mynotes(descriptions: descriptionController.text, title:titleController.text);
                        showLoading(context,'Saving note');
                        AddNoteToFirestore(note);
                        hideLoading(context);

                        Navigator.pop(context);
                 }
                      
              }, child: Text('Done')),
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
   // Future<void> ValidateNote() async{
    //if (formkey.currentState!.validate()) {
      //await viewModel.AddOrUpdateNotesToDB(
        //  titleController.text,
          //descriptionController.text,
         //);
    //}
 // }

  @override
  NoteViewModel  initViewModel() {
    return NoteViewModel ();
  }


}
