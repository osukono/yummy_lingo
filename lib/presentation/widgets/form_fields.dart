import 'package:flutter/material.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';

class TextFieldDecoration extends InputDecoration {
  TextFieldDecoration({required String label})
      : super(
          labelText: label,
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(Constants.base2, 0, 0, 0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(Constants.base4)),
            borderSide: BorderSide(color: Palette.primary, width: 0.0),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(Constants.base4)),
            borderSide: BorderSide(color: Palette.icon, width: 0.0),
          ),
        );
}

class PasswordFieldDecoration extends InputDecoration {
  PasswordFieldDecoration({
    required String label,
    bool showPassword = false,
    required VoidCallback onShowPasswordPressed,
  }) : super(
          labelText: label,
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(Constants.base2, 0, 0, 0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(Constants.base4)),
            borderSide: BorderSide(color: Palette.primary, width: 0.0),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(Constants.base4)),
            borderSide: BorderSide(color: Palette.icon, width: 0.0),
          ),
          suffixIcon: GestureDetector(
            onTap: () async => onShowPasswordPressed(),
            child: Icon(
              !showPassword ? Icons.visibility : Icons.visibility_off,
            ),
          ),
        );
}
