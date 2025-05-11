import 'package:flutter/material.dart';
import '../data/sample_data.dart';
import 'reading_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WeStudy 阅读'),
      ),
      body: ListView.builder(
        itemCount: sampleStories.length,
        itemBuilder: (context, index) {
          final story = sampleStories[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.book, size: 40, color: Theme.of(context).primaryColor),
              title: Text(story.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              subtitle: Text(story.author),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReadingScreen(story: story),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
