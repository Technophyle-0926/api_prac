import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_revision/Controller/api_controller.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<ApiController>();
    if (controller.data == null) {
      controller.getData();
    }
    return Scaffold(
      appBar: AppBar(),
      body: controller.data == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: controller.data!.length,
              itemBuilder: (context, i) {
                return Text(controller.data![i].slogan ?? '');
              },
            ),
    );
  }
}
