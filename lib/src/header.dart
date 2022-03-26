import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff373e98),
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          const SizedBox(
            width: 100,
          ),
          const Icon(
            Icons.favorite_rounded,
            color: Colors.white,
          ),
          const SizedBox(width: 10.0),
          Text(
            'Freelancer',
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(width: 250.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              HeaderNav(text: 'Home', selected: true),
              SizedBox(width: 40.0),
              HeaderNav(text: 'Find a Team', selected: false),
              SizedBox(width: 40.0),
              HeaderNav(text: 'Publish a Project', selected: false),
              SizedBox(width: 40.0),
              HeaderNav(text: 'About', selected: false),
            ],
          ),
          const SizedBox(width: 250),
          Row(
            children: [
              Text(
                'Sign Up',
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 13.0,
                ),
              ),
              const SizedBox(width: 10.0),
              Container(
                height: 20,
                width: 1.0,
                color: Colors.white,
                //login 과 signup사이 세로줄을 만듬
              ),
              const SizedBox(width: 10.0),
              Text(
                'Log In',
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 13.0,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class HeaderNav extends StatefulWidget {
  final String text;
  final bool selected;

  const HeaderNav({
    Key? key,
    required this.text,
    required this.selected,
  }) : super(key: key);

  @override
  State<HeaderNav> createState() => _HeaderNavState();
}

class _HeaderNavState extends State<HeaderNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: GoogleFonts.nunito(
            color: Colors.white,
            fontSize: 13.0,
          ),
        ),
        widget.selected ? const SizedBox(height: 5.0) : const SizedBox(),
        //위젯선택이 참이면 사이박스 높이를 5만큼 그렇지않으면 그대로
        widget.selected
            ? const CircleAvatar(backgroundColor: Colors.white, radius: 2.0)
            : const SizedBox(),
        //위젯선택이 참이면 하얀 점을 아니면 빈박스
      ],
    );
  }
}
