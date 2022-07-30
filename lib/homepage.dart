import 'package:flutter/material.dart';

import 'entrypage.dart';
import 'newpage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> listof = [
    "Frank",
    "Ulysses",
    "Carrie",
    "Kevin",
    "Yurie",
    "Orvil",
    "Urich",
    "Paul",
    "Ryan",
    "Irvin",
    "Charles",
    "Kirk",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Employee List',
          style: TextStyle(fontSize: 19.0),
        ),
        backgroundColor: Colors.deepPurple,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => debugPrint("Add"),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => debugPrint('Search'),
          ),
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EntryPage()));
              }),
        ],
      ),
      body: Container(
        color: Colors.teal,
        child: ListView.builder(
          itemBuilder: (_, int index) => listDataItem(this.listof[index]),
          itemCount: this.listof.length,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class listDataItem extends StatelessWidget {
  String itemName;

  listDataItem(this.itemName);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      child: Container(
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () => NewPage(),
              child: CircleAvatar(
                child: Text(itemName[0]),
              ),
            ),
            Expanded(
              child: Text(
                itemName,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            //SizedBox(width: 100),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewPage()));
                },
                child: Text('Time Card'),
              ),
            ),
            SizedBox(width: 500),
          ],
        ),
      ),
    );
  }
}