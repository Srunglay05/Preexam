import 'package:flutter/material.dart';
import 'package:testing/screens/mainhome.dart';

class LoginWid {
  static Widget inputStudent({
    required TextEditingController controller1,
    required TextEditingController controller2,
    required BuildContext context,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 75),
          Text(
            'Welcome',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.w700,
              fontFamily: 'Teacher',
              letterSpacing: 1,
              color: Colors.black,
              shadows: [
                Shadow(
                  color: Color.fromARGB(255, 129, 129, 129),
                  offset: Offset(5, 5),
                  blurRadius: 8,
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextField(
              controller: controller1,
              decoration: InputDecoration(
                hintText: 'Enter Your Username',
                contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextField(
              controller: controller2,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter Your Password',
                contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 40),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Forget Password",
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 26, 129, 203),
                fontFamily: 'Teacher',
              ),
            ),
          ),
          SizedBox(height: 40),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: SizedBox(
              width: 190,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Text(
                  "Log in",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Teacher',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          Row(
            children: [
              Expanded(child: Divider(color: Colors.black)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "or",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Expanded(child: Divider(color: Colors.black)),
            ],
          ),
          SizedBox(height: 40),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: SizedBox(
              width: double.infinity,
              height: 55,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.centerLeft,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/google.png",
                      width: 24,
                      height: 24,
                    ),
                    Spacer(),
                    Text(
                      "Sign In Google",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(flex: 2),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: SizedBox(
              width: double.infinity,
              height: 55,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.centerLeft,
                ),
                child: Row(
                  children: [
                    Icon(Icons.apple, size: 30, color: Colors.black),
                    Spacer(),
                    Text(
                      "Sign In With AppleID",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(flex: 2),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Please fill the right information.",
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Teacher',
                color: Color.fromARGB(255, 108, 108, 108),
                shadows: [
                  Shadow(
                    color: Color.fromARGB(255, 129, 129, 129),
                    offset: Offset(5, 5),
                    blurRadius: 8,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
