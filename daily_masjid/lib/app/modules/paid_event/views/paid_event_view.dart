import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/paid_event_controller.dart';

class PaidEventView extends GetView<PaidEventController> {
  const PaidEventView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PaidEventView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PaidEventView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
