import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class massanger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage('images/img.jpg'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              "Chats",
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 19,
                color: Colors.white,
              ),
            ),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 19,
              ),
            ),
            color: Colors.white,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text("Search"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: AssetImage("images/img.jpg"),
                            ),
                            CircleAvatar(
                              radius: 9.5,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        Text(
                          "yaseen Hussein",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: AssetImage("images/img.jpg"),
                            ),
                            CircleAvatar(
                              radius: 9.5,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        Text(
                          "yaseen Hussein",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: AssetImage("images/img.jpg"),
                            ),
                            CircleAvatar(
                              radius: 9.5,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        Text(
                          "yaseen Hussein",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: AssetImage("images/img.jpg"),
                            ),
                            CircleAvatar(
                              radius: 9.5,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        Text(
                          "yaseen Hussein",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: AssetImage("images/img.jpg"),
                            ),
                            CircleAvatar(
                              radius: 9.5,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        Text(
                          "yaseen Hussein",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: AssetImage("images/img.jpg"),
                            ),
                            CircleAvatar(
                              radius: 9.5,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        Text(
                          "yaseen Hussein",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: AssetImage("images/img.jpg"),
                            ),
                            CircleAvatar(
                              radius: 9.5,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        Text(
                          "yaseen Hussein",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: AssetImage("images/img.jpg"),
                            ),
                            CircleAvatar(
                              radius: 9.5,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        Text(
                          "yaseen Hussein",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: AssetImage("images/img.jpg"),
                            ),
                            CircleAvatar(
                              radius: 9.5,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        Text(
                          "yaseen Hussein",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: AssetImage("images/img.jpg"),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 9.0,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Yaseen Hussein gasem",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Hello My  freind Yaseen Hussein hussein",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.symmetric(
                                    horizontal: 5.0,
                                  ),
                                  child: Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                Text(
                                  "12:00:32 PM",
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: AssetImage("images/img.jpg"),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 9.0,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Yaseen Hussein gasem",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Hello My  freind Yaseen Hussein hussein",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.symmetric(
                                    horizontal: 5.0,
                                  ),
                                  child: Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                Text(
                                  "12:00:32 PM",
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: AssetImage("images/img.jpg"),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 9.0,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Yaseen Hussein gasem",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Hello My  freind Yaseen Hussein hussein",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.symmetric(
                                    horizontal: 5.0,
                                  ),
                                  child: Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                Text(
                                  "12:00:32 PM",
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: AssetImage("images/img.jpg"),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 9.0,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Yaseen Hussein gasem",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Hello My  freind Yaseen Hussein hussein",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.symmetric(
                                    horizontal: 5.0,
                                  ),
                                  child: Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                Text(
                                  "12:00:32 PM",
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: AssetImage("images/img.jpg"),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 9.0,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Yaseen Hussein gasem",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Hello My  freind Yaseen Hussein hussein",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.symmetric(
                                    horizontal: 5.0,
                                  ),
                                  child: Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                Text(
                                  "12:00:32 PM",
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: AssetImage("images/img.jpg"),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 9.0,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Yaseen Hussein gasem",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Hello My  freind Yaseen Hussein hussein",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.symmetric(
                                    horizontal: 5.0,
                                  ),
                                  child: Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                Text(
                                  "12:00:32 PM",
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: AssetImage("images/img.jpg"),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 9.0,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Yaseen Hussein gasem",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Hello My  freind Yaseen Hussein hussein",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.symmetric(
                                    horizontal: 5.0,
                                  ),
                                  child: Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                Text(
                                  "12:00:32 PM",
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: AssetImage("images/img.jpg"),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 9.0,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Yaseen Hussein gasem",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Hello My  freind Yaseen Hussein hussein",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.symmetric(
                                    horizontal: 5.0,
                                  ),
                                  child: Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                Text(
                                  "12:00:32 PM",
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
