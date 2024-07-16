import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/icons_and_pic.dart';
import 'icon_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButtonWidgets(icon: StaticIcons.menu),
        const Spacer(),
        IconButtonWidgets(icon: StaticIcons.notifications),
        CircleAvatar(
          child: SvgPicture.asset(
            StaticIcons.profile,
          ),
        ),
      ],
    );
  }
}
