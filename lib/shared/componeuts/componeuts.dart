import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:my_app/shared/componeuts/constants.dart';
import 'package:my_app/shared/cubit/cubit.dart';

Widget defualtButton({
  required Function function,
  double width_b = double.infinity,
  Color color_b = Colors.blue,
  String txt = 'LOGIN',
  double Radis = 10,
}) =>
    Container(
      width: width_b,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Radis),
        color: color_b,
      ),
      height: 40.0,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          txt.toUpperCase(),
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
    );
Widget defaultTextInput({
  required TextEditingController controling,
  required String? Function(String?) validatorFunc,
  Function? IconFun,
  required String label,
  bool isPassword = false,
  required IconData preFixIcons,
  IconData? suffixIcons,
  double radius = 10,
  Function()? onTap,
  TextInputType typeKeybord = TextInputType.emailAddress,
}) =>
    TextFormField(
      obscureText: isPassword,
      keyboardType: typeKeybord,
      controller: controling,
      validator: validatorFunc,
      onTap: onTap,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(preFixIcons),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        suffixIcon: suffixIcons != null
            ? IconButton(
                onPressed: () {
                  IconFun!();
                },
                icon: Icon(suffixIcons))
            : null,
      ),
    );
Widget buildTasks(Map task, context) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Dismissible(
      key: Key(task['id'].toString()),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            child: Text(
              "${task['time']}",
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${task['title']}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "${task['date']}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          IconButton(
            onPressed: () {
              AppCubit.get(context)
                  .updateDatabas(status: "done", id: task['id']);
            },
            icon: Icon(
              Icons.check_box,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {
              AppCubit.get(context)
                  .updateDatabas(status: "archive", id: task['id']);
            },
            icon: Icon(
              Icons.archive,
              color: Colors.black45,
            ),
          ),
        ],
      ),
      onDismissed: (direction) {
        AppCubit.get(context).deleteFromDatabas(id: task['id']);
      },
    ),
  );
}

Widget buildTasksWindow(var tasks) {
  return ConditionalBuilder(
          condition: tasks.length > 0,
          builder: (context) => ListView.separated(
            itemBuilder: (context, index) => buildTasks(tasks[index], context),
            separatorBuilder: (context, index) => Padding(
              padding: const EdgeInsetsDirectional.only(start: 15.0),
              child: Container(
                height: 1.0,
                width: double.infinity,
                color: Colors.grey,
              ),
            ),
            itemCount: tasks.length,
          ),
          fallback: (BuildContext context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.menu,
                    size: 160.0,
                    color: Colors.grey[400],
                  ),
                  Text(
                    "Not Tasks Yet Plase Add Tasks To Task Window!!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            );
          },
        );
}
