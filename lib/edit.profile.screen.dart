import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 194, 84, 241),
              Color.fromARGB(255, 218, 169, 237),
              Color.fromARGB(255, 236, 211, 112),
              Color.fromARGB(255, 235, 92, 76),
            ],
            stops: [0.1, 0.4, 0.7, 1],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 100),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[300],
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Add Profile Pic Here',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 20),
              buildTextField(label: 'Name'),
              buildTextField(label: 'Age'),
              buildTextField(label: 'Gender'),
              buildTextField(label: 'Town'),
              buildTextField(label: 'Hobbies'),
              SizedBox(height: 10),
              buildTextField(label: 'About me', isMultiLine: true),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                ),
                child: Text(
                  'Save changes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Updated buildTextField to handle multi-line text fields
  Widget buildTextField({required String label, bool isMultiLine = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        maxLines:
            isMultiLine ? 5 : 1, // Makes "About me" double height (5 lines)
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          filled: true,
          fillColor: Colors.white.withOpacity(0.7),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: EditProfileScreen(),
  ));
}