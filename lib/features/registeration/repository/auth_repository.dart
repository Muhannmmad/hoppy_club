abstract class AuthRepository {
  Future<void> signIn(String email, String password);
  Future<void> signOut();
}
