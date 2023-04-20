import 'dart:ffi';

class Prog {
  String image;
  String name;
  String use ;
  //String year;
  Prog({
    required this.image,
    required this.name,
    required this.use,
    //required this.year,
  });
  static List<Prog>items=[
    Prog(image: 'assets/images/FDr1.png', name: 'Dr.Amal Elsayed', use: 'Neurologist'),
    Prog(image: 'assets/images/FDr2.png', name: 'Dr.Amany Nabil', use: 'Surgeon', ),
    Prog(image: 'assets/images/Dr4.png', name: 'Dr.Mohamoud Alaa', use: 'Radiologist', ),
    Prog(image: 'assets/images/Dr6.png', name: 'Dr.Michael Eskandder', use: 'Neurologist', ),
    Prog(image: 'assets/images/Dr7.png', name: 'Dr.Dalia', use: 'Surgeon',),
  ];
  
}