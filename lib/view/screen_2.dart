import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/controller/user_data_controller.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen-1')),
      body: Consumer<ProviderController>(
          builder: (context, providerController, child) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${providerController.number}',style: const TextStyle(
                fontSize: 35,
                fontWeight:FontWeight.bold 
              ),),
              const SizedBox(height: 10,),
              Text("First Name : ${providerController.firstName.text}"),
              Text("Last Name : ${providerController.lastName.text}"),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: providerController.firstName,
                decoration:
                    const InputDecoration(label: Text('Update First Name')),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: providerController.lastName,
                decoration:
                    const InputDecoration(label: Text('Update First Name')),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    providerController.reset();
                  },
                  child: const Text('Clear'))
            ],
          ),
        );
      }),
    );
  }
}
