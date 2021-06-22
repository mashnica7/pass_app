import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../themes/colors.dart';

class AuthTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final bool obscureText;
  final bool obscureTextChangable;
  final IconData prefixIcon;
  final Color prefixIconColor;
  final String hintText;
  final String labelText;
  final String Function(String) validator;
  final Function(String) onChange;
  final bool readOnly;
  final bool enabled;
  final String initialValue;
  final TextInputType keyboardType;
  final int maxLines;
  final int minLines;
  final List<TextInputFormatter> inputFormaters;

  const AuthTextFormField(
      {Key key,
      this.initialValue,
      this.enabled,
      this.readOnly,
      this.controller,
      this.obscureText,
      this.obscureTextChangable,
      this.prefixIcon,
      this.prefixIconColor,
      this.hintText,
      this.labelText,
      this.validator,
      this.onChange,
      this.keyboardType,
      this.maxLines = 1,
      this.minLines = 1,
      this.inputFormaters})
      : super(key: key);

  @override
  _AuthTextFormFieldState createState() => _AuthTextFormFieldState();
}

class _AuthTextFormFieldState extends State<AuthTextFormField> {
  bool _passwordVisible;
  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return textFormField();
  }

  Widget textFormField() {
    String initValue;
    if (widget.controller == null) {
      initValue = widget.initialValue ?? '';
    }
    final textField = TextFormField(
      keyboardType: widget.keyboardType,
      minLines: widget.minLines,
      maxLines: widget.maxLines,
      initialValue: initValue,
      obscureText: widget.obscureTextChangable != null
          ? !_passwordVisible
          : widget.obscureText ?? false,
      controller: widget.controller,
      enabled: widget.enabled ?? true,
      readOnly: widget.readOnly ?? false,
      validator: widget.validator,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 25.0, left: 10),
          prefixIcon: widget.prefixIcon != null
              ? Icon(
                  widget.prefixIcon,
                  color:
                      widget.prefixIconColor ?? Theme.of(context).primaryColor,
                  size: 30,
                )
              : null,
          hintText: widget.hintText,
          labelText: widget.labelText,
          // fillColor: Colors.white,
          filled: true,
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(
              color: TEXT_FIELD_COLOR,
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide:
                  const BorderSide(color: TEXT_FIELD_COLOR // LIGHT_GREY_OPAQUE,
                      ))),
      autocorrect: false,
      inputFormatters: widget.inputFormaters,
      onChanged: widget.onChange,
    );

    Widget childWidget = textField;
    if (widget.obscureTextChangable != null && widget.obscureTextChangable) {
      childWidget = Stack(
        alignment: Alignment.topRight,
        children: <Widget>[
          textField,
          IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: DARK_GREY,
              size: 24,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
        ],
      );
    }

    return childWidget;
  }
}
