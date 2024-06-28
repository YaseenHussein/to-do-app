import 'package:flutter/material.dart';
import 'package:my_app/models/user_date/listUser.dart';

class massangerTest extends StatelessWidget {
  const massangerTest({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 54, 54),
      appBar: AppBar(
        // iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 56, 54, 54),
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage("images/img.jpg"),
                ),
                CircleAvatar(
                  radius: 11.5,
                  backgroundColor: Colors.white,
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(bottom: 1.0, end: 1.0),
                  child: CircleAvatar(
                    radius: 10.5,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              "Chats",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              child: Icon(
                Icons.camera_alt,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              child: Icon(
                Icons.edit,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[600],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStory(),
                  separatorBuilder: (context, index) =>
                         const SizedBox(width: 20.0),
                  itemCount: 10,
                ),
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildChat(UserData.dd[index]),
                separatorBuilder: (context, index) => SizedBox(height: 20.0),
                itemCount: UserData.dd.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildStory() => Container(
      width: 50.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              CircleAvatar(
                radius: 27.0,
                backgroundImage: AssetImage("images/img.jpg"),
              ),
              CircleAvatar(
                radius: 11.5,
                backgroundColor: Colors.white,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(bottom: 1.0, end: 1.0),
                child: CircleAvatar(
                  radius: 10.5,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          Text(
            "Yaseen hussein nsmasashgdaj",
            style: TextStyle(
              color: Colors.white,
            ),
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
Widget buildChat(UserData value) => Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage("images/img.jpg"),
            ),
            CircleAvatar(
              radius: 11.5,
              backgroundColor: Colors.white,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 1.0, end: 1.0),
              child: CircleAvatar(
                radius: 10.5,
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "hi My Friend today we want to make sure",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 7,
                      height: 7,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text(
                    value.time,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
