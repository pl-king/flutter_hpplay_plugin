import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_plugin_newhpplay_example/bean/class_bean.dart';
import 'package:flutter_plugin_newhpplay_example/res/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'class_hours_details_page.dart';

///
///Copyright (C) 2019 MIXIAOTU.COM Inc. All rights reserved.
///This is source code from kexuemihe project.
///The distribution of any copyright must be permitted mixiaotu Company.
///说明:
///日期: Created by Dell  on 2019/11/29
///作者: Dell
///更新版本          日期            作者             备注
///v0001                  2019/11/29           Dell               创建
///
class ClassHoursListPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) =>
      MyHomePage(title: 'Flutter Demo Home Page');
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ClassBean> kechenglist = [];
  ClassBean cc;

  @override
  void initState() {
    super.initState();

    ClassBean cc = new ClassBean();
    cc.image = "";
    cc.title = "第12期培训";
    cc.curriculum = "乐高课程";
    cc.number = "开课时间：11-7到11-30";
    cc.classHours = '课时：共12节';

    ClassBean c1 = new ClassBean();
    c1.image = "";
    c1.title = "第一节";
    c1.curriculum = "控制舵机旋转";

    ClassBean c2 = new ClassBean();
    c2.image = "";
    c2.title = "第二节";
    c2.curriculum = "控制舵机旋转";

    ClassBean c3 = new ClassBean();
    c3.image = "";
    c3.title = "第三节";
    c3.curriculum = "控制舵机旋转";

    setState(() {
      kechenglist..add(c1)..add(c2)..add(c3);
      this.cc = cc;
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
    return Column(
      children: <Widget>[
        _buildClass(),
        ListView.separated(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return _buildClassList(index);
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(color: Colors.blue);
            },
            itemCount: kechenglist.length),
      ],
    );
  }

  _buildClassList(int index) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ClassHoursDetailsPage();
        }));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(kechenglist[index].title),
              Text(kechenglist[index].curriculum),
              Container(color: AppColors.appBarColor, child: Text('作业'))
            ],
          ),
        ],
      ),
    );
  }

  _buildClass() {
    return cc == null
        ? SizedBox()
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: ScreenUtil.getInstance().setWidth(150),
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
                  Text(cc.title),
                  Text(cc.curriculum),
                  Text(cc.number),
                  Text(cc.classHours),
                ],
              ),
              SizedBox(
                width: 100,
              ),
            ],
          );
  }
}
