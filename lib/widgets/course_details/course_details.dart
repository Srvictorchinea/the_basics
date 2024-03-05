import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'FLUTTER WEB. \nTHE BASICS',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              height: 0.9,
              fontSize: 80,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Flutter is an open-source UI software development toolkit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter enables developers to create high-performance, visually appealing, and fast user interfaces across different platforms.',
            style: TextStyle(
              fontSize: 21,
              height: 1.7,
            ),
          ),
        ],
      ),
    );
  }
}
