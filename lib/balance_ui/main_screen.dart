import 'package:flutter/material.dart';
import 'package:toonflix/balance_widget/button.dart';
import 'package:toonflix/balance_widget/currency_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '\$5 195 482',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black,
                      text: 'Transfer'),
                  Button(
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                      text: 'Request'),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wallet',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CurrencyCard(
                balance: '3 333',
                icon: Icons.euro_rounded,
                name: 'Euro',
                code: 'EUR',
                isInverted: true,
                order: 0,
              ),
              const CurrencyCard(
                balance: '9 999',
                icon: Icons.currency_bitcoin_rounded,
                name: 'BitCoin',
                code: 'BTC',
                isInverted: false,
                order: -20,
              ),
              const CurrencyCard(
                balance: '333',
                icon: Icons.attach_money_rounded,
                name: 'Dollar',
                code: 'USD',
                isInverted: true,
                order: -40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
