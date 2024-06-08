import 'package:flutter/material.dart';
import 'package:vastraloka/screens/history_page.dart';
import 'package:vastraloka/screens/tracking.dart';
import 'dart:async';

class CompletedPage extends StatefulWidget {
  const CompletedPage({Key? key}) : super(key: key);

  @override
  State<CompletedPage> createState() => _CompletedPageState();
}

class _CompletedPageState extends State<CompletedPage> {
  bool _isRight = true;
  late Timer _timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 221, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
        leading: IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(Icons.arrow_back),
          color: Color.fromRGBO(97, 163, 186, 1),
          iconSize: 25,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'History',
            style: TextStyle(
              color: Color.fromRGBO(97, 163, 186, 1),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Tracking(
                      endChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dikemas",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            "12 April 2024",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            "Barang yang akan didonasikan telah disiapkan, dikemas dengan aman, dan siap dikirim ke lokasi tujuan.",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      isFirst: true,
                      isLast: false,
                    ),
                    Tracking(
                      endChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dalam Perjalanan",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            "15 April 2024",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            "Paket donasi sudah berada dalam perjalanan menuju lokasi penerima donasi.",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      isFirst: false,
                      isLast: false,
                    ),
                    Tracking(
                      endChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dalam Perjalanan",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            "15 April 2024",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            "Paket donasi sudah berada dalam perjalanan menuju lokasi penerima donasi.",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      isFirst: false,
                      isLast: false,
                    ),
                    Tracking(
                      endChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tiba di lokasi tujuan",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            "17 April 2024",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            "Paket donasi sudah sampai di lokasi tujuan.",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      isFirst: false,
                      isLast: false,
                    ),
                    Tracking(
                      endChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Diterima",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            "17 April 2024",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            "Paket donasi sudah secara resmi diterima oleh penerima.",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      isFirst: false,
                      isLast: true,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(75, 0, 40, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 120,
                          height: 200,
                          child: Image.asset(
                            'assets/images/penerima1.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
