import 'package:flutter/material.dart';
import 'package:provider_demo/controller/user_data_controller.dart';
import 'package:provider/provider.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderController>(
        builder: (context, providerController, child) {
      return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: providerController.firstName,
              decoration: const InputDecoration(label: Text('First Name')),
            ),
            TextField(
              controller: providerController.lastName,
              decoration: const InputDecoration(label: Text('Last Name')),
            ),
            const SizedBox(height: 15,),
            ElevatedButton(
                onPressed: () {
                  providerController.validate(context: context);
                },
                child: const Text('Submit')),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      providerController.subNumber();
                    },
                    child: const CircleAvatar(child: Icon(Icons.remove))),
                const SizedBox(width: 20),
                Text('${providerController.number}'),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                    onTap: () {
                      providerController.addNumber();
                    },
                    child: const CircleAvatar(child: Icon(Icons.add))),
              ],
            )
          ],
        ),
      );
    });
  }
}
