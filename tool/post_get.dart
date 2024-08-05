// tool/post_get.dart
import 'dart:io';

void main() {
  // Run `lefthook install`
  Process.run('lefthook', ['install']).then((result) {
    stdout.write(result.stdout);
    stderr.write(result.stderr);
    if (result.exitCode != 0) {
      exit(result.exitCode);
    }
  });
}
