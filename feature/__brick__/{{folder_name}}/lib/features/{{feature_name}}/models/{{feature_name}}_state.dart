import '{{feature_name}}_data.dart';
part '{{feature_name}}_state.freezed.dart';

@freezed
sealed class {{feature_name.pascalCase()}}State with _${{feature_name.pascalCase()}}State {
  const {{feature_name.pascalCase()}}State._();

  const factory {{feature_name.pascalCase()}}State.loading({
    Map<dynamic, String>? strings,
  }) = _Loading;

  const factory {{feature_name.pascalCase()}}State.data({{feature_name.pascalCase()}}Data data) = _Data;

  const factory {{feature_name.pascalCase()}}State.error(
    String message, {
    Map<dynamic, String>? strings,
    }) = _Error;
  }
