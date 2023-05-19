// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   final List<Map<String, dynamic>> courses = [
//     {
//       'title': ' mobile app ',
//       'instructor': 'John Doe',
//       'image': 'https://picsum.photos/200',
//       'price': 'Free',
//     },
//     {
//       'title': ' ai for game ',
//       'instructor': 'Jane Smith',
//       'image': 'https://picsum.photos/200',
//       'price': '\$99',
//     },
//     {
//       'title': 'computer graphic  ',
//       'instructor': 'Bob Johnson',
//       'image': 'https://picsum.photos/200',
//       'price': '\$49',
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: ' Courses ',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(' Courses '),
//         ),
//         body: ListView.builder(
//           itemCount: courses.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Card(
//               child: Container(
//                 color: Colors.blue, // Set background color
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Image.network(courses[index]['image']),
//                     SizedBox(width: 10.0),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Text(
//                             courses[index]['title'],
//                             style: TextStyle(
//                               fontSize: 20.0,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white, // Set text color
//                             ),
//                           ),
//                           SizedBox(height: 5.0),
//                           Text(
//                             'Instructor: ${courses[index]['instructor']}',
//                             style: TextStyle(
//                               fontSize: 16.0,
//                               color: Colors.white, // Set text color
//                             ),
//                           ),
//                           SizedBox(height: 10.0),
//                           Text(
//                             'Price: ${courses[index]['price']}',
//                             style: TextStyle(
//                               fontSize: 16.0,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white, // Set text color
//                             ),
//                           ),
//                           SizedBox(height: 10.0),
//
//
//
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_app/bottomnavbar.dart';
import 'package:flutter_app/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/loginpage',
      routes: {
        '/loginpage': (context) => Loginpage(),
        '/bottomnavbar': (context) => BottomNavBar(),
      },
    );
  }
}
