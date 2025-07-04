import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5ECE8), // light brown background
      appBar: AppBar(
        backgroundColor: const Color(0xFF6F4E37), // darker brown
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Dashboard", style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/image/content.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Welcome back,",
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            const SizedBox(height: 4),
            const Row(
              children: [
                Text(
                  "John Doe",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.brown),
                ),
                SizedBox(width: 8),
                Text("👋", style: TextStyle(fontSize: 22)),
              ],
            ),
            const SizedBox(height: 28),

            // Profile Card
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/profile'),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.brown[100],
                        child: const Icon(Icons.person, color: Colors.brown),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("View Profile", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.brown)),
                            SizedBox(height: 4),
                            Text("See and edit your personal information.", style: TextStyle(fontSize: 13)),
                          ],
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Courses Card
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/courses'),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.brown[100],
                        child: const Icon(Icons.menu_book_rounded, color: Colors.brown),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("View Courses", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.brown)),
                            SizedBox(height: 4),
                            Text("Continue learning or explore new topics.", style: TextStyle(fontSize: 13)),
                          ],
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}