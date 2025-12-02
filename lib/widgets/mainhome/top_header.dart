import 'package:flutter/material.dart';

class TopHeader extends StatelessWidget {
  TopHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey.shade200,   // optional
          child: ClipOval(
            child: Image.asset(
              'assets/images/profile.jpg',
              width: 50,          // must match diameter
              height: 50,         // must match diameter
              fit: BoxFit.cover,  // fills the circle
            ),
          ),
        ),
        SizedBox(width: 10),
        Text(
          "Hello, Zengg",
          style: TextStyle(
            fontSize: 18, 
            fontWeight: FontWeight.bold,
            fontFamily: 'Teacher'),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_none_rounded),
        )
      ],
    );
  }
}
