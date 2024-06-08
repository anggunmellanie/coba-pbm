import 'package:flutter/material.dart';
import 'package:vastraloka/screens/history_detail_completed.dart';
import 'package:vastraloka/screens/ongoing_page.dart';
import 'package:vastraloka/screens/completed_page.dart';
import 'package:vastraloka/screens/notification_page.dart';
import 'package:vastraloka/screens/roomchat_page.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 221, 1),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 58),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'History',
                        style: TextStyle(
                          color: Color.fromRGBO(97, 163, 186, 1),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => RoomChat()),
                              );
                            },
                            child: Icon(
                              Icons.chat,
                              color: Color.fromRGBO(97, 163, 186, 1),
                              size: 30,
                            ),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NotificationPage()),
                              );
                            },
                            child: Icon(
                              Icons.notifications,
                              color: Color.fromRGBO(97, 163, 186, 1),
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TabBar(
                    labelColor: Color.fromRGBO(97, 163, 186, 1),
                    unselectedLabelColor: Color.fromRGBO(97, 163, 186, 1),
                    indicatorColor: Color.fromRGBO(97, 163, 186, 1),
                    tabs: const [
                      Tab(text: 'Ongoing'),
                      Tab(text: 'Completed'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 200, // Adjust the height accordingly
                    child: TabBarView(
                      children: [
                        Ongoing(),
                        Completed(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
