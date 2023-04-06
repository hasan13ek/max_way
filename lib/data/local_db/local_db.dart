import 'package:max_way/data/models/food_model.dart';
import 'package:max_way/utils/my_utils.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class LocalDatabase {
  static final LocalDatabase getInstance = LocalDatabase._init();
  static Database? _database;

  factory LocalDatabase() {
    return getInstance;
  }

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    } else {
      _database = await _initDB("foods.db");
      return _database!;
    }
  }

  Future<Database> _initDB(String dbName) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, dbName);
    return await openDatabase(path, version: 1, onCreate: (db, ver) async {
      String idType = "INTEGER PRIMARY KEY AUTOINCREMENT";
      String textType = "TEXT";
      String intType = "INTEGER";
      String boolType = "INTEGER";

      await db.execute('''
    CREATE TABLE $foodTable (
    ${FoodFields.id} $idType,
    ${FoodFields.name} $textType,
    ${FoodFields.price} $intType,
    ${FoodFields.image} $textType,
    ${FoodFields.description} $textType
  
    )
    ''');
    });
  }

  LocalDatabase._init();

  ///-------------------------------------------Cached Foods Table------------------------------------

  static Future<FoodModel> insertFood(FoodModel foodModel) async {
    final db = await getInstance.database;
    final id = await db.insert(foodTable, foodModel.toJson());
    if(id>0){
      MyUtils.getMyToast(message: "Maxsulot savatga qo'shildi");
    }
    return foodModel.copyWith(id: id);
  }

  static Future<List<FoodModel>> getAllFoods() async {
    final db = await getInstance.database;
    // const orderBy = "${FoodFields.name} ASC";
    final result = await db.query(
      foodTable,
      // orderBy: orderBy,
    );
    var data = result.map((json) => FoodModel.fromJson(json)).toList();
    return data;
  }


  static Future close() async {
    final db = await getInstance.database;
    db.close();
  }
}