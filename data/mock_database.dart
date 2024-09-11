import 'database_repository.dart';
import 'file:///Users/francescbrau/Code/Haven-Project/Haven-Project%20DATABASE/haven_cli_database_repository/models/usersList.dart';

class MockDatabase implements DatabaseRepository {
  Map<String, UsersList> userData = {};

  @override
  void addUser(String id, UsersList newUser) {
    userData[id] = newUser;
    print("User added: ${newUser.userName}");
  }

  @override
  List<String> getAllUserNames() {
    return userData.values.map((user) => user.userName).toList();
  }

  @override
  void removeUser(String id) {
    if (userData.containsKey(id)) {
      print("Delated user: ${userData[id]!.userName}");
      userData.remove(id);
    } else {
      print("ID user $id not found.");
    }
  }
}
