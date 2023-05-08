import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/regiter_event_controller.dart';

class RegiterEventView extends GetView<RegiterEventController> {
  const RegiterEventView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegiterEventView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RegiterEventView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
