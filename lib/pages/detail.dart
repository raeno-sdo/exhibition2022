// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class DetailPage extends StatefulWidget {
  const DetailPage(this.num, {super.key});
  final String num;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int value = 0;

  List info = [
    <String>[
      'TPD',
      '敵のアジトにドローンで侵入し、敵に奪われた宝を取り返すゲームです。操作が苦手な人でもクリアできる様にその場で数秒止まっていると透明になり敵に見つからない様になっています。スコアによってランク付けされているのでぜひ高得点を目指して下さい！',
      'Unity、c#、Tinkercad','・シューターゲームをしたい人','ドローンに銃を撃たせたいのだがアセットに付いていない','３Dモデルを作成できるサイトで３Dモデルを作成した'],
    <String>[
      'EpidemicTown',
      '医者側と感染者側に分かれて遊ぶ対戦型ステルスゲームです。医者側は、感染者を治療しつつ対戦相手を探します。感染者側は、医者側に見つからないように感染者を増やしていきます。それぞれの陣営によってプレイ中の動きが変わってくるので、ぜひ２つの陣営でプレイしてみてください',
      'Unity、c#','・暇な人\n・隙間時間に対戦ゲームしたい人','チームでやる上での進行状況の共有やゲーム難易度のバランス調整','細かく連絡をとり逐一報告する。クラスの人にやってもらい意見を取り入れた'],
    <String>[
      'イトウアキナリのポートフォリオ',
      '今までにつくってきたゲームやゲームの企画書をまとめたポートフォリオを卒業制作として制作しました。それをどのようにして乗り越えたか、企画書やゲームを作成する時、どのような苦労をしたのかをポートフォリオに書き、今までに作ってきた企画書を修正＆追加する。',
      'Unity、XD、c#、Illustrator、Photoshop','・企業関係者\n・後輩','見にきてくれる人達に対してこれまでに作ってきた作品をどのように見せるか。','楽しみながらゲームを作ってきたことが伝わるような作品にする。'],
    <String>[
      'EpidemicTown',
      '医者側と感染者側に分かれて遊ぶ対戦型ステルスゲームです。医者側は、感染者を治療しつつ対戦相手を探します。感染者側は、医者側に見つからないように感染者を増やしていきます。それぞれの陣営によってプレイ中の動きが変わってくるので、ぜひ２つの陣営でプレイしてみてください',
      'Unity、c#','・暇な人\n・隙間時間に対戦ゲームしたい人','チームでやる上での進行状況の共有やゲーム難易度のバランス調整','細かく連絡をとり逐一報告する。クラスの人にやってもらい意見を取り入れた'],
    <String>[
      'ポートフォリオ',
      'ポートフォリオを制作いたしました。この学校に入学して、私が学んだこと。それにより、入学時から今日まで、どのような点が成長し、身についたのか。なるべく全てに触れ、軽くではありますが授業内容に対する感想なども載せてあります。',
      'Illustrator','・企業関係者の方','思っていた以上に、載せたい内容がありました。それは、レイアウトに支障が出るほどで、削る惜しさに苦しみました。','友人に見せてみたら一緒に考えてくれて、悩ませていた頭もスッキリできましたし、一石二鳥で解決しました。'],
    <String>[
      '俊足のシャトルラン',
      '体力テストで行われる「シャトルラン」をオンラインで対戦できるようにしたゲームです。基本のルールはシャトルランと同じですが、ステージに障害物がランダムに生成されるためそれを避けながら走るゲームとなっています。遊ぶには二人必要なので対戦相手を探してみてください！',
      'Unity、c#、ニフティクラウド、PUN','小、中学生','ターゲットの年齢層が低めなので、UIをいかに見やすくするか、簡単に操作できるかを気にして作りました。','ボタンを立体にして、押したくなるようなデザインにしました。操作性はジャイロやキーボード等を使用することで複雑な操作を必要としないようにしました。'],
    <String>[
      '展示会広報動画',
      '本展示会の開催告知や、今回学生たちが制作した作品を紹介する動画をYouTubeに投稿し、当日はそれぞれの教室を映したり、スマートフォンを用いて、実際に現場の雰囲気を味わってもらえるようなライブ配信を行います。',
      'Adobe Premiere Pro、Adobe After Effects、OBS','・卒業生\n・企業関係者','動画の印象によって展示会に対するイメージが決まってしまうので、どんな動画にするか悩みました。','展示会のテーマやロゴに合わせた配色や文章を簡潔にし、動画で伝えたいことをストレートに伝えました。'],
    <String>[
      'ゲーム企画書',
      'ゲーム制作まではしていないけど、作りたいゲームを企画書としてまとめた作品になりました。企画書に書いているストーリーやキャラの設定などにも注目してくれたらありがたいです。ゲームではない分見て楽しめるような企画書にしていこうと作ってる作品です。',
      'Illustrator','・中高校生\n・卒業生','ゲームではなく企画書を展示するという事なので見た目をどれだけ綺麗に面白く出来るかという所で苦戦しました。','デザイン等に関して自分なりに学び直したり、自分以外にも制作中の物を見てもらい意見を取り入れて出来る限り自己満足で終わらないように制作しました。'],
    <String>[
      '詐欺サイト注意喚起サイト',
      '近年、新型コロナウイルスの影響により、インターネットの使用率が大幅に増加している。そこで、インターネットによる詐欺被害を少しでも減らす事を目的とし、実際にフィッシング詐欺サイトなどを自分で作成。そうして、インターネットの危険性や詐欺サイトの見分け方を伝える事を最終目標とする。',
      'HTML、CSS、PHP','・インターネットを利用する全ての人','ゲームコースとして学習していたので、最後の卒業制作にウェブサイトを作るのは苦労しました。','1年生の時に使用していた教科書を見返したり、友人や先生に分からないことを聞くなどして制作を進めました。'],
    <String>[
      'うどん屋茶のまサイト',
      '母親が経営しているうどん屋茶のまというお店を元に作ったサイトです。お店の良さをより知ってもらいたいという思いから、新しくサイトを作ろうと考え企画しました。メニューページではソート機能を実装し見やすいサイトになるよう工夫しました。',
      'HTML、CSS、JS、PHP、Photoshop','・20〜30代の社会人','メニューページのソート機能',''],
    <String>[
      '卒業・進級展示会2022プロデュース',
      '卒業・進級展示会2022に向けた企画、運営をしました。主にスケジュール管理やレビューなどをさせていただきました。会場では企業の方々と学生が関わりを持てるように面談ブースを用意させていただきました。また企画書には概要、反省点や今後の展示会のための提案書を作成させていただきました。展示会をごゆっくりご覧ください！',
      'マネジメント能力','・来場していただく企業関係者\n・保護者\n・高校生','作品を全て見てもらうためには。企業関係者と話をできる場を作るには','座席表を工夫し順番に見てもらう。面談ブースを設け学生と話す機会を設ける'],
    <String>[
      'Webリテラシー検定合格応援サイト',
      'Webリテラシーの資格を取得したい人に向けたレビューサイトです。自分が受験した際に心がけた点や、注意した点など参考になるような内容を載せています。また、練習問題も載せているので少しでも気になれば挑戦してみてください。',
      'HTML、CSS、JS、Illustrator、Photoshop','・資格を増やしたい人\n・この資格を取りたい人','資格を取得したい人の参考になるサイトに出来るか。機能は良くできるか。','色々なサイトを調べ参考にし、自分が取得した経験を活かして内容を考える。'],
    <String>[
      '入退室管理システム',
      '学生証を用いた入退室管理システムを製作しました。作品概要としましては、学生証に搭載されているIC機能を用いてIDｍと入室時間、退室時間に出席科目をデータベースに登録するシステムを作成しました。また、データベース内には授業idに関連し、科目が何曜日で何限目か、担当教員までデータベースに登録しています。',
      'Python、SQLite','・東京電子専門学校生\n・東京電子専門学校教職員','入退室の状態の確認と入退室時刻の記録','テーブル内に新たにカラムを作成し、入退室の状態を管理することで、入退室時刻の管理にも活用した。'],
    <String>[
      '卒業・進級制作展示会2022サイト',
      '東京電子専門学校 ウェブ・メディア科で毎年、年内最後のイベントとして開催されている卒業・進級制作展示会2022サイトの制作の際に使用したFlutterについてのまとめです。iOSとAndroid用のアプリもダウンロードできるようになっています。詳細はぜひサイトでご確認ください！',
      'Flutter、Dart、XD、Xcode、Android studio','・企業関係者\n・保護者','Flutterの日本語のドキュメントが少なく勉強が少し大変だった','公式ドキュメントを見たり、エラー文を調べたりして自己解決しました。'],
    <String>[
      '学校ブログサイト改修',
      '学校の公式ブログサイトの改修をさせていただいたものです。広報の方からの依頼を受け、打ち合わせなど通しながら共同作業で作成していきました。注目ポイントは記事の文章や画像の並び等、今風のブログデザインにしたことです。',
      'HTML、CSS、JS、PHP、Wordpress','・入学先を探している高校生\n・在校生\n・企業の方','チームでやる上での連絡や報告、相談','細かく連絡をとり逐一報告する'],
    <String>[
      '埼玉東西魅力度バトル',
      '本企画は埼玉県の東と西に分かれてどちらが魅力的かを展示会にきてくださる方に決めてもらうという企画です。こだわった点と致しましては、観光地に実際に足を運び自分たちの様子を含め撮影したことです。そしてphpを使った投票システムも搭載していることです。',
      'HTML、CSS、JS、PHP','・２０代新卒社会人','役割分担、現地視察','細かく連絡とる'],
    <String>[
      '展示会アンケートフォーム',
      '2022年度進級・卒業展示会のアンケートフォームです。この企画の目的は展示物や展示会についてアンケートに答えてもらい改善点を見つけ作品や次回の展示会に生かしてもらうための企画です。デザインのコンセプトは展示会リーダーと話した結果テーマが『CHENGE』なので季節の変わり目の桜を意識してデザインしました。',
      'HTML、CSS、PHP','・展示会参加者','アンケートをしてもらう','目に留まるようにデザインする'],
    <String>[
      '埼玉東西魅力度バトル',
      '本企画は埼玉県の東と西に分かれてどちらが魅力的かを展示会にきてくださる方に決めてもらうという企画です。こだわった点と致しましては、観光地に実際に足を運び自分たちの様子を含め撮影したことです。そしてphpを使った投票システムも搭載していることです。',
      'HTML、CSS、JS、PHP','・２０代新卒社会人','役割分担、現地視察','細かく連絡とる'],
    <String>[
      'ポートフォリオ',
      'この作品は、最後の制作ということで今まで学んできたこと、それを生かした作品を載せられる物を作りたいと考え、ポートフォリオにしました。デザインやプログラミング言語を使用した作品など幅広い制作物を掲示しました。',
      'HTML、CSS、JS','・展示会参加者','２年間学んできたことをどう見せるか','構成を練る'],
    <String>[
      'むらおかボードゲーム紹介サイト',
      'ジョイゲームズで販売されているゲームを対象としたボードゲームのマーケティングを意識したプロモーションサイトを作成。10代～20代の若い年齢層をターゲット層とし、おすすめ検索機能を使い,初心者にもボードゲームを知ってもらう所から購入するまでのフローを企画。',
      'HTML、CSS、JS、PHP、SQLite','・10代～20代の学生\n・社会人','ジョイゲームズとの連携','企画案の段階で企画書の提出'],
    <String>[
      'Energystics',
      '私自身が好きなエナジードリンクについて広めるために制作したサイトです。東京電子オリジナルラベルエナジードリンクも制作致しました。数種類のエナジードリンクをレビューしたりとこのサイトを見ているあなたのエナジードリンクの購入のすゝめになれば幸いです。',
      'HTML、CSS、JS','・エナジードリンクを知らない人\n・知ってるけど情報が欲しい人','ユーザビリティを考えた実装','細かいメニュー画面などの改善'],
    <String>[
      'JavaBronze資格取得まとめサイト',
      'JavaBronzeWebの資格を取得したい人やJavaを知らない人に向けたまとめサイトです。JavaBronzeやJavaについての簡単な説明やJavaBronzeを受ける人にオススメの教材など紹介したサイトです。',
      'HTML、CSS、JS','・Javaを知らない人\n・JavaBronzeを受ける人','文章多めのサイトだと最後まで見ないで終わってしまうので電なサイトにするか迷いました。','Javaの由来であるコーヒーをイメージしたデザインとアニメーションを使いサイトを楽しんで見てもらうようにしました。'],
  ];

  List thumbnail = [
    <String>['assets/images/thumbnail/g201/g201_1.jpg','assets/images/thumbnail/g201/g201_2.jpg','assets/images/thumbnail/g201/g201_3.jpg','assets/images/thumbnail/g201/g201_4.jpg'],
    <String>['assets/images/thumbnail/g202/g202_1.jpg','assets/images/thumbnail/g202/g202_2.jpg','assets/images/thumbnail/g202/g202_3.jpg','assets/images/thumbnail/g202/g202_4.jpg'],
    <String>['assets/images/thumbnail/g203/g203_1.jpg','assets/images/thumbnail/g203/g203_2.jpg','assets/images/thumbnail/g203/g203_3.jpg','assets/images/thumbnail/g203/g203_4.jpg'],
    <String>['assets/images/thumbnail/g204/g204_1.jpg','assets/images/thumbnail/g204/g204_2.jpg','assets/images/thumbnail/g204/g204_3.jpg','assets/images/thumbnail/g204/g204_4.jpg'],
    <String>['assets/images/thumbnail/g205/g205_1.jpg','assets/images/thumbnail/g205/g205_2.jpg','assets/images/thumbnail/g205/g205_3.jpg','assets/images/thumbnail/g205/g205_4.jpg'],
    <String>['assets/images/thumbnail/g206/g206_1.jpg','assets/images/thumbnail/g206/g206_2.jpg','assets/images/thumbnail/g206/g206_3.jpg','assets/images/thumbnail/g206/g206_4.jpg'],
    <String>['assets/images/thumbnail/g207/g207_1.jpg','assets/images/thumbnail/g207/g207_2.jpg','assets/images/thumbnail/g207/g207_3.jpg','assets/images/thumbnail/g207/g207_4.jpg'],
    <String>['assets/images/thumbnail/g208/g208_1.jpg','assets/images/thumbnail/g208/g208_2.jpg','assets/images/thumbnail/g208/g208_3.jpg','assets/images/thumbnail/g208/g208_4.jpg'],
    <String>['assets/images/thumbnail/g209/g209_1.jpg','assets/images/thumbnail/g209/g209_2.jpg','assets/images/thumbnail/g209/g209_3.jpg','assets/images/thumbnail/g209/g209_4.jpg'],
    <String>['assets/images/thumbnail/h201/h201_1.jpg','assets/images/thumbnail/h201/h201_2.jpg','assets/images/thumbnail/h201/h201_3.jpg','assets/images/thumbnail/h201/h201_4.jpg'],
    <String>['assets/images/thumbnail/h202/h202_1.jpg','assets/images/thumbnail/h202/h202_2.jpg','assets/images/thumbnail/h202/h202_3.jpg','assets/images/thumbnail/h202/h202_4.jpg'],
    <String>['assets/images/thumbnail/h203/h203_1.jpg','assets/images/thumbnail/h203/h203_2.jpg','assets/images/thumbnail/h203/h203_3.jpg','assets/images/thumbnail/h203/h203_4.jpg'],
    <String>['assets/images/thumbnail/h204/h204_1.jpg','assets/images/thumbnail/h204/h204_2.jpg','assets/images/thumbnail/h204/h204_3.jpg','assets/images/thumbnail/h204/h204_4.jpg'],
    <String>['assets/images/thumbnail/h205/h205_1.jpg','assets/images/thumbnail/h205/h205_2.jpg','assets/images/thumbnail/h205/h205_3.jpg','assets/images/thumbnail/h205/h205_4.jpg'],
    <String>['assets/images/thumbnail/h206/h206_1.jpg','assets/images/thumbnail/h206/h206_2.jpg','assets/images/thumbnail/h206/h206_3.jpg','assets/images/thumbnail/h206/h206_4.jpg'],
    <String>['assets/images/thumbnail/h207/h209_1.jpg','assets/images/thumbnail/h207/h209_2.jpg','assets/images/thumbnail/h207/h209_3.jpg','assets/images/thumbnail/h207/h209_4.jpg'],
    <String>['assets/images/thumbnail/h208/h208_1.jpg','assets/images/thumbnail/h208/h208_2.jpg','assets/images/thumbnail/h208/h208_3.jpg','assets/images/thumbnail/h208/h208_4.jpg'],
    <String>['assets/images/thumbnail/h207/h209_1.jpg','assets/images/thumbnail/h207/h209_2.jpg','assets/images/thumbnail/h207/h209_3.jpg','assets/images/thumbnail/h207/h209_4.jpg'],
    <String>['assets/images/thumbnail/h210/h210_1.jpg','assets/images/thumbnail/h210/h210_2.jpg','assets/images/thumbnail/h210/h210_3.jpg','assets/images/thumbnail/h210/h210_4.jpg'],
    <String>['assets/images/thumbnail/h211/h211_1.jpg','assets/images/thumbnail/h211/h211_2.jpg','assets/images/thumbnail/h211/h211_3.jpg','assets/images/thumbnail/h211/h211_4.jpg'],
    <String>['assets/images/thumbnail/h212/h212_1.jpg','assets/images/thumbnail/h212/h212_2.jpg','assets/images/thumbnail/h212/h212_3.jpg','assets/images/thumbnail/h212/h212_4.jpg'],
    <String>['assets/images/thumbnail/h213/h213_1.jpg','assets/images/thumbnail/h213/h213_2.jpg','assets/images/thumbnail/h213/h213_3.jpg','assets/images/thumbnail/h213/h213_4.jpg'],
  ];

  List introductionVideo = <String>[
    'F1cFdJEwSVI',
    'wX4pxnaV3Xw',
    'Ef_Jv2UnUT4',
    'FXSG1WX-gTY',
    '_k6KnUHmZPA',
    '0ejXpPcC6w4',
    'lIRuXpu1V7M',
    'Wk93YXVGJzc',
    'insaPKyUBSk',
    'Fd5z5wv-2Wg',
    'btgj0uF1UFk',
    'RVZ7JDd4_Zw',
    'K8MnnWMmBkw',
    'bEixNmPU-xg',
    'ArcML48YGWM',
    'mqaxEh-TNWE',
    'F1buKmkrgIE',
    'mqaxEh-TNWE',
    'QXBsLlAW8n0',
    'ldMbKu1SVCk',
    'wbF0O9YByzY',
    '8_T2kIS7_GI',
  ];

  List introduction = [
    <String>[
      'assets/images/facePhoto/G201.png','池田 駿','ゲームコース',
      '今回は、今までにやってこなかった事にチャレンジした卒業制作で、アニメーションを制作したり３Dモデルを作れるWEBサイトで３Dモデルを自作したりと見える部分の作成をし、スクリプトが見やすく後からもわかるようにコードを整理して書いたり、設定を変えたりしやすいように書いたりなどの見えない部分を頑張った作品です。ぜひ私の２年間で培った技術を是非ごらんください。',
      'https://docs.google.com/presentation/d/102U-oIVjmSynhCvGXTg2-jKVU7_oftgBbZof8lFRTds/edit#slide=id.p','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No8'],
    <String>[
      'assets/images/facePhoto/G202.png','一条 倫太','ゲームコース',
      '今回は初めてのチーム制作でした。初めは、意思疎通がうまくいかなかったり、片方の進み具合が違かったためうまくゲームが動かなかったりしましたが、こまめに連絡を取り、空き時間に集まってどうすれば動くかを話し合いました。ゲームが動いた時は一緒に喜びました。社会に出る前にこのような貴重な経験を積めてよかったと思います。2人の2年間が詰まっているので是非プレイしてみてください。',
      'https://docs.google.com/presentation/d/1Y3R21QzTo6mXV2T14uF9TaYwNZHQknMD/edit?usp=sharing&ouid=118057772458892229985&rtpof=true&sd=true','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No7'],
    <String>[
      'assets/images/facePhoto/G203.png','伊東 明成','ゲームコース',
      '自分自身が楽しみながら制作することで、自分らしさを表現できたり、良い作品に仕上げることができるのだと分かりました。また、自分自身の写真を入れたり、友達にも協力してもらってその画像をデザインとしてポートフォリオの中に入れて、楽しみながら作ったことが伝わるようにしました。また、ユーザビリティーを意識して過去に作ってきたゲームをブラッシュアップしました。',
      'https://drive.google.com/file/d/1vIR3ugvIZeqyinQ2fEttjOFqFh93BaXs/view?usp=share_link','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No6'],
    <String>[
      'assets/images/facePhoto/G204.png','奥村 尊','ゲームコース',
      '今回は初めてのチーム制作でした。初めは、意思疎通がうまくいかなかったり、片方の進み具合が違かったためうまくゲームが動かなかったりしましたが、こまめに連絡を取り、空き時間に集まってどうすれば動くかを話し合いました。ゲームが動いた時は一緒に喜びました。社会に出る前にこのような貴重な経験を積めてよかったと思います。2人の2年間が詰まっているので是非プレイしてみてください。',
      'https://docs.google.com/presentation/d/1Y3R21QzTo6mXV2T14uF9TaYwNZHQknMD/edit?usp=sharing&ouid=118057772458892229985&rtpof=true&sd=true','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No7'],
    <String>[
      'assets/images/facePhoto/G205.png','篠崎 真希','ゲームコース',
      '２年生に上がると、苦しいこともありました。そんな中でこのポートフォリオの制作に取り掛かり、１年生の時にどんなものを勉強していたか、「ああ、この授業楽しかったな」、「この時とてもやりがいを感じていたな」なんて思い出しながら、気づいたら白紙が埋まっていくので、奥の方でも、この学校でのことは確実に身についていると気づくことができました。卒業前にこういう機会があり、この先に進むきっかけになると感じています。',
      'https://drive.google.com/drive/folders/1GxE_IpPPLJQKbaq-0W2NfQSOalVIS1V5?usp=sharing','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No5'],
    <String>[
      'assets/images/facePhoto/G206.png','杉本 優斗','ゲームコース',
      'この作品は学園祭の時に展示をすることができなかったので、前期から引き継いで制作したものになります。ボタンのデザインや効果音をいれ、どうしたらいいゲームになるかを常に考え作っていくうちに、たくさんアイデアが思い浮かんだのでとても楽しく作業することができました。それに合わせて、たくさんの知識や技術を身につけることができたので、自分にとってとてもいい経験になりました。「俊足のシャトルラン」は、まだまだ改善できると思っているので、これからもゲーム作り頑張っていきたいです。',
      'https://docs.google.com/presentation/d/1HUJLJlQP7S2YjN25BVIECbwV_H5gSHfh3TepGYTGL34/edit?usp=sharing','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No9'],
    <String>[
      'assets/images/facePhoto/G207.png','高橋 玲風','ゲームコース',
      '複数の動画制作を一人でまとめるのは時間的にも技術的にも大変で、心が折れそうになることもありましたが、多くの方が協力してくれたおかげで想定していたものよりも良い動画を制作できました。授業では学べなかったこともこの制作を通して学ぶことができ、この半年でより成長したと感じました。私がこの学校に入学してからの2年間を締め括る複数の動画、ぜひ作品とともにご覧ください。',
      'https://www.youtube.com/@tec2022-graduation','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No4'],
    <String>[
      'assets/images/facePhoto/G208.png','田中 遼','ゲームコース',
      '２年間の得た知識を使い私なりの企画書が出来たと思っています。色々と制作中にデザインを変えたりして悩む事もありましたが完成して良かったです。企画書を書くのに時間がかなり必要になって制作中は内心で相当焦りながら色々と追加して行ったり修正して追われる感じになり大変でした。制作する内容をあらかじめ把握して制作する速度を早めにと思いました。あらすじに書いてあるストーリーやキャクター詳細にあるキャラの紹介等も見てください。',
      'https://drive.google.com/file/d/1t4PRkXDQg151_R9G2PdbkbIjMAZ4BHrg/view?usp=sharing','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No10'],
    <String>[
      'assets/images/facePhoto/G209.png','長谷川 怜','ゲームコース',
      'ゲームコースなのにウェブサイトを作るのは、分からないことや技術不足な面が多く不安もたくさんありました。ですが、友人や先生の支えもあり、なんとか形にすることができました。作品のテーマは「インターネット詐欺被害の注意喚起」です。私が最近、実際にインターネット詐欺にあった経験から、今回の卒業制作を企画しました。今回の卒業制作を終えて、他の人にインターネットの危険性を伝えるだけでなく、自分も危険性などを理解することができました。',
      'https://tec2023.jpn.gg/sotusei/amason/','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No16'],
    <String>[
      'assets/images/facePhoto/H201.png','遠藤 嵐楽','ウェブ・デザインコース',
      '今回作品を作る上で、実際にサイトを訪れる方に見やすいと思ってもらえるようなデザインにするために試行錯誤し、お店独自の要素をどうやってサイトの中で表現するために他のサイトと被るような部分を無くしていきオリジナリティを加えたりして工夫しました。また自分が今まで学んできた技術をしっかりと作品に取り込むことができ、達成感と自分自身の成長を感じることが出来ました。',
      'http://endoh201.minim.ne.jp/tyanoma/index.html','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No12'],
    <String>[
      'assets/images/facePhoto/H202.png','岡 巳蘭','ウェブ・デザインコース',
      '今回展示会を企画させていただき、とても良い体験になりました。企画段階から意見の違や情報をしっかり共有できてなかったり、上手くいかないことばかりでした。リスケなどをせざるおえない状況も何度かあり、私自身心を鬼にして挑まないといけないことを実感しました。1年生の今後の就職活動に繋げられるためにはどうしたら良いかにも悩みました。結果、面談ブースを設けることで少しでも接点を持ってもらえるようにしました。社会人になってもこの経験を活かしながら、企画などをしていきたいと思います！',
      'https://docs.google.com/presentation/d/16jXStM9EkOVd1FUmMkq68fwTNSsF3gF-8vZZwKn6se0/edit?usp=sharing','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No1'],
    <String>[
      'assets/images/facePhoto/H203.png','小園 佑也','ウェブ・デザインコース',
      '私はこの作品を作る際この資格を取りたい人に向けた内容を考えるのに苦労しました。どのようにしたら分かりやすく伝えられるかなどを考えながら試行錯誤しました。また、卒業制作ということでアピールしたいポイントをどうするか考え、普通のレビューサイトのような見た目にならないようデザインも工夫しました。この卒業制作を通して、人が見たときに良く思われるよう工夫する力が以前より身についたと思います。',
      'https://2022graduation.tokyo-ec.net/h203/','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No13'],
    <String>[
      'assets/images/facePhoto/H204.png','篠崎 裕樹','ウェブ・デザインコース',
      '今回の卒業制作は、今まで学んできた技術を多く使用した作品になりました。また、苦手意識を持っていたSQLitを多用し、苦手意識の払拭が出来たと考えます。作品制作でデータベースに入れたいデータが一切入らないなど多くの課題が出てきましたが、自分で調べ、理解し、一つ一つ課題解決をしていきました。作成を終えて、多くの試行錯誤を乗り越えた経験は今後の社会人生活にも活かしていこうと思います。',
      'https://docs.google.com/presentation/d/13S7qm_0mrX74xssLrvnyHuHWIxsZfFmoeziGhY2Dfb0/edit?usp=sharing','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No11'],
    <String>[
      'assets/images/facePhoto/H205.png','清水 豪也','ウェブ・デザインコース',
      '今回の卒業・進級制作展示会2022のサイト制作を通じて、展示会全体での連絡や情報の共有などの大切さを改めて感じることができました。また、初めて自分の知らない技術を1から独学で学んでみて、とても楽しかった反面、新しく学ぶことが多く大変でした。試行錯誤しながらエラーの対処や機能の追加などを調べていく中で、調べる力と理解力を向上することができました。社会人になってもこの経験活かして、より成長していきたいと思います！',
      'https://2022graduation.tokyo-ec.net/h205/','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No2'],
    <String>[
      'assets/images/facePhoto/H206.png','須田 翔','ウェブ・デザインコース',
      '今回は中々経験がない複数人での作業、そして依頼人がいる状態での作業だったため大変なこともありましたが、最終的に公開まで行くことができ良かったと感じています。改善点や良かった点もたくさん見つかり今後も社会に出てからの他人と仕事をしていく中での行動の指標となり貴重な経験になったと感じます。この経験を活かししっかりした社会人になれるよう頑張っていきたいと思います。',
      'https://blog.tokyo-ec.ac.jp/','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No14'],
    <String>[
      'assets/images/facePhoto/H207.png','関口 雅人','ウェブ・デザインコース',
      '今回の卒業制作は2人で作業しました。前期の卒業制作は1人で作業してたため役割分担などが上手くできないところがあり、グループでの作業は難しいと感じました。ですが、写真撮影のため埼玉県を色々回れて普段行かないところも回れてとても楽しかったです。埼玉県は実際に行ってみて自然豊かだけどアクセスも良く、車でも行きやすい良い県だと思います。皆さんもぜひ観光してみてください！',
      'http://watabetec.php.xdomain.jp/touzai2/index.php','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No15'],
    <String>[
      'assets/images/facePhoto/H208.png','髙橋 翔太','ウェブ・デザインコース',
      '後期卒業制作も自分で何を作るか思いつかなかったので先生に企画を提案してもらい展示会のアンケートフォームを作ることになりました。最初は結構重要な案件でやりたくなかったのですが他に企画も思い浮かばなかったのでなくなくやることにしました。ですが今ではいい思い出です。これから社会人になって辛いことや大変なことがあると思いますが、頑張っていこうと思います。',
      'https://2022graduation.tokyo-ec.net/survey/second/','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No3'],
    <String>[
      'assets/images/facePhoto/H209.png','千野 翔太','ウェブ・デザインコース',
      '今回の卒業制作は2人で作業しました。前期の卒業制作は1人で作業してたため役割分担などが上手くできないところがあり、グループでの作業は難しいと感じました。ですが、写真撮影のため埼玉県を色々回れて普段行かないところも回れてとても楽しかったです。埼玉県は実際に行ってみて自然豊かだけどアクセスも良く、車でも行きやすい良い県だと思います。皆さんもぜひ観光してみてください！',
      'http://watabetec.php.xdomain.jp/touzai2/index.php','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No15'],
    <String>[
      'assets/images/facePhoto/H210.png','藤田 琉来','ウェブ・デザインコース',
      '今回は最後の制作ということで、以前に制作したものと比べて、より良いものに仕上げなければいけないということを感じ、大変でしたが、制作期間はすごく充実した日々でした。卒業制作を経て、昨日の自分と比べてもあまり変わっていないと思います。ですが１、２年前に出来ていないことが現在は出来るようになっているので、自分の思っている以上に成長していると感じます。',
      '','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No17'],
    <String>[
      'assets/images/facePhoto/H211.png','村岡 拓真','ウェブ・デザインコース',
      '今回は最後の作品制作である後期卒業制作ということで、自分の好きなものと技術を両方を活かしたテーマを探し、ボードゲーム紹介サイトを企画しました。ジョイゲームズのサイトのアナリティクスや実際の売上データから、若い年齢層の購入率が低い問題の解決に向け、マーケティングを意識したボードゲームのプロモーションサイトを作成を行い、当サイトのおすすめ検索機能でボードゲーム知ってもらいながら、ジョイゲームズのボードゲーム購入してもらうことをコンバージョンに設定しました。',
      'https://pf2021.tokyo-ec.net/pf/H113/pf/sot/joygames/top.php','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No18'],
    <String>[
      'assets/images/facePhoto/H212.png','山口 遥斗','ウェブ・デザインコース',
      '今回の私のエナジードリンクのファンサイトを制作するにあたって一番商品レビューのページで一番苦労しました。自分一人のレビューをただページに入れるのではなく、友人に実際にその商品を買ってもらってレビューをヒヤリングすると言う形を取りました。要件に対してのヒヤリングが自分自身始めてだったこともあって予想以上にグダりにグダって時間がかかりました。２年間の生活を通して専門学生としての集大成としてふさわしい作品になったと思っています。そして最後に東京電子専門学校オリジナルラベルエナジードリンクもよろしくお願いします！',
      'http://twistedfate.minim.ne.jp/energystics/top.html','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No20'],
    <String>[
      'assets/images/facePhoto/H213.png','渡部 流星','ウェブ・デザインコース',
      '私はこの卒業制作を作る時この資格を取りたい達に向ける内容を考えるのに苦労しました。卒業制作ということでアピールしたいポイントをどうするか考え、私はサイト制作が苦手なのでデザインよりも内容を深くするようにと意識して制作をしました。卒業制作を通して私は、どんな形になっても最後まで頑張って作ろうという気持ちで制作しました。この二年間で私は大きく成長できたと思います。',
      'http://watabetec.php.xdomain.jp/Javabronze2023/index.html','https://2022graduation.tokyo-ec.net/survey/second/form.php?works=No19'],
  ];

  int activeIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    value = int.parse(widget.num);
    final Uri work = Uri.parse(introduction[value][4]);
    Future<void> _workUrl() async {
      if (!await launchUrl(work)) {
        throw Exception('このURLにはアクセスできません');
      }
    }
    final Uri questionnaire = Uri.parse(introduction[value][5]);
    // ignore: unused_element
    Future<void> _questionnaireUrl() async {
      if (!await launchUrl(questionnaire)) {
        throw Exception('このURLにはアクセスできません');
      }
    }

    final _controller = YoutubePlayerController.fromVideoId(
      videoId: '${introductionVideo[value]}',
      autoPlay: false,
      params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
      ),
    );

    final size = MediaQuery.of(context).size;

    CarouselController buttonCarouselController = CarouselController();

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '作品詳細',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'NotoSansJP',
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      height: (size.width > 800)
                        ? 450
                        : 250,
                      viewportFraction: (size.width > 800)
                        ? 0.6
                        : 0.8,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) => setState((){
                        activeIndex = index;
                      }),
                    ),
                    carouselController: buttonCarouselController,
                    itemCount: thumbnail[value].length,
                    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(thumbnail[value][itemIndex]),
                            fit: BoxFit.contain
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: buildIndicator()
                    )
                  ),

                  // 作品説明 & 紹介動画
                  Padding(
                      padding: EdgeInsets.only(
                        left: (size.width > 800) ? 40 : 0,
                        right: (size.width > 800) ? 40 : 0,
                        bottom: (size.width > 800) ? 40 : 0,
                        top: 50
                      ),
                      child: ResponsiveRowColumn(
                      layout:  ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                        ? ResponsiveRowColumnType.COLUMN
                        : ResponsiveRowColumnType.ROW,
                      children: [
                        ResponsiveRowColumnItem(
                          child: ConstrainedBox(
                              constraints: BoxConstraints(
                              maxWidth: (size.width > 800)
                                ? (size.width * 0.5) - 40
                                : size.width * 1
                            ),
                            child: YoutubePlayer(
                              controller: _controller,
                              aspectRatio: 16/9,
                            ),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: ConstrainedBox(
                              constraints: BoxConstraints(
                              maxWidth: (size.width > 800)
                                ? (size.width * 0.5) - 40
                                : size.width * 1
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 30, left: (size.width > 800) ? 40 : 17),
                              child: RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      fontFamily: 'NotoSansJP',
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '${info[value][0]}\n',
                                        style: const TextStyle(
                                          color: Color.fromARGB(255, 0, 137, 193),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                        )
                                      ),
                                      const WidgetSpan(child: SizedBox(height: 30)),
                                      TextSpan(
                                        text: info[value][1],
                                        style: TextStyle(
                                          color: const Color.fromARGB(255, 98, 98, 98),
                                          fontWeight: FontWeight.w500,
                                          fontSize: (size.width > 800) ? 13.sp : 14,
                                          height: 2
                                        )
                                      ),
                                    ]
                                  )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      left: (size.width > 800) ? 40 : 17,
                      right: (size.width > 800) ? 40 : 17,
                    ),
                    child: ResponsiveRowColumn(
                    layout:  ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                      ? ResponsiveRowColumnType.COLUMN
                      : ResponsiveRowColumnType.ROW,
                    children: [
                      ResponsiveRowColumnItem(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                              maxWidth: (size.width > 800)
                                ? (size.width * 0.5 - 40)
                                : size.width * 1
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // 使用技術
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: RichText(
                                    text: const TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 8),
                                            child: FaIcon(
                                              FontAwesomeIcons.screwdriverWrench,
                                              color: Color.fromARGB(255, 0, 137, 193),
                                            )
                                          ),
                                        ),
                                        TextSpan(
                                          text: '使用技術',
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 0, 137, 193),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                            fontFamily: 'NotoSansJP',
                                          )
                                        )
                                      ]
                                    )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    info[value][2],
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 98, 98, 98),
                                      fontFamily: 'NotoSansJP',
                                      fontWeight: FontWeight.w500,
                                      fontSize: (size.width > 800) ? 13.sp : 14,
                                    ),
                                  ),
                                ),
                                // ターゲット
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: RichText(
                                    text: const TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 8),
                                            child: FaIcon(
                                              FontAwesomeIcons.solidUser,
                                              color: Color.fromARGB(255, 0, 137, 193),
                                            )
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'ターゲット',
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 0, 137, 193),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                            fontFamily: 'NotoSansJP',
                                          )
                                        )
                                      ]
                                    )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    info[value][3],
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 98, 98, 98),
                                      fontFamily: 'NotoSansJP',
                                      fontWeight: FontWeight.w500,
                                      fontSize: (size.width > 800) ? 13.sp : 14,
                                    ),
                                  ),
                                ),
                              ]
                            ),
                          ),
                        ),
                      ),
                      ResponsiveRowColumnItem(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                              maxWidth: (size.width > 800)
                                ? (size.width * 0.5 - 40)
                                : size.width * 1
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // 課題
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: RichText(
                                    text: const TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 8),
                                            child: FaIcon(
                                              FontAwesomeIcons.solidCircleQuestion,
                                              color: Color.fromARGB(255, 0, 137, 193),
                                            )
                                          ),
                                        ),
                                        TextSpan(
                                          text: '課題',
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 0, 137, 193),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                            fontFamily: 'NotoSansJP',
                                          )
                                        )
                                      ]
                                    )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    info[value][4],
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 98, 98, 98),
                                      fontFamily: 'NotoSansJP',
                                      fontWeight: FontWeight.w500,
                                      fontSize: (size.width > 800) ? 13.sp : 14,
                                    ),
                                  ),
                                ),
                          
                                // 解決
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: RichText(
                                    text: const TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 8),
                                            child: FaIcon(
                                              FontAwesomeIcons.circleExclamation,
                                              color: Color.fromARGB(255, 0, 137, 193),
                                            )
                                          ),
                                        ),
                                        TextSpan(
                                          text: '解決',
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 0, 137, 193),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                            fontFamily: 'NotoSansJP',
                                          )
                                        )
                                      ]
                                    )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    info[value][5],
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 98, 98, 98),
                                      fontFamily: 'NotoSansJP',
                                      fontWeight: FontWeight.w500,
                                      fontSize: (size.width > 800) ? 13.sp : 14,
                                    ),
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
                          onPressed: _workUrl,
                          icon: const FaIcon(
                            FontAwesomeIcons.angleRight,
                            size: 10,
                            color: Colors.white,
                          ),
                          label: const Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 5),
                            child: Text(
                              '作品を見る',
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
            
                  Container(
                    padding: const EdgeInsets.only(top: 40, bottom: 20, left: 70, right: 70),
                    margin: const EdgeInsets.only(top: 40, bottom: 30),
                    color: const Color.fromARGB(255, 0, 137, 193),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                image: DecorationImage(
                                  image:  AssetImage(introduction[value][0]),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: RichText(
                                text: TextSpan(
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'NotoSansJP',
                                    height: 1.7
                                  ),
                                  children: [
                                    TextSpan(
                                      text: introduction[value][1]+'\n',
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700
                                      )
                                    ),
                                    TextSpan(
                                      text: introduction[value][2],
                                      style: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500
                                      )
                                    ),
                                  ]
                                )
                              ),
                            )
                          ],
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 800
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                              introduction[value][3],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: (size.width > 800) ? 13.sp : 14,
                                height: 2
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
            
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 50, right: 10),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 0, 137, 193),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                          ),
                          onPressed: null,
                          // onPressed: _questionnaireUrl,
                          icon: const FaIcon(
                            FontAwesomeIcons.angleRight,
                            size: 10,
                          ),
                          label: const Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 5),
                            child: Text(
                              '準備中',
                              // 'アンケートはこちら',
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
    );
  }
  Widget buildIndicator() => AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: thumbnail[value].length,
          effect: const SwapEffect(
            dotHeight: 10,
            dotWidth: 10,
            radius: 3.0,
            paintStyle: PaintingStyle.fill,
            activeDotColor: Color.fromARGB(255, 0, 137, 193),
            dotColor: Colors.black12
          ),
  );
}