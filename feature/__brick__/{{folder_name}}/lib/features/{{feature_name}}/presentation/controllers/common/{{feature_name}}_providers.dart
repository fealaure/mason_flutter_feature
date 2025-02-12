final {{feature_name.camelCase()}}NotifierProvider = StateNotifierProvider<{{feature_name.pascalCase()}}Notifier, void>((ref) {
  return {{feature_name.pascalCase()}}Notifier(ref.container);
});