import 'package:flutter/material.dart';
import 'package:webapp/screens.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.teal[100],
          appBar: screenwidth >= 692
              ? AppBar(
                  backgroundColor:
                      screenwidth >= 692 ? Colors.teal[50] : Colors.transparent,
                  // elevation: screenwidth >= 670 ? 15 : 0,
                  elevation: 0,
                  title: Row(
                    children: [
                      Expanded(
                        flex: 0.5.toInt(),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              currentindex = 0;
                            });
                          },
                          child: const Text(
                            'Kushal Pangeni',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  currentindex = 0;
                                });
                              },
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.home,
                                    size: 30,
                                  ),
                                  Text("Home")
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  currentindex = 1;
                                });
                              },
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.info,
                                    size: 30,
                                  ),
                                  Text("Info")
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  currentindex = 2;
                                });
                              },
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.copy,
                                    size: 30,
                                  ),
                                  Text("Projects")
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  currentindex = 3;
                                });
                              },
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.phone,
                                    size: 30,
                                  ),
                                  Text("Contact")
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ))
              : null,
          body: screens[currentindex],
          bottomNavigationBar: screenwidth < 692
              ? BottomNavigationBar(
                  currentIndex: currentindex,
                  onTap: (value) {
                    setState(() {
                      currentindex = value;
                    });
                  },
                  items: const [
                    BottomNavigationBarItem(
                      label: 'Home',
                      icon: Icon(Icons.home),
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.info), label: 'Info'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.copy), label: 'Projects'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.phone), label: 'Contact'),
                  ],
                )
              : null),
    );
  }
}

//   Widget photo() {
//     return Flexible(
//       child: Container(
//         clipBehavior: Clip.antiAliasWithSaveLayer,
//         height: 250,
//         // width: 300,
//         decoration: BoxDecoration(
//             color: Colors.amber[100], borderRadius: BorderRadius.circular(10)),
//         child: const Image(
//           image: AssetImage("images/me.png"),
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }

// Widget photoportrait() {
//   return Flexible(
//     child: Container(
//       clipBehavior: Clip.antiAliasWithSaveLayer,
//       height: 250,
//       width: 250,
//       decoration: BoxDecoration(
//         color: Colors.amber[100],
//         borderRadius: BorderRadius.circular(250),
//       ),
//       child: const Image(
//         image: AssetImage("images/me.png"),
//         fit: BoxFit.cover,
//       ),
//     ),
//   );
// }

// Widget details(double screenwidth) {
//   return Flexible(
//     child: SizedBox(
//       // color: Colors.amber[50],
//       height: 350,
//       width: screenwidth / 1.5,
//       child: Padding(
//         padding: screenwidth >= 600
//             ? const EdgeInsets.fromLTRB(25, 0, 50, 0)
//             : const EdgeInsets.fromLTRB(25, 0, 25, 0),
//         child: Center(
//             child: RichText(
//           text: const TextSpan(children: [
//             TextSpan(
//               text: 'Hi! I am Kushal Pangeni,',
//               style: TextStyle(
//                   fontSize: 40,
//                   fontFamily: 'Lato',
//                   fontWeight: FontWeight.bold),
//             ),
//             TextSpan(
//               text: '\nA fellow ',
//               style: TextStyle(
//                   fontSize: 30,
//                   fontFamily: 'Lato',
//                   fontWeight: FontWeight.w100),
//             ),
//             TextSpan(
//               text: 'programmer,',
//               style: TextStyle(
//                   fontSize: 30,
//                   fontFamily: 'Lato',
//                   fontWeight: FontWeight.w600),
//             ),
//             TextSpan(
//               text: '\napp developer and game developing enthusiast',
//               style: TextStyle(
//                   fontSize: 30,
//                   fontFamily: 'Lato',
//                   fontWeight: FontWeight.w600),
//             ),
//           ]),
//         )),
//       ),
//     ),
//   );
// }

// Widget detailsportrait(double screenwidth) {
//   return Flexible(
//     child: SizedBox(
//       // color: Colors.amber[50],
//       height: 200,
//       width: screenwidth,
//       child: Padding(
//         padding: screenwidth >= 600
//             ? const EdgeInsets.fromLTRB(25, 0, 50, 0)
//             : const EdgeInsets.fromLTRB(15, 0, 15, 0),
//         child: Center(
//             child: RichText(
//           text: const TextSpan(children: [
//             TextSpan(
//               text: 'Hi! I am Kushal Pangeni,',
//               style: TextStyle(
//                   fontSize: 30,
//                   fontFamily: 'Lato',
//                   fontWeight: FontWeight.bold),
//             ),
//             TextSpan(
//               text: '\nA fellow ',
//               style: TextStyle(
//                   fontSize: 20,
//                   fontFamily: 'Lato',
//                   fontWeight: FontWeight.w100),
//             ),
//             TextSpan(
//               text: 'programmer,',
//               style: TextStyle(
//                   fontSize: 20,
//                   fontFamily: 'Lato',
//                   fontWeight: FontWeight.w600),
//             ),
//             TextSpan(
//               text: '\napp developer and game developing enthusiast',
//               style: TextStyle(
//                   fontSize: 20,
//                   fontFamily: 'Lato',
//                   fontWeight: FontWeight.w600),
//             ),
//           ]),
//         )),
//       ),
//     ),
//   );
// }
// // screenwidth >= 600
// //           ?
// //           : Text('$screenwidth'),
