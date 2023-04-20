class DoctorInfo{

  String Address;
  String PhoneNumber;
  String Availability ;
  String Fee;
  String About;

  DoctorInfo({

    required this.Address,
    required this.PhoneNumber,
    required this.Availability,
    required this.Fee,
    required this.About,
  });
  static List<DoctorInfo>Info=[
    DoctorInfo(Address: 'Moharm Beh:Rasafa Street', PhoneNumber: '16676', Availability: '9AM -5PM', Fee: '360 EGP',About: 'Wating Time:2 Hours'),
    DoctorInfo(Address: 'Moharm Beh:Bwalino', PhoneNumber: '03 5831436', Availability: '2PM -9PM', Fee: '150 EGP',About: 'Wating Time:10 Minutees'),
    DoctorInfo(Address: 'Smouha: Garden City Street,Taaweneyat Sm',PhoneNumber: '16676', Availability: '3PM -3PM', Fee: '200 EGP',About: ''),
    DoctorInfo(Address: 'Clieopatra:ibn Grah', PhoneNumber: '16675', Availability: '12PM -9PM',Fee: '100 EGP',About: ''),
    DoctorInfo(Address: 'assets/images/FDr1.png', PhoneNumber: 'Dr.Dalia', Availability: 'Surgeon', Fee: '2014',About: 'Wating Time:4 Minutees'),
  ];

}