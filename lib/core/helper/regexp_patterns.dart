class RegexPatterns {
  static final String email = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';

  static final String password = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$';
}
