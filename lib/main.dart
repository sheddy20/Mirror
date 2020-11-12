import 'package:Mirror/models/list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mirror",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController myController;

  @override
  void initState() {
    super.initState();
    myController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mirror",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent[400],
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Text("New chat room"),
                  ),
                  PopupMenuItem(
                    child: Text("New broadcast "),
                  ),
                  PopupMenuItem(
                    child: Text("Mirror Web"),
                  ),
                  PopupMenuItem(
                    child: Text("Archive messages"),
                  ),
                  PopupMenuItem(
                    child: Text("Settings"),
                  ),
                ];
              },
            ),
          ),
        ],
        bottom: TabBar(
          tabs: [
            Tab(child: (Icon(Icons.camera_alt))),
            Tab(child: Text("ONLINE")),
            Tab(child: Text("STATUS")),
            Tab(child: Text("CHATS")),
          ],
          indicatorColor: Colors.white,
          controller: myController,
        ),
      ),
      body: ListView.builder(itemBuilder: (counter, index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Images/taylor1.jpg"),
            ),
            title: Text(myListItem[index]),
            subtitle: Text("${myListItem[index]} Unread"),
            trailing: Icon(Icons.arrow_right),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        backgroundColor: Colors.deepPurpleAccent[400],
        onPressed: () {},
      ),
    );
  }
}
