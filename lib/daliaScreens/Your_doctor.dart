import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class YourDoctors extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Center(
                    child: Text(
                      'Doctors',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                    ),
                  ),
                ],
              ),
            ],
          ),
          leading: Icon(
            Icons.arrow_back,
            size: 30,
          ),
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
            ]
          )
        )
        
        );
  }
}