import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageTile extends StatefulWidget {
  final String message;
  final String sender;
  final bool sentByme;
  const MessageTile(
      {super.key,
      required this.message,
      required this.sender,
      required this.sentByme});

  @override
  State<MessageTile> createState() => _MessageTileState();
}

class _MessageTileState extends State<MessageTile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
            top: 4,
            bottom: 60,
            left: widget.sentByme ? 0 : 24,
            right: widget.sentByme ? 15 : 0),
        alignment:
            widget.sentByme ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          margin: widget.sentByme
              ? EdgeInsets.only(left: 30.h)
              : EdgeInsets.only(right: 30.h),
          padding:
              EdgeInsets.only(top: 17.h, bottom: 17.h, left: 20.h, right: 20.h),
          decoration: BoxDecoration(
              borderRadius: widget.sentByme
                  ? BorderRadius.only(
                      topLeft: Radius.circular(20.sp),
                      topRight: Radius.circular(20.sp),
                      bottomLeft: Radius.circular(20.sp))
                  : BorderRadius.only(
                      topLeft: Radius.circular(20.sp),
                      topRight: Radius.circular(20.sp),
                      bottomRight: Radius.circular(20.sp)),
              color: widget.sentByme
                  ? Theme.of(context).primaryColor
                  : Colors.grey[700]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.sender.toLowerCase(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 13,
                    letterSpacing: -0.2,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                widget.message,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16.h),
              )
            ],
          ),
        ),
      ),
    );
  }
}
