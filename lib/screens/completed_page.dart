import 'package:flutter/material.dart';
import 'package:vastraloka/screens/history_detail_completed.dart';

class Completed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Your completed history items here
          Card(
            color: Color.fromRGBO(162, 197, 121, 1),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CompletedPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/donasi.png',
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Donate',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 255, 221, 1),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Dress \nTrousers \nGamis',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(255, 255, 221, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          '\n10 Pcs',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(255, 255, 221, 1),
                          ),
                        ),
                        Text(
                          '5 Pcs',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(255, 255, 221, 1),
                          ),
                        ),
                        Text(
                          '3 Pcs',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(255, 255, 221, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
