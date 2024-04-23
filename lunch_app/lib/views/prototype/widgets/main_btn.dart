import 'package:flutter/material.dart';

class MainBtn extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool active;

  final void Function() onTap; 

  const MainBtn({
    super.key,
    required this.icon,
    this.title = "All",
    this.active = true,
     required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width / 3,
          minHeight: 50,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: active ? Colors.blueGrey : null,
            borderRadius: BorderRadius.circular(10),
            border: active ? null : Border.all(color: Colors.grey.shade400),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (icon != null)
                  ? Row(
                      children: [
                        Icon(
                          icon,
                          color: active ? Colors.white : Colors.grey.shade400,
                        ),
                        const SizedBox(width: 4),
                      ],
                    )
                  : const SizedBox(),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: active ? Colors.white : Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
