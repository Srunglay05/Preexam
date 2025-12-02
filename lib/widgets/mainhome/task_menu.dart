import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TaskMenu extends StatelessWidget {
  const TaskMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left big pink box
          Container(
            width: 160,  // wider
            height: 180, // taller
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 254, 152, 188),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: buildBoxContent(
              title: "Task",
              icon: FontAwesomeIcons.clipboardCheck,
              iconSize: 30,
              fontSize: 20,
            ),
          ),

          const SizedBox(width: 16),

          // Right column with two smaller boxes
          Column(
            children: [
              Container(
                width: 140,   // narrower
                height: 85,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 188, 166, 255),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: buildBoxContent(
                  title: "Reminder",
                  icon: FontAwesomeIcons.bell,
                  iconSize: 20,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 140,   // narrower
                height: 85,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 199, 139),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: buildBoxContent(
                  title: "Solution",
                  icon: FontAwesomeIcons.lightbulb,
                  iconSize: 20,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildBoxContent({
    required String title,
    required IconData icon,
    required double iconSize,
    required double fontSize,
  }) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FaIcon(
                icon,
                size: iconSize,
                color: Colors.white,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0.1,
          top: 0.1,
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(2),
            ),
            child: const Icon(
              Icons.add,
              size: 18,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}
