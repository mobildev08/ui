// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:ui/constants.dart';


class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isSwitched = !isSwitched;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: 70,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isSwitched ? purple : grey.shade300,
            ),
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                  left: isSwitched ? 35 : 0,
                  right: isSwitched ? 0 : 35,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: white,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: isSwitched
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        isSwitched ? "Yes" : "No",
                        style: TextStyle(
                          color: isSwitched ? white : black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: CustomSwitch(),
  ));
}
