import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final IconData icon;
  final bool isInverted;
  final String name;
  final String code;
  final String balance;
  final double order;

  const CurrencyCard({
    super.key,
    required this.icon,
    required this.name,
    required this.code,
    required this.balance,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, order),
      child: Container(
        clipBehavior: Clip.none,
        decoration: BoxDecoration(
          color: isInverted ? const Color(0xFF1F2123) : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? Colors.white : Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '3 333',
                        style: TextStyle(
                          color: isInverted ? Colors.white : Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                            color: isInverted
                                ? Colors.white.withOpacity(0.8)
                                : Colors.black.withOpacity(0.8),
                            fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.2,
                child: Transform.translate(
                  offset: const Offset(-5, 11),
                  child: Icon(
                    icon,
                    color: isInverted ? Colors.white : Colors.black,
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
