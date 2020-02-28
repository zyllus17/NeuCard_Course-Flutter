import 'package:faculty/components/back_arrow_button.dart';
import 'package:faculty/components/constants.dart';
import 'package:faculty/components/programs.dart';
import 'package:faculty/courses/postgraduate/post_graduates.dart';
import 'package:faculty/courses/undergraduate/undergraduates.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Courses extends StatelessWidget {
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
          "${Constants.courseBar}",
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
              program: 'Undergraduate',
              onPress: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: Undergraduate()));
              },
            ),
            Programs(
              program: 'PostGraduate',
              onPress: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: PostGraduate()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
