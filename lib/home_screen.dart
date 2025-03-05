import 'package:car_ai/startTestPrac_screen.dart';
import 'package:car_ai/startTestRTO_Screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> school = [
    'darshna driving school',
    'vijay driving school',
    'ambe driving school',
    'shakti driving school',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.person_2_rounded),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.logout_sharp),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                child: const Text(
                  'Welcome',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: const Text(
                  'Start a official driving test(RTO)',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w400,
                      color: Colors.red),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(10),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      // Background Image
                      Positioned(
                        child: Image.network(
                          'https://storage.googleapis.com/support-forums-api/attachment/thread-3360561-4772213659952243723.jpg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      // Semi-transparent overlay
                      Positioned(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(4),
                                child: const Text(
                                  'Official Test',
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
                      Positioned(
                        bottom: 0,
                        top: 150,
                        child: Container(
                          color: Colors.white,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 8),
                                child: const Text(
                                  '30 min test',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 8),
                                child: const Text(
                                  '.',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 5),
                                child: const Text(
                                  'Nearest RTO   .',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 0),
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                StarttestrtoScreen()),
                                      );
                                    },
                                    child: const Text(
                                      'Start Test',
                                      style: TextStyle(fontSize: 20),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: const Text(
                  'Start a practice test',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(10),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      // Background Image
                      Positioned(
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgxrBvb8tPGQuuR1dfiz-zvN7gwMBOohEh5SZgPJfu7sZMl7CA12iKIC418JWDxVRSLCE&usqp=CAU',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      // Semi-transparent overlay
                      Positioned(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(4),
                                child: const Text(
                                  'Local Test',
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
                      Positioned(
                        bottom: 0,
                        top: 150,
                        child: Container(
                          color: Colors.white,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 8),
                                child: const Text(
                                  '30 min test',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 8),
                                child: const Text(
                                  '.',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 8),
                                child: const Text(
                                  'In your area   .',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 0),
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              StarttestpracScreen(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      'Start Test',
                                      style: TextStyle(fontSize: 20),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(15, 20, 10, 0),
                child: const Text(
                  'Some nearest driving school in your area.',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: school.length, // Total number of items in the list
                itemBuilder: (BuildContext context, int index) {
                  // Returns a widget for each list item
                  return Card(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '  ${school[index]}',
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.directions,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
