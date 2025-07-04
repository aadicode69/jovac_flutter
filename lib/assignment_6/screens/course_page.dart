import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  final List<String> courses = [
    'Flutter Basics',
    'Dart Advanced',
    'State Management',
    'Firebase Integration'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEADBD3),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Courses'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.brown.shade100,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                )
              ],
            ),
            child: ListTile(
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.brown[100],
                child: Icon(Icons.book, color: Colors.brown[800]),
              ),
              title: Text(
                courses[index],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.brown,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.brown),
              onTap: () {
                Navigator.pushNamed(context, '/courseDetails');
              },
            ),
          );
        },
      ),
    );
  }
}