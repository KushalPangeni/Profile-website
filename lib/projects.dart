import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
        child: Center(
            child: screenwidth <= 752
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      projectcard(
                          screenwidth,
                          'https://github.com/KushalPangeni/major_project',
                          'GeetSunam',
                          'images/song.png'),
                      projectcard(
                          screenwidth,
                          "https://github.com/KushalPangeni/class-management",
                          'Class Management System',
                          'images/login.png')
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      projectcard(
                          screenwidth,
                          'https://github.com/KushalPangeni/major_project',
                          'GeetSunam',
                          'images/song.png'),
                      projectcard(
                          screenwidth,
                          "https://github.com/KushalPangeni/class-management",
                          'Class Management System',
                          'images/login.png')
                    ],
                  )),
      ),
    ]);
  }

  Widget projectcard(
      double screenwidth, String url, String title, String image) {
    return InkWell(
      onTap: () async {
        Uri url1 = Uri.parse(url);
        // if (!await launchUrl(url1,)) {
        //   throw 'Could not launch $url1';
        // }
        if (await canLaunchUrl(url1)) {
          await launchUrl(
            url1,
          );
        } else {
          throw 'Cannot launch URL';
        }
      },
      child: Card(
        child: Container(
          height: 250,
          width: 350,
          color: Colors.teal[300],
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                fit: BoxFit.contain,
                height: 250 - 100,
                width: 400,
              ),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
//-------------------------------
// InkWell(
//       onTap: () async {
//         Uri url1 = Uri.parse('https://youtu.be/T0qbFgbFhg0');
//         // if (!await launchUrl(url1,)) {
//         //   throw 'Could not launch $url1';
//         // }
//         if (await canLaunchUrl(url1)) {
//           await launchUrl(
//             url1,
//           );
//         } else {
//           throw 'Cannot launch URL';
//         }
//       },
//       child: const Text('Projects'),
//     )