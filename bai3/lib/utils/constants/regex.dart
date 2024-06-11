class Regex {
  static final nameRegExp = RegExp(r'^[a-zA-ZÀ-Ỹà-ỹ\s]{8,50}$');

  static final emailRegExp =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  static final uppercaseRegExp = RegExp(r'[A-Z]');
  static final specialRegExp = RegExp(r'^(?=.*[a-zA-Z])(?=.*[!@#$%^&*(),.?":{}|<>])');
  static final passwordMediumRegExp = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>])[A-Za-z\d@$!%*?&]{10,}$');
  static final passwordStrongRegExp = RegExp(
      r'^(?=.*[a-z])(?=(?:.*[A-Z]){2})(?=.*\d)(?=(?:.*[!@#$%^&*(),.?":{}|<>]){2})[A-Za-z\d!@#$%^&*(),.?":{}|<>]{12,}$');
  static final phoneRegExp = RegExp(r'^\d{10}$');
}
