import '../widgets/notification.dart' as notif;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:7049801.
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: const Column(
        children: [
          notif.Notification(name: 'Wonyoung', post: 'Post', description: 'ka-VOGUE!',),
          Divider(),
          notif.Notification(name: 'Cherish', post: 'Post', description: 'hellooo',),
          Divider(),
          notif.Notification(name: 'Minju', post: 'Post', description: 'School gurl',),
          Divider(),
          notif.Notification(name: 'Yujin', post: 'Post', description: 'MC day <3',),
          Divider(),
          notif.Notification(name: 'Yuri', post: 'Post', description: 'Squid Game 2',),
          Divider(),
        ],
      ),
    );
  }
}
