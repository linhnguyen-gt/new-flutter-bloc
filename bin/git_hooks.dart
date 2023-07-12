import 'package:dart_pre_commit/dart_pre_commit.dart';
import 'package:git_hooks/git_hooks.dart';

void main(List<String> arguments) {
  // ignore: omit_local_variable_types
  Map<Git, UserBackFun> params = {
    Git.commitMsg: commitMsg,
    Git.preCommit: preCommit
  };
  GitHooks.call(arguments, params);
}

Future<bool> commitMsg() async {
  var commitMsg = Utils.getCommitEditMsg();
  if (commitMsg.startsWith('fix: ') ||
      commitMsg.startsWith('feat: ') ||
      commitMsg.startsWith('refactor: ') ||
      commitMsg.startsWith('build: ') ||
      commitMsg.startsWith('docs: ') ||
      commitMsg.startsWith('revert: ') ||
      commitMsg.startsWith('style: ') ||
      commitMsg.startsWith('test: ')) {
    return true;
  } else {
    ConsoleLogger().info('✖  subject may not be empty');
    ConsoleLogger().info('✖  type may not be empty');
    ConsoleLogger().info(
        '✖  type-enum: ["build","doc","feat","fix","refactor","revert","style","test"]');
    return false;
  }
}

Future<bool> preCommit() async {
  // final result = await DartPreCommit.run();
  // return result.isSuccess;

  return true;
}
