// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SubjectsWidget extends StatelessWidget {
  SubjectsWidget({
    Key? key,
    required this.lessonName,
    required this.firstColor,
    required this.secondColor,
  }) : super(key: key);
  final String lessonName;
  final Color firstColor;
  final Color secondColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: 68,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              firstColor,
              secondColor,
            ],
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            lessonName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
