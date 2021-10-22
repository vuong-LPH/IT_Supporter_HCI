import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:it_supporter/constant.dart';
import 'package:it_supporter/screens/components/alert_dialog2.dart';
import 'package:it_supporter/screens/profile_screen/edit_profile_screen.dart';
import 'package:it_supporter/screens/sub_category_screens/kh1_screen.dart';
import 'package:it_supporter/screens/sub_category_screens/kh2_screen.dart';
import 'package:it_supporter/screens/sub_category_screens/kh3_screen.dart';
// import 'package:it_supporter/screens/sub_category_screen/ios_category_screen.dart';
// import 'package:it_supporter/screens/sub_category_screen/android_category_screen.dart';
// import 'package:it_supporter/screens/sub_category_screen/macOS_category_screen.dart';
// import 'package:it_supporter/screens/sub_category_screen/windows_category_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant.dart';
import '../constant.dart';
import 'components/alert_dialog.dart';

class HomeScreen extends StatelessWidget {
  String? valueChoose;
  List listItem = [
    "Phần cứng điện thoại android",
    "Phần mềm điện thoại android",
    "Phần cứng điện thoại IOS",
    "Phần mềm điện thoại IOS",
    "Phần cứng laptop windown",
    "Phần cứng  macbook",
    "Phần mềm laptop windown",
    "Phần mềm Macbook",
    "Phần cứng PC Windown",
    "Phần cứng PC Apple"
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Xin chào,',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kTitleTextColor,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Nguyễn Thành Tín',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: kTitleTextColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Container(
                    width: 300,
                    height: 220,
                    child: Image.asset('assets/images/logo.jpg')),
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 30),
              //   child: Text(
              //     'Chọn thiết bị cần hỗ trợ',
              //     style: TextStyle(
              //       fontWeight: FontWeight.bold,
              //       color: kTitleTextColor,
              //       fontSize: 18,
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 30),
              //   child: RaisedButton(
              //     onPressed: () async {
              //       final action = await AlertDialogs.yesCancelDialog(
              //           context,
              //           'Chúng tôi tìm thấy 1 khách hàng',
              //           'Tên khách hàng: Nguyen A\n\nSDT khách hàng: 0909778423\n\nThiết bị sửa: laptop asus\n\nVấn đề của khách: lỗi bàn phím gõ chữ sai font, khách tham khảo trên mạng nhưng không tìm ra phương pháp\n\nPhương thức sửa: Teamview\n\nID teamview: 038HJ21\n\nPass teamview: 038365111\n\n');
              //       // Stack(
              //       //   children: [
              //       //   ],
              //       // );
              //       SizedBox(height: 15);
              //     },
              //     padding: EdgeInsets.all(12.0),
              //     color: Colors.white, // Color(0xFFC41A3B),
              //     child: Text(
              //       'Demo popup'.toUpperCase(),
              //       style: TextStyle(
              //           color: Colors.white, fontWeight: FontWeight.bold),
              //     ),
              //   ),
              // ),

              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 30),
              //   child: RaisedButton(
              //     onPressed: () async {
              //       final action = await AlertDialogs2.yesCancelDialog(
              //           context,
              //           'Đơn hàng',
              //           'Tên khách hàng: Nguyen A\n\nSDT khách hàng: 0909778423\n\nThiết bị sửa: laptop asus\n\nVấn đề của khách: lỗi bàn phím gõ chữ sai font, khách tham khảo trên mạng nhưng không tìm ra phương pháp\n\nPhương thức sửa: Teamview\n\nSố tiền: 20.000');
              //       // Stack(
              //       //   children: [

              //       //   ],
              //       // );
              //       SizedBox(height: 15);
              //     },
              //     padding: EdgeInsets.all(12.0),
              //     color: Color(0xFFC41A3B),
              //     child: Text(
              //       'Demo popup2'.toUpperCase(),
              //       style: TextStyle(
              //           color: Colors.white, fontWeight: FontWeight.bold),
              //     ),
              //   ),
              // ),

              SizedBox(
                height: 20,
              ),
              // // buildCategoryList(),
              // SizedBox(
              //   height: 20,
              // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 30),
              //   child: Text(
              //     'Tin tức về công nghệ',
              //     style: TextStyle(
              //       fontWeight: FontWeight.bold,
              //       color: kTitleTextColor,
              //       fontSize: 18,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              // buildNewsList(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Các khách hàng được gợi ý cho bạn',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              buildCategoryList(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: FlatButton(
                  onPressed: () async {
                    final action = await AlertDialogs.yesCancelDialog(
                        context,
                        'Chúng tôi tìm thấy 1 khách hàng',
                        'Tên khách hàng: Hào Nguyễn\n\nSDT khách hàng: 0909778423\n\nThiết bị sửa: laptop asus\n\nVấn đề của khách: Không thể kết nối wifi\n\nPhương thức sửa: Teamview\n\nID teamview: 123\n\nPass teamview: 123\n\n');
                    // Stack(
                    //   children: [
                    //   ],
                    // );
                    SizedBox(height: 15);
                  },
                  padding: EdgeInsets.all(12.0),
                  color: kBackgroundColor, // Color(0xFFC41A3B),
                  child: Text(
                    'Demo popup'.toUpperCase(),
                    style: TextStyle(
                        color: kBackgroundColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: FlatButton(
                  onPressed: () async {
                    final action = await AlertDialogs2.yesCancelDialog(
                        context,
                        'Đơn hàng',
                        'Tên khách hàng: Hào Nguyễn\n\nSDT khách hàng: 0909778423\n\nThiết bị sửa: laptop asus\n\nVấn đề của khách: Không thể kết nối wifi\n\nPhương thức sửa: Teamview\n\n');
                    // Stack(
                    //   children: [

                    //   ],
                    // );
                    SizedBox(height: 15);
                  },
                  padding: EdgeInsets.all(12.0),
                  color: kBackgroundColor,
                  child: Text(
                    'Demo popup2'.toUpperCase(),
                    style: TextStyle(
                        color: kBackgroundColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              // buildDoctorList(),
            ],
          ),
        ),
      ),
    );
  }

  buildCategoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          // KH1
          InkWell(
            onTap: () => {
              Get.to(() => kh1(),
                  transition: Transition.rightToLeftWithFade,
                  duration: Duration(milliseconds: 600))
            },
            child: Stack(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: 200,
                    height: 150,
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Trần Thị C\nYêu cầu: 1p trước\nVấn đề: Màn hình máy tính chớp tắt',
                        style: TextStyle(
                          color: kTitleTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 70,
                  child: Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      color: kBlueColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.network(
                      'https://th.bing.com/th/id/OIP.3hkA5Yx5YUpUMtbsaioJggHaHa?w=192&h=192&c=7&r=0&o=5&dpr=1.25&pid=1.7',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          // KH2
          InkWell(
            onTap: () => {
              Get.to(() => kh2(),
                  transition: Transition.rightToLeftWithFade,
                  duration: Duration(milliseconds: 600))
            },
            child: Stack(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: 200,
                    height: 150,
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Ngô Văn D\nYêu cầu: 45p trước\nVấn đề: Kiểm tra bàn phím do bấm ko ăn',
                        style: TextStyle(
                          color: kTitleTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 70,
                  child: Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      color: kBlueColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.network(
                      'https://th.bing.com/th/id/OIP.4lV73VxJYjzJU40zVywFugHaHT?w=182&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          // KH3
          InkWell(
            onTap: () => {
              Get.to(() => kh3(),
                  transition: Transition.rightToLeftWithFade,
                  duration: Duration(milliseconds: 600))
            },
            child: Stack(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: 200,
                    height: 150,
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Nguyễn Vũ A\nYêu cầu: 10p trước\nVấn đề: hướng dẫn cài và dùng phần mềm học code',
                        style: TextStyle(
                          color: kTitleTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 70,
                  child: Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      color: kBlueColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.network(
                      'https://th.bing.com/th?id=OIF.h49FovAnKSAVZ%2bIfikXw%2bg&w=182&h=181&c=7&r=0&o=5&dpr=1.25&pid=1.7',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }

  buildNewsList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          InkWell(
            onTap: () async {
              final url =
                  "https://tinhte.vn/thread/huong-dan-cap-nhat-len-windows-11-mien-phi-cach-ep-may-len-windows-11-ngay-hom-nay.3413014/";
              if (await canLaunch(url)) {
                await launch(url);
              }
            },
            child: Stack(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: 225,
                    height: 225,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Hướng dẫn cập nhật lên Windows 11- tinhte.vn',
                        style: TextStyle(
                          color: kTitleTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 17,
                  child: Container(
                    height: 200,
                    width: 200,
                    // decoration: BoxDecoration(
                    //   color: kBlueColor,
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    child: Image.asset(
                      'assets/images/new1.jpg',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () async {
              final url =
                  "https://tinhte.vn/thread/mot-so-cai-dat-ban-dau-de-su-dung-windows-11-tot-hon.3413828/";
              if (await canLaunch(url)) {
                await launch(url);
              }
              // openBrowserURL(url: url, inApp: true);
              // Get.to(() => EditProfile(),
              //     transition:
              //     Transition.rightToLeftWithFade,
              //     duration: Duration(milliseconds: 600))
            },
            child: Stack(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: 225,
                    height: 225,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Một số cài đặt ban đầu để sử dụng Windows 11 tốt hơn- tinhte.vn',
                        style: TextStyle(
                          color: kTitleTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 17,
                  child: Container(
                    height: 200,
                    width: 200,
                    // decoration: BoxDecoration(
                    //   color: kBlueColor,
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    child: Image.asset(
                      'assets/images/new2.jpg',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () async {
              final url =
                  "https://tinhte.vn/thread/huong-dan-cap-nhat-len-windows-11-mien-phi-cach-ep-may-len-windows-11-ngay-hom-nay.3413014/";
              if (await canLaunch(url)) {
                await launch(url);
              }
            },
            child: Stack(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: 225,
                    height: 225,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Đổi từ Laptop Windows sang Macbook, được gì và mất gì?- tinhte.vn',
                        style: TextStyle(
                          color: kTitleTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 17,
                  child: Container(
                    height: 200,
                    width: 200,
                    // decoration: BoxDecoration(
                    //   color: kBlueColor,
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    child: Image.asset(
                      'assets/images/new3.jpg',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () async {
              final url =
                  "https://tinhte.vn/thread/huong-dan-cap-nhat-len-windows-11-mien-phi-cach-ep-may-len-windows-11-ngay-hom-nay.3413014/";
              if (await canLaunch(url)) {
                await launch(url);
              }
            },
            child: Stack(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: 225,
                    height: 225,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Infographic: Vòng đời các bản Windows- tinhte.vn',
                        style: TextStyle(
                          color: kTitleTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 17,
                  child: Container(
                    height: 200,
                    width: 200,
                    // decoration: BoxDecoration(
                    //   color: kBlueColor,
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    child: Image.asset(
                      'assets/images/new4.jpg',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
