import 'database_repository.dart';
import '/models/usersList.dart';

class MockDatabase implements DatabaseRepository {
  Map<String, UsersList> userData = {};

  @override
  void addUser(String id, UsersList newUser) {
    userData[id] = newUser;
    print("User added: ${newUser.name}");
  }

  @override
  List<String> getAllUserNames() {
    return userData.values.map((user) => user.name).toList();
  }

  @override
  void removeUser(String id) {
    if (userData.containsKey(id)) {
      print("Delated user: ${userData[id]!.name}");
      userData.remove(id);
    } else {
      print("ID user $id not found.");
    }
  }
}
