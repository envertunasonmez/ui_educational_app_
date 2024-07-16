
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:educational_app_ui/constant/colors.dart';
import 'package:educational_app_ui/constant/icons_and_pic.dart';

class PendingTestContainer extends StatelessWidget {
  PendingTestContainer({
    Key? key,
    required this.text,
    required this.textColor,
    required this.colorContainer,
    required this.textLesson,
    required this.lessonColor,
    required this.lessonBackGround,
  }) : super(key: key);
  final String text;
  final Color textColor;
  final Color colorContainer;
  final String textLesson;
  final Color lessonColor;
  final Color lessonBackGround;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
            color: colorContainer, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: textColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      decoration: BoxDecoration(
                        color: lessonBackGround,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            textLesson,
                            style: TextStyle(
                              color: lessonColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          StaticIcons.clock,
                          width: 24,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          '1d:10Hr',
                          style: TextStyle(
                            color: StaticColors.clockColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
