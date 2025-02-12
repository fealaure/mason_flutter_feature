import 'package:flutter/material.dart';

class {{feature_name.pascalCase()}}View extends HookConsumerWidget {
  const {{feature_name.pascalCase()}}View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final {{feature_name.pascalCase()}}State state = ref.watch({{feature_name.pascalCase()}}Provider);
    final {{feature_name.pascalCase()}}Controller controller = ref.read({{feature_name.pascalCase()}}Provider.notifier);

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