import 'file:///Users/francescbrau/Code/Haven-Project/Haven-Project%20DATABASE/haven_cli_database_repository/models/usersList.dart';

abstract class DatabaseRepository {
  void addUser(String email, UsersList newUser);

  List<UsersList> getAllUserNames();

  UsersList getUserByEmail(String email);

  void updateUsersStatus(String email, bool isActive);

  void removeUser(String id);
}
