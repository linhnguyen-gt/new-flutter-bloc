import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../helper/helper.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      child: Center(
        child: isIos
            ? const CupertinoActivityIndicator()
            : const CircularProgressIndicator(),
      ),
    );
  }
}
