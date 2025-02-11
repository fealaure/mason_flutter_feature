import 'package:flutter/material.dart';

class {{feature_name.pascalCase()}}View extends HookConsumerWidget {
  const {{feature_name.pascalCase()}}View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final {{feature_name}}State = ref.watch({{feature_name}}Provider);
    final {{feature_name}}Controller = ref.read({{feature_name}}Provider.notifier);

    return Scaffold(
      appBar: AppBar(
          title: {{feature_name}},
          onBackButtonPressed: () {
            context.pop();
          },
        ),
      body: Center(
        child: Text('This is the {{feature_name.pascalCase()}} view'),
      ),
    );
  }
}