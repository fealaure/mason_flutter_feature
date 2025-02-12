import 'package:flutter/material.dart';

class {{feature_name.pascalCase()}}View extends HookConsumerWidget {
  const {{feature_name.pascalCase()}}View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch({{feature_name.camelCase()}}Provider);
    final notifier = ref.read({{feature_name.camelCase()}}Provider.notifier);

    return Scaffold(
      appBar: AppBar(
          title: '{{feature_name.pascalCase()}}',
        ),
      body: Center(
        child: Text('This is the {{feature_name.pascalCase()}} view'),
      ),
    );
  }
}