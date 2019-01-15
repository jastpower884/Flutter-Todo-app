import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    title: 'List App',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: ListPage()));

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  @override
  ListState createState() => ListState();
}

class ListState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Title bar'),
        ),
        body: GridView.extent(
          maxCrossAxisExtent: 250.0,
          padding: EdgeInsets.all(4.0),
          children: createList(),
        ));
  }

  List<Widget> createList() {
    List<Widget> widgets = [];

    for (int index = 0; index < 100; index++) {
      widgets.add(createItem((index % 30) + 1));
    }

    return widgets;
  }

  Widget createItem(int imageIndex) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              "images/pic$imageIndex.jpg",
            ),
            radius: 50.0,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text('Image $imageIndex'),
        )
      ],
    );
  }
}
