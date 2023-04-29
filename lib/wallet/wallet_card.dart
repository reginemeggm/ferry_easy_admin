import 'package:flutter/material.dart';
import '../constants.dart/colors.dart';

class WalletCard extends StatelessWidget {
  final Widget image;
  final String name;
  final int amount;

  const WalletCard({
    Key? key,
    required this.image,
    required this.name,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 580,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Current Balance',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: kcDarkGray)),
                  SizedBox(height: 25),
                  Text('₱$amount',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 80,
                          fontWeight: FontWeight.w500,
                          color: kcPrimaryColor)),
                  SizedBox(height: 35),
                  Text('Name',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: kcDarkGray)),
                  SizedBox(height: 10),
                  Text(name,
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: kcPrimaryColor)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/titikmankid.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}