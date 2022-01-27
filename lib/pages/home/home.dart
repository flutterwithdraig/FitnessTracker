import 'package:fitness_tracker/pages/home/widgets/activity.dart';
import 'package:fitness_tracker/pages/home/widgets/current.dart';
import 'package:fitness_tracker/pages/home/widgets/header.dart';
import 'package:fitness_tracker/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          AppHeader(),
          CurrentPrograms(),
          RecentActivities(),
          BottomNavigation(),
        ],
      ),
    );
  }
}
