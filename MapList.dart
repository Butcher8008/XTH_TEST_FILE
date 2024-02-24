import 'package:flutter/material.dart';

class MapList extends StatelessWidget {
  const MapList({super.key}) ;
  static const List<Map<String, dynamic>> datalist =[
    {'title': 'Item 1', 'subtitle': 'Description for item 1', 'icon': Icons.star},
    {'title': 'Item 2', 'subtitle': 'Description for item 2', 'icon': Icons.favorite},
    {'title': 'Item 3', 'subtitle': 'Description for item 3', 'icon': Icons.bookmark},
    {'title': 'Item 4', 'subtitle': 'Description for item 4', 'icon': Icons.android},
    {'title': 'Item 5', 'subtitle': 'Description for item 5', 'icon': Icons.access_alarm},

  ];

  @override
  Widget build(BuildContext context) {
    // final List<Map<String, dynamic>> data =datalist;
    return Scaffold(
      body: ListView.builder(
        itemCount: datalist.length,
        itemBuilder: (context, index){
          final Map<String, dynamic> item= datalist[index];
          return Card(
            child: ListTile(
              leading: Icon(item['icon'] as IconData),
              title: Text(item['tile'].toString()),
              subtitle: Text(item['subtitle'].toString()),
            ),
          );
        },
      )
    );
  }
}
