import 'dart:developer';

import 'package:flutter/material.dart';

class SkillsCard extends StatefulWidget {
  final String image;
  const SkillsCard({super.key, required this.image});

  @override
  State<SkillsCard> createState() => _SkillsCardState();
}

class _SkillsCardState extends State<SkillsCard> {
  bool ishover = false;
  // late String imag;
  @override
  void initState() {
    // imag = widget.image;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        ishover = value;
        log(value.toString());
      },
      child: Card(
        color: Colors.transparent,
        elevation: 50,
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: Colors.teal[50], borderRadius: BorderRadius.circular(15)),
          child: Image(
            image: AssetImage(widget.image),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
