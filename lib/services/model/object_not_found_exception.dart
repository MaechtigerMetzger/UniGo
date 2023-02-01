class ObjectNotFoundException implements Exception {
  String errMsg() => 'No object found for this ID.';
}