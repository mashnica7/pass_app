import 'package:flutter/material.dart';

class AuthButton extends StatefulWidget {
  final Widget child;
  final Color color;
  final Color borderSideColor;
  final Function() onPressed;
  final bool isSubmitting;
  final MainAxisAlignment mainAxisAlignment;
  final double height;
  final double width;

  const AuthButton(
      {Key key,
      this.isSubmitting,
      this.color,
      this.onPressed,
      this.child,
      this.borderSideColor,
      this.mainAxisAlignment,
      this.height,
      this.width})
      : super(key: key);

  @override
  _AuthButtonState createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: widget.height,
      width: widget.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            // splashColor: Colors.transparent,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(
                      color: widget.borderSideColor ??
                          Theme.of(context).primaryColor)),
              primary: widget.color ?? Theme.of(context).primaryColor,
            ),
            onPressed: widget.onPressed,
            child: widget.isSubmitting != null && widget.isSubmitting == true
                ? const CircularProgressIndicator(
                    backgroundColor: Colors.white,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
                  )
                : widget.child),
      ),
    );
  }
}
