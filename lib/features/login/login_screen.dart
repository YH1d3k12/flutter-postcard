import 'package:flutter/material.dart';
import 'package:meuapp/shared/widgets/footer.dart';
import '../../routes/app_routes.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "NCPD LOGIN",
                style: TextStyle(
                  color: Colors.cyanAccent,
                  fontSize: screenWidth * 0.05 > 32 ? 32 : screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                ),
              ),
              const SizedBox(height: 40),
              
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      style: const TextStyle(color: Colors.cyanAccent),
                      decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: const TextStyle(color: Colors.cyanAccent),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyanAccent.withOpacity(0.5)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyanAccent, width: 2),
                        ),
                        prefixIcon: const Icon(Icons.person, color: Colors.cyanAccent),
                      ),
                      onSaved: (value) => _username = value ?? '',
                      validator: (value) => (value == null || value.isEmpty) ? 'Informe seu usuário' : null,
                    ),
                    const SizedBox(height: 20),

                    TextFormField(
                      obscureText: true,
                      style: const TextStyle(color: Colors.cyanAccent),
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: const TextStyle(color: Colors.cyanAccent),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyanAccent.withOpacity(0.5)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyanAccent, width: 2),
                        ),
                        prefixIcon: const Icon(Icons.lock, color: Colors.cyanAccent),
                      ),
                      onSaved: (value) => _password = value ?? '',
                      validator: (value) => (value == null || value.isEmpty) ? 'Informe sua senha' : null,
                    ),
                    const SizedBox(height: 30),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyanAccent,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
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
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Text(
                "NCPD Cyberpunk Interface",
                style: TextStyle(
                  color: Colors.white70.withOpacity(0.7),
                  fontSize: 12,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}