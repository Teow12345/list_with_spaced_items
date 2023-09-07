import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyList(),
    );
  }
}

class MyList extends StatelessWidget {
  final List<ListItem> items = [
    ListItem("Item 1", Icons.phone, Icons.email, Icons.message),
    ListItem("Item 2", Icons.phone, Icons.email, Icons.message),
    ListItem("Item 3", Icons.phone, Icons.email, Icons.message),
    ListItem("Item 4", Icons.phone, Icons.email, Icons.message),
    ListItem("Item 5", Icons.phone, Icons.email, Icons.message),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list with spaced items'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Padding(
            padding: EdgeInsets.all(8.0), // Adjust the spacing as needed
            child: ListTile(
              title: Text(item.text), // Item text comes first
              trailing: Row( // Icons as trailing widgets
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(item.phoneIcon),
                  SizedBox(width: 8.0), // Add spacing between icons
                  Icon(item.emailIcon),
                  SizedBox(width: 8.0), // Add spacing between icons
                  Icon(item.whatsappIcon),
                ],
              ),
              // Add any other widgets for each item here
            ),
          );
        },
      ),
    );
  }
}

class ListItem {
  final String text;
  final IconData phoneIcon;
  final IconData emailIcon;
  final IconData whatsappIcon;

  ListItem(this.text, this.phoneIcon, this.emailIcon, this.whatsappIcon);
}
