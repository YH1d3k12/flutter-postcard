import 'package:flutter/material.dart';
import 'login_button.dart';
import '../../../shared/cyber_text_input.dart';

class LoginForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final Function(String?) onUserSaved;
  final Function(String?) onPassSaved;
  final VoidCallback onSubmit;

  const LoginForm({
    super.key,
    required this.formKey,
    required this.onUserSaved,
    required this.onPassSaved,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CyberTextInput(
            label: "Username",
            icon: Icons.person,
            onSaved: onUserSaved,
            validator: (v) =>
                v == null || v.isEmpty ? 'Informe seu usuário' : null,
          ),
          const SizedBox(height: 20),
          CyberTextInput(
            label: "Password",
            icon: Icons.lock,
            obscureText: true,
            onSaved: onPassSaved,
            validator: (v) =>
                v == null || v.isEmpty ? 'Informe sua senha' : null,
          ),
          const SizedBox(height: 30),
          LoginButton(onPressed: onSubmit),
        ],
      ),
    );
  }
}