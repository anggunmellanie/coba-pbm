import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/widgets.dart';

class RoomChat extends StatefulWidget {
  const RoomChat({Key? key}) : super(key: key);

  @override
  State<RoomChat> createState() => _RoomChatState();
}

class _RoomChatState extends State<RoomChat> {
  bool _isRight = true;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _isRight = !_isRight;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

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
          padding: const EdgeInsets.only(left: 0),
          child: Text(
            'Pesan',
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView(
                  children: const [
                    ChatBubble(
                      isSender: true,
                      message: 'Apa aku bisa nambah baju bekas lagi min?',
                      time: '10:00 AM',
                      showTime: false,
                    ),
                    ChatBubble(
                      isSender: true,
                      message: 'Tadi ada yg keselip',
                      time: '10:00 AM',
                    ),
                    ChatBubble(
                      isSender: false,
                      message: 'Boleh banget kk',
                      time: '10:02 AM',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0), // Increase vertical padding
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromRGBO(97, 163, 186, 1), // Warna tepian untuk mengirim chat
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Type your message...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none, // Menghilangkan tepian bawah
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {
                          // Logic to send message
                        },
                        color: Color.fromRGBO(97, 163, 186, 1), // Warna ikon kirim
                      ),
                    ],
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

class ChatBubble extends StatelessWidget {
  final bool isSender;
  final String message;
  final String time;
  final bool showTime;

  const ChatBubble({
    required this.isSender,
    required this.message,
    required this.time,
    this.showTime = true, // Default to true, hide if explicitly set to false
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isSender
                  ? Color.fromRGBO(162, 197, 121, 1)
                  : Color.fromRGBO(255, 255, 221, 1),
              borderRadius: BorderRadius.circular(10),
              border: isSender
                  ? null
                  : Border.all(
                      color: Color.fromRGBO(162, 197, 121, 1),
                      width: 2.0,
                    ),
            ),
            child: Text(
              message,
              style: TextStyle(
                color: isSender
                    ? Color.fromRGBO(255, 255, 221, 1)
                    : Color.fromRGBO(162, 197, 121, 1),
              ),
            ),
          ),
          if (showTime) // Show time if showTime is true
            Column(
              children: [
                SizedBox(height: 5),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(162, 197, 121, 1),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
