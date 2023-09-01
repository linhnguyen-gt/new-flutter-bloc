import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/common/common_bloc.dart';
import '../navigation/app_navigator.dart';
import 'base_bloc_event.dart';
import 'base_bloc_state.dart';

abstract class BaseBloc<E extends BaseBlocEvent, S extends BaseBlocState>
    extends BaseBlocDelegate<E, S> {
  BaseBloc(super.initialState);
}

abstract class BaseBlocDelegate<E extends BaseBlocEvent,
    S extends BaseBlocState> extends Bloc<E, S> {
  BaseBlocDelegate(super.initialState);

  late final AppNavigator navigator;
  late final CommonBloc _commonBloc;

  set commonBloc(CommonBloc commonBloc) {
    _commonBloc = commonBloc;
  }

  CommonBloc get commonBloc =>
      this is CommonBloc ? this as CommonBloc : _commonBloc;

  @override
  void add(E event) {
    if (!isClosed) {
      super.add(event);
    }
  }

  void showLoading() {
    commonBloc.add(const SetLoading(isLoading: true));
  }

  void hideLoading() {
    commonBloc.add(const SetLoading(isLoading: false));
  }

  Future<void> blocCatch({
    required Future<void> Function() actions,
    bool handleLoading = true,
  }) async {
    try {
      showLoading();
      await actions.call();
      hideLoading();
    } catch (e) {}
  }
}
