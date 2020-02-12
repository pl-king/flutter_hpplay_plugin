import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_plugin_newhpplay_example/pages/class_hours_page.dart';
import 'package:flutter_plugin_newhpplay_example/res/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bean/class_bean.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ClassBean> kechenglist = [];

  @override
  void initState() {
    super.initState();
    ClassBean c1 = new ClassBean();
    c1.image = "";
    c1.title = "第12期培训";
    c1.curriculum = "乐高课程";
    c1.number = "开课时间：11-7到11-30";
    c1.classHours = '课时：共12节';
    ClassBean c2 = new ClassBean();
    c2.image = "";
    c2.title = "第11期培训";
    c2.curriculum = "机器人课程";
    c2.number = "开课时间：11-7到11-30";
    c2.classHours = '课时：共12节';

    setState(() {
      kechenglist..add(c1)..add(c2);
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    var top = MediaQueryData.fromWindow(window).padding.top;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: top),
        child: kechengliebiao(),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  kechengliebiao() {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return _buildClassList(index);
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(color: Colors.blue);
        },
        itemCount: kechenglist.length);
  }

  _buildClassList(int index) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ClassHoursListPage();
        }));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: ScreenUtil.getInstance().setWidth(210),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/tupian.jpg")),
          ),
          SizedBox(
            width: 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(kechenglist[index].title),
              Text(kechenglist[index].curriculum),
              Text(kechenglist[index].number),
              Text(kechenglist[index].classHours),
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Container(color: AppColors.appBarColor, child: Text('查看详情'))
        ],
      ),
    );
  }
}
