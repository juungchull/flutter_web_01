import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_web_01/src/header.dart';
import 'package:flutter_web_01/src/profileImage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        color: Colors.white,
                        height: 600.0,
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Stack(
                          children: [
                            Transform(
                              transform: Matrix4.rotationZ(pi / 6)
                                ..translate(-180, 170),
                              child: Container(
                                height: 350.0,
                                width: 700.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(300.0),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 200,
                              left: 100,
                              child: Container(
                                height: 400,
                                width: 400,
                                child: Column(
                                  children: [
                                    Text(
                                      'Manage all your',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 38,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'Manage all your',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      width: 300,
                                      child: Text(
                                        'Describe your project and find a top talent team around the world or near you. Leave your E-mail to get invite for 30 days free trail',
                                        style: GoogleFonts.nunito(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 30.0),
                                    Row(
                                      children: [
                                        Container(
                                          height: 45.0,
                                          width: 230.0,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText:
                                                  'Enter your email address',
                                              hintStyle: GoogleFonts.nunito(
                                                fontSize: 12.0,
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 20.0),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                              backgroundColor: Colors.black87,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                              )),
                                          onPressed: () {},
                                          child: Container(
                                            height: 45.0,
                                            width: 100,
                                            child: Center(
                                              child: Text(
                                                'Get Invite',
                                                style: GoogleFonts.nunito(
                                                  color: Colors.white,
                                                  fontSize: 13.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 600,
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ProfileImage(
                              top: 140,
                              left: 90,
                              diameter: 200,
                              image:
                                  'https://images.unsplash.com/photo-1647529012409-46c39666da4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80',
                            ),
                            ProfileImage(
                              top: 140,
                              left: 90,
                              diameter: 200,
                              image:
                                  'https://images.unsplash.com/photo-1647529012409-46c39666da4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80',
                            ),
                            ProfileImage(
                              top: 140,
                              left: 90,
                              diameter: 200,
                              image:
                                  'https://images.unsplash.com/photo-1647529012409-46c39666da4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80',
                            ),
                            ProfileImage(
                              top: 140,
                              left: 90,
                              diameter: 200,
                              image:
                                  'https://images.unsplash.com/photo-1647529012409-46c39666da4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Header(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
