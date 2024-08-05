// ignore_for_file: avoid_print
import 'dart:io';

void main() {
  final myFile = File('.git/COMMIT_EDITMSG');
  final commitMsg = myFile.readAsStringSync();
  if (commitMsg.startsWith('fix: ') ||
      commitMsg.startsWith('feat: ') ||
      commitMsg.startsWith('refactor: ') ||
      commitMsg.startsWith('build: ') ||
      commitMsg.startsWith('docs: ') ||
      commitMsg.startsWith('revert: ') ||
      commitMsg.startsWith('style: ') ||
      commitMsg.startsWith('test: ')) {
    print('👍 Valid commit message!');
    exit(0);
  }
  print('👎 ✖  subject may not be empty');
  print('👎 ✖  type may not be empty');
  print(
      '👎 ✖  type-enum: ["build","doc","feat","fix","refactor","revert","style","test"]');
  exit(1);
}

bool isValidCommitMessage(String commitMessage) {
  final RegExp pattern = RegExp(r'^(feat|fix|docs|chore)(\(.+\))?: .+');
  return pattern.hasMatch(commitMessage);
}
