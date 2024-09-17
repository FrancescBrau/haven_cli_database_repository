import '../models/user.dart';

abstract class DatabaseRepository {
  void addUser(String userName, String email, bool isActive);

  List<User> getAllUserNames();

  User getUserByEmail(String email);

  void updateUsersStatus(String email, bool isActive);

  void removeUser(User user);
}
