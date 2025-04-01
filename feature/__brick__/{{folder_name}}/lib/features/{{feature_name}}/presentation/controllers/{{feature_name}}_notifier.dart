class {{feature_name.pascalCase()}}Notifier extends BaseStateNotifier<{{feature_name.pascalCase()}}State>
  with ControllerInitializationMixin<{{feature_name.pascalCase()}}State> {
  final ProviderContainer _container;

  @override
  ProviderContainer get container => _container;

  {{feature_name.pascalCase()}}Notifier(this._container) : super(const {{feature_name.pascalCase()}}State.loading()) {
  initializeController();
  }

  @override
  void updateStateWithStrings(Map<dynamic, String>? strings) {
    safeUpdate(() => state = state.maybeWhen(
      data: (data) => {{feature_name.pascalCase()}}State.data(
        data.copyWith(strings: strings ?? {}),
      ),
      loading: (prevStrings) => {{feature_name.pascalCase()}}State.data(
        {{feature_name.pascalCase()}}Data(
          strings: strings ?? {},
          errors: {},
          ),
      ),
      error: (message, prevStrings) => {{feature_name.pascalCase()}}State.error(
        message,
        strings: strings,
      ),
      orElse: () => state,
      )
    );
  }

}
