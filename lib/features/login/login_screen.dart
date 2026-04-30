import 'package:flutter/material.dart';
import 'package:meuapp/shared/widgets/footer.dart';
import '../../routes/app_routes.dart';
import 'widgets/login_title.dart';
import 'widgets/login_form.dart';
import 'widgets/login_subtitle.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff0d0d0f),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 400),
            child: Column(
              children: [
                LoginTitle(screenWidth: screenWidth),
                const SizedBox(height: 40),
                LoginForm(
                  formKey: _formKey,
                  onUserSaved: (v) => _username = v ?? '',
                  onPassSaved: (v) => _password = v ?? '',
                  onSubmit: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        "/boot",
                        arguments: AppRoutes.home,
                        (route) => false,
                      );
                    }
                  },
                ),
                const SizedBox(height: 20),
                LoginSubtitle(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
