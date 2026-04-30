class ValidatorLoginUsername {
  static String? validate(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Informe seu usuário';
    }
    return null;
  }
}