import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grad_project/Home_layout/home.dart';
import 'package:grad_project/daliaScreens/Doctor_info.dart';
import 'package:grad_project/daliaScreens/modell.dart';
import 'package:grad_project/daliaScreens/modell2.dart';

class AllDoctor extends StatefulWidget {
  @override
  State<AllDoctor> createState() => _AllDoctorState();
}

class _AllDoctorState extends State<AllDoctor> {
  int selected = 0;
  

  

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Color(0xFF2C698D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          title: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 75,
                  ),
                  Text(
                    'Doctors',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                ],
              ),
            ],
          ),
          leading: IconButton(
            onPressed:(){
              setState(() {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>home()));
              });
            },
            icon: Icon(
            Icons.arrow_back,
            size: 30,
          ),)
        ),
        body: 
        
        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  child: TextField(
// controller: controller,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Color(0xFF2C698D)))),
                  ),
                ),
              ),
              
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      aaa(item: Prog.items[index], Info: DoctorInfo.Info[index])));
                        },
                        child: ItemBox(Item: Prog.items[index]));
                  },
                  itemCount: Prog.items.length,
                ),
              
              
            
            ),

            
            ],



          ),
        ));
  }

  Widget ItemBox({required Prog Item}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //  width: 110,
        height: 115,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 0.5,
                offset: Offset(0.0, 0.75)
            ),

          ],),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
                child: Image.asset(
                  Item.image,
                  width: 100,
                  height: 110,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Padding(
                  padding: const EdgeInsets.only(left:10.0,top: 10),
                  child: Text(
                    Item.name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      Item.use,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                   Spacer(),
            
            Padding(padding: EdgeInsets.only(left: 200,
            ),
            child: const CircleAvatar(
        backgroundColor: Color(0xFF2C698D),
        radius: 18.0,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 20.0,
        ),
      ),)
                ],
              ),),
           
          ],
        ),
        
      ),
   
    );
    
  }
}