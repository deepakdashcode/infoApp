import 'package:flutter/material.dart';
import 'package:info/custom_card.dart';
import 'details.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  RoundedCard getRounded(Details details){
  return RoundedCard(details: details);
  }

  @override
  Widget build(BuildContext context) {
    List<Details> all = [
      Details(
          profileImage: 'assets/profile.png',
          name: 'Deepak',
          phoneNumber: '7735178680',
          email: 'dipudash.2003@gmail.com',
          address: 'Khurda'
      ),
      Details(
          profileImage: 'assets/arpita.jpg',
          name: 'Arpita',
          phoneNumber: '8260598715',
          email: 'arpitapanda24088@gmail.com',
          address: 'Sambalpur'
      ),
      Details(
          profileImage: 'assets/ankush.jpg',
          name: 'Ankush',
          phoneNumber: '7735178680',
          email: 'ankush41behera@gmail.com',
          address: 'Bhubaneswar'
      ),
      Details(
          profileImage: 'assets/shruti.jpg',
          name: 'Sruti',
          phoneNumber: '8480609984',
          email: 'srutismaranika2123@gmail.com',
          address: 'Bhubaneswar'
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Info App',
          style: TextStyle(fontSize: 16),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: all.map((e) => getRounded(e)).toList(),
        ),
      ),
    );
  }
}
