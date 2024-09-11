import '../models/user.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  Map<String, User> usersList = {};

  @override
  void addUser(String userName, String email, bool isActive) {
    if (!usersList.containsKey(email)) {
      usersList[email] = User(userName: '', email: email, isActive: false);
    } else {
      print('User with email $email already exists.');
    }
  }

  @override
  List<User> getAllUserNames() {
    return usersList.values.toList();
  }

  @override
  User getUserByEmail(String email) {
    if (usersList.containsKey(email)) {
      return usersList[email]!;
    } else {
      print('User with email $email not found.');
      return User(userName: 'Unknown', email: email, isActive: false);
    }
  }

  @override
  void updateUsersStatus(String email, bool isActive) {
    if (usersList.containsKey(email)) {
      usersList[email]!.isActive = isActive;
    } else {
      print('User with email $email not found.');
    }
  }

  @override
  void removeUser(String email) {
    if (usersList.containsKey(email)) {
      usersList.remove(email);
    } else {
      print('User with email $email not found.');
    }
  }
}
