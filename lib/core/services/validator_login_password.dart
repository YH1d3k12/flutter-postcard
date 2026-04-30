class ValidatorLoginPassword {
  static String? validate(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Informe sua senha';
    }
    return null;
  }
}