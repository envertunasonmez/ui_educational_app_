import 'package:educational_app_ui/constant/icons_and_pic.dart';
import 'package:educational_app_ui/widgets/app_bar.dart';
import 'package:educational_app_ui/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class SubjectScreen extends StatelessWidget {
  const SubjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBarWidget(
        navBarHome: StaticIcons.home,
        navBarSubject: StaticIcons.subject,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBarWidget(),
            // Container düzenlenecek ayrı bir widget olarak ele alınacak
            Container(
              decoration: BoxDecoration(),
            ),
          ],
        ),
      ),
    );
  }
}
