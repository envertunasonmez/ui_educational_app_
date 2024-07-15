import 'package:educational_app_ui/constant/colors.dart';
import 'package:educational_app_ui/constant/icons_and_pic.dart';
import 'package:educational_app_ui/widgets/pending_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    print('Tıklandı');
                  },
                  icon: SvgPicture.asset(
                    StaticIcons.menu,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    print('Tıklandı');
                  },
                  icon: SvgPicture.asset(
                    StaticIcons.notifications,
                  ),
                ),
                Center(
                  child: CircleAvatar(
                    child: SvgPicture.asset(
                      StaticIcons.profile,
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              'Hi Rohan,',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
            ),
            const Text(
              'You have 4 pending test this week',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
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
                              color: Colors.white,
                            ),
                          )
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
                                borderRadius: BorderRadius.circular(12))),
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
                  const Text(
                    '4 Pending tests',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      StaticIcons.info,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: PendingTestContainer(
                        lessonColor: StaticColors.colorPhysicsFirst,
                        lessonBackGround: StaticColors.physicsBackGround,
                        colorContainer: Colors.white,
                        text: 'Law of Motion',
                        textColor: Colors.black,
                        textLesson: 'Physics',
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: PendingTestContainer(
                        lessonColor: StaticColors.colorChemistryFirst,
                        lessonBackGround: StaticColors.chemistrysBackGround,
                        colorContainer: Colors.white,
                        text: 'Law of Motion',
                        textColor: Colors.black,
                        textLesson: 'Chemistry',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Expanded(
                      child: PendingTestContainer(
                        lessonColor: StaticColors.colorMathFirst,
                        lessonBackGround: StaticColors.mathsBackGround,
                        colorContainer: Colors.white,
                        text: 'Law of Motion',
                        textColor: Colors.black,
                        textLesson: 'Maths',
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: PendingTestContainer(
                        lessonColor: StaticColors.colorPhysicsFirst,
                        lessonBackGround: StaticColors.physicsBackGround,
                        colorContainer: Colors.white,
                        text: 'Law of Motion',
                        textColor: Colors.black,
                        textLesson: 'Physics',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
