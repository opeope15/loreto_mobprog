import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loreto_mobprob/constant.dart';
import 'package:loreto_mobprob/widget/custom_text.dart';

class NewsfeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int? numOfLikes;
  final bool? hasImage;

  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.hasImage,
  });

  @override
  Widget build(BuildContext context) {
    final screenUtilSp = ScreenUtil().setSp(10);
    final screenUtilWidth = ScreenUtil().setWidth(10);
    final screenUtilFontUserNameSize = ScreenUtil().setSp(15);
    final screenUtilIconSize = ScreenUtil().setSp(15);

    return Card(
      margin: EdgeInsets.all(screenUtilSp),
      child: Padding(
        padding: EdgeInsets.all(screenUtilSp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.person),
                SizedBox(width: screenUtilWidth),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: screenUtilFontUserNameSize,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ), // CustomText
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ), // CustomText
                        SizedBox(width: ScreenUtil().setWidth(3)),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: screenUtilIconSize,
                        ), // Icon
                      ],
                    ), // Row
                  ],
                ), // Column
                const Spacer(),
                const Icon(Icons.more_horiz),
              ],
            ), // Row
            SizedBox(height: ScreenUtil().setHeight(5)),
            // post Content
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ), // CustomText
            SizedBox(height: ScreenUtil().setHeight(5)),
            hasImage == true
                ? const Image(image: AssetImage('assets/images/iron_man.jpg'))
                : const SizedBox.shrink(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {
                    // print('Like button pressed');
                  },
                  icon: Icon(Icons.thumb_up, color: fbPrimary),
                  label: CustomText(
                    text: numOfLikes.toString(),
                    fontSize: ScreenUtil().setSp(12),
                    color: fbDarkPrimary,
                  ), // CustomText
                ), // TextButton.icon
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.comment, color: fbDarkPrimary),
                  label: CustomText(
                    text: 'Comment',
                    fontSize: ScreenUtil().setSp(12),
                    color: fbDarkPrimary,
                  ), // CustomText
                ), // TextButton.icon
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.redo, color: fbDarkPrimary),
                  label: CustomText(
                    text: 'Share',
                    fontSize: ScreenUtil().setSp(12),
                    color: fbDarkPrimary,
                  ), // CustomText
                ), // TextButton.icon
              ],
            ), // Row
            Row(
              children: [
                const Icon(Icons.person),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Container(
                  padding: EdgeInsets.fromLTRB(
                    ScreenUtil().setWidth(10),
                    0,
                    0,
                    0,
                  ), // EdgeInsets.fromLTRB
                  alignment: Alignment.centerLeft,
                  height: ScreenUtil().setHeight(25),
                  width: ScreenUtil().setWidth(330),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular(ScreenUtil().setSp(10)),
                    ), // BorderRadius.all
                  ), // BoxDecoration
                  child: CustomText(
                    text: 'Write a comment...',
                    fontSize: ScreenUtil().setSp(11),
                    color: Colors.grey,
                  ), // CustomText
                ), // Container
              ],
            ), // Row
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomText(
              text: 'View all comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ), // CustomText
          ],
        ), // Column
      ), // Padding
    ); // Card
  }
}