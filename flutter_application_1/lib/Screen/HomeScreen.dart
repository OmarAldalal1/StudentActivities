import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/StudentActivities.dart';
import 'package:flutter_application_1/Screen/YouthCore.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Color.fromRGBO(30, 112, 220, 0.808),
      ),
        body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromRGBO(0, 57, 202, 0.98),
              Color.fromARGB(255, 116, 211, 255),
              Colors.white
            ],
          ),
        ),  
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Make Learning Easier With Student Assistant",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "to get started now!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
                SizedBox(
                height: 20,
              ),
                  Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Form(
                      // key: _formKey,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 80,
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(27, 83, 225, 0.992),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                ),
                              ],
                            ),
                            child: Column(
                              children: <Widget>[
           Text(
            "Choose which activities you prefer",
            style: TextStyle(
            color: Color.fromARGB(255, 8, 5, 5),
            fontSize: 30,
            ),
           ),
              TextButton(
                                    onPressed: () async {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                StudentActivities()),
                                      );
                                    },
                                    child: Container(
                                      height: 150,
                                      width: 1000,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 30),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color:
                                            Color.fromARGB(255, 232, 235, 236),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Student Activites ",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 74, 179, 255),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
  Text(
"-------------------------------------------------------------------------"    
  ),
                      TextButton(
              onPressed: () async {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => YouthCore()),
                );
              },
              child: Container(
                height: 150,
                width: 1000,
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(255, 230, 234, 236)),
                child: Center(
                  child: Text(
                    "Youth Core ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 74, 179, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  ),
                  ),
                  ),
          
            ],
                        
                          ),
                      ),
                        ],
                    ),
                  ),
                ),
              ),
              ),
              ),
          
          ]
        ),
        ),
        bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(73, 151, 253, 0.808),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
