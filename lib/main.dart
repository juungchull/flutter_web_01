import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_web_01/src/header.dart';
import 'package:flutter_web_01/src/infoPalette.dart';
import 'package:flutter_web_01/src/profileImage.dart';
import 'package:flutter_web_01/src/profileTile.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
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
      body: SizedBox(
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
                                ..translate(-250, 150),
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
                              child: SizedBox(
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
                                    const SizedBox(height: 20),
                                    SizedBox(
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
                                        SizedBox(
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
                                          child: SizedBox(
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
                          children: const [
                            ProfileImage(
                              top: 140,
                              left: 90,
                              diameter: 200,
                              image:
                                  'https://images.unsplash.com/photo-1644870514410-ca634ac07c41?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1587&q=80',
                            ),
                            ProfileImage(
                              top: 160,
                              left: 310,
                              diameter: 100,
                              image:
                                  'https://images.unsplash.com/photo-1647095187523-a65049a07361?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                            ),
                            ProfileImage(
                              top: 275,
                              left: 280,
                              diameter: 280,
                              image:
                                  'https://images.unsplash.com/photo-1645032227724-e2d48093aaeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
                            ),
                            ProfileImage(
                              top: 360,
                              left: 90,
                              diameter: 170,
                              image:
                                  'https://images.unsplash.com/photo-1647529012409-46c39666da4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80',
                            ),
                            ProfileTile(
                              top: 380.0,
                              left: 50.0,
                              title: 'I am Gonna give u Color theory',
                              subTitle: 'Scarlett',
                              factor: 0.5,
                            ),
                            ProfileTile(
                              top: 295.0,
                              left: 480.0,
                              title: 'I am Gonna give u Color theory',
                              subTitle: 'Scarlett',
                              factor: 0.8,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Header(),
                ],
              ),
              Container(
                height: 400.0,
                width: double.infinity,
                color: Colors.white,
                child: Stack(
                  children: [
                    Positioned(
                      right: -150,
                      child: Container(
                        height: 330.0,
                        width: 430.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(300.0),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'How it works',
                          style: GoogleFonts.nunito(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 40.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            InfoPalette(
                                title: 'Community',
                                text:
                                    'Communicate with collegues, share ideas, find a team in a project in one space',
                                icon: Icons.people_rounded),
                            InfoPalette(
                                title: 'Overview Report',
                                text:
                                    'Track your progress thanks to the reporting system right inside the platform',
                                icon: Icons.pie_chart_rounded),
                            InfoPalette(
                                title: 'Dashboard',
                                text:
                                    'Manage your projects and tasks by tracking activity on the dashboard',
                                icon: Icons.person_rounded),
                          ],
                        ),
                        const SizedBox(height: 60),
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Colors.black87,
                              padding: const EdgeInsets.all(0.0)),
                          onPressed: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30.0,
                              vertical: 8.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Text(
                              'Explore More',
                              style: GoogleFonts.nunito(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: -250,
                      child: Container(
                        height: 450,
                        width: 700,
                        decoration: BoxDecoration(
                          color: Colors.amber[400],
                          borderRadius: BorderRadius.circular(400),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 100,
                      child: Container(
                        height: 400,
                        width: 700,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.network(
                          'https://images.unsplash.com/photo-1636038197596-28e7dce070e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
