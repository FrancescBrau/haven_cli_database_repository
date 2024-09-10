import '/models/usersList.dart'

abstract class DatabaseRepository {
  void addUser(String id, UsersList newUser);
  
  List<String> getAllUserNames();
  
  void removeUser(String id);
}
