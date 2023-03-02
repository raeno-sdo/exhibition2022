import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:exhibition2022/parts/drawer.dart';

class LiveStreamingPage extends StatelessWidget {
  const LiveStreamingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // ignore: no_leading_underscores_for_local_identifiers
    final _controller = YoutubePlayerController.fromVideoId(
      videoId: '9ycysKJ0JDM',
      autoPlay: false,
      params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '会場配信',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'NotoSansJP',
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
      drawer: const CommonDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: (size.width > 800) ? 40 : 17,
            right: (size.width > 800) ? 40 : 17,
            top: (size.width > 800) ? 100 : 30,
          ),
          child: ResponsiveRowColumn(
            rowCrossAxisAlignment: CrossAxisAlignment.start,
            columnCrossAxisAlignment: CrossAxisAlignment.start,
            layout:  ResponsiveWrapper.of(context).isSmallerThan(TABLET)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
            children: [
              ResponsiveRowColumnItem(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: (size.width > 800)
                      ? (size.width * 0.6)
                      : size.width * 1
                  ),
                  child: Column(
                    children: [
                      YoutubePlayer(
                          controller: _controller,
                          aspectRatio: 16/9,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 40, top: 15),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 0, 137, 193),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                              ),
                              onPressed: _youtubeLinkUrl,
                              icon: const FaIcon(
                                FontAwesomeIcons.angleRight,
                                size: 10,
                              ),
                              label: const Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 5),
                                child: Text(
                                  'YouTubeで見る',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'NotoSansJP',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    height: 1.2
                                  ),
                                )
                              )
                            ),
                          ),
                        )
                      ),
                    ]
                  ),
                ),
              ),
              ResponsiveRowColumnItem(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: (size.width > 800)
                      ? (size.width * 0.4 - 80)
                      : size.width * 1
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: (size.width > 800) ? 50 : 5,
                        top: 20
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'ウェブ・メディア科 2022年度 卒業・進級展示会',
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontFamily: 'NotoSansJP'
                          )
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 228, 231, 232),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            '展示会に参加できない方でも、会場の様子や学生の作品を見ていただけるように、当日の様子をLIVE配信します。\n定点カメラで1年生、2年生それぞれの教室を配信して、会場全体の雰囲気を感じてもらい、「お散歩タイム」ではスマートフォンを用いて学生が会場を歩き回って配信し、実際に参加者目線で展示会をお楽しみいただけます。',
                            style: TextStyle(
                              fontSize: (size.width > 800) ? 13.sp : 14,
                              color: const Color.fromARGB(255, 98, 98, 98),
                              height: 1.8,
                              letterSpacing: 1.1
                            )
                          ),
                        ),
                      ]
                    ),
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

final Uri _youtubeLink = Uri.parse('https://www.youtube.com/watch?v=_k6KnUHmZPA');
Future<void> _youtubeLinkUrl() async {
  if (!await launchUrl(_youtubeLink)) {
    throw Exception('このURLにはアクセスできません');
  }
}