// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';

import 'package:exhibition2022/pages/infectionControl.dart';
import 'package:exhibition2022/pages/works.dart';
import 'package:exhibition2022/parts/drawer.dart';

// ignore: must_be_immutable
class TopPage extends StatelessWidget {
  TopPage({super.key});

  final WorkScrollController = ScrollController();
  final GreetingScrollController = ScrollController();

  List<String> studentGreeting = [
    '進級・展示会リーダーを担当した岡です。今回の展示会は4年ぶりの完全対面になり、それに備えて1年生、2年生は全力で作品を制作してきました。今回は気になった作品の製作者と１対１で面談をできる部屋もご用意しております。是非作品に関して感想、意見などありましたらご活用ください。どうぞ、ごゆっくりご覧ください。',
    '展示会サイトの制作を担当させていただきました清水です。今年度のサイトは、Flutterを使用したアプリケーションとしても使うことがサイトです。情報を整理して、見やすいく直感的な操作ができるようなデザインを目指して制作しました。ぜひご覧ください！',
    'ティザーサイトの制作を担当させていただいた須田です。展示会までのカウントダウンタイマーや学校までのマップ等見ていただいた方に場所がどこなのか、学生たちはどのような作品を作ってきたのかなどの分かりやすさ、そして見本としての役割を果たせるよう考え制作させていただきました。ぜひご覧ください。',
    'ロゴの制作を担当した山口です。今回の展示会のテーマである「CHANGE」は変わることや挑戦をすること、さらには引き継ぐことなどを込めて設定しました。そこで、光ある恒星で未来の意味が強い今回のそのテーマを表現し、Aを東京電子らしい電波塔に見立て制作をしました。未来に"繋がる"ように今回の展示会をお楽しみいただければ幸いです。',
  ];

  List<String> teacherGreeting = [
    '昨年度のテーマ「NEXT」からバドンを受け取り本年度は「CHANGE」へ。学生達は変化を恐れず前へ進もうと強い意志を持ち日々勉学に励んでおります。開催期間中は、学生からも声がけをさせていただきますが、気になる点などございましたらお気軽にお声掛けください。開催にあたりご協力頂きました多くの皆様に深く感謝いたします。この展示会が皆様にとって有意義な素敵な時間となりますよう心よりお祈り申し上げます。',
    '今年は3年ぶりに完全対面で実施できることとなりました。コロナ感染症が５類へ移行し、徐々に私たちの生活にも変化が訪れます。そんな変化の年に社会へ旅立つ卒業生たちが「CHANGE」というテーマを掲げました。入学時から彼らを見ていて、逆境の中でも常に変化を続けることでこの２年間で大きく成長したと感じております。学生たちの「CHANGE」に込められた作品をぜひ直接ご覧いただけますと幸いです。',
    '昨年度から続く感染症の影響で、学びの環境が大きく変化しました。その中でも学生たちは、臨機応変に先生方や学生たちとコミュニケーションを図りながら作品制作をおこない、無事に卒業・進級制作展示会を開催することができました。本当に嬉しい気持ちでいっぱいです。展示会のテーマ「CHANGE」へ思いを込めた作品は、未来への可能性を感じます。本展示会の作品を通じて、学生たちの想いを感じてください。',
    '今年度も展示会という形で、学生たちの作品を発信できることを嬉しく思います。今回のテーマである「CHANGE」から私が思うことは、「何かを変える」ことには、勇気がいるということです。学生たちは2年間という短い期間の中で、沢山の困難に直面し、乗り超えるたびに姿を変えて成長してきました。そんな学生たちの作品が、学生たち自身や、ご参観いただける皆様にとって、何かの「CHANGE」に繋がれば幸いです。',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    ScreenUtil().setSp(28);

    return Scaffold(
      appBar: AppBar(),
      drawer: const CommonDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            // ファーストビュー
            SizedBox(
              height: size.height - 110,
              width: double.infinity,
              child: Container(
                height: size.height - 110,
                padding:  const EdgeInsets.all(
                  17
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg.jpg'),
                    fit: BoxFit.cover,
                    opacity: 0.5,
                  ),
                ),
                child: Card(
                  margin: EdgeInsets.zero,
                  elevation: 8,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox.expand(
                      child: Column(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/top01.jpg'),
                                              fit: BoxFit.cover,
                                              opacity: 0.9
                                            ),
                                          )
                                        )
                                      ),
                                      const SizedBox(width: 5),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/top02.jpg'),
                                              fit: BoxFit.cover,
                                              opacity: 0.9
                                            ),
                                          )
                                        )
                                      ),
                                      const SizedBox(width: 5),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/top03.jpg'),
                                              fit: BoxFit.cover,
                                              opacity: 0.9
                                            ),
                                          )
                                        )
                                      ),
                                    ],
                                  )
                                ),
                                const SizedBox(height: 5),
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          height: double.infinity,
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                            color: Colors.white
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '2023.3.3 ~ 3.4',
                                                  style: TextStyle(
                                                    fontSize: 25.sp,
                                                    letterSpacing: 1.3,
                                                    color: const Color.fromARGB(255, 98, 98, 98),
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'CormorantInfant',
                                                  )
                                                ),
                                                Text(
                                                  'CHANGE',
                                                  style: TextStyle(
                                                    fontSize: 60.sp,
                                                    color: const Color.fromARGB(255, 0, 137, 193),
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'CormorantInfant',
                                                    height: 1
                                                  )
                                                ),
                                                Text(
                                                  'Tokyo Electronics College',
                                                  style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: const Color.fromARGB(255, 98, 98, 98),
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'CormorantInfant',
                                                  )
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ),
                                      const SizedBox(width: 5),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/top04.jpg'),
                                              fit: BoxFit.cover,
                                              opacity: 0.9
                                            ),
                                          )
                                        )
                                      ),
                                    ],
                                  )
                                ),
                                const SizedBox(height: 5),
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/top05.jpg'),
                                              fit: BoxFit.cover,
                                              opacity: 0.9
                                            ),
                                          )
                                        )
                                      ),
                                      const SizedBox(width: 5),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/top06.jpg'),
                                              fit: BoxFit.cover,
                                              opacity: 0.9
                                            ),
                                          )
                                        )
                                      ),
                                      const SizedBox(width: 5),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/top07.jpg'),
                                              fit: BoxFit.cover,
                                              opacity: 0.9
                                            ),
                                          )
                                        )
                                      ),
                                    ],
                                  )
                                ),
                              ],
                            ),
                          ),
                          const  Divider(
                            color: Colors.grey,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(left: 3, bottom: 20),
                            child: RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  fontFamily: 'NotoSansJP',
                                ),
                                children: [
                                  TextSpan(
                                    text: '東京電子専門学校 ウェブ・メディア科\n',
                                    style: TextStyle(
                                      fontSize: (size.width > 800) ? 13.sp : 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                    )
                                  ),
                                  TextSpan(
                                    text: '卒業・進級制作展示会2022\n',
                                    style: TextStyle(
                                      fontSize: (size.width > 800) ? 25.sp : 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black
                                    )
                                  ),
                                  TextSpan(
                                    text: '東京電子専門学校の情報システム系の中に、ウェブ・メディア科があり、こちらでは毎年、年度内最後のイベントとして学生生活の集大成となる作品を制作し展示する、卒業・進級展示会を開催いたしております。',
                                    style: TextStyle(
                                      fontSize: (size.width > 800) ? 13.sp : 14,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 2,
                                      height: 1.8,
                                      color: const Color.fromARGB(255, 98, 98, 98),
                                    )
                                  ),
                                ]
                              )
                            ),
                          ),
                        ]
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // 今年のテーマ
            Padding(
              padding: EdgeInsets.only(
                left: (size.width > 800) ? 45 : 17,
                right: (size.width > 800) ? 45 : 17,
                top: (size.width > 800) ? 100 : 50,
                bottom: 30
              ),
              child: ResponsiveRowColumn(
                rowCrossAxisAlignment: CrossAxisAlignment.center,
                rowMainAxisAlignment: MainAxisAlignment.start,
                layout:  ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
                children: [
                  ResponsiveRowColumnItem(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: (size.width > 800)
                          ? size.width * 0.6
                          : size.width * 1
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              'CHANGE',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 0, 137, 193),
                                fontFamily: 'CormorantInfant',
                                fontWeight: FontWeight.w600,
                                fontSize: 45.sp,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              '卒業・進級制作展示会はこれまでの学びを発表する舞台です。',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'NotoSansJP',
                                fontWeight: FontWeight.w700,
                                height: 1.7,
                                fontSize: 22.sp,
                              ),
                            ),
                          ),
                          Text(
                            '新型コロナウイルスが流行り始めて早2年が経った今でも生活は以前と変わらず、日常が過ぎる中、これから社会を支えるようになる私たちが生活を変えられるように変わるべきタイミングをしっかりと見極めながら時にダイナミックに。時には一歩ずつでも新たな挑戦と変化を積み重ねてという意味を込めて「CHANGE」というテーマを掲げました。\nバトンを引き継ぐという部分に沿うように1年生と2年生を周りに回る衛星のようなもので表現し、加えて東京電子のイメージを出すためにテーマである「CHANGE」のAを電波等に見立て、ロゴを作成しました。',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 98, 98, 98),
                              fontFamily: 'NotoSansJP',
                              fontWeight: FontWeight.w500,
                              fontSize: (size.width > 800) ? 13.sp : 15,
                              height: 1.7,
                              letterSpacing: 1.1
                            ),
                          ),
                        ],
                      ),
                    )
                  ),
                  ResponsiveRowColumnItem(child: SizedBox(width: 40.w, height: 10,)),
                  ResponsiveRowColumnItem(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: (size.width > 800)
                          ? size.width * 0.4 - 70
                          : size.width * 1
                      ),
                      child: SizedBox(
                          width: (size.width > 800)
                          ? size.width * 0.2
                          : size.width * 0.7,
                        child: AspectRatio(
                          aspectRatio: 8/5,
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/logo.png'),
                                fit: BoxFit.contain
                              )
                            ),
                          ),
                        ),
                      ),
                    )
                  ),
                ]
              )
            ),

            // 展示作品
            Padding(
              padding: EdgeInsets.only(
                left: (size.width > 800) ? 50 : 17,
                top: (size.width > 800) ? 120 : 50,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: FaIcon(
                      FontAwesomeIcons.solidFolder,
                      color: const Color.fromARGB(255, 0, 137, 193),
                      size: 25.sp,
                    ),
                  ),
                  Text(
                    '展示作品',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 0, 137, 193),
                        fontWeight: FontWeight.w700,
                        fontSize: 25.sp,
                        fontFamily: 'NotoSansJP',
                      )
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: (size.width > 800) ? 40 : 17,
                right: (size.width > 800) ? 40 : 17
              ),
              width: double.infinity,
              child: RawScrollbar(
              thumbVisibility: true,
              trackVisibility: true,
              thickness: 10,
              thumbColor: const Color.fromARGB(255, 0, 137, 193),
              radius: const Radius.circular(10),
              trackRadius: const Radius.circular(10),
              trackColor: Colors.white,
              controller: WorkScrollController,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 18, top: 20),
                  scrollDirection: Axis.horizontal,
                  controller: WorkScrollController,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // 2年生
                      Card(
                        elevation: 3,
                        child: SizedBox(
                          height: (size.width > 800) ? 350 : 360,
                          width: (size.width > 800) ? (size.width * 0.5 - 65) : 330,
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: (size.width > 800) ? 230 : 250,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/groupPhoto-2.jpg'),
                                    fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 30,
                                      margin: const EdgeInsets.only(top: 10, left: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: const Color.fromARGB(255, 0, 137, 193),
                                      ),
                                      child: const Text(
                                        '2年生',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          height: 1.8,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'NotoSansJP',
                                        ),
                                      ),
                                    ),
                                  ]
                                ),
                              ),
                              Center(
                                child: Container(
                                  width: double.infinity,
                                  height: 120,
                                  padding: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 5),
                                  margin: const EdgeInsets.only(top: 170,left: 20, right: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white
                                  ),
                                  child: Text(
                                    '展示会に向けて作った卒業制作の作品達です。2年間学んできたことの集大成となる作品を悔いの残らぬよう作り上げました。',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 98, 98, 98),
                                      fontSize: (size.width > 800) ? 13.sp : 14,
                                      height: 1.7,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'NotoSansJP',
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 10, right: 10),
                                  child: Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(255, 0, 137, 193),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                      ),
                                      onPressed: () => pushNewScreen<dynamic>(
                                        context,
                                        screen: WorksPage(),
                                        withNavBar: false,
                                        pageTransitionAnimation: PageTransitionAnimation.cupertino,
                                      ),
                                      icon: const FaIcon(
                                        FontAwesomeIcons.angleRight,
                                        size: 10,
                                      ),
                                      label: const Padding(
                                        padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 5),
                                        child: Text(
                                          '作品一覧へ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'NotoSansJP',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                            height: 1.2
                                          ),
                                        )
                                      )
                                    ),
                                  ),
                                )
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      // 1年生
                      Card(
                        elevation: 3,
                        child: SizedBox(
                          height: (size.width > 800) ? 350 : 360,
                          width: (size.width > 800) ? (size.width * 0.5 - 65) : 330,
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: (size.width > 800) ? 230 : 250,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/groupPhoto-1.jpg'),
                                    fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 30,
                                      margin: const EdgeInsets.only(top: 10, left: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: const Color.fromARGB(255, 0, 137, 193),
                                      ),
                                      child: const Text(
                                        '1年生',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          height: 1.8,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'NotoSansJP',
                                        ),
                                      ),
                                    ),
                                  ]
                                ),
                              ),
                              Center(
                                child: Container(
                                  width: double.infinity,
                                  height: 120,
                                  padding: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 5),
                                  margin: const EdgeInsets.only(top: 170,left: 20, right: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white
                                  ),
                                  child: Text(
                                    '1年生は、入学から今までに制作した作品集、「ポートフォリオサイト」などを展示しています。私たちの1年間の成長を是非ご覧ください。',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 98, 98, 98),
                                      fontSize: (size.width > 800) ? 13.sp : 14,
                                      height: 1.7,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'NotoSansJP',
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 10, right: 10),
                                  child: Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(255, 0, 137, 193),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                      ),
                                      onPressed: _firstGraderUrl,
                                      icon: const FaIcon(
                                        FontAwesomeIcons.angleRight,
                                        size: 10,
                                      ),
                                      label: const Padding(
                                        padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 5),
                                        child: Text(
                                          '作品一覧へ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'NotoSansJP',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                            height: 1.2
                                          ),
                                        )
                                      )
                                    ),
                                  ),
                                )
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // 挨拶
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(
                  left: (size.width > 800) ? 40 : 0,
                  right: (size.width > 800) ? 40 : 0,
                  top: (size.width > 800) ? 50 : 0,
                ),
                child: ResponsiveRowColumn(
                  rowCrossAxisAlignment: CrossAxisAlignment.start,
                  layout:  ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
                  children: [
                    ResponsiveRowColumnItem(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: (size.width > 1000)
                            ? size.width * 0.45 - 70
                            : size.width * 1
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          // 実行委員挨拶
                          Padding(
                            padding: EdgeInsets.only(
                            left: (size.width > 800) ? 10 : 17,
                            top: 75,
                            bottom: 20
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8, top: 5),
                                child: FaIcon(
                                  FontAwesomeIcons.readme,
                                  color: const Color.fromARGB(255, 0, 137, 193),
                                  size: 27.sp,
                                ),
                              ),
                              Text(
                                '実行委員挨拶',
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 137, 193),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25.sp,
                                    fontFamily: 'NotoSansJP',
                                  )
                              )
                            ],
                          ),
                          ),
                          Accordion(
                            maxOpenSections: 1,
                            scaleWhenAnimating: true,
                            openAndCloseAnimation: true,
                            contentBackgroundColor: Colors.white,
                            headerBackgroundColor: const Color.fromARGB(255, 0, 137, 193),
                            sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                            sectionClosingHapticFeedback: SectionHapticFeedback.light,
                            children: [
                              AccordionSection(
                                isOpen: true,
                                leftIcon: const FaIcon(
                                  FontAwesomeIcons.solidAddressBook,
                                  color: Colors.white,
                                ),
                                header: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '岡 巳蘭',
                                        style: TextStyle(
                                          fontFamily: 'NotoSansJP',
                                          fontWeight: FontWeight.w500,
                                          fontSize: (size.width > 800) ? 18.sp : 20,
                                          color: Colors.white
                                        )
                                      ),
                                      const TextSpan(text: '\n'),
                                      TextSpan(
                                        text: '展示会実行委員長',
                                        style: TextStyle(
                                          fontFamily: 'NotoSansJP',
                                          fontWeight: FontWeight.w500,
                                          fontSize: (size.width > 800) ? 10.sp : 11,
                                          height: 1.8,
                                          color: Colors.white,
                                        )
                                      ),
                                    ]
                                  )
                                ),
                                content: Container(
                                  margin: const EdgeInsets.only(top: 8, bottom: 8, right: 10, left: 10),
                                  padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 15),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 247, 247, 247),
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Text(
                                    maxLines:  (size.width > 1000) ? 4 : 6,
                                    overflow: TextOverflow.ellipsis,
                                    studentGreeting[0],
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontFamily: 'NotoSansJP',
                                      fontWeight: FontWeight.w500,
                                      fontSize: (size.width > 800) ? 13.sp : 14,
                                      letterSpacing: 1.1,
                                      height: 1.8,
                                      color: const Color.fromARGB(255, 98, 98, 98),
                                    ),
                                  ),
                                )
                              ),
                              AccordionSection(
                                isOpen: false,
                                leftIcon: const FaIcon(
                                  FontAwesomeIcons.solidAddressBook,
                                  color: Colors.white,
                                ),
                                header: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '清水 豪也',
                                        style: TextStyle(
                                          fontFamily: 'NotoSansJP',
                                          fontWeight: FontWeight.w500,
                                          fontSize: (size.width > 800) ? 18.sp : 20,
                                          color: Colors.white
                                        )
                                      ),
                                      const TextSpan(text: '\n'),
                                      TextSpan(
                                        text: '展示会サイト',
                                        style: TextStyle(
                                          fontFamily: 'NotoSansJP',
                                          fontWeight: FontWeight.w500,
                                          fontSize: (size.width > 800) ? 10.sp : 11,
                                          height: 1.8,
                                          color: Colors.white,
                                        )
                                      ),
                                    ]
                                  )
                                ),
                                content: Container(
                                  margin: const EdgeInsets.only(top: 8, bottom: 8, right: 10, left: 10),
                                  padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 15),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 247, 247, 247),
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Text(
                                    maxLines:  (size.width > 1000) ? 4 : 6,
                                    overflow: TextOverflow.ellipsis,
                                    studentGreeting[1],
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontFamily: 'NotoSansJP',
                                      fontWeight: FontWeight.w500,
                                      fontSize: (size.width > 800) ? 13.sp : 14,
                                      letterSpacing: 1.1,
                                      height: 1.8,
                                      color: const Color.fromARGB(255, 98, 98, 98),
                                    ),
                                  ),
                                )
                              ),
                              AccordionSection(
                                isOpen: false,
                                leftIcon: const FaIcon(
                                  FontAwesomeIcons.solidAddressBook,
                                  color: Colors.white,
                                ),
                                header: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '須田 翔',
                                        style: TextStyle(
                                          fontFamily: 'NotoSansJP',
                                          fontWeight: FontWeight.w500,
                                          fontSize: (size.width > 800) ? 18.sp : 20,
                                          color: Colors.white
                                        )
                                      ),
                                      const TextSpan(text: '\n'),
                                      TextSpan(
                                        text: '展示会ティザーサイト',
                                        style: TextStyle(
                                          fontFamily: 'NotoSansJP',
                                          fontWeight: FontWeight.w500,
                                          fontSize: (size.width > 800) ? 10.sp : 11,
                                          height: 1.8,
                                          color: Colors.white,
                                        )
                                      ),
                                    ]
                                  )
                                ),
                                content: Container(
                                  margin: const EdgeInsets.only(top: 8, bottom: 8, right: 10, left: 10),
                                  padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 15),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 247, 247, 247),
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Text(
                                    maxLines:  (size.width > 1000) ? 4 : 6,
                                    overflow: TextOverflow.ellipsis,
                                    studentGreeting[2],
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontFamily: 'NotoSansJP',
                                      fontWeight: FontWeight.w500,
                                      fontSize: (size.width > 800) ? 13.sp : 14,
                                      letterSpacing: 1.1,
                                      height: 1.8,
                                      color: const Color.fromARGB(255, 98, 98, 98),
                                    ),
                                  ),
                                )
                              ),
                              AccordionSection(
                                isOpen: false,
                                leftIcon: const FaIcon(
                                  FontAwesomeIcons.solidAddressBook,
                                  color: Colors.white,
                                ),
                                header: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '山口 遥斗',
                                        style: TextStyle(
                                          fontFamily: 'NotoSansJP',
                                          fontWeight: FontWeight.w500,
                                          fontSize: (size.width > 800) ? 18.sp : 20,
                                          color: Colors.white
                                        )
                                      ),
                                      const TextSpan(text: '\n'),
                                      TextSpan(
                                        text: 'ロゴデザイン',
                                        style: TextStyle(
                                          fontFamily: 'NotoSansJP',
                                          fontWeight: FontWeight.w500,
                                          fontSize: (size.width > 800) ? 10.sp : 11,
                                          height: 1.8,
                                          color: Colors.white,
                                        )
                                      ),
                                    ]
                                  )
                                ),
                                content: Container(
                                  margin: const EdgeInsets.only(top: 8, bottom: 8, right: 10, left: 10),
                                  padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 15),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 247, 247, 247),
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Text(
                                    maxLines:  (size.width > 1000) ? 4 : 6,
                                    overflow: TextOverflow.ellipsis,
                                    studentGreeting[3],
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontFamily: 'NotoSansJP',
                                      fontWeight: FontWeight.w500,
                                      fontSize: (size.width > 800) ? 13.sp : 14,
                                      letterSpacing: 1.1,
                                      height: 1.8,
                                      color: const Color.fromARGB(255, 98, 98, 98),
                                    ),
                                  ),
                                )
                              ),
                            ]
                          ),
                          ],
                        ),
                      ),
                    ),
                    const ResponsiveRowColumnItem(
                      child: SizedBox(width: 30)
                    ),
                    ResponsiveRowColumnItem(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: (size.width > 1000)
                            ? (size.width * 0.55) - 40
                            : size.width * 1,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          // 教員挨拶
                          Padding(
                            padding: EdgeInsets.only(
                              top: (size.width > 800) ? 75 : 20, left: 17, bottom: 14
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8, top: 5),
                                  child: FaIcon(
                                    FontAwesomeIcons.readme,
                                    color: const Color.fromARGB(255, 0, 137, 193),
                                    size: 27.sp,
                                  ),
                                ),
                                Text(
                                  '教員挨拶',
                                  style: TextStyle(
                                      color: const Color.fromARGB(255, 0, 137, 193),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25.sp,
                                      fontFamily: 'NotoSansJP',
                                    )
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 14, right: 14),
                            width: double.infinity,
                            height: (size.width > 1000) ? 480 : null,
                            child: RawScrollbar(
                            thumbVisibility: true,
                            trackVisibility: true,
                            thickness: 10,
                            thumbColor: const Color.fromARGB(255, 0, 137, 193),
                            radius: const Radius.circular(10),
                            trackRadius: const Radius.circular(10),
                            trackColor: Colors.white,
                            controller: GreetingScrollController,
                              child: SingleChildScrollView(
                                padding: const EdgeInsets.only(bottom: 18, top: 20),
                                scrollDirection: Axis.horizontal,
                                controller: GreetingScrollController,
                                child: Row(
                                  children: <Widget>[
                                    Card(
                                      elevation: 3,
                                      child: SizedBox(
                                        height: (size.width > 1000) ? double.infinity : 410,
                                        width: (size.width > 1000) ? 420 : 360,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: const BoxDecoration(
                                                color: Color.fromARGB(255, 0, 137, 193),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5)
                                                )
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: (size.width > 800) ? 130 : 100,
                                                    width: (size.width > 800) ? 130 : 100,
                                                    decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                        image:  AssetImage('assets/images/facePhoto/teacher01.jpg'),
                                                        fit: BoxFit.cover
                                                      )
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 20),
                                                    child: RichText(
                                                      text: TextSpan(
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: 'NotoSansJP',
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w500,
                                                          height: 1.7,
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                            text: 'Teacher 01\n',
                                                            style: TextStyle(
                                                              fontSize: (size.width > 800) ? 12.sp : 12,
                                                            )
                                                          ),
                                                          TextSpan(
                                                            text: '榎本 博文\n',
                                                            style: TextStyle(
                                                              fontSize: (size.width > 800) ? 18.sp : 20,
                                                              fontWeight: FontWeight.w700
                                                            )
                                                          ),
                                                          TextSpan(
                                                            text: 'ウェブ・メディア科 学科長',
                                                            style: TextStyle(
                                                              fontSize: (size.width > 800) ? 11.sp : 11,
                                                            )
                                                          ),
                                                        ]
                                                      )
                                                    ),
                                                  )
                                                ],
                                              )
                                            ),
                                            Expanded(
                                              child: Container(
                                                margin: const EdgeInsets.only(top: 8, bottom: 8, right: 10, left: 10),
                                                padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 15),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  color: const Color.fromARGB(255, 247, 247, 247),
                                                ),
                                                child: SingleChildScrollView(
                                                  child: Text(
                                                    teacherGreeting[0],
                                                    textAlign: TextAlign.justify,
                                                    style: TextStyle(
                                                      color: const Color.fromARGB(255, 98, 98, 98),
                                                      fontSize: (size.width > 800) ? 13.sp : 14,
                                                      letterSpacing: 1.1,
                                                      height: 1.8,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 30),
                                    Card(
                                      elevation: 3,
                                      child: SizedBox(
                                        height: (size.width > 1000) ? double.infinity : 410,
                                        width: (size.width > 1000) ? 420 : 360,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: const BoxDecoration(
                                                color: Color.fromARGB(255, 0, 137, 193),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5)
                                                )
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: (size.width > 800) ? 130 : 100,
                                                    width: (size.width > 800) ? 130 : 100,
                                                    decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                        image:  AssetImage('assets/images/facePhoto/teacher02.jpg'),
                                                        fit: BoxFit.cover
                                                      )
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 20),
                                                    child: RichText(
                                                      text: TextSpan(
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: 'NotoSansJP',
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w500,
                                                          height: 1.7,
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                            text: 'Teacher 02\n',
                                                            style: TextStyle(
                                                              fontSize: (size.width > 800) ? 12.sp : 12,
                                                            )
                                                          ),
                                                          TextSpan(
                                                            text: '山田 忍\n',
                                                            style: TextStyle(
                                                              fontSize: (size.width > 800) ? 18.sp : 20,
                                                              fontWeight: FontWeight.w700
                                                            )
                                                          ),
                                                          TextSpan(
                                                            text: 'ウェブ・メディア科 教員',
                                                            style: TextStyle(
                                                              fontSize: (size.width > 800) ? 11.sp : 11,
                                                            )
                                                          ),
                                                        ]
                                                      )
                                                    ),
                                                  )
                                                ],
                                              )
                                            ),
                                            Expanded(
                                              child: Container(
                                                margin: const EdgeInsets.only(top: 8, bottom: 8, right: 10, left: 10),
                                                padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 15),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  color: const Color.fromARGB(255, 247, 247, 247),
                                                ),
                                                child: SingleChildScrollView(
                                                  child: Text(
                                                    teacherGreeting[1],
                                                    textAlign: TextAlign.justify,
                                                    style: TextStyle(
                                                      color: const Color.fromARGB(255, 98, 98, 98),
                                                      fontSize: (size.width > 800) ? 13.sp : 14,
                                                      letterSpacing: 1.1,
                                                      height: 1.8,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 30),
                                    Card(
                                      elevation: 3,
                                      child: SizedBox(
                                        height: (size.width > 1000) ? double.infinity : 410,
                                        width: (size.width > 1000) ? 420 : 360,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: const BoxDecoration(
                                                color: Color.fromARGB(255, 0, 137, 193),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5)
                                                )
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: (size.width > 800) ? 130 : 100,
                                                    width: (size.width > 800) ? 130 : 100,
                                                    decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                        image:  AssetImage('assets/images/facePhoto/teacher03.jpg'),
                                                        fit: BoxFit.cover
                                                      )
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 20),
                                                    child: RichText(
                                                      text: TextSpan(
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: 'NotoSansJP',
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w500,
                                                          height: 1.7,
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                            text: 'Teacher 03\n',
                                                            style: TextStyle(
                                                              fontSize: (size.width > 800) ? 12.sp : 12,
                                                            )
                                                          ),
                                                          TextSpan(
                                                            text: '高橋 義博\n',
                                                            style: TextStyle(
                                                              fontSize: (size.width > 800) ? 18.sp : 20,
                                                              fontWeight: FontWeight.w700
                                                            )
                                                          ),
                                                          TextSpan(
                                                            text: 'ウェブ・メディア科 教員',
                                                            style: TextStyle(
                                                              fontSize: (size.width > 800) ? 11.sp : 11,
                                                            )
                                                          ),
                                                        ]
                                                      )
                                                    ),
                                                  )
                                                ],
                                              )
                                            ),
                                            Expanded(
                                              child: Container(
                                                margin: const EdgeInsets.only(top: 8, bottom: 8, right: 10, left: 10),
                                                padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 15),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  color: const Color.fromARGB(255, 247, 247, 247),
                                                ),
                                                child: SingleChildScrollView(
                                                  child: Text(
                                                    teacherGreeting[2],
                                                    textAlign: TextAlign.justify,
                                                    style: TextStyle(
                                                      color: const Color.fromARGB(255, 98, 98, 98),
                                                      fontSize: (size.width > 800) ? 13.sp : 14,
                                                      letterSpacing: 1.1,
                                                      height: 1.8,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 30),
                                    Card(
                                      elevation: 3,
                                      child: SizedBox(
                                        height: (size.width > 1000) ? double.infinity : 410,
                                        width: (size.width > 1000) ? 420 : 360,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: const BoxDecoration(
                                                color: Color.fromARGB(255, 0, 137, 193),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5)
                                                )
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: (size.width > 800) ? 130 : 100,
                                                    width: (size.width > 800) ? 130 : 100,
                                                    decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                        image:  AssetImage('assets/images/facePhoto/teacher04.jpg'),
                                                        fit: BoxFit.cover
                                                      )
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 20),
                                                    child: RichText(
                                                      text: TextSpan(
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: 'NotoSansJP',
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w500,
                                                          height: 1.7,
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                            text: 'Teacher 04\n',
                                                            style: TextStyle(
                                                              fontSize: (size.width > 800) ? 12.sp : 12,
                                                            )
                                                          ),
                                                          TextSpan(
                                                            text: '黒澤 純一\n',
                                                            style: TextStyle(
                                                              fontSize: (size.width > 800) ? 18.sp : 20,
                                                              fontWeight: FontWeight.w700
                                                            )
                                                          ),
                                                          TextSpan(
                                                            text: 'ウェブ・メディア科 教員',
                                                            style: TextStyle(
                                                              fontSize: (size.width > 800) ? 11.sp : 11,
                                                            )
                                                          ),
                                                        ]
                                                      )
                                                    ),
                                                  )
                                                ],
                                              )
                                            ),
                                            Expanded(
                                              child: Container(
                                                margin: const EdgeInsets.only(top: 8, bottom: 8, right: 10, left: 10),
                                                padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 15),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  color: const Color.fromARGB(255, 247, 247, 247),
                                                ),
                                                child: SingleChildScrollView(
                                                  child: Text(
                                                    teacherGreeting[3],
                                                    textAlign: TextAlign.justify,
                                                    style: TextStyle(
                                                      color: const Color.fromARGB(255, 98, 98, 98),
                                                      fontSize: (size.width > 800) ? 13.sp : 14,
                                                      letterSpacing: 1.1,
                                                      height: 1.8,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // 感染対策
            Padding(
              padding: EdgeInsets.only(
                top: 75,
                left: (size.width > 800) ? 50 : 17,
                bottom: 20
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: FaIcon(
                      FontAwesomeIcons.virusCovid,
                      color: const Color.fromARGB(255, 0, 137, 193),
                      size: 25.sp,
                    ),
                  ),
                  Text(
                    '感染対策',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 0, 137, 193),
                        fontWeight: FontWeight.w700,
                        fontSize: 25.sp,
                        fontFamily: 'NotoSansJP',
                      )
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: ResponsiveRowColumn(
                rowCrossAxisAlignment: CrossAxisAlignment.center,
                layout:  ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
                children: [
                  ResponsiveRowColumnItem(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: (size.width > 800)
                        ? size.width * 0.6
                        : size.width * 1
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: (size.width > 800) ? 40 : 17,
                          right: (size.width > 800) ? 40 : 17
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 10),
                                    height: (size.width > 800) ? 65.w : 135.w,
                                    width: (size.width > 800) ? 65.w : 135.w,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/measures01.png'),
                                        fit: BoxFit.cover
                                      ),
                                    )
                                  ),
                                  Text(
                                    '定期的な各所の消毒実施',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 0, 137, 193),
                                      fontFamily: 'NotoSansJP',
                                      fontWeight: FontWeight.w700,
                                      fontSize: (size.width > 800) ? 11.sp : 11,
                                    ),
                                  )
                                ]
                              ),
                            ),
                            SizedBox(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 10),
                                    height: (size.width > 800) ? 65.w : 135.w,
                                    width: (size.width > 800) ? 65.w : 135.w,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/measures02.png'),
                                        fit: BoxFit.cover
                                      ),
                                    )
                                  ),
                                  Text(
                                    '消毒用アルコールの設置',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 0, 137, 193),
                                      fontFamily: 'NotoSansJP',
                                      fontWeight: FontWeight.w700,
                                      fontSize: (size.width > 800) ? 11.sp : 11,
                                    ),
                                  )
                                ]
                              ),
                            ),
                            SizedBox(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 10),
                                    height: (size.width > 800) ? 65.w : 135.w,
                                    width: (size.width > 800) ? 65.w : 135.w,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/measures03.png'),
                                        fit: BoxFit.cover
                                      ),
                                    )
                                  ),
                                  Text(
                                    '学生の体調管理',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 0, 137, 193),
                                      fontFamily: 'NotoSansJP',
                                      fontWeight: FontWeight.w700,
                                      fontSize: (size.width > 800) ? 11.sp : 11,
                                    ),
                                  )
                                ]
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const ResponsiveRowColumnItem(child: SizedBox(width: 20)),
                  ResponsiveRowColumnItem(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: (size.width > 800)
                        ? size.width * 0.4 - 20
                        : size.width * 1
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: (size.width > 800) ? 60 : 50,
                          left: (size.width > 800) ? 0 : 50,

                        ),
                        child: Column(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Text(
                                  '来場の前に検温をしていただき、37.5度以上の発熱がある場合は来場をお控えください。また、体調に異変を感じている方は発熱の有無に関わらず来場をお控えください。',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 98, 98, 98),
                                    fontFamily: 'NotoSansJP',
                                    fontWeight: FontWeight.w500,
                                    fontSize: (size.width > 800) ? 13.sp : 14,
                                    height: 1.7,
                                  ),
                                ),
                              )
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 50, right: 10, top: 40),
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(255, 0, 137, 193),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                    ),
                                    onPressed: () => pushNewScreen<dynamic>(
                                      context,
                                      screen: const InfectionControlPage(),
                                      withNavBar: false,
                                      pageTransitionAnimation: PageTransitionAnimation.cupertino,
                                    ),
                                    icon: const FaIcon(
                                      FontAwesomeIcons.angleRight,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                    label: const Padding(
                                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 5),
                                      child: Text(
                                        '詳しくはこちら',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'NotoSansJP',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          height: 1.2,
                                          color: Colors.white
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
                  ),
                ]
              ),
            ),

            // コピーライト
            const Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  '© shimizu web media All Rights Reserved.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 137, 193),
                    fontFamily: 'NotoSansJP',
                    fontWeight: FontWeight.w500,
                  ),
                )
              )
            ),
          ],
        ),
      ),
    );
  }
}

final Uri _firstGrader = Uri.parse('https://2022graduation.tokyo-ec.net/first');
Future<void> _firstGraderUrl() async {
  if (!await launchUrl(_firstGrader)) {
    throw Exception('このURLにはアクセスできません');
  }
}