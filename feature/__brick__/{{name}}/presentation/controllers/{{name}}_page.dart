import 'package:flutter/material.dart';

class {{name.pascalCase()}}View extends HookConsumerWidget {
  const {{name.pascalCase()}}View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final {{name}}State = ref.watch({{name}}Provider);
    final {{name}}Controller = ref.read({{name}}Provider.notifier);

    return Scaffold(
      appBar: AppBar(
          title: {{name}},
          onBackButtonPressed: () {
            context.pop();
          },
        ),
      body: Center(
        child: Text('This is the {{name.pascalCase()}} view'),
      ),
    );
  }
}