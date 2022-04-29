import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class SynchrowiseDatabase {
  static const String _dbPath = "synchrowise.db";
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    final dir = await getApplicationDocumentsDirectory();
    await dir.create(recursive: true);

    final dbPath = join(dir.path, _dbPath);
    final db = await databaseFactoryIo.openDatabase(dbPath);

    return db;
  }
}
