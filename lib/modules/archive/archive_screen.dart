import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/componeuts/componeuts.dart';
import '../../shared/cubit/cubit.dart';
import '../../shared/cubit/states.dart';

class archive_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);
        var tasks = AppCubit.get(context).archivetasks;
        return buildTasksWindow(tasks);
      },
    );
  }
}
