import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFE5E7EB),
          title: const Text(
            'Contact',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.amberAccent.shade100,
                      borderRadius: BorderRadius.circular(150),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 250,
                    child: const Text(
                      'Ethan Carter',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 250,
                    child: const Text(
                      'Software Engineer',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 400,
                    height: 60,
                    color: Colors.black12,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10, right: 30),
                          width: 40,
                          height: 40,
                          child: const Text('C'),
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 40,
                          width: 250,
                          child: const Text(
                            '+1 (555) 123-4567',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 60,
                    color: Colors.black12,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10, right: 30),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text('M'),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 40,
                          width: 300,
                          child: const Text(
                            'ethan.carter@example.com',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
