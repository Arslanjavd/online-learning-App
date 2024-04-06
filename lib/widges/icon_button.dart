import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IconButtons extends StatelessWidget {
  final String imageurl;
  final String link;
  const IconButtons({super.key, required this.imageurl, required this.link});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse(link), mode: LaunchMode.inAppWebView);
      },
      child: CircleAvatar(
        backgroundImage: AssetImage(imageurl),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
