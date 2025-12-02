import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  PromoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15), // added vertical padding
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            color: Colors.black,
            thickness: 1,
          ),
          //SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Improve your self-study\nby using Prexam",
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'Teacher',
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Image.asset(
                "assets/images/logoA.png",
                height: 150,
              ),
            ],
          ),
          //SizedBox(height: 10),
          Divider(
            color: Colors.black,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
