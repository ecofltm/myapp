import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../widgets/customfont.dart'; // Ensure FB_DARK_PRIMARY is defined here
// Ensure CustomFont widget is imported
 
class PostCard extends StatelessWidget {
  final String userName;
  final String postDate;
  final String postContent;
  final String postImage;
  final String profileImageUrl;
 
 
  const PostCard(
      {super.key,
      required this.userName,
      required this.postContent,
      required this.postDate,
      required this.postImage,
      this.profileImageUrl = ''});
 
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: profileImageUrl.isNotEmpty
                  ? NetworkImage(profileImageUrl)
                  : null,
                  backgroundColor: Colors.grey,
                ),
                SizedBox(width: ScreenUtil().setSp(10)),
                Row(
                  children: [
                    SizedBox(width: ScreenUtil().setSp(10)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomFont(
                          //user name
                          text: userName,
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.left,
                        ),
                        CustomFont(
                          //post date
                          text: postDate,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setSp(6)), //Post Description
            CustomFont(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setSp(10)), //Image Post
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.asset(postImage, fit: BoxFit.cover),
            ),
            SizedBox(height: ScreenUtil().setSp(5)), // like and Comment
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.thumb_up,
                    color:
                        FB_DARK_PRIMARY, // Ensure FB_DARK_PRIMARY is defined in constants
                  ),
                  label: CustomFont(
                    text: '100',
                    fontSize: ScreenUtil().setSp(12),
                    color: FB_DARK_PRIMARY,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.comment,
                    color:
                        FB_DARK_PRIMARY, // Ensure FB_DARK_PRIMARY is defined in constants
                  ),
                  label: CustomFont(
                    text: 'Comment',
                    fontSize: ScreenUtil().setSp(12),
                    color: FB_DARK_PRIMARY,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share_sharp,
                    color:
                        FB_DARK_PRIMARY, // Ensure FB_DARK_PRIMARY is defined in constants
                  ),
                  label: CustomFont(
                    text: 'Share',
                    fontSize: ScreenUtil().setSp(12),
                    color: FB_DARK_PRIMARY,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}