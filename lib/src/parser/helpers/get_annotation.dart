import 'package:analyzer/dart/element/element.dart';
import 'package:collection/collection.dart';
ElementAnnotation? getAnnotation(Element? field, String name) {
  final result = field?.metadata.firstWhereOrNull(
    (annotation) {
      annotation.computeConstantValue();

      return annotation.element?.name == name ||
          annotation.computeConstantValue()?.type?.getDisplayString(withNullability: false) == name;
    },
  );
  return result;
}
