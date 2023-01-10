import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        height: 500,
        width: screenwidth - screenwidth / 10,
        decoration: BoxDecoration(
            color: Colors.teal, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              height: 150,
              // width: 300,
              decoration: BoxDecoration(
                  color: Colors.amber[100],
                  borderRadius: BorderRadius.circular(150)),
              child: const Image(
                image: AssetImage("images/me.png"),
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Kushal Pangeni',
                  style: TextStyle(fontSize: 30, fontFamily: 'Lato'),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.email,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'kushalpangeni03@gmail.com',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.phone,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '9805462063',
                  style: TextStyle(fontSize: 25),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
