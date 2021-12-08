import 'package:flutter/material.dart';

class AddSrceen extends StatelessWidget {
  const AddSrceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add screen"),
      ),
      body: const Center(child: Text("Add_Screen")),
    );
  }
}
