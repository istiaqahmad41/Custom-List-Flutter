import 'package:flutter/material.dart';

void main() {
  runApp(Lists_17_demo());
}
//10 customlistview by offline asset image,name,addrees,mobile at list 5 person
// Lists_17_demo

class Lists_17_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom ListView with Asset Images',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom ListView Example'),
        ),
        body: PersonListView(),
      ),
    );
  }
}

class Person {
  final String name;
  final String address;
  final String mobile;
  final String assetImage;

  Person({
    required this.name,
    required this.address,
    required this.mobile,
    required this.assetImage,
  });
}

class PersonListView extends StatelessWidget {
  final List<Person> people = [
    Person(
      name: 'John Doe',
      address: '123 Main St, City A',
      mobile: '123-456-7890',
      assetImage: 'assets/avatar1.png',
    ),
    Person(
      name: 'Jane Smith',
      address: '456 Maple Ave, City B',
      mobile: '987-654-3210',
      assetImage: 'assets/avatar1.png',
    ),
    Person(
      name: 'David Johnson',
      address: '789 Oak St, City C',
      mobile: '555-555-5555',
      assetImage: 'assets/avatar1.png',
    ),
    Person(
      name: 'Emma Brown',
      address: '101 Pine St, City D',
      mobile: '111-222-3333',
      assetImage: 'assets/avatar1.png',
    ),
    Person(
      name: 'Liam Davis',
      address: '202 Elm St, City E',
      mobile: '999-888-7777',
      assetImage: 'assets/avatar1.png',
    ),
    Person(
      name: 'John Doe',
      address: '123 Main St, City A',
      mobile: '123-456-7890',
      assetImage: 'assets/avatar1.png',
    ),
    Person(
      name: 'Jane Smith',
      address: '456 Maple Ave, City B',
      mobile: '987-654-3210',
      assetImage: 'assets/avatar1.png',
    ),
    Person(
      name: 'David Johnson',
      address: '789 Oak St, City C',
      mobile: '555-555-5555',
      assetImage: 'assets/avatar1.png',
    ),
    Person(
      name: 'Emma Brown',
      address: '101 Pine St, City D',
      mobile: '111-222-3333',
      assetImage: 'assets/avatar1.png',
    ),
    Person(
      name: 'Liam Davis',
      address: '202 Elm St, City E',
      mobile: '999-888-7777',
      assetImage: 'assets/avatar1.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: people.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(people[index].assetImage),
            ),
            title: Text(people[index].name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Address: ${people[index].address}'),
                Text('Mobile: ${people[index].mobile}'),
              ],
            ),
          ),
        );
      },
    );
  }
}

//------11
