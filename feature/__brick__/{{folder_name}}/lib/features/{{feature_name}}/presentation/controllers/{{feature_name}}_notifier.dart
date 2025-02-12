class {{feature_name.pascalCase()}}Notifier extends BaseStateNotifier<{{feature_name.pascalCase()}}State> {
  final ProviderContainer container;
  ApiHandler? _apiHandler;
  Map<dynamic, String>? _strings;
  
  {{feature_name.pascalCase()}}Notifier(this.container) : super(const {{feature_name.pascalCase()}}State()) {
    _initializeApiHandler();
    Future.microtask(() async {
      await _loadStrings();
    });
  }

  Future<void> _loadStrings() async {
    final stringsNotifier = container.read(allStringsNotifierProvider.notifier);
    await stringsNotifier.loadStrings();
    if (!stringsNotifier.mounted) return;

    final loadedStrings = stringsNotifier.state;
    final updatedStrings = {
      ...?_strings,
      ...Map.fromEntries(
        FirestoreKeys.values.where((key) => loadedStrings.containsKey(key)).map((key) => MapEntry(key, loadedStrings[key]!)),
      ),
    };

    _strings = updatedStrings;
    _updateStateWithStrings();
  }

  void _updateStateWithStrings() {
    safeUpdate(() => state = state.copyWith(strings: _strings));
  }

  Future<void> _initializeApiHandler() async {
    _apiHandler = await container.read(apiHandlerProvider.future);
    container.listen<AsyncValue<ApiHandler>>(
      apiHandlerProvider,
      (_, apiHandlerValue) {
        if (apiHandlerValue.hasValue) {
          _apiHandler = apiHandlerValue.value!;
        } else if (apiHandlerValue.hasError) {
          debugPrint("Error loading ApiHandler: ${apiHandlerValue.error}");
        }
      },
    );
  }
}