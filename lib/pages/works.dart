import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import 'package:exhibition2022/pages/detail.dart';


// ignore: must_be_immutable
class WorksPage extends StatelessWidget {
  WorksPage({super.key});
  // ignore: non_constant_identifier_names
  List web = [
    <String>['8','assets/images/thumbnail/g209/g209_1.jpg','詐欺サイト注意喚起サイト','長谷川 怜'],
    <String>['9','assets/images/thumbnail/h201/h201_1.jpg','うどん屋茶のまサイト','遠藤 嵐楽'],
    <String>['11','assets/images/thumbnail/h203/h203_1.jpg','Webリテラシー検定合格応援サイト','小園 佑也'],
    <String>['12','assets/images/thumbnail/h204/h204_1.jpg','入退室管理システム','篠崎 裕樹'],
    <String>['13','assets/images/thumbnail/h205/h205_1.jpg','卒業・進級制作展示会2022サイト','清水 豪也'],
    <String>['14','assets/images/thumbnail/h206/h206_1.jpg','学校ブログサイト改修','須田 翔'],
    <String>['15','assets/images/thumbnail/h207/h209_1.jpg','埼玉東西魅力度バトル','関口 雅人'],
    <String>['16','assets/images/thumbnail/h208/h208_1.jpg','展示会アンケートフォーム','髙橋 翔太'],
    <String>['17','assets/images/thumbnail/h207/h209_1.jpg','埼玉東西魅力度バトル','千野 翔太'],
    // <String>['18','assets/images/thumbnail/none.jpg','ポートフォリオ','藤田 琉来'],
    <String>['19','assets/images/thumbnail/h211/h211_1.jpg','むらおかボードゲーム紹介サイト','村岡 拓真'],
    <String>['20','assets/images/thumbnail/h212/h212_1.jpg','Energystics','山口 遥斗'],
    <String>['21','assets/images/thumbnail/h213/h213_1.jpg','JavaBronze資格取得まとめサイト','渡部 流星'],
  ];
  List portfolio= [
    <String>['2','assets/images/thumbnail/g203/g203_1.jpg','イトウアキナリのポートフォリオ','伊東 明成'],
    <String>['4','assets/images/thumbnail/g205/G205_01.jpg','ポートフォリオ','篠崎 真希'],
    <String>['7','assets/images/thumbnail/g208/g208_1.jpg','ゲーム企画書','田中 遼'],
    <String>['10','assets/images/thumbnail/h202/h202_1.jpg','卒業・進級展示会2022プロデュース','岡 巳蘭'],
  ];
  List game = [
    <String>['0','assets/images/thumbnail/g201/g201_1.jpg','TPD','池田 駿'],
    <String>['1','assets/images/thumbnail/g202/g202_1.jpg','EpidemicTown','一条 倫太郎'],
    <String>['3','assets/images/thumbnail/g204/g204_1.jpg','EpidemicTown','奥村 尊'],
    <String>['5','assets/images/thumbnail/g206/g206_1.jpg','俊足のシャトルラン','杉本 優斗'],
  ];
  List movie= [
    <String>['6','assets/images/thumbnail/g207/g207_1.jpg','展示会広報動画','高橋 玲風'],
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            '2年生',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'NotoSansJP',
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          bottom: const TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            labelStyle: TextStyle(
              fontSize: 12,
              fontFamily: 'NotoSansJP',
              fontWeight: FontWeight.w500
            ),
            tabs: <Widget>[
              Tab(
                text: 'Webコンテンツ',
                icon: Icon(
                  Icons.devices,
                  size: 30,
                ),
              ),
              Tab(
                text: 'ポートフォリオ',
                icon: FaIcon(FontAwesomeIcons.bookOpen),
              ),
              Tab(
                text: 'ゲーム制作',
                icon: FaIcon(FontAwesomeIcons.gamepad),
              ),
              Tab(
                text: '動画制作',
                icon: FaIcon(FontAwesomeIcons.video),
              ),
            ]
          ),
        ),
        body: TabBarView(
          children: [
            // web
            GridView.builder(
              padding: const EdgeInsets.only(left: 17, right: 17, top: 50, bottom: 50),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 640,
                childAspectRatio: (16 / 11),
                crossAxisSpacing: 30,
                mainAxisSpacing: 20,
              ),
              itemCount: web.length,
              itemBuilder: (BuildContext context, int index) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    pushNewScreen<dynamic>(
                      context,
                      screen: DetailPage(web[index][0]),
                      withNavBar: false,
                      pageTransitionAnimation: PageTransitionAnimation.cupertino,
                    );
                  },
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5)
                            ),
                            image: DecorationImage(
                              image: AssetImage(web[index][1]),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          web[index][2],
                        ),
                        subtitle: Text(
                          web[index][3],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            // portfolio
            GridView.builder(
              padding: const EdgeInsets.only(left: 17, right: 17, top: 50, bottom: 50),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 640,
                childAspectRatio: (16 / 11),
                crossAxisSpacing: 30,
                mainAxisSpacing: 20,
              ),
              itemCount: portfolio.length,
              itemBuilder: (BuildContext context, int index) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    pushNewScreen<dynamic>(
                      context,
                      screen: DetailPage(portfolio[index][0]),
                      withNavBar: false,
                      pageTransitionAnimation: PageTransitionAnimation.cupertino,
                    );
                  },
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5)
                            ),
                            image: DecorationImage(
                              image: AssetImage(portfolio[index][1]),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          portfolio[index][2],
                        ),
                        subtitle: Text(
                          portfolio[index][3],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            // game
            GridView.builder(
              padding: const EdgeInsets.only(left: 17, right: 17, top: 50, bottom: 50),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 640,
                childAspectRatio: (16 / 11),
                crossAxisSpacing: 30,
                mainAxisSpacing: 20,
              ),
              itemCount: game.length,
              itemBuilder: (BuildContext context, int index) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    pushNewScreen<dynamic>(
                      context,
                      screen: DetailPage(game[index][0]),
                      withNavBar: false,
                      pageTransitionAnimation: PageTransitionAnimation.cupertino,
                    );
                  },
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5)
                            ),
                            image: DecorationImage(
                              image: AssetImage(game[index][1]),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          game[index][2],
                        ),
                        subtitle: Text(
                          game[index][3],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            // movie
            GridView.builder(
              padding: const EdgeInsets.only(left: 17, right: 17, top: 50, bottom: 50),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 640,
                childAspectRatio: (16 / 11),
                crossAxisSpacing: 30,
                mainAxisSpacing: 20,
              ),
              itemCount: movie.length,
              itemBuilder: (BuildContext context, int index) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    pushNewScreen<dynamic>(
                      context,
                      screen: DetailPage(movie[index][0]),
                      withNavBar: false,
                      pageTransitionAnimation: PageTransitionAnimation.cupertino,
                    );
                  },
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5)
                            ),
                            image: DecorationImage(
                              image: AssetImage(movie[index][1]),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          movie[index][2],
                        ),
                        subtitle: Text(
                          movie[index][3],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

