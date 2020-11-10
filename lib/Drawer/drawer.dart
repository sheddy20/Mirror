import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Abel Shedrack Nicholas"),
            accountEmail: Text("ShedrackAbel@gmail.com"),
            decoration: BoxDecoration(
              color: Colors.blueGrey[500],
              borderRadius: BorderRadius.circular(10.0),
            ),
            arrowColor: Colors.white,
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("Assets/Images/taylor.jpg"),
              radius: 50.0,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Account"),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.people),
              title: Text("Socials"),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.queue_music_outlined),
              title: Text("Playlist"),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favourite"),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.wallet_giftcard),
              title: Text("Gift Card"),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.payment),
              title: Text("Payment Gateways"),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.cloud),
              title: Text("MyCloud"),
              trailing: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
    );
  }
}
