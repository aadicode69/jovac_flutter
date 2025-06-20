import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Avatar
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange[100],
              ),
              child: ClipOval(
                child: Image.asset("assets/image/my.jpg", fit: BoxFit.cover),
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              'Ethan Carter',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'Product Designer',
              style: TextStyle(color: Colors.blueGrey, fontSize: 16),
            ),
            const Text(
              'San Francisco, CA',
              style: TextStyle(color: Colors.blueGrey, fontSize: 16),
            ),

            const SizedBox(height: 24),

            // Skills
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Skills',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 12),
            const Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                SkillChip(label: 'UI/UX Design'),
                SkillChip(label: 'User Research'),
                SkillChip(label: 'Prototyping'),
                SkillChip(label: 'Wireframing'),
                SkillChip(label: 'Design Systems'),
                SkillChip(label: 'Interaction Design'),
              ],
            ),

            const SizedBox(height: 32),

            // About
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'About',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Ethan is a product designer with over 5 years of experience in creating user-centered designs. '
                  'He specializes in UI/UX design, user research, and prototyping. Ethan is passionate about solving '
                  'complex problems and creating intuitive and engaging user experiences.',
              style:
              TextStyle(color: Colors.black87, fontSize: 16, height: 1.5),
            ),

            const SizedBox(height: 32),

            // Contact
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Contact',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1F5F9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.email_outlined, color: Colors.black),
                ),
                const SizedBox(width: 12),
                const Text(
                  'ethan.carter@email.com',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1F5F9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.call, color: Colors.black),
                ),
                const SizedBox(width: 12),
                const Text(
                  '(555) 123-4567',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1F5F9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.linked_camera, color: Colors.black),
                ),
                const SizedBox(width: 12),
                const Text(
                  'linkedin.com/in/ethancarter',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;

  const SkillChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F5F9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
