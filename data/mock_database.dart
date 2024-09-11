import 'database_repository.dart';
import 'file:///Users/francescbrau/Code/Haven-Project/Haven-Project%20DATABASE/haven_cli_database_repository/models/usersList.dart';

class MockDatabase implements DatabaseRepository {
  Map<String, UsersList> usersList = {};

  @override
  void addUser(String email, UsersList newUser) {
    if (!usersList.containsKey(email)) {
      usersList[email] = UsersList(email: email, userName: '', isActive: false);
    } else {
      print('User with email $email already exists.');
    }
  }

  @override
  List<UsersList> getAllUserNames() {
    return usersList.values.toList();
  }

  @override
  UsersList getUserByEmail(String email) {
    if (usersList.containsKey(email)) {
      return usersList[email]!;
    } else {
      print('User with email $email not found.');
      return UsersList(userName: 'Unknown', email: email, isActive: false);
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
