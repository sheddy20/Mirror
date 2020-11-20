import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _myItems = [];
  TextEditingController myTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Todo-List"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20.0),
            width: 250.0,
            child: Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: TextField(
                controller: myTextController,
                onSubmitted: (text) {
                  _myItems.add(text);
                  myTextController.clear();
                  setState(() {});
                },
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.edit),
                  hintText: "My Todos",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _myItems.length,
              itemBuilder: (BuildContext context, index) {
                return ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    _myItems[index],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Pacifico",
                    ),
                  ),
                  subtitle: Text("Todos Added"),
                  trailing: Icon(
                    Icons.check_circle,
                    color: Theme.of(context).primaryColor,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
