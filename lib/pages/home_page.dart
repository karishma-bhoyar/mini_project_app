// ignore_for_file: unused_element, prefer_final_fields, prefer_const_constructors, prefer_typing_uninitialized_variables, unnecessary_cast, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_6/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHomePage extends StatefulWidget {
  static const String routeName = "/HomePage";
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //var myText = "Change My Name";
  // TextEditingController _nameController = TextEditingController();
  //var url = "https://jsonplaceholder.typicode.com/photos";
  var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  var data;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url as Uri);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("AWSOME APP"),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: data != null
          ? ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text("id:${data[index]["id"]}"),
                  leading: Image.network(data[index]["url"]),
                );
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
