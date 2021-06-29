import 'package:flutter/material.dart';
import 'package:telsoft_flutter/screens/account.dart';
import 'package:telsoft_flutter/screens/utils/widget/message.dart';

class _Notification extends StatefulWidget {
  static const routeNmae = "/notification";
  const _Notification({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => NotificationState();
}

class NotificationState extends State<_Notification> {
  // showDialog watting
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hộp Thư"),
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (ctx, index) {
            return message(
                title: "Thông báo",
                content:
                    "Some one thông báo Some one thông báoSome one thông báoSome one thông báoSome one thông báo",
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                time: "25/06/2021");
          }),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey[100],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Lịch sử',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard_outlined),
            label: 'Ưu đãi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts_outlined),
            label: 'Cá nhân',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 3:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Account()));
              break;
          }
        },
      ),
    );
  }
}
