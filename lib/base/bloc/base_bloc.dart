import 'dart:developer' as developer;

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../navigation/app_navigator.dart';
import '../../bloc/common/common_bloc.dart';
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

  void reset(S initialState) {
    // ignore: invalid_use_of_visible_for_testing_member
    emit(initialState);
  }

  void hideLoading() {
    commonBloc.add(const SetLoading(isLoading: false));
  }

  Future<void> blocCatch({
    required Future<void> Function() actions,
    bool? isLoading = true,
    Future<void> Function(Object error, StackTrace stackTrace)? onError,
    Future<void> Function()? onFinally,
  }) async {
    try {
      if (isLoading!) {
        showLoading();
      }

      await actions.call();
    } catch (e, stackTrace) {
      developer.log('Error occurred: $e',
          name: 'Error', error: e, stackTrace: stackTrace);
      if (onError != null) {
        await onError(e, stackTrace);
      }
    } finally {
      if (isLoading!) {
        hideLoading();
      }
      if (onFinally != null) {
        await onFinally();
      }
    }
  }
}
