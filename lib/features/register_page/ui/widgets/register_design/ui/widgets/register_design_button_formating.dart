import 'package:flutter/material.dart';
import 'package:osmer/core/theming/main_text_styles.dart';

class RegisterDesignButton extends StatefulWidget {

  final String text;
  final Function()? onTap;
  const RegisterDesignButton({super.key, required this.text, required this.onTap});

  @override
  State<RegisterDesignButton> createState() => _MainButtonFormatingState();
}

class _MainButtonFormatingState extends State<RegisterDesignButton> {
  double opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => opacity = 0.6),
      onTapUp: (_) => setState(() => opacity = 1.0),
      onTapCancel: () => setState(() => opacity = 1.0),
      onTap: widget.onTap,
      child: TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: opacity, end: opacity),
        duration: Duration(milliseconds: 100),
        builder: (context, value, child) {
          return Opacity(
            opacity: value,
            child: child,
          );
        },
        child: Text(widget.text, style: MainTextStyles.font20mainCyan400weight),
      ),
    );
  }
}
