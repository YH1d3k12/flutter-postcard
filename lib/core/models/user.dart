class MockUser {
  final String username;
  final String password;

  const MockUser({
    required this.username,
    required this.password,
  });
}

class MockUsers {
  static const List<MockUser> users = [
    MockUser(username: 'admin', password: 'a123'),
    MockUser(username: 'john', password: 'j123'),
    MockUser(username: 'cyber', password: 'c123'),
  ];

  static Future<bool> login(String username, String password) async {
    // simula delay de API
    await Future.delayed(const Duration(seconds: 2));

    return users.any(
      (user) =>
          user.username == username && user.password == password,
    );
  }
}