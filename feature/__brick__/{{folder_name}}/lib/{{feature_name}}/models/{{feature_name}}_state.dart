part '../../../../lib/{{feature_name}}/models/{{feature_name}}_state.freezed.dart';

@freezed
class {{feature_name.pascalCase()}}State with _${{feature_name.pascalCase()}}State {
  const factory {{feature_name.pascalCase()}}State({
    @Default(true) bool isLoading,
    @Default({}) Map<dynamic, String>? strings,
    @Default({}) Map<dynamic, String?> errors,
  }) = _{{feature_name.pascalCase()}}State;
}
