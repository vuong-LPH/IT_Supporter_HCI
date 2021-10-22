import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:it_supporter/constant.dart';

import '../bottom_nav_bar_screen.dart';

//màn hình của user đưa thông tin của IT support List

class kh1 extends StatelessWidget {
  // var _name;
  // var _description;
  // var _imageUrl;

  // kh1(this._name, this._description, this._imageUrl);
  kh1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/technology.png'),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        'assets/icons/back.svg',
                        height: 18,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/3dots.svg',
                      height: 18,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.24,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          // Image.asset(
                          //   _imageUrl,
                          //   height: 120,
                          // ),
                          // SizedBox(
                          //   width: 20,
                          // ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Trần Thị C',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: kTitleTextColor,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Yêu cầu: 1p trước',
                                style: TextStyle(
                                  color: kTitleTextColor.withOpacity(0.7),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: kBlueColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/icons/phone.svg',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: kYellowColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/icons/chat.svg',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: kOrangeColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/icons/video.svg',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Chi Tiết',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: kTitleTextColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'SDT khách hàng: 0909778423\n\nThiết bị sửa: laptop asus\n\nVấn đề của khách: Màn hình chớp tắt liên tục\n\nPhương thức sửa: bằng hình ảnh minh họa và nhắn tin hướng dẫn\n\n',
                        style: TextStyle(
                          height: 1.6,
                          color: kTitleTextColor.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: RaisedButton(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            onPressed: onSignInClicked,
                            // child: Text(
                            //   "SIGN IN",
                            //   style: TextStyle(color: Colors.white, fontSize: 16),
                            // ),
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: backtoCustomerScreen));
                              },
                              child: Text(
                                "Nhận Đơn",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Text(
                      //   'Upcoming Schedules',
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: 18,
                      //     color: kTitleTextColor,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget backtoCustomerScreen(BuildContext context) {
    return BottomNavScreen();
  }

  void onSignInClicked() {}
}
