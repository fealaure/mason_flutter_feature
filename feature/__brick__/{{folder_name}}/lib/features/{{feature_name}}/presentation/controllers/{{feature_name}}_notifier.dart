class {{feature_name.pascalCase()}}Notifier extends BaseStateNotifier<{{feature_name.pascalCase()}}State> {
  final ProviderContainer container;
  
  {{feature_name.pascalCase()}}Notifier(this.container) : super(const {{feature_name.pascalCase()}}State()) {
    _initializeApiHandler();
    Future.microtask(() async {
      await _loadStrings();
    });
  }

  Future<void> _loadStrings() async {
    //TODO: Load strings
  }

  Future<void> _initializeApiHandler() async {
    //TODO: Initialize API handler
  }
}