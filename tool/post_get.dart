// tool/post_get.dart
import 'dart:io';

void main() async {
  try {
    // Run `lefthook install`
    final result = await Process.run('lefthook', ['install']);

    stdout.write(result.stdout);
    stderr.write(result.stderr);

    if (result.exitCode != 0) {
      stderr.writeln(
          'Lefthook installation failed with exit code ${result.exitCode}');
      exit(result.exitCode);
    } else {
      stdout.writeln('Lefthook installed successfully.');
    }
  } catch (e) {
    stderr.writeln('Failed to run lefthook: $e');
    exit(1);
  }
}
