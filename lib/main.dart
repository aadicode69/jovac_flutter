import 'package:firstproject/assignment_6/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'assignment_6/screens/course_details_page.dart';
import 'assignment_6/screens/course_page.dart';
import 'assignment_6/screens/dashboard_page.dart';
import 'assignment_6/screens/profile_page.dart';
import 'assignment_6/screens/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 6',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.brown),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/dashboard': (context) => DashboardPage(),
        '/profile': (context) => ProfilePage(),
        '/courses': (context) => CoursesPage(),
        '/courseDetails': (context) => CourseDetailsPage(),
      },
    );
  }
}