import 'package:faculty/components/back_arrow_button.dart';
import 'package:faculty/components/constants.dart';
import 'package:faculty/components/course_programs.dart';
import 'package:faculty/components/programs.dart';
import 'package:faculty/courses/postgraduate/ma_course.dart';
import 'package:faculty/courses/postgraduate/msc_course.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'mtech_course.dart';

class PostGraduate extends StatelessWidget {
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
          "${Constants.postGraduateBar}",
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
              program: 'Master of Science (M.Sc.)',
              onPress: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: MasterOfScience()));
              },
            ),
            Programs(
              program: 'Master of Arts (M.A.)',
              onPress: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: MasterOfArts()));
              },
            ),
            Programs(
              program: 'Master of Technology (M.Tech.)',
              onPress: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: MasterOfTechnology()));
              },
            ),
            CoursePrograms(
              course: '3-year MCA',
            ),
            CoursePrograms(
              course: '2-year Master of Law (LL.M.)',
            ),
          ],
        ),
      ),
    );
  }
}
