import 'dart:io';
import 'package:path/path.dart' as p;
import 'oas_examples/test.dart' as oas_examples;

void main() {
  // Ensure a clean test tmp directory
  final tmp = Directory(p.join('test', 'tmp'));
  if (tmp.existsSync()) {
    tmp.deleteSync(recursive: true);
  }
  tmp.createSync(recursive: true);

  oas_examples.main();
}
