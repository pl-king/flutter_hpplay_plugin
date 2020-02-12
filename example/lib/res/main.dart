//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'dart:async';
//
//import 'package:flutter/services.dart';
//import 'package:flutter_plugin_newhpplay/flutter_plugin_newhpplay.dart';
//
//import 'bean/lelink_service_info.dart';
//import 'package:flutter_seekbar/flutter_seekbar.dart'
//    show ProgressValue, SectionTextModel, SeekBar;
//
//void main() {
//  SystemChrome.setPreferredOrientations(
//      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
////  SystemChrome.setPreferredOrientations(
////      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
////      .then((_) {
//  runApp(MyApp());
////  });
//}
//
//class MyApp extends StatefulWidget {
//  @override
//  _MyAppState createState() => _MyAppState();
//}
//
//class _MyAppState extends State<MyApp> {
//  bool isPic;
//
//  String _platformVersion = 'Unknown';
//  List devices = [];
//  String tipDeviceConnect;
//  static const EventChannel eventChannel =
//      EventChannel("sample.flutter.io/test_event_channel"); //samples 实际使用可以
//  List picList = [];
//
//  @override
//  void initState() {
//    super.initState();
//
//    SystemChrome.setPreferredOrientations([
//      DeviceOrientation.landscapeRight,
//      DeviceOrientation.landscapeRight,
//    ]);
//    initPlatformState();
//
//    initHpplay();
//    picList
//      ..add(
//          "https://img14.360buyimg.com/n7/jfs/t12637/42/2327024214/114895/ec325f4f/5ab4b331Nbf564b11.jpg")
//      ..add(
//          "https://img10.360buyimg.com/n7/jfs/t18397/29/988914537/96851/e92ecd25/5ab4c6aaNb4df6198.jpg")
//      ..add(
//          "https://img13.360buyimg.com/n7/jfs/t18097/249/986540321/88281/625f677e/5ab4cb3bN0943eaf5.jpg")
//      ..add(
//          "https://img14.360buyimg.com/n7/jfs/t12637/42/2327024214/114895/ec325f4f/5ab4b331Nbf564b11.jpg")
//      ..add(
//          "https://img11.360buyimg.com/n7/jfs/t25342/205/1747435396/262760/8f54e2/5bbac0f7N012a9912.jpg");
//
//    eventChannel
//        .receiveBroadcastStream()
//        .listen(eventListener, onError: _onError);
//  }
//
//  void eventListener(dynamic event) {
//    if (event is String && event.isNotEmpty) {
//      tipDeviceConnect = event;
//      print(event);
////      LelinkServiceInfo lelinkServiceInfo = LelinkServiceInfo.fromJson(event);
////
////      devices.clear();
////      devices.addAll(lelinkServiceInfo.list);
//      setState(() {});
//    } else if (event is Map) {
//      // ignore: unnecessary_statements
//      var devicesJsonString = event['devices'];
//      LelinkServiceInfo lelinkServiceInfo =
//          LelinkServiceInfo.fromJson(devicesJsonString);
//      devices.clear();
//      devices.addAll(lelinkServiceInfo.list);
//      setState(() {});
//    }
////    final Map<dynamic, dynamic> map = event;
////    switch (map['event']) {
////      case 'deniEvebt':
////        break;
////    }
//  }
//
//  void _onError(Object obj) {}
//
//  Future<void> initHpplay() async {
//    await FlutterPluginNewhpplay.initHpplay;
//  }
//
//  Future<void> hpplayBrowse() async {
//    await FlutterPluginNewhpplay.HpplayBrowse;
//  }
//
//  // Platform messages are asynchronous, so we initialize in an async method.
//  Future<void> initPlatformState() async {
//    String platformVersion;
//    // Platform messages may fail, so we use a try/catch PlatformException.
//    try {
//      platformVersion = await FlutterPluginNewhpplay.platformVersion;
//    } on PlatformException {
//      platformVersion = 'Failed to get platform version.';
//    }
//
//    // If the widget was removed from the tree while the asynchronous platform
//    // message was in flight, we want to discard the reply rather than calling
//    // setState to update our non-existent appearance.
//    if (!mounted) return;
//
//    setState(() {
//      _platformVersion = platformVersion;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        body: Padding(
//          padding: EdgeInsets.all(0.0),
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              Text(
//                '选择投屏设备',
//                style: TextStyle(fontSize: 30),
//              ),
//              Text(tipDeviceConnect ?? '当前网络：: $_platformVersion\n',
//                  style: TextStyle(fontSize: 20)),
//              InkWell(
//                onTap: () {
//                  hpplayBrowse();
//                },
//                child: Text(
//                  '搜索',
//                  style: TextStyle(fontSize: 15),
//                ),
//              ),
////              _buildFloatingActionButton(),
//              Expanded(
//                child: (tipDeviceConnect == null)
//                    ? ListView.separated(
//                        shrinkWrap: true,
//                        itemBuilder: (BuildContext context, int index) {
//                          // ignore: unnecessary_statements
//                          Instance info = devices[index].mInstance;
//                          return InkWell(
//                            onTap: () {
//                              FlutterPluginNewhpplay.HpplayConnect(info.f);
//                            },
//                            child: ListTile(
//                              title: Text("设备名称：${info.d}"),
//                            ),
//                          );
//                        },
//                        separatorBuilder: (BuildContext context, int index) {
//                          return Divider(color: Colors.blue);
//                        },
//                        itemCount: devices.length)
//                    : _buildTeachingPlan(),
//              ),
//            ],
//          ),
//        ),
//        floatingActionButton: _buildFloatingActionButton(),
//      ),
//    );
//  }
//
//  _buildFloatingActionButton() {
//    if (isPic == null) {
//      return SizedBox();
//    }
//    return isPic
//        ? _pic()
//        : Padding(
//            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.end,
//              crossAxisAlignment: CrossAxisAlignment.end,
//              children: <Widget>[
//                Container(
//                    padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
//                    width: 200,
//                    child: SeekBar(
//                      progresseight: 5,
//                      value: 0.2,
//                    )),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.end,
//                  children: <Widget>[
//                    // FloatingActionButton
//                    new FloatingActionButton(
//                      onPressed: () {
//                        print('button click1');
//                      },
//                      foregroundColor: Colors.white,
//                      backgroundColor: Color(0xFFf19670),
//                      child: new Text("播放"),
//                      heroTag: null,
//                    ),
//                    // FloatingActionButton
//                    new FloatingActionButton(
//                      onPressed: () {
//                        FlutterPluginNewhpplay.HpplayPause;
//                      },
//                      foregroundColor: Colors.white,
//                      backgroundColor: Color(0xFFf19670),
//                      child: new Text("暂停"),
//                      heroTag: null,
//                    ),
//                    new FloatingActionButton(
//                      onPressed: () {
//                        FlutterPluginNewhpplay.HpplayVoulumeUp;
//                      },
//                      foregroundColor: Colors.white,
//                      backgroundColor: Color(0xFFf19670),
//                      child: new Text("音量+"),
//                      heroTag: null,
//                    ),
//                    new FloatingActionButton(
//                      onPressed: () {
//                        FlutterPluginNewhpplay.HpplayVoulumeDown;
//                      },
//                      foregroundColor: Colors.white,
//                      backgroundColor: Color(0xFFf19670),
//                      child: new Text("音量-"),
//                      heroTag: null,
//                    ),
//                  ],
//                ),
//              ],
//            ),
//          );
//  }
//
//  _pic() {
//    return Container(
//        alignment: Alignment.bottomRight,
//        height: 100,
//        width: 300,
//        child: ListView.separated(
//            scrollDirection: Axis.horizontal,
//            shrinkWrap: false,
//            itemBuilder: (BuildContext context, int index) {
//              return InkWell(
//                onTap: () {
//                  FlutterPluginNewhpplay.HpplayPlayImage(picList[index]);
//                },
//                child: Image.network(picList[index]),
//              );
//            },
//            separatorBuilder: (BuildContext context, int index) {
//              return Divider(color: Colors.blue);
//            },
//            itemCount: picList.length));
//  }
//
//  _buildTeachingPlan() {
//    return Row(
//      children: <Widget>[
//        Container(
//          width: 150,
//          child: Column(
//            children: <Widget>[
//              SizedBox(
//                height: 20,
//              ),
//              Text("教案"),
//              SizedBox(
//                height: 20,
//              ),
//              InkWell(
//                onTap: () {
//                  String urlMedia =
//                      "http://video.mxiaotu.com/sv/d116997-16d23857e0b/d116997-16d23857e0b.mp4";
//                  FlutterPluginNewhpplay.HpplayPlayVideo(urlMedia);
//                  setState(() {
//                    isPic = false;
//                  });
//                },
//                child: Text("视频"),
//              ),
//              SizedBox(
//                height: 20,
//              ),
//              InkWell(
//                  onTap: () {
//                    setState(() {
//                      isPic = true;
//                    });
////                    String urlMedia =
////                        "https://img-blog.csdnimg.cn/20190323161535761.png";
////                    FlutterPluginNewhpplay.HpplayPlayImage(urlMedia);
//                  },
//                  child: Text("图片")),
//            ],
//          ),
//        ),
//        SingleChildScrollView(
//          child: Container(
//            width: 500,
//            child: new Image.asset('assets/images/jiaoan1.png'),
//          ),
//        )
//
////        Image.asset('assets/images/jiaoan1.png'),
//      ],
//    );
//  }
//}
