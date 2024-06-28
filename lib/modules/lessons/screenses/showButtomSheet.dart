import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/shared/componeuts/componeuts.dart';

class showSheet extends StatefulWidget {
  const showSheet({super.key});

  @override
  State<showSheet> createState() => _showSheetState();
}

var scaffoldKey = GlobalKey<ScaffoldState>();
var titleControlar = TextEditingController();

class _showSheetState extends State<showSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          scaffoldKey.currentState!.showBottomSheet(
            (context) => Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    defaultTextInput(
                        controling: titleControlar,
                        validatorFunc: (value) {
                          if (value.toString().isEmpty)
                            return "titl be must not null";
                          return null;
                        },
                        label: "title",
                        preFixIcons: Icons.title,
                        onTap: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime.parse("2024-11-29"),
                          );
                        }),
                  ],
                ),
              ),
            ),
            elevation: 50.0,
          );
        },
        child: Icon(
          Icons.edit,
        ),
      ),
    );
  }
}
