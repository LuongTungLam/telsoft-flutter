import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  static const routeNmae = "/login";
  const Account({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AccountState();
}

class AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tài Khoản"),
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(child: buildBody()),
      ),
    );
  }

  Widget buildBody() {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildProfile(),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              height: 8,
              decoration: BoxDecoration(color: Colors.grey[200]),
            ),
            buildMenus(),
            buildRating(),
          ],
        ),
      ),
    );
  }

  Widget buildProfile() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Row(
        children: [
          CircleAvatar(
            child: Text("a"),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Lam Luong\n",
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: "0858448627",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Text("Chua xac thuc"),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                  color: Colors.grey,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildRating() {
    return Container(
      height: 200,
      color: Colors.grey[300],
      child: Container(
        height: 100,
        margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
        color: Colors.white,
      ),
    );
  }

  Widget buildMenus() {
    return ListView.separated(
      itemBuilder: (ctx, index) {
        return buildItemMenu();
      },
      separatorBuilder: (ctx, index) {
        return Divider(
          height: 1,
        );
      },
      itemCount: 10,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }

  Widget buildItemMenu() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Row(
        children: [
          Icon(Icons.access_alarm),
          SizedBox(
            width: 10,
          ),
          Expanded(child: Text("data")),
          Icon(
            Icons.arrow_forward_ios,
            size: 14,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
