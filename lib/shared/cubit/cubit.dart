import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/shared/cubit/states.dart';
import 'package:sqflite/sqflite.dart';
import '../../modules/archive/archive_screen.dart';
import '../../modules/done/done_screen.dart';
import '../../modules/tasks/tasks_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  int indexNavigation = 0;
  late Database database;
  List<Map> newtasks = [];
  List<Map> donetasks = [];
  List<Map> archivetasks = [];
  List<Widget> screens = [
    tasks_screen(),
    done_screen(),
    archive_screen(),
  ];
  List<String> titles = [
    "tasks",
    "Done",
    "Archive",
  ];
  void changeIndexNavigation(index) {
    indexNavigation = index;
    emit(AppChangeNavBarState());
  }

  void createDataBase() {
    openDatabase(
      "todo2.db",
      version: 1,
      onCreate: (db, version) {
        print("database create");
        db
            .execute(
                "create table tasks(id INTEGER PRIMARY KEY,title TEXT,date TEXT,time TEXT,status TEXT)")
            .then(
              (value) => print("table create"),
            )
            .catchError((e) async {
          print("not create table");
        });
      },
      onOpen: (db) {
        getData(db);
        print("Opened database");
      },
    ).then((value) {
      database = value;
      emit(AppCreateDataBaseState());
    });
  }

  insertToDataBase({
    required String title,
    required String date,
    required String time,
  }) async {
    await database
        .rawInsert(
            "insert into tasks(title,date,time,status) values('$title','$date','$time','new')")
        .then((value) {
      print("$value scussful insert to record");
      emit(AppInsertDataBaseState());
      getData(database);
    }).catchError((e) async {
      print(" $e on insert to database ");
    });
  }

  void getData(Database database) async {
    newtasks = [];
    donetasks = [];
    archivetasks = [];
    emit(AppDataBaseLodgingState());
    database.rawQuery("select * from tasks").then((value) {
      print(value);
      value.forEach(
        (element) {
          if (element['status'] == "new") {
            newtasks.add(element);
          } else if (element['status'] == "done") {
            donetasks.add(element);
          } else {
            archivetasks.add(element);
          }
        },
      );

      emit(AppGetDataBaseState());
    });
  }

  void updateDatabas({
    required String status,
    required int id,
  }) {
    print(status);
    print(id);
    database.rawUpdate(
        "update tasks set status=? where id=?", [status, id]).then((value) {
      getData(database);
      emit(AppUpdateDataBaseState());
    });
  }

  void deleteFromDatabas({
    required int id,
  }) {
    print(id);
    database.rawDelete(" delete from tasks where id=?", [id]).then((value) {
      getData(database);
      emit(AppDeleteDataBaseState());
    });
  }

  bool isSheetV = false;
  IconData iconFloat = Icons.edit;
  void changeBottomSheetState({
    required bool sheetView,
    required IconData icon,
  }) {
    iconFloat = icon;
    isSheetV = sheetView;
    emit(AppChangeSheetNavBarState());
  }
}
