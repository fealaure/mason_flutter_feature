class {{feature_name.pascalCase()}}Controller extends BaseStateNotifier<{{feature_name.pascalCase()}}State> {
  
  {{feature_name.pascalCase()}}(this.container) : super(const {{feature_name.pascalCase()}}State()) {
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