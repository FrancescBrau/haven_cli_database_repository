import 'database_repository.dart';
import 'file:///Users/francescbrau/Code/Haven-Project/Haven-Project%20DATABASE/haven_cli_database_repository/models/usersList.dart';

class MockDatabase implements DatabaseRepository {
  Map<String, UsersList> usersList = {};

  @override
  void addUser(String userName, String email, bool isActive) {
    if (!usersList.containsKey(email)) {
      usersList[email] =
          User(userName: userName, email: email, isActive: isActive);
    } else {
      print('User with email $email already exists.');
    }
  }

  @override
  List<UsersList> getAllUserNames() {
    // Return all users as a list
    return usersList.values.toList();
  }

  @override
  UsersList getUserByEmail(String email) {
    // Get user details by email
    if (usersList.containsKey(email)) {
      return usersList[email]!;
    } else {
      print('User with email $email not found.');
      return User(userName: 'Unknown', email: email, isActive: false);
    }
  }

  @override
  void updateUsersStatus(String email, bool isActive) {
    // Update the active status of a user
    if (usersList.containsKey(email)) {
      usersList[email]!.isActive = isActive;
    } else {
      print('User with email $email not found.');
    }
  }

  @override
  void removeUser(String email) {
    // Delete a user by email
    if (usersList.containsKey(email)) {
      usersList.remove(email);
    } else {
      print('User with email $email not found.');
    }
  }
}
