import 'package:flutter/material.dart';

class NameCaedWidget extends StatelessWidget {
  const NameCaedWidget({
    super.key,
    required TextEditingController nameController,
    required String myText,
  }) : _nameController = nameController;

  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(
            "assets/google.png",
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "myText",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Some Text",
                  labelText: "Name"),
            ),
          )
        ],
      ),
    );
  }
}
