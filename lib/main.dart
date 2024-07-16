import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';

void main() async {

}



class MyApp extends StatelessWidget {
  final Database database;

  MyApp({required this.database});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pre-filled SQLite Example'),
        ),
        body: FutureBuilder<List<Map<String, dynamic>>>(
          future: getItems(database),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }

            if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text('No items found.'));
            }

            final items = snapshot.data!;

            return ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];

                return ListTile(
                  title: Text(item['name'] ?? ''),
                  subtitle: Text('Value: ${item['value']}'),
                );
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await insertItem(database, {'name': 'New Item', 'value': 100});
            // Refresh the UI
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Item added successfully')),
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

Future<void> insertItem(Database db, Map<String, dynamic> item) async {
  try {
    await db.insert(
      'items',
      item,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  } catch (error) {
    print('Error inserting item: $error');
    throw error;
  }
}

Future<List<Map<String, dynamic>>> getItems(Database db) async {
  try {
    return await db.query('items');
  } catch (error) {
    print('Error querying items: $error');
    throw error;
  }
}
