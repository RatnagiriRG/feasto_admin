abstract class UserRepository {
  Future<void> getUser();
  Future<void> getUsers({required String user});
}
