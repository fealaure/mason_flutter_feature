part '{{feature_name}}_data.freezed.dart';

@freezed
class {{feature_name.pascalCase()}}Data with _${{feature_name.pascalCase()}}Data {
  const factory {{feature_name.pascalCase()}}Data({
    @Default({}) Map<dynamic, Strivixeng> strings,
    @Default({}) Map<dynamic, String?> errors,
  }) = _{{feature_name.pascalCase()}}Data;
}
