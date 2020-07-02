import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show json;
import 'package:dio/dio.dart';

class VideoScreen extends StatefulWidget {
  final String url;

  VideoScreen({@required this.url});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  final FijkPlayer player = FijkPlayer();
  var person;
  var pushUrl;
  _VideoScreenState();

  var url = 'http://example.com/whatsit/create';
  var token = '';
  // 登陆账号
  _doLogin() async {
    var dio = Dio();
    var loginUrl = 'http://122.51.248.81:3000/users/login';
    var getPushUrl = 'http://122.51.248.81:3000/flow/getPushUrl';
    // 登录请求
    var loginRes = await dio.post(loginUrl, data: {'username': 'admin', 'password': '123123'});
    var jsonRes = json.decode(loginRes.toString());
    var personData = new Persongenerated.fromJson(jsonRes);
    // 推流url
    dio.options.headers['authorization'] = personData.token;
    var pushRes = await dio.post(getPushUrl, data: {'username': personData.data.username });
    var jsonRes2 = json.decode(pushRes.toString());
    var pushData = new Pushgenerated.fromJson(jsonRes2);

    setState(() {
      person = personData;
      pushUrl = pushData.data.playUrlRTMP;
    });
    print('############Response body: $jsonRes');
    print('222222222222Response body: $jsonRes2');
    player.setDataSource(pushUrl, autoPlay: true);
  }
  @override
  void initState() {
    super.initState();
    _doLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sound hole")),
      body: Container(
        alignment: Alignment.center,
        child: FijkView(
          player: player,
        ),
    ));
  }

  @override
  void dispose() {
    super.dispose();
    player.release();
  }
}

class Persongenerated {
  PersonData data;
  String token;
  bool success;
  String message;

  Persongenerated({this.data, this.token, this.success, this.message});

  Persongenerated.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new PersonData.fromJson(json['data']) : null;
    token = json['token'];
    success = json['success'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['token'] = this.token;
    data['success'] = this.success;
    data['message'] = this.message;
    return data;
  }
}

class PersonData {
  int id;
  String username;
  String password;
  String nikename;
  String phone;
  String createdAt;
  String updatedAt;

  PersonData(
      {this.id,
      this.username,
      this.password,
      this.nikename,
      this.phone,
      this.createdAt,
      this.updatedAt});

  PersonData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    password = json['password'];
    nikename = json['nikename'];
    phone = json['phone'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['password'] = this.password;
    data['nikename'] = this.nikename;
    data['phone'] = this.phone;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class Pushgenerated {
  PushData data;

  Pushgenerated({this.data});

  Pushgenerated.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new PushData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class PushData {
  String pushUrl;
  String playUrlRTMP;
  String playUrlFLV;
  String playUrlHLS;
  bool success;

  PushData(
      {this.pushUrl,
      this.playUrlRTMP,
      this.playUrlFLV,
      this.playUrlHLS,
      this.success});

  PushData.fromJson(Map<String, dynamic> json) {
    pushUrl = json['pushUrl'];
    playUrlRTMP = json['playUrlRTMP'];
    playUrlFLV = json['playUrlFLV'];
    playUrlHLS = json['playUrlHLS'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pushUrl'] = this.pushUrl;
    data['playUrlRTMP'] = this.playUrlRTMP;
    data['playUrlFLV'] = this.playUrlFLV;
    data['playUrlHLS'] = this.playUrlHLS;
    data['success'] = this.success;
    return data;
  }
}