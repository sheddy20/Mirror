import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mirror",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Widget"),
        backgroundColor: Colors.deepPurple[400],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {},
            leading: Icon(Icons.landscape),
            title: Text("LandScape"),
            subtitle: Text("landscape widget"),
            trailing: Icon(Icons.wb_sunny),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.laptop),
            title: Text("ChromeBook"),
            subtitle: Text("laptop widget"),
            trailing: Icon(Icons.wifi),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.smartphone),
            title: Text("phone"),
            subtitle: Text("phone widget"),
            trailing: Icon(Icons.launch),
          ),
        ],
      ),
    );
  }
}
