import 'package:flutter/material.dart';
import 'package:webapp/skillscard.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(screenwidth / 10, 50, screenwidth / 10, 10),
      child: Container(
        color: Colors.amber[80],
        // height: 1500,
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Text(
              'Technical Skills',
              style: TextStyle(
                  fontSize: screenwidth >= 361 ? 50 : 40,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lato'),
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              'Programming Languages',
              style: TextStyle(
                  fontSize: screenwidth >= 361 ? 30 : 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lato'),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SkillsCard(image: 'images/c-l.png'),
                SkillsCard(image: 'images/c++.png'),
                SkillsCard(
                  image: 'images/Dart.png',
                )
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              'Application Development',
              style: TextStyle(
                  fontSize: screenwidth >= 361 ? 30 : 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lato'),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SkillsCard(image: 'images/flutterrr.png'),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              'Game Development',
              style: TextStyle(
                  fontSize: screenwidth >= 361 ? 30 : 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lato'),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SkillsCard(image: 'images/Godot_icon.png'),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              'Design Tools',
              style: TextStyle(
                  fontSize: screenwidth >= 361 ? 30 : 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lato'),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SkillsCard(image: 'images/Inkscape.png'),
                SkillsCard(image: 'images/Figma.png'),
                SkillsCard(image: 'images/Canva.png'),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              'Others',
              style: TextStyle(
                  fontSize: screenwidth >= 361 ? 30 : 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lato'),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SkillsCard(image: 'images/Inkscape.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
