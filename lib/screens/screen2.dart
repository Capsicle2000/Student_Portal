import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen2 extends StatelessWidget {
  final List<Map<String, dynamic>> courses = [
    {
      'title': 'Data Structures',
      'instructor': 'John Doe',
      //'image': 'https://picsum.photos/200',
      'ID': 'CS108',
    },
    {
      'title': '  Algorithms',
      'instructor': 'Jane Smith',
      //'image': 'https://picsum.photos/200',
      'ID': 'CS107',
    },
    {
      'title': 'Web Development  ',
      'instructor': 'Bob Johnson',
      //'image': 'https://picsum.photos/200',
      'ID': 'CS106',
    },{
      'title': ' Mobile App Development ',
      'instructor': 'Bob Johnson',
     // 'image': 'https://picsum.photos/200',
      'ID': 'CS105',
    },
    {
      'title': ' Web Software Engineering ',
      'instructor': 'Bob Johnson',
      //'image': 'https://picsum.photos/200',
      'ID': 'CS104',
    },
    {
      'title': ' Ai For Game ',
      'instructor': 'Bob Johnson',
      //'image': 'https://picsum.photos/200',
      'ID': 'CS103',
    },
    {
      'title': ' Computer programming ',
      'instructor': 'Bob Johnson',
     // 'image': 'https://picsum.photos/200',
      'ID': 'CS102',
    },
    {
      'title': 'software engineering',
      'instructor': 'Bob Johnson',
      //'image': 'https://picsum.photos/200',
      'ID': 'CS101',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Courses ',
      home: Scaffold(
        appBar: AppBar(
          title: Text(' Courses '),
         // centerTitle: true,
        //   leading:IconButton(
        //     onPressed: (){},
        //   icon: Icon(
        //     Icons.arrow_back,
        //     color: Colors.white,
        //   ),
        // ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
              onPressed:(){},
              color: Colors.white,
          )
        ],
        ),
        body: ListView.builder(
          itemCount: courses.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                color: Colors.blueAccent, // Set background color
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   //Image.network(courses[index]['image']),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            courses[index]['title'],
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white, // Set text color
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Instructor: ${courses[index]['instructor']}',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white, // Set text color
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'ID: ${courses[index]['ID']}',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white, // Set text color
                            ),
                          ),
                          SizedBox(height: 10.0),



                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

