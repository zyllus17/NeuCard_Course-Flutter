import 'package:faculty/components/back_arrow_button.dart';
import 'package:faculty/components/constants.dart';
import 'package:faculty/components/course_programs.dart';
import 'package:faculty/components/programs.dart';
import 'package:faculty/courses/undergraduate/ba_honours_courses.dart';
import 'package:faculty/courses/undergraduate/bsc_courses.dart';
import 'package:faculty/courses/undergraduate/engineering_courses.dart';
import 'package:faculty/courses/undergraduate/lateral_entry.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Undergraduate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            BackArrowButton(),
          ],
        ),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "${Constants.undergraduateBar}",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: <Widget>[
            Programs(
              program: 'Engineering (Engg)',
              onPress: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: Engineering()));
              },
            ),
            Programs(
              program: 'Bachelor of Science (B.Sc)',
              onPress: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: BachelorOfScience()));
              },
            ),
            Programs(
              program: 'Bachelor of Arts Honours (B.A(Hons))',
              onPress: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: BachelorOfArtsHonours()));
              },
            ),
            Programs(
              program: 'Lateral Entry',
              onPress: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: LateralEntry()));
              },
            ),
            CoursePrograms(
              course: '3-year BCA',
            ),
            CoursePrograms(
              course: '5-year Integrated MBA',
            ),
            CoursePrograms(
              course: 'Bachelor of Education (B.Ed.)',
            ),
          ],
        ),
      ),
    );
  }
}
