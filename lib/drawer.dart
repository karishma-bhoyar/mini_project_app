// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text("kari bhoyar"),
              accountEmail: Text("kari123@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1606893995103-a431bce9c219?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80"),
              )),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("kari bhoyar"),
            subtitle: Text("developer"),
            trailing: Icon(Icons.edit),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("kari123@gmail.com"),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
