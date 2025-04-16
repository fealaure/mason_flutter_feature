class {{feature_name.pascalCase()}}Notifier extends BaseStateNotifier<{{feature_name.pascalCase()}}State> with ControllerInitializationMixin<{{feature_name.pascalCase()}}State> {
  final ProviderContainer _container;

  @override
  ProviderContainer get container => _container;

  {{feature_name.pascalCase()}}Notifier(this._container) : super(const {{feature_name.pascalCase()}}State.loading()) {
    initializeController();
  }

  @override
  void updateStateWithStrings(Map<dynamic, String>? strings) {
    safeUpdate(() => state = switch (state) {
      final {{feature_name.pascalCase()}}Data data => {{feature_name.pascalCase()}}State.data(
        strings: strings ?? data.strings,
        validationErrors: data.errors,
        ),
      final {{feature_name.pascalCase()}}StateLoading loading => {{feature_name.pascalCase()}}State.loading(strings: strings ?? loading.strings),
      final {{feature_name.pascalCase()}}StateError error => {{feature_name.pascalCase()}}State.error(
        error.message,
        strings: strings ?? error.strings,
        )
    });
  }

}
