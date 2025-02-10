part '{{name}}_state.freezed.dart';

@freezed
class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State({
    @Default(true) bool isLoading,
    @Default({}) Map<dynamic, String>? strings,
    @Default({}) Map<dynamic, String?> errors,
  }) = _{{name.pascalCase()}}State;
}
