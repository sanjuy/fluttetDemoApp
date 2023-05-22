// TODO Implement this library.

extension AssetsDirectory on String {
  String directory() {
    return "assets/images/$this";
  }
}
extension AssetsCarDirectory on String {
  String carsdirectory() {
    return "assets/images/cars/$this";
  }
}

extension NullEmptyCheck on String? {
  bool notNullOrEmpty() => (this != null && this!.isNotEmpty);
}


extension NullEmptyCheckList on List? {
  bool notNullOrEmpty() => (this != null && this!.isNotEmpty);
}