import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEADBD3),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 40),

              // Banner Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset('assets/image/content.png'),
              ),

              const SizedBox(height: 30),

              // Card with profile info
              Container(
                padding: const EdgeInsets.symmetric(vertical: 24),
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.brown.shade100,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/image/my.jpg'),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'John Doe',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.brown),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'john@example.com',
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    ),
                    const SizedBox(height: 16),
                    Divider(color: Colors.grey[300], thickness: 1),
                    const SizedBox(height: 12),

                    // Stats Row
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Column(
                            children: [
                              Text('12', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown)),
                              SizedBox(height: 4),
                              Text('Courses', style: TextStyle(fontSize: 13)),
                            ],
                          ),
                          Column(
                            children: [
                              Text('5', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown)),
                              SizedBox(height: 4),
                              Text('Badges', style: TextStyle(fontSize: 13)),
                            ],
                          ),
                          Column(
                            children: [
                              Text('23', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown)),
                              SizedBox(height: 4),
                              Text('Rank', style: TextStyle(fontSize: 13)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Back Button
              ElevatedButton.icon(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                label: const Text("Back", style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF5C4033),
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}