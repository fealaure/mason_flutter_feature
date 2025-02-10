class {{name.pascalCase()}}Controller extends BaseStateNotifier<{{name.pascalCase()}}State> {
  
  {{name.pascalCase()}}(this.container) : super(const {{name.pascalCase()}}State()) {
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