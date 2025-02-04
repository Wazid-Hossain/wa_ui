import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'WhatsApp Clone',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        //for add more button in appbar usings actions
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_rounded),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_outlined),
            color: Colors.white,
          )
        ],
        //End of actions
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.greenAccent],
            ),
          ),
        ),
      ),
      //for add new message button in bottom right corner using floatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
        backgroundColor: Colors.green,
        tooltip: 'New Chat',
      ),
      //End of floatingActionButton
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                color: Colors.greenAccent,
              ),
              label: 'Chats',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.update,
                color: Colors.greenAccent,
              ),
              label: 'Updates'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
                color: Colors.greenAccent,
              ),
              label: 'Calls',
              backgroundColor: Colors.white),
        ],
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 20,
        unselectedFontSize: 15,
        backgroundColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (index) {
          print('Current Index is $index');
          //for change the current index of bottomNavigationBar using setState
          setState(() {
            currentIndex = index;
          });
        },
      ),
      //for add new message button in bottom right corner using floatingActionButton
      //End of bottomNavigationBar
      //for add drawer in left side of appbar
      drawer: Drawer(
        backgroundColor: Colors.white,
      ),
    );
  }
}
