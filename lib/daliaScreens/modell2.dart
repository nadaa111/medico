import 'package:flutter/material.dart';
import 'package:grad_project/daliaScreens/Doctor_info.dart';

import 'modell.dart';

class aaa extends StatelessWidget {
  bool get hasFocus => false;
  var addressController = TextEditingController();
  var phoneController = TextEditingController();
  var startTimeController = TextEditingController();
  var endTimeController = TextEditingController();
  var feesController = TextEditingController();
  var aboutController = TextEditingController();
  var imagecontroller = TextEditingController();
  Prog item;
  DoctorInfo Info;

  aaa({required this.item, required this.Info});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xFF2C698D),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    child: Center(
                      child: Image.asset(
                        item.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 40,
                    ),
                    child: Container(
                      margin: EdgeInsets.all(0.4),
                      width: 300,
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border:
                              Border.all(width: 3, color: Color(0xFF2C698D))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Text(
                              '${item.name}',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 29),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Text(
                              'Field ${item.use}',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 29),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 25.0, top: 25.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'Clinic',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  )),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'Address',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  )),
              const SizedBox(height: 7),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: TextFormField(
                          enabled: false,
                          controller: addressController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            hintText: '${Info.Address}',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.69),
                                borderSide:
                                    const BorderSide(color: Color(0xFF2C698D))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.69),
                                borderSide:
                                    const BorderSide(color: Color(0xFF2C698D))),
                          ),
                        ),
                      ),
                    ],
                  )),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'PhoneNumber',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  )),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: TextFormField(
                          enabled: false,
                          controller: addressController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            enabled: false,
                            hintText: '${Info.PhoneNumber}',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.69),
                                borderSide:
                                    const BorderSide(color: Color(0xFF2C698D))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.69),
                                borderSide:
                                    const BorderSide(color: Color(0xFF2C698D))),
                          ),
                        ),
                      ),
                    ],
                  )),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'Availability',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  )),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: TextFormField(
                          enabled: false,
                          controller: addressController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            hintText: '${Info.Availability}',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.69),
                                borderSide:
                                    const BorderSide(color: Color(0xFF2C698D))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.69),
                                borderSide:
                                    const BorderSide(color: Color(0xFF2C698D))),
                          ),
                        ),
                      ),
                    ],
                  )),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'Fees',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  )),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: TextFormField(
                          enabled: false,
                          controller: addressController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            hintText: '${Info.Fee}',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.69),
                                borderSide:
                                    const BorderSide(color: Color(0xFF2C698D))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.69),
                                borderSide:
                                    const BorderSide(color: Color(0xFF2C698D))),
                          ),
                        ),
                      ),
                    ],
                  )),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 25.0, top: 25.0, bottom: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'About',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  )),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: TextFormField(
                          enabled: false,
                          controller: addressController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            hintText: '${Info.About}',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.69),
                                borderSide:
                                    const BorderSide(color: Color(0xFF2C698D))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.69),
                                borderSide:
                                    const BorderSide(color: Color(0xFF2C698D))),
                          ),
                        ),
                      ),
                    ],
                  )),
              // Text(
              //   '${Info.About}',
              //   style: TextStyle(
              //       fontSize: 22,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.black),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
