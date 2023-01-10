import 'package:flutter/material.dart';
import 'package:webapp/about.dart';
import 'package:webapp/skills.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        SizedBox(
          height: screenwidth >= 692 ? 10 : 35,
        ),
        screenwidth >= 692
            ? Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 70),
                child: Row(
                  children: [
                    details(screenwidth),
                    photo(),
                    const SizedBox(
                      width: 15,
                    )
                  ],
                ),
              )
            : SizedBox(
                height: 600,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    photoportrait(),
                    detailsportrait(screenwidth),
                  ],
                ),
              ),
        const Center(
          child: Text(
            'About',
            style: TextStyle(fontSize: 50, fontFamily: 'Lato'),
          ),
        ),
        const About(),
        const Skills()
      ],
    );
  }

  Widget photo() {
    return Flexible(
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        height: 450,
        // width: 300,
        decoration: BoxDecoration(
            color: Colors.amber[100], borderRadius: BorderRadius.circular(10)),
        child: const Image(
          image: AssetImage("images/me.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

Widget photoportrait() {
  return Flexible(
    child: Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.amber[100],
        borderRadius: BorderRadius.circular(250),
      ),
      child: const Image(
        image: AssetImage("images/me.png"),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget details(double screenwidth) {
  return Flexible(
    child: SizedBox(
      // color: Colors.amber[50],
      height: 350,
      width: screenwidth / 1.5,
      child: Padding(
        padding: screenwidth >= 600
            ? const EdgeInsets.fromLTRB(25, 0, 50, 0)
            : const EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: Center(
            child: RichText(
          text: const TextSpan(children: [
            TextSpan(
              text: 'Hi! I am Kushal Pangeni,',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: '\nA fellow ',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w100),
            ),
            TextSpan(
              text: 'programmer,',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w600),
            ),
            TextSpan(
              text: '\napp developer and game developing enthusiast',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w600),
            ),
          ]),
        )),
      ),
    ),
  );
}

Widget detailsportrait(double screenwidth) {
  return Flexible(
    child: SizedBox(
      // color: Colors.amber[50],
      height: 200,
      width: screenwidth,
      child: Padding(
        padding: screenwidth >= 600
            ? const EdgeInsets.fromLTRB(25, 0, 50, 0)
            : const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Center(
            child: RichText(
          text: const TextSpan(children: [
            TextSpan(
              text: 'Hi! I am Kushal Pangeni,',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: '\nA fellow ',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w100),
            ),
            TextSpan(
              text: 'programmer,',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w600),
            ),
            TextSpan(
              text: '\napp developer and game developing enthusiast',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w600),
            ),
          ]),
        )),
      ),
    ),
  );
}
// screenwidth >= 600
//           ?
//           : Text('$screenwidth'),

