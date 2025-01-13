import 'package:flutter/material.dart';

import '../base/h_stack.dart';
import '../base/v_stack.dart';
import 'my_input.dart';
import 'shake_widget.dart';

enum Type { dropdown, calendar }

class Input<T> extends StatefulWidget {
  const Input({
    this.title,
    super.key,
    this.isImportance = false,
    this.hintText,
    this.validator,
    this.controller,
    this.onChanged,
    this.keyboardType = TextInputType.text,
    this.type,
    this.value,
    this.isPassword = false,
    this.isClear = false,
    this.backgroundColor = Colors.white,
    this.enabled = true,
    this.maxLength,
    this.prefixIcon,
    this.maxLines = 1,
    this.minLines,
    this.textInputAction,
  });

  final bool? isImportance;
  final bool? isPassword;
  final bool? isClear;
  final String? title;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final ValueChanged<T>? onChanged;
  final TextInputType? keyboardType;
  final Type? type;
  final T? value;
  final Color? backgroundColor;
  final bool? enabled;
  final int? maxLength;
  final Widget? prefixIcon;
  final int? maxLines;
  final int? minLines;
  final TextInputAction? textInputAction;

  @override
  State<Input<T>> createState() => _InputState<T>();
}

class _InputState<T> extends State<Input<T>>
    with SingleTickerProviderStateMixin {
  final _shakeKey = GlobalKey<ShakeWidgetState>();

  late bool _isObscure;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.isPassword!;
  }

  void _togglePasswordVisibility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  String? onValidate(String? value) {
    final validationResult = widget.validator?.call(value);
    if (validationResult != null) {
      _shakeKey.currentState?.shakeWidget();
    }
    return validationResult;
  }

  Widget _section() {
    return MyFormField(
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      textInputAction: widget.textInputAction,
      isObscure: _isObscure,
      isShowHidePassword: widget.isPassword!,
      prefixIcon: widget.prefixIcon,
      enabled: widget.enabled,
      initialValue: widget.controller != null ? null : widget.value as String?,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      obscureText: _isObscure,
      validator: onValidate,
      onChanged: widget.onChanged as void Function(String)?,
      maxLength: widget.maxLength,
      hintText: widget.hintText,
      isClear: widget.isClear!,
      onTapClear: () {
        widget.controller?.clear();
        widget.onChanged?.call('' as T);
      },
      onTapShowPassword: _togglePasswordVisibility,
    );
  }

  @override
  Widget build(BuildContext context) {
    return VStack(
      spacing: 5,
      children: [
        HStack(
          spacing: 5,
          children: [
            if (widget.title != null)
              Text(
                widget.title!,
                style: const TextStyle(color: Colors.grey, fontSize: 13),
              ),
            if (widget.isImportance!)
              const Text(
                '*',
                style: TextStyle(color: Colors.red),
              )
          ],
        ),
        ShakeWidget(key: _shakeKey, child: _section())
      ],
    );
  }
}
