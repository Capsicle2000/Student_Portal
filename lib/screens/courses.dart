import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<StatefulWidget> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  TextEditingController _controller = TextEditingController();

  void _clearText() {
    setState(() {
      _controller.clear();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  final List<Map<String, dynamic>> courses = [
    {
      'title': 'Data Structures',
      'instructor': 'John Doe',
      // 'icon': 'Icon(Icons.logout)',
      'ID': 'CS108',
    },
    {
      'title': 'Algorithms',
      'instructor': 'Jane Smith',
      //'image': 'https://picsum.photos/200',
      'ID': 'CS107',
    },
    {
      'title': 'Web Development  ',
      'instructor': 'Bob Johnson',
      //'image': 'https://picsum.photos/200',
      'ID': 'CS106',
    },
    {
      'title': 'Mobile App Development ',
      'instructor': 'Bob Johnson',
      // 'image': 'https://picsum.photos/200',
      'ID': 'CS105',
    },
    {
      'title': 'Web Software Engineering ',
      'instructor': 'Bob Johnson',
      //'image': 'https://picsum.photos/200',
      'ID': 'CS104',
    },
    {
      'title': 'Ai For Game ',
      'instructor': 'Bob Johnson',
      //'image': 'https://picsum.photos/200',
      'ID': 'CS103',
    },
    {
      'title': 'Computer programming ',
      'instructor': 'Bob Johnson',
      // 'image': 'https://picsum.photos/200',
      'ID': 'CS102',
    },
    {
      'title': 'Software engineering',
      'instructor': 'Bob Johnson',
      //'image': 'https://picsum.photos/200',
      'ID': 'CS101',
    },
  ];
  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundCourses = [];
  @override
  initState() {
    _foundCourses = courses;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = courses;
    } else {
      results = courses
          .where((user) =>
              user["title"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }
    setState(() {
      _foundCourses = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('\t Courses',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.white,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              controller: _controller,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed:_clearText,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundCourses.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundCourses.length,
                      itemBuilder: (context, index) => Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.white, // Set background color
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          leading: Icon(
                            Icons.class_outlined,
                            color: Colors.blue,
                            size: 40,
                          ),
                          title: Text(
                            _foundCourses[index]['title'],
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700], // Set text color
                            ),
                          ),
                          subtitle: Text(
                            'Instructor: ${_foundCourses[index]['instructor']}',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey, // Set text color
                            ),
                          ),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
