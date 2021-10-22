import 'package:flutter/material.dart';
import 'package:it_supporter/constant.dart';
import 'package:it_supporter/screens/components/it_card.dart';

class ListItScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lịch sử đơn hàng"),
        automaticallyImplyLeading: false,
        backgroundColor: kBlueColor,
      ),
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Các đơn hàng của bạn',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildITList(),
            ],
          ),
        ),
      ),
    );
  }

  buildITList() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          ITCard(
            'Khách hàng: Hào Nguyễn',
            '21:18 - 19/10/2021\nTrạng thái đơn: Đã hoàn thành\nKhách đã thanh toán',
            'assets/images/datt.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 20,
          ),
          ITCard(
            'Khách hàng: Nguyen B',
            '08:30 - 29/01/2021\nTrạng thái đơn: Đã hoàn thành\nKhách đã thanh toán',
            'assets/images/datt.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 20,
          ),
          ITCard(
            'Khách hàng: Nguyen C',
            '21:18 - 13/10/2021\nTrạng thái đơn: Đã hoàn thành\nKhách đã thanh toán',
            'assets/images/datt.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
