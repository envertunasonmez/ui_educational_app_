import 'package:educational_app_ui/widgets/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:educational_app_ui/constant/colors.dart';
import 'package:educational_app_ui/constant/icons_and_pic.dart';
import 'package:educational_app_ui/widgets/icon_widget.dart';
import 'package:educational_app_ui/widgets/nav_bar.dart';
import 'package:educational_app_ui/widgets/pending_test.dart';
import 'package:educational_app_ui/widgets/subjects.dart';
import 'package:educational_app_ui/widgets/text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBarWidget(
        navBarHome: StaticIcons.home,
        navBarSubject: StaticIcons.subject,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarWidget(),
              const TextWidgets(),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: const LinearGradient(
                      colors: [
                        StaticColors.advert,
                        StaticColors.primary,
                        StaticColors.colorMathSecond,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '300',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Points',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Cross 500 within the week to\nget a free One on One Class.',
                              style: TextStyle(
                                color: StaticColors.subtitleAdvert,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Take test now',
                            style: const TextStyle(
                              color: StaticColors.primary,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      '4 Pending tests',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButtonWidgets(icon: StaticIcons.info),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      PendingTestContainer(
                        lessonColor: StaticColors.colorPhysicsFirst,
                        lessonBackGround: StaticColors.physicsBackGround,
                        colorContainer: Colors.white,
                        text: 'Law of Motion',
                        textColor: Colors.black,
                        textLesson: 'Physics',
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      PendingTestContainer(
                        lessonColor: StaticColors.colorChemistryFirst,
                        lessonBackGround: StaticColors.chemistrysBackGround,
                        colorContainer: Colors.white,
                        text: 'Law of Motion',
                        textColor: Colors.black,
                        textLesson: 'Chemistry',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      PendingTestContainer(
                        lessonColor: StaticColors.colorMathFirst,
                        lessonBackGround: StaticColors.mathsBackGround,
                        colorContainer: Colors.white,
                        text: 'Law of Motion',
                        textColor: Colors.black,
                        textLesson: 'Maths',
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      PendingTestContainer(
                        lessonColor: StaticColors.colorPhysicsFirst,
                        lessonBackGround: StaticColors.physicsBackGround,
                        colorContainer: Colors.white,
                        text: 'Law of Motion',
                        textColor: Colors.black,
                        textLesson: 'Physics',
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Subjects',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                children: [
                  SubjectsWidget(
                    lessonName: 'Mathematics',
                    firstColor: StaticColors.colorMathFirst,
                    secondColor: StaticColors.colorMathSecond,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SubjectsWidget(
                    lessonName: 'Chemistry',
                    firstColor: StaticColors.colorChemistryFirst,
                    secondColor: StaticColors.colorChemistrySecond,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  SubjectsWidget(
                    lessonName: 'Physics',
                    firstColor: StaticColors.colorPhysicsFirst,
                    secondColor: StaticColors.colorPhysicsSecond,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SubjectsWidget(
                    lessonName: 'Reasoning',
                    firstColor: StaticColors.colorReasoningFirst,
                    secondColor: StaticColors.colorReasoningSecond,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
