import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;

    return Padding(
      // padding: EdgeInsets.fromLTRB(screenwidth / 10, 50, screenwidth / 10, 10),//landscape
      padding: screenwidth >= 692
          ? EdgeInsets.fromLTRB(screenwidth / 10, 50, screenwidth / 10, 10)
          : EdgeInsets.fromLTRB(
              screenwidth / 20, 25, screenwidth / 20, 10), //portrait
      child: Card(
        color: Colors.teal[50],
        elevation: 15,
        // width: 400,
        // height: 600,
        // decoration: BoxDecoration(
        //     color: Colors.amber[100], borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                'Academics ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontFamily: 'Lato',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(screenwidth.toString()),
            screenwidth >= 945
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      academics1(),
                      academics2(),
                    ],
                  )
                : Column(
                    children: [
                      academics1portrait(),
                      const SizedBox(
                        height: 40,
                      ),
                      academics2portrait(),
                    ],
                  ),
            const SizedBox(
              height: 80,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: ElevatedButton(
            //       onPressed: () {},
            //       child: const Text(
            //         'Download Resume',
            //         // style: TextStyle(fontSize: 30),
            //       )),
            // )
          ],
        ),
      ),
    );
  }

  Widget academics1() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              'Bachelor of',
              style: TextStyle(
                fontSize: 30,
                // fontWeight: FontWeight.w500,
                fontFamily: 'Lato',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              'Computer Engineering',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                fontFamily: 'Lato',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              '(Nov 2018 - Present)',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w200,
                fontFamily: 'Lato',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              'Paschimanchal Campus',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w200,
                fontFamily: 'Lato',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              'Institute of Engineering,',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w200,
                fontFamily: 'Lato',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              'Tribhuwan University, Nepal',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w200,
                fontFamily: 'Lato',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget academics1portrait() {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            'Bachelor of',
            style: TextStyle(
              fontSize: 30,
              // fontWeight: FontWeight.w500,
              fontFamily: 'Lato',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            'Computer Engineering',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            '(Nov 2018 - Present)',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w200,
              fontFamily: 'Lato',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            'Paschimanchal Campus',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w200,
              fontFamily: 'Lato',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            'Institute of Engineering,',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w200,
              fontFamily: 'Lato',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            'Tribhuwan University, Nepal',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w200,
              fontFamily: 'Lato',
            ),
          ),
        ),
      ],
    ),
  );
}

Widget academics2() {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            '10+2 in Science',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            '(Jun 2016 - Jun 2018)',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w200, fontFamily: 'Lato'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Flexible(
            child: Text(
              '''
Everest English Boarding High School''',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w200,
                  fontFamily: 'Lato'),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            'Butwal, Rupandehi',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w200, fontFamily: 'Lato'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            'Nepal',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w200, fontFamily: 'Lato'),
          ),
        ),
      ],
    ),
  );
}

Widget academics2portrait() {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            '10+2 in Science',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            '(Jun 2016 - Jun 2018)',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w200, fontFamily: 'Lato'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Flexible(
            child: Text(
              '''
Everest English Boarding High School''',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  fontFamily: 'Lato'),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            'Butwal, Rupandehi',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w200, fontFamily: 'Lato'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            'Nepal',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w200, fontFamily: 'Lato'),
          ),
        ),
      ],
    ),
  );
}
