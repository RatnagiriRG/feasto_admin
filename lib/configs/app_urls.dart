class AppUrls {
  static const String baseURL = "http://localhost:8000";

  static const _admin = "/api/admin";
  static const _auth = "/api/auth";
  static const String login = "$_admin/admin_login";
  static const String refreshToken = "$_admin/refresh-token";
  static const String logout = "$_admin/";
  static const String create = "$_auth/register";

  //user
  static const user = "$_admin/getadmin";
  static const getUser = "$_admin/getUser";
}
