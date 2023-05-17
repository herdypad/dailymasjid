// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class UnderDevelopmentView extends StatefulWidget {
  const UnderDevelopmentView({Key? key}) : super(key: key);

  @override
  State<UnderDevelopmentView> createState() => _UnderDevelopmentViewState();
}

class _UnderDevelopmentViewState extends State<UnderDevelopmentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kadar Luarsa"),
        actions: const [],
      ),
      body: Center(
        child: Text("kadar Luarsa Silakan Hubungi Pengembang"),
      ),
    );
  }
}
