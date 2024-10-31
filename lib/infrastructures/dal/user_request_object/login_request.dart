class LoginRequest{
  String username;
  String email;
  String password;
  LoginRequest({required this.username, required this.email, required this.password});

  Map<String, dynamic> toMap() {
    return {
      'username': this.username,
      'password': this.password,
      'email': this.email,
    };
  }

  factory LoginRequest.fromMap(Map<String, dynamic> map) {
    return LoginRequest(
      username: map['username'] as String,
      password: map['password'] as String,
      email: map['email'] as String,
    );
  }

  @override
  String toString() {
    return 'UserRequest{ username: $username, password: $password, email: $email,}';
  }

}