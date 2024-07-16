// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconButtonWidgets extends StatelessWidget {
  const IconButtonWidgets({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final String icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        icon,
      ),
    );
  }
}
