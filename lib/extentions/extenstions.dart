import '../http_services/http_config.dart';

extension ApiMethodExtension on ApiMethod {
  String get lowercaseValue {
    return toString().split('.').last.toLowerCase();
  }
}
