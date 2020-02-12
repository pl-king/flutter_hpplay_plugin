import 'dart:convert' show json;

///
///Copyright (C) 2019 MIXIAOTU.COM Inc. All rights reserved.
///This is source code from kexuemihe project.
///The distribution of any copyright must be permitted mixiaotu Company.
///说明:
///日期: Created by Dell  on 2019/11/22
///作者: Dell
///更新版本          日期            作者             备注
///v0001                  2019/11/22           Dell               创建
///

class LelinkServiceInfo {
  List<Info> list=[];

  LelinkServiceInfo.fromParams({this.list});

  factory(jsonStr) => jsonStr == null
      ? null
      : jsonStr is String
          ? new LelinkServiceInfo.fromJson(json.decode(jsonStr))
          : new LelinkServiceInfo.fromJson(jsonStr);

  LelinkServiceInfo.fromJson(jsonRes) {
    var list = json.decode(jsonRes);
    print(list);
    if (list is List) {
      print('可解');
      for (int i = 0; i < list.length; i++) {
        // ignore: unnecessary_statements
        var listItem = list[i];
        this.list.add(new Info.fromJson(listItem));
      }
    } else {
      print("无解。。。。。。。。。。。。");
    }
  }

  @override
  String toString() {
    return '{"json_list": $list}';
  }
}

class Info {
  Instance mInstance;

  Info.fromParams({this.mInstance});

  Info.fromJson(jsonRes) {
    mInstance = jsonRes['mInstance'] == null
        ? null
        : new Instance.fromJson(jsonRes['mInstance']);
  }

  @override
  String toString() {
    return '{"mInstance": $mInstance}';
  }
}

class Instance {
  String g;
  String i;
  String d;
  String f;
  String h;

//  base k;

  Instance.fromParams({this.g, this.i, this.d, this.f, this.h});

  Instance.fromJson(jsonRes) {
    g = jsonRes['g']?.toString();
    i = jsonRes['i']?.toString();
    d = jsonRes['d']?.toString();
    f = jsonRes['f']?.toString();
    h = jsonRes['h']?.toString();
//    k = jsonRes['k'] == null ? null : new base.fromJson(jsonRes['k']);
  }

  @override
  String toString() {
    return '{"g": ${g != null ? '${json.encode(g)}' : 'null'},"i": ${i != null ? '${json.encode(i)}' : 'null'},"d": ${d != null ? '${json.encode(d)}' : 'null'},"f": ${f != null ? '${json.encode(f)}' : 'null'},"h": ${h != null ? '${json.encode(h)}' : 'null'},"k": }';
  }
}

class base {
  base1 ba1;

  base3 ba3;

  base4 ba4;

  base.fromParams({this.ba1, this.ba3, this.ba4});

  base.fromJson(jsonRes) {
    ba1 = jsonRes['1'] == null ? null : new base1.fromJson(jsonRes['1']);
    ba3 = jsonRes['3'] == null ? null : new base3.fromJson(jsonRes['3']);
    ba4 = jsonRes['4'] == null ? null : new base4.fromJson(jsonRes['4']);
  }

  @override
  String toString() {
    return '{"1": $ba1,"3": $ba3,"4": $ba4}';
  }
}

class base4 {
  String ad;
  String ae;
  String af;
  String ag;
  String ah;
  String aa;
  String ab;
  String ac;
  baseaiai ai;

  base4.fromParams(
      {this.ad,
      this.ae,
      this.af,
      this.ag,
      this.ah,
      this.aa,
      this.ab,
      this.ac,
      this.ai});

  base4.fromJson(jsonRes) {
    ad = jsonRes['ad'];
    ae = jsonRes['ae'];
    af = jsonRes['af'];
    ag = jsonRes['ag'];
    ah = jsonRes['ah'];
    aa = jsonRes['aa'];
    ab = jsonRes['ab'];
    ac = jsonRes['ac'];
    ai = jsonRes['ai'] == null ? null : new baseaiai.fromJson(jsonRes['ai']);
  }

  @override
  String toString() {
    return '{"ad": ${ad != null ? '${json.encode(ad)}' : 'null'},"ae": ${ae != null ? '${json.encode(ae)}' : 'null'},"af": ${af != null ? '${json.encode(af)}' : 'null'},"ag": ${ag != null ? '${json.encode(ag)}' : 'null'},"ah": ${ah != null ? '${json.encode(ah)}' : 'null'},"aa": ${aa != null ? '${json.encode(aa)}' : 'null'},"ab": ${ab != null ? '${json.encode(ab)}' : 'null'},"ac": ${ac != null ? '${json.encode(ac)}' : 'null'},"ai": $ai}';
  }
}

class baseaiai {
  String u;

  baseaiai.fromParams({this.u});

  baseaiai.fromJson(jsonRes) {
    u = jsonRes['u'];
  }

  @override
  String toString() {
    return '{"u": ${u != null ? '${json.encode(u)}' : 'null'}}';
  }
}

class base3 {
  String ad;
  String ae;
  String af;
  String ag;
  String ah;
  String aa;
  String ab;
  String ac;
  baseaia ai;

  base3.fromParams(
      {this.ad,
      this.ae,
      this.af,
      this.ag,
      this.ah,
      this.aa,
      this.ab,
      this.ac,
      this.ai});

  base3.fromJson(jsonRes) {
    ad = jsonRes['ad'];
    ae = jsonRes['ae'];
    af = jsonRes['af'];
    ag = jsonRes['ag'];
    ah = jsonRes['ah'];
    aa = jsonRes['aa'];
    ab = jsonRes['ab'];
    ac = jsonRes['ac'];
    ai = jsonRes['ai'] == null ? null : new baseaia.fromJson(jsonRes['ai']);
  }

  @override
  String toString() {
    return '{"ad": ${ad != null ? '${json.encode(ad)}' : 'null'},"ae": ${ae != null ? '${json.encode(ae)}' : 'null'},"af": ${af != null ? '${json.encode(af)}' : 'null'},"ag": ${ag != null ? '${json.encode(ag)}' : 'null'},"ah": ${ah != null ? '${json.encode(ah)}' : 'null'},"aa": ${aa != null ? '${json.encode(aa)}' : 'null'},"ab": ${ab != null ? '${json.encode(ab)}' : 'null'},"ac": ${ac != null ? '${json.encode(ac)}' : 'null'},"ai": $ai}';
  }
}

class baseaia {
  String dlna_location;
  String manufacturer;
  String ssdp_packet_data;

  baseaia.fromParams(
      {this.dlna_location, this.manufacturer, this.ssdp_packet_data});

  baseaia.fromJson(jsonRes) {
    dlna_location = jsonRes['dlna_location'];
    manufacturer = jsonRes['manufacturer'];
    ssdp_packet_data = jsonRes['ssdp_packet_data'];
  }

  @override
  String toString() {
    return '{"dlna_location": ${dlna_location != null ? '${json.encode(dlna_location)}' : 'null'},"manufacturer": ${manufacturer != null ? '${json.encode(manufacturer)}' : 'null'},"ssdp_packet_data": ${ssdp_packet_data != null ? '${json.encode(ssdp_packet_data)}' : 'null'}}';
  }
}

class base1 {
  String ad;
  String ae;
  String af;
  String ag;
  String ah;
  String aa;
  String ab;
  String ac;
  baseai ai;

  base1.fromParams(
      {this.ad,
      this.ae,
      this.af,
      this.ag,
      this.ah,
      this.aa,
      this.ab,
      this.ac,
      this.ai});

  base1.fromJson(jsonRes) {
    ad = jsonRes['ad'];
    ae = jsonRes['ae'];
    af = jsonRes['af'];
    ag = jsonRes['ag'];
    ah = jsonRes['ah'];
    aa = jsonRes['aa'];
    ab = jsonRes['ab'];
    ac = jsonRes['ac'];
    ai = jsonRes['ai'] == null ? null : new baseai.fromJson(jsonRes['ai']);
  }

  @override
  String toString() {
    return '{"ad": ${ad != null ? '${json.encode(ad)}' : 'null'},"ae": ${ae != null ? '${json.encode(ae)}' : 'null'},"af": ${af != null ? '${json.encode(af)}' : 'null'},"ag": ${ag != null ? '${json.encode(ag)}' : 'null'},"ah": ${ah != null ? '${json.encode(ah)}' : 'null'},"aa": ${aa != null ? '${json.encode(aa)}' : 'null'},"ab": ${ab != null ? '${json.encode(ab)}' : 'null'},"ac": ${ac != null ? '${json.encode(ac)}' : 'null'},"ai": $ai}';
  }
}

class baseai {
  String airplay;
  String appInfo;
  String atv;
  String channel;
  String devicemac;
  String etv;
  String feature;
  String h;
  String hmd;
  String hstv;
  String htv;
  String lebofeature;
  String lelinkport;
  String mirror;
  String packagename;
  String port;
  String raop;
  String remote;
  String u;
  String ver;
  String version;
  String vv;
  String w;

  baseai.fromParams(
      {this.airplay,
      this.appInfo,
      this.atv,
      this.channel,
      this.devicemac,
      this.etv,
      this.feature,
      this.h,
      this.hmd,
      this.hstv,
      this.htv,
      this.lebofeature,
      this.lelinkport,
      this.mirror,
      this.packagename,
      this.port,
      this.raop,
      this.remote,
      this.u,
      this.ver,
      this.version,
      this.vv,
      this.w});

  baseai.fromJson(jsonRes) {
    airplay = jsonRes['airplay'];
    appInfo = jsonRes['appInfo'];
    atv = jsonRes['atv'];
    channel = jsonRes['channel'];
    devicemac = jsonRes['devicemac'];
    etv = jsonRes['etv'];
    feature = jsonRes['feature'];
    h = jsonRes['h'];
    hmd = jsonRes['hmd'];
    hstv = jsonRes['hstv'];
    htv = jsonRes['htv'];
    lebofeature = jsonRes['lebofeature'];
    lelinkport = jsonRes['lelinkport'];
    mirror = jsonRes['mirror'];
    packagename = jsonRes['packagename'];
    port = jsonRes['port'];
    raop = jsonRes['raop'];
    remote = jsonRes['remote'];
    u = jsonRes['u'];
    ver = jsonRes['ver'];
    version = jsonRes['version'];
    vv = jsonRes['vv'];
    w = jsonRes['w'];
  }

  @override
  String toString() {
    return '{"airplay": ${airplay != null ? '${json.encode(airplay)}' : 'null'},"appInfo": ${appInfo != null ? '${json.encode(appInfo)}' : 'null'},"atv": ${atv != null ? '${json.encode(atv)}' : 'null'},"channel": ${channel != null ? '${json.encode(channel)}' : 'null'},"devicemac": ${devicemac != null ? '${json.encode(devicemac)}' : 'null'},"etv": ${etv != null ? '${json.encode(etv)}' : 'null'},"feature": ${feature != null ? '${json.encode(feature)}' : 'null'},"h": ${h != null ? '${json.encode(h)}' : 'null'},"hmd": ${hmd != null ? '${json.encode(hmd)}' : 'null'},"hstv": ${hstv != null ? '${json.encode(hstv)}' : 'null'},"htv": ${htv != null ? '${json.encode(htv)}' : 'null'},"lebofeature": ${lebofeature != null ? '${json.encode(lebofeature)}' : 'null'},"lelinkport": ${lelinkport != null ? '${json.encode(lelinkport)}' : 'null'},"mirror": ${mirror != null ? '${json.encode(mirror)}' : 'null'},"packagename": ${packagename != null ? '${json.encode(packagename)}' : 'null'},"port": ${port != null ? '${json.encode(port)}' : 'null'},"raop": ${raop != null ? '${json.encode(raop)}' : 'null'},"remote": ${remote != null ? '${json.encode(remote)}' : 'null'},"u": ${u != null ? '${json.encode(u)}' : 'null'},"ver": ${ver != null ? '${json.encode(ver)}' : 'null'},"version": ${version != null ? '${json.encode(version)}' : 'null'},"vv": ${vv != null ? '${json.encode(vv)}' : 'null'},"w": ${w != null ? '${json.encode(w)}' : 'null'}}';
  }
}
