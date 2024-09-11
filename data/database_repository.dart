import 'file:///Users/francescbrau/Code/Haven-Project/Haven-Project%20DATABASE/haven_cli_database_repository/models/usersList.dart';

abstract class DatabaseRepository {
  void addUser(String id, UsersList newUser);

  List<String> getAllUserNames();

  void removeUser(String id);
}
