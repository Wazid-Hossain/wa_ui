import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
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

  void onCardTap(String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderDetailsScreen(status: title),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Style View',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.power_settings_new),
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: AssetImage('images/zeo_logo.jpg'), height: 100),
            Center(
              child: Container(
                height: 90,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 5,
                        offset: Offset(0, 0)),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'Reseller: Test Oshni',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'ADD ORDER',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'ORDER LIST',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2.5,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: statuses.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => onCardTap(statuses[index]['title']),
                  child: OrderStatusCard(
                    title: statuses[index]['title'],
                    color: statuses[index]['color'],
                  ),
                );
              },
            ),
          ],
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
                  style: TextStyle(fontSize: 14, color: Colors.black)),
              Text('Amount: 0.00',
                  style: TextStyle(fontSize: 14, color: Colors.black)),
            ],
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.orange),
        ],
      ),
    );
  }
}

class OrderDetailsScreen extends StatelessWidget {
  final String status;

  OrderDetailsScreen({required this.status});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$status Details'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          'Details for $status orders',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
