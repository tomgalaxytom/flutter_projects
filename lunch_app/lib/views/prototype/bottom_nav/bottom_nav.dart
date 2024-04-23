import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Icon(Icons.home),
                ),
              ],
            ),
          ),
          Container(
            height: 45,
            width: 45,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.link,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Icon(
                    Icons.shopping_basket,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
