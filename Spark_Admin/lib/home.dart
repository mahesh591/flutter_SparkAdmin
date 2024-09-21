import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text('Welcome to the Second Screen!'),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parking List Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ParkingListScreen(),
    );
  }
}

class ParkingListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              // Handle notification button press
            },
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.imgur.com/BoN9kdC.png'), // Placeholder for profile image
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green,
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Mahi',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search Parking Name or Location',
                      icon: Icon(Icons.search, color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: ListView.builder(
                itemCount: 5, // Number of parking items
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(10.0),
                        leading: Image.network(
                          'https://i.imgur.com/BoN9kdC.png', // Placeholder for parking image
                          fit: BoxFit.cover,
                          width: 70,
                          height: 70,
                        ),
                        title: Text(
                          'The America Mall, Macy\'s, Nordstrom, Forever 21, Cr...',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.location_pin, color: Colors.green),
                                SizedBox(width: 5),
                                Expanded(
                                  child: Text(
                                    'Broadway, Bloomington MN 55425, USA njkhjkh...',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.phone, color: Colors.green),
                                SizedBox(width: 5),
                                Text(
                                  '+1 952-883-8800',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
