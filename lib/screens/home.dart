import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background Color
      backgroundColor: Colors.grey[200],

      // AppBar Items
      appBar: AppBar(
        title: Text('\t Home',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              FirebaseAuth.instance.signOut();
            }
          ),
        ],
      ),



      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Welcome text
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome,',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      Text(user.email!,
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.bold,color: Colors.grey)),
                    ])),

            // Horizontal List
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              height: 180,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                            ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.file_copy_outlined, size: 70,color: Colors.blue),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Results',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15, fontWeight: FontWeight.bold,color: Colors.blue
                                  )),
                              ),
                            ],
                          ),
                        )
                    )
                ),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.calendar_month, size: 70,color: Colors.blue),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Schedule',
                                    style: GoogleFonts.poppins(
                                        fontSize: 15, fontWeight: FontWeight.bold,color: Colors.blue
                                    )),
                              ),
                            ],
                          ),
                        )
                    )
                ),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.qr_code_scanner, size: 70,color: Colors.blue),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Qr Attendance',
                                    style: GoogleFonts.poppins(
                                        fontSize: 15, fontWeight: FontWeight.bold,color: Colors.blue
                                    )),
                              ),
                            ],
                          ),
                        )
                    )
                ),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.newspaper, size: 70,color: Colors.blue),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('News',
                                    style: GoogleFonts.poppins(
                                        fontSize: 15, fontWeight: FontWeight.bold,color: Colors.blue
                                    )),
                              ),
                            ],
                          ),
                        )
                    )
                ),
              ]),
            ),

            // Task Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tasks',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Assigment 1',
                            style: GoogleFonts.poppins(fontSize: 15)),
                        TextButton(
                          child: Text('View'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Assigment 2',
                            style: GoogleFonts.poppins(fontSize: 15)),
                        TextButton(
                          child: Text('View'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Assigment 3',
                            style: GoogleFonts.poppins(fontSize: 15)),
                        TextButton(
                          child: Text('View'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Announcements Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Announcements',
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text(
                        'There will be no classes on May 25th due to a public holiday.',
                        style: GoogleFonts.poppins(fontSize: 15)),
                    Divider(),
                    Text(
                        'There will be no classes on May 25th due to a public holiday.',
                        style: GoogleFonts.poppins(fontSize: 15)),
                    Divider(),
                    Text(
                        'There will be no classes on May 25th due to a public holiday.',
                        style: GoogleFonts.poppins(fontSize: 15)),
                    Divider(),
                    TextButton(
                      child: Text('View all announcements'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),

            // Logout Button
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
