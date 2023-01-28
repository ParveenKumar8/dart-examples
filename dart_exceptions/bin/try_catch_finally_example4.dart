void main(List<String> args) async {
  final db = Database();
  try {
    //await db.open();
    final result = await db.getData();
    print(result);
  } on DatabaseNotOpenException {
    print("Please open the databse first.");
  } finally {
    await db.close();
  }
}

class Database {
  bool _isDBOpen = false;

  Future<void> open() {
    return Future.delayed(
      Duration(seconds: 2),
      () {
        _isDBOpen = true;
        print("DB is open");
      },
    );
  }

  Future<String> getData() {
    if (!_isDBOpen) {
      throw DatabaseNotOpenException();
    }
    return Future.delayed(
      Duration(seconds: 1),
      () => "New Data received",
    );
  }

  Future<void> close() {
    return Future.delayed(
      Duration(seconds: 2),
      () {
        _isDBOpen = false;
        print("DB is closed");
      },
    );
  }
}

class DatabaseNotOpenException implements Exception {
  @override
  String toString() {
    return "DatabaseNotOpenException";
  }
}
