import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:my_app/modules/archive/archive_screen.dart';
import 'package:my_app/modules/done/done_screen.dart';
import 'package:my_app/modules/lessons/screenses/showButtomSheet.dart';
import 'package:my_app/modules/tasks/tasks_screen.dart';
import 'package:my_app/shared/componeuts/componeuts.dart';
import 'package:sqflite/sqflite.dart';

import '../shared/componeuts/constants.dart';
import '../shared/cubit/cubit.dart';
import '../shared/cubit/states.dart';

var ScaffoldKey = GlobalKey<ScaffoldState>();

var titleTaskcontrolar = TextEditingController();
var timecontrolar = TextEditingController();
var datacontrolar = TextEditingController();

var FormKey = GlobalKey<FormState>();

class home_layout extends StatelessWidget {
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..createDataBase(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          if (state is AppInsertDataBaseState) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            key: ScaffoldKey,
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                cubit.titles[cubit.indexNavigation],
              ),
            ),
            ////////////////////////////
            body: ConditionalBuilder(
              condition: /*/tasks.length > 0*/ state is! AppDataBaseLodgingState,
              builder: (context) => cubit.screens[cubit.indexNavigation],
              fallback: (context) => const Center(
                child: CircularProgressIndicator(),
              ),
            ),

            /////////////////////////
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                if (cubit.isSheetV) {
                  if (FormKey.currentState!.validate()) {
                    cubit.insertToDataBase(
                        title: titleTaskcontrolar.text,
                        date: datacontrolar.text,
                        time: timecontrolar.text);
                    datacontrolar.text = "";
                    timecontrolar.text = "";
                    titleTaskcontrolar.text = "";
                  }
                  ;
                  cubit.changeBottomSheetState(
                      sheetView: false, icon: Icons.edit);
                } else {
                  ScaffoldKey.currentState!
                      .showBottomSheet(
                        (context) => Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            color: Colors.white,
                            width: double.infinity,
                            child: Form(
                              key: FormKey,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  defaultTextInput(
                                    controling: titleTaskcontrolar,
                                    validatorFunc: (value) {
                                      if (value.toString().isEmpty)
                                        return "title of Task not be null";
                                      return null;
                                    },
                                    label: 'task Title',
                                    preFixIcons: Icons.title,
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  defaultTextInput(
                                      controling: timecontrolar,
                                      validatorFunc: (value) {
                                        if (value.toString().isEmpty)
                                          return "time of Task not be null";
                                        return null;
                                      },
                                      label: "Time",
                                      preFixIcons: Icons.watch_later_outlined,
                                      onTap: () {
                                        showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay.now(),
                                        ).then(
                                          (value) {
                                            timecontrolar.text =
                                                value!.format(context);
                                          },
                                        );
                                      }),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  defaultTextInput(
                                      controling: datacontrolar,
                                      validatorFunc: (value) {
                                        if (value.toString().isEmpty)
                                          return "date of Task not be null";
                                        return null;
                                      },
                                      label: "date",
                                      preFixIcons: Icons.calendar_month_rounded,
                                      onTap: () {
                                        showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate:
                                              DateTime.parse("2024-10-12"),
                                        ).then((value) {
                                          datacontrolar.text =
                                              DateFormat.yMMMEd().format(
                                            DateTime.parse(
                                              value.toString(),
                                            ),
                                          );
                                          //هذي المكتبة يجب تنزلها من inlt
                                        });
                                      })
                                ],
                              ),
                            ),
                          ),
                        ),
                        elevation: 20.0,
                      )
                      .closed
                      .then((value) {
                    cubit.changeBottomSheetState(
                      sheetView: false,
                      icon: Icons.edit,
                    );
                  });
                  cubit.changeBottomSheetState(
                      sheetView: true, icon: Icons.add);
                }
              },
              child: Icon(
                cubit.iconFloat,
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.indexNavigation,
              onTap: ((index) {
                cubit.changeIndexNavigation(index);
              }),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                  ),
                  label: 'tasks',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.check_box,
                  ),
                  label: 'Done',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.archive,
                  ),
                  label: "Archive",
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
