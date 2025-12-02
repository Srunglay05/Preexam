import 'package:flutter/material.dart';
import 'package:testing/widgets/mainhome/bottom_nav.dart';
import 'package:testing/widgets/mainhome/course_card.dart';
import 'package:testing/widgets/mainhome/promo_card.dart';
import 'package:testing/widgets/mainhome/searchbarwidget.dart';
import 'package:testing/widgets/mainhome/task_menu.dart';
import 'package:testing/widgets/mainhome/top_header.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(     
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50), 
            TopHeader(),
            SizedBox(height: 20),
            SearchBarWidget(),
            SizedBox(height: 18),
            TaskMenu(),
            SizedBox(height: 15),
            PromoCard(),
            SizedBox(height: 15),
            Text(
              "Course",
              style: TextStyle(
                fontSize: 30, 
                fontWeight: FontWeight.w500,
                fontFamily: 'Teacher'),
            ),
            SizedBox(height: 10),
            CourseCard(),
          ],
        ),
      ),
    );
  }
}
