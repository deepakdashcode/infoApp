import 'package:flutter/material.dart';
import 'package:info/details.dart';

final double coverHeight = 280;
final double profileHeight = 144;

class DetailsOfMember extends StatelessWidget {
  final Details details;

  DetailsOfMember({required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                buildCoverImage(),
                Positioned(
                  top: coverHeight - profileHeight,
                  child:CircleAvatar(
                    radius: profileHeight / 2,
                    backgroundImage: AssetImage(details.profileImage),
                  ),

                ),

              ],
            ),
            SizedBox(height: 15),
            Text(
              details.name,
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.4,
                  fontSize: 20
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Android Developer',
              style: TextStyle(
                  color: Colors.yellow[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 16
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),

                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
                          child: Icon(Icons.person, color: Colors.red),
                        ),
                        SizedBox(width: 50,),
                        Text(
                          details.name,
                          style: TextStyle(
                              color: Colors.red[800],
                              fontSize: 18
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 7,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
                          child: Icon(Icons.house, color: Colors.red),
                        ),
                        SizedBox(width: 50,),
                        Text(
                          details.address,
                          style: TextStyle(
                              color: Colors.red[800],
                              fontSize: 18
                          ),
                        )
                      ],
                    )


                  ],
                ),
              ),
            ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),

                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
                          child: Icon(Icons.phone_android, color: Colors.red),
                        ),
                        SizedBox(width: 50,),
                        Text(
                          'Mobile Number',
                          style: TextStyle(
                              color: Colors.red[800],
                              fontSize: 18
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 7,),
                    Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.fromLTRB(78, 7, 0, 2),
                          child: Text(
                            '+91 ${details.phoneNumber}',
                            style: TextStyle(
                                color: Colors.red[800],
                                fontSize: 18
                            ),
                          ),
                        )
                      ],
                    )


                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),

                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
                          child: Icon(Icons.email, color: Colors.red),
                        ),
                        SizedBox(width: 50,),
                        Text(
                          'Email',
                          style: TextStyle(
                              color: Colors.red[800],
                              fontSize: 18
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 7,),
                    Row(
                      children: [


                        Padding(
                          padding: const EdgeInsets.fromLTRB(85, 7, 0, 2),
                          child: Text(
                            details.email,
                            style: TextStyle(
                                color: Colors.red[800],
                                fontSize: 18
                            ),
                          ),
                        )
                      ],
                    )


                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),

                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
                          child: Icon(Icons.star, color: Colors.red),
                        ),
                        SizedBox(width: 50,),
                        Text(
                          'Hobbies',
                          style: TextStyle(
                              color: Colors.red[800],
                              fontSize: 18
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 7,),
                    Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.fromLTRB(85, 7, 0, 2),
                          child: Text(
                            'Creating android apps',
                            style: TextStyle(
                                color: Colors.red[800],
                                fontSize: 16
                            ),
                          ),
                        )
                      ],
                    )


                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}


buildCoverImage() {
  return Image.asset('assets/backgroung.jpg',
    width: double.infinity,
    height: coverHeight,
  );
}
