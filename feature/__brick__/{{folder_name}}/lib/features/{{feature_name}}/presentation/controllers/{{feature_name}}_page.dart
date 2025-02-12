import 'package:flutter/material.dart';

class {{feature_name.pascalCase()}}View extends HookConsumerWidget {
  const {{feature_name.pascalCase()}}View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final {{feature_name.camelCase()}}State = ref.watch({{feature_name.pascalCase()}}Provider);
    final {{feature_name.camelCase()}}Controller = ref.read({{feature_name.pascalCase()}}Provider.notifier);

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