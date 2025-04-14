import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 184, 226, 186),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const Icon(Icons.person, size: 48),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Color.fromARGB(255, 184, 226, 186),
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: const Text(
                        'Tanvir',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      color: Color.fromARGB(255, 184, 226, 186),
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: const Text(
                        'NID No. : 7374****7474',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                    Container(
                      color: Color.fromARGB(255, 184, 226, 186),
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: const Text(
                        'Email : tanvir15-5649@diu.edu.bd',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                    Container(
                      color: Color.fromARGB(255, 184, 226, 186),
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: const Text(
                        'Number : 019xxxxxxxx',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Icon(Icons.download, size: 40, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 8),
              const Text('Upload Photo'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Edit Information'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
