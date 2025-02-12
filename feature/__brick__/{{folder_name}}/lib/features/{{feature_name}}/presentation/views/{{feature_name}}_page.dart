import 'package:flutter/material.dart';

class {{feature_name.pascalCase()}}Page extends HookConsumerWidget {
  const {{feature_name.pascalCase()}}Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch({{feature_name.camelCase()}}NotifierProvider);
    final notifier = ref.read({{feature_name.camelCase()}}NotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
          title: Text('{{feature_name.pascalCase()}}'),
        ),
      body: Center(
        child: Text('This is the {{feature_name.pascalCase()}} view'),
      ),
    );
  }
}