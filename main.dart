import 'data/mock_database.dart';
import 'models/user.dart';

void main() {
  MockDatabase datenbank = MockDatabase();

  datenbank.addUser('JP', 'jp@app-akademie.com', false);
  datenbank.addUser('K.I.', 'kaihatje@app-akademie.com', false);
  datenbank.addUser('Tabea', 'Tabeagnade@app-akademie.com', false);
  datenbank.addUser('Francesc', 'francesc@gmail.com', true);

  List<User> users = datenbank.getAllUserNames();
  print(users.map((User) => User.userName).toList());

  User user = datenbank.getUserByEmail('jp@app-akademie.com');
  print('User: ${user.userName}, Active: ${user.isActive}');

  datenbank.updateUsersStatus('jp@app-akademie.com', true);

  datenbank.removeUser(user);

  users = datenbank.getAllUserNames();
  print(users.map((user) => user.userName).toList());
}
