import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MyFormField extends TextFormField {
  final String? hintText;
  final bool? isClear;
  final void Function()? onTapClear;
  final Widget? prefixIcon;
  final bool? isShowHidePassword;
  final void Function()? onTapShowPassword;
  final bool? isObscure;

  MyFormField(
      {super.key,
      this.hintText,
      this.onTapClear,
      this.isClear = false,
      super.controller,
      super.enabled,
      super.initialValue,
      super.autovalidateMode,
      super.keyboardType,
      super.obscureText,
      super.validator,
      super.onChanged,
      super.maxLength,
      this.prefixIcon,
      this.isShowHidePassword = false,
      this.onTapShowPassword,
      this.isObscure = false,
      super.maxLines,
      super.minLines,
      super.textInputAction})
      : super(
            decoration: InputDecoration(
                counterText: '',
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(16)),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(16)),
                errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                errorStyle: const TextStyle(
                  color: Colors.red,
                ),
                prefixIcon: prefixIcon,
                suffixIcon: (isShowHidePassword! || isClear!) == false
                    ? null
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (isShowHidePassword)
                            InkWell(
                              onTap: onTapShowPassword,
                              child: Icon(
                                !isObscure!
                                    ? MaterialCommunityIcons.eye
                                    : MaterialCommunityIcons.eye_off,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ),
                          if (isClear!)
                            InkWell(
                              onTap: onTapClear,
                              child: const Icon(
                                Fontisto.close,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ),
                        ],
                      )));
}
