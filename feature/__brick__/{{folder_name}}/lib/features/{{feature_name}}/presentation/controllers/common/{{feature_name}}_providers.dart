final {{feature_name.camelCase()}}NotifierProvider = StateNotifierProvider<{{feature_name.pascalCase()}}Notifier, {{feature_name.pascalCase()}}State>((ref) {
  return {{feature_name.pascalCase()}}Notifier(ref.container);
});