import 'package:flutter/material.dart';

class CyberTextInput extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;

  const CyberTextInput({
    super.key,
    required this.label,
    required this.icon,
    this.obscureText = false,
    this.validator,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      style: const TextStyle(color: Colors.cyanAccent),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.cyanAccent),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.cyanAccent.withOpacity(0.5),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.cyanAccent, width: 2),
        ),
        prefixIcon: Icon(icon, color: Colors.cyanAccent),
      ),
      validator: validator,
      onSaved: onSaved,
    );
  }
}