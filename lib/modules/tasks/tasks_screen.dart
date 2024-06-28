import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/layout/homeLayout.dart';

import '../../shared/componeuts/componeuts.dart';
import '../../shared/componeuts/constants.dart';
import '../../shared/cubit/cubit.dart';
import '../../shared/cubit/states.dart';

class tasks_screen extends StatefulWidget {
  @override
  State<tasks_screen> createState() => _tasks_screenState();
}

class _tasks_screenState extends State<tasks_screen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);
        var tasks = AppCubit.get(context).newtasks;
        return buildTasksWindow(tasks);
      },
    );
  }
}
