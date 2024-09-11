import 'data/mock_database.dart';

void main() {
  MockDatabase datenbank = MockDatabase();

  datenbank.addUser('JP', 'jp@app-akademie.com', false);
  datenbank.addUser('K.I.', 'kaihatje@app-akademie.com', false);
}
