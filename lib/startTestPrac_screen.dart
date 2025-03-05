import 'package:car_ai/test_screen.dart';
import 'package:flutter/material.dart';

class StarttestpracScreen extends StatelessWidget {
  StarttestpracScreen({super.key});

  final List<String> steps = [
    'Step 1: Find The Nearest Driving School',
    'Step 2: Go To Nearest Driving School',
    'Step 3: Take The Token Number',
    'Step 4: Drive The Car',
    'Step 5: Go To Driving School Back',
    'Step 6: Get The Score From The Driving School.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Steps to Follow'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const Text(
              'Follow These Steps:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),
            // Steps List
            Expanded(
              child: ListView.builder(
                itemCount: steps.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      title: Text(
                        steps[index],
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            // Bottom Button
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: const Text('Enter The Token Here'),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Enter Token', // Placeholder text
                  labelText: 'Token',          // Label shown above the text field
                  border: OutlineInputBorder(), // Adds a border around the field
                ),
                onChanged: (value) {
                  print('Input: $value'); // Callback for every input change
                },
              )
              ,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Add navigation or functionality here
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Proceeding to the next step...')),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestScreen()),
                  );
                },
                child: const Text(
                  'Start Test',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: Colors.blueAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

