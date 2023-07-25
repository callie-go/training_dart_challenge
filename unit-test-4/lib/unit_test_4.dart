bool isPasswordValid(String password) {
  if (password.length < 6) {
    return false;
  }

  if (!password.contains(RegExp(r'[a-zA-Z]'))) {
    return false;
  }

  if (!password.contains(RegExp(r'[0-9]'))) {
    return false;
  }

  if (!password.contains(RegExp(r'[!@#\$%^&*]'))) {
    return false;
  }

  return true;
}
