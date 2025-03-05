import 'package:car_ai/result_screen.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ongoing Test'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                // Background Image
                Positioned(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgxrBvb8tPGQuuR1dfiz-zvN7gwMBOohEh5SZgPJfu7sZMl7CA12iKIC418JWDxVRSLCE&usqp=CAU',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 500,
                  ),
                ),
                // Semi-transparent overlay
                Positioned(
                  child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: Image.network(
                            'https://i.pinimg.com/736x/ae/39/6e/ae396e7d69a673158406ce2359206097.jpg',
                            fit: BoxFit.cover,
                            height: 20,
                            width: 20,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(4),
                          child: const Text(
                            'Live Test',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ), // Dark overlay
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: const Text(
                    'Started at:- 19:30',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: const Text(
                    'Duration :- 30 min',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 10, 10),
              child: const Text(
                'Token :- GJ01KW4919',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 10, 10),
              child: const Text(
                'RTO:- Ahmedabad',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 10, 10),
              child: const Text(
                'Status:- Connected',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultScreen()),
                  );
                },
                child: Text(
                  'End Test',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
