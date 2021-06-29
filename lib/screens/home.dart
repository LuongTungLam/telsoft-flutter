import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:telsoft_flutter/screens/utils/widget/bottom_bar.dart';
import 'package:telsoft_flutter/screens/utils/widget/button_gridview.dart';

class Home extends StatefulWidget {
  static const routeNmae = "/home";
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomeState();
}

Future<Null> resfreshEventList() async {
  await Future.delayed(Duration(seconds: 2));

  return null;
}

class HomeState extends State<Home> {
  // showDialog watting
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: RefreshIndicator(
          onRefresh: resfreshEventList,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.yellow.shade50,
                    Colors.white,
                    Colors.white,
                    Colors.white
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  search(),
                  banner(),
                  top(),
                  gridTop(),
                  dividerCenter(),
                  textBottom(),
                  gridBottom()
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 56),
        child: SizedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            elevation: 0,
            onPressed: () {},
            child: Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.red.shade600),
              child: Icon(Icons.qr_code, size: 32),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomBar(),
    );
  }

  Widget search() {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8),
                prefixIcon: Icon(
                  Icons.search,
                  size: 30,
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                hintText: 'Bạn đang muốn tìm ...',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: ClipOval(
              child: Material(
                color: Colors.white, // Button color
                child: InkWell(
                  splashColor: Colors.red, // Splash color
                  onTap: () {},
                  child: SizedBox(
                      width: 52,
                      height: 52,
                      child: Icon(Icons.wallet_giftcard)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget banner() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 220),
                child: Container(
                  child: Text(
                    "Chung tay cùng VinID xây trường mới",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Tham gia ngay",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
              width: 140,
              height: 140,
              child: Image.asset(
                "assets/images/kids.png",
                fit: BoxFit.cover,
              )),
        ],
      ),
    );
  }

  Widget top() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade200),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                    child: Icon(
                      Icons.apps_outlined,
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Điểm tích lũy"),
                        Text(
                          "0",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade200),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                    child: Icon(
                      Icons.account_balance_wallet_outlined,
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Ví của tôi"),
                        Text(
                          "Kích hoạt ví",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget gridTop() {
    return Container(
      child: GridView.count(
        padding: EdgeInsets.fromLTRB(8, 32, 8, 0),
        crossAxisCount: 4,
        crossAxisSpacing: 16,
        mainAxisSpacing: 24,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          buttonGrid(
              text: "Voucher",
              image: "assets/images/ic_service_voucher.png",
              action: () {}),
          buttonGrid(
              text: "Vinhomes",
              image: "assets/images/ic_service_my_house.png",
              action: () {}),
          buttonGrid(
              text: "Săn thưởng",
              image: "assets/images/ic_service_game.png",
              action: () {}),
          buttonGrid(
              text: "Tiện ích",
              image: "assets/images/ic_service_utility_payment.png",
              action: () {}),
          buttonGrid(
              text: "VinMart",
              image: "assets/images/ic_function_vinmart.png",
              action: () {}),
          buttonGrid(
              text: "Đi chợ",
              image: "assets/images/ic_function_maket.png",
              action: () {}),
          buttonGrid(
              text: "Đồ ăn",
              image: "assets/images/ic_function_food.png",
              action: () {}),
          buttonGrid(
              text: "Techcom",
              image: "assets/images/ic_function_tech.png",
              action: () {}),
        ],
      ),
    );
  }

  Widget dividerCenter() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 48, 0, 30),
      child: Text(
        "Xem tất cả dịch vụ",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 16),
      ),
    );
  }

  Widget textBottom() {
    return Container(
      child: Row(
        children: [
          Text(
            "VinID có gì hot?",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Spacer(),
          Text(
            "Tất cả",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget gridBottom() {
    return Container(
      child: GridView.count(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 10),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          itemGrid(),
          itemGrid(),
          itemGrid(),
          itemGrid(),
          itemGrid(),
        ],
      ),
    );
  }

  Widget itemGrid() {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              child: Image.asset(
                "assets/images/voucher.jpg",
                fit: BoxFit.cover,
              )),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(8)),
              border: Border.all(color: Colors.grey.shade200),
              color: Colors.white,
            ),
            child: Text(
              "Đi chợ VinMart online cùng VinID, nhận ngay 200k",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ),
      ],
    );
  }
}
