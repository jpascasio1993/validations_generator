class AnnotationParameter {
  final String name;
  final String type;
  final Object? value;
  final bool isNull;
  AnnotationParameter({
    required this.name,
    required this.type,
    required this.value,
    this.isNull = false,
  });
}
