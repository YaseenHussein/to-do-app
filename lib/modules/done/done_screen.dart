import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/componeuts/componeuts.dart';
import '../../shared/cubit/cubit.dart';
import '../../shared/cubit/states.dart';

class done_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);
        var tasks = AppCubit.get(context).donetasks;
        return buildTasksWindow(tasks);
      },
    );
  }
}
