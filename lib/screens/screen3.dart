import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('images/images.png'),
          ),
          SizedBox(height: 10),
          Text(
            'Maomen Raafat',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'MaomenRaafat@gmail.com',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[200],
            ),
          ),
          SizedBox(height: 40),
          Divider(color: Colors.black),
          ListTile(
            leading: Icon(Icons.phone, color: Colors.white),
            title: Text(
              '+1 123-456-7890',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(color: Colors.black),
          ListTile(
            leading: Icon(Icons.location_on, color: Colors.white),
            title: Text(
              '123 Main St, Anytown USA',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(color: Colors.black),
          ListTile(
            leading: Icon(Icons.work, color: Colors.white),
            title: Text(
              'Software Developer',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(color: Colors.black),
        ],
      ),
    );
  }
}
