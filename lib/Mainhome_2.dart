import 'package:flutter/material.dart';

class OrderStatusScreen extends StatelessWidget {
  final List<Map<String, dynamic>> statuses = [
    {'title': 'ORDERS', 'color': Colors.black},
    {'title': 'PENDING', 'color': Colors.orange},
    {'title': 'PROCESSING', 'color': Colors.orangeAccent},
    {'title': 'PICKED', 'color': Colors.blue},
    {'title': 'DELIVERED', 'color': Colors.green},
    {'title': 'RETURNED', 'color': Colors.red},
    {'title': 'REPAIR', 'color': Colors.grey},
    {'title': 'HOLD', 'color': Colors.deepOrange},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Order Status', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: statuses.length,
          itemBuilder: (context, index) {
            return OrderStatusCard(
              title: statuses[index]['title'],
              color: statuses[index]['color'],
            );
          },
        ),
      ),
    );
  }
}

class OrderStatusCard extends StatelessWidget {
  final String title;
  final Color color;

  OrderStatusCard({required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: color,
            ),
          ),
          SizedBox(height: 5),
          Text('Qty: 0',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              )),
          Text('Amount: 0.00',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              )),
        ],
      ),
    );
  }
}
