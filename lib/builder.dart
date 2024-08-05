// lib/builder.dart
import 'dart:async';
import 'dart:io';

import 'package:build/build.dart';

Builder postGetBuilder(BuilderOptions options) => _PostGetBuilder();

class _PostGetBuilder extends Builder {
  @override
  Future<void> build(BuildStep buildStep) async {
    // Execute the `lefthook install` command
    final result = await Process.run('dart', ['tool/post_get.dart']);
    stdout.write(result.stdout);
    stderr.write(result.stderr);
    if (result.exitCode != 0) {
      throw Exception('lefthook install failed');
    }
  }

  @override
  Map<String, List<String>> get buildExtensions => {
        '.dart': ['.post_get']
      };
}
