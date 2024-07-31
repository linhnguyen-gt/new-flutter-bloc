import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/common/common_bloc.dart';
import '../common/loading/loading_indicator.dart';
import '../di/di.dart';
import '../navigation/app_navigator.dart';
import 'bloc/base_bloc.dart';

abstract class BasePageState<T extends StatefulWidget, B extends BaseBloc>
    extends BasePageStateDelegate<T, B> {}

abstract class BasePageStateDelegate<T extends StatefulWidget,
    B extends BaseBloc> extends State<T> {
  late final AppNavigator navigator = getIt.get<AppNavigator>();

  late final CommonBloc commonBloc = getIt.get<CommonBloc>()
    ..navigator = navigator;

  late final B bloc = getIt.get<B>()
    ..navigator = navigator
    ..commonBloc = commonBloc;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => bloc),
        BlocProvider(create: (_) => commonBloc)
      ],
      child: buildPageListeners(
          child: Stack(
        children: [
          buildPage(context),
          BlocBuilder<CommonBloc, CommonState>(
              buildWhen: (prev, current) => prev.isLoading != current.isLoading,
              builder: (context, state) => Visibility(
                  visible: state.isLoading, child: buildPageLoading()))
        ],
      )),
    );
  }

  Widget buildPage(BuildContext context);

  Widget buildPageListeners({required Widget child}) => child;

  Widget buildPageLoading() => const Center(
        child: LoadingIndicator(),
      );

  @override
  void dispose() {
    super.dispose();
  }
}
