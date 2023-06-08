import 'package:flutter/material.dart';
import 'package:info/detail_page.dart';
import 'package:info/details.dart';

class RoundedCard extends StatelessWidget {
  final Details details;

  RoundedCard({required this.details});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsOfMember(details: details)));
      },
      child: Card(
          color: Colors.white54,
          elevation: 7,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(details.profileImage),
                  radius: 40,
                ),
                SizedBox(width: 20),
                Text(
                  details.name,
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                )
              ],
            ),
          )),
    );
  }
}
