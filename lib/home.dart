import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title:
            const Text('WhatsApp Clone', style: TextStyle(color: Colors.white)),
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
      ),
    );
  }
}
