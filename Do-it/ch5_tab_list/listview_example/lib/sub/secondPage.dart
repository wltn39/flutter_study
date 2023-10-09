import 'package:flutter/material.dart';
import '../animalItem.dart';

class SecondApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SecondApp();
  List<Animal>? list;
  SecondApp({Key? key, @required this.list}) : super(key: key);
}

class _SecondApp extends State<SecondApp> {
  final nameController = TextEditingController();
  int? _radioValue = 0;
  bool? flyExist = false;
  String? _imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: nameController,
              keyboardType: TextInputType.text,
              maxLines: 1,
            ),
            // 동물 종류 선택 라디오 버튼
            Row(
              children: <Widget>[
                Radio(
                    value: 0, groupValue: _radioValue, onChanged: _radioChange),
                Text('양서류'),
                Radio(
                    value: 1, groupValue: _radioValue, onChanged: _radioChange),
                Text('파충류'),
                Radio(
                    value: 2, groupValue: _radioValue, onChanged: _radioChange),
                Text('포유류'),
              ],
            ),
            // 날수 있는지 체크박스
            Row(
              children: <Widget>[
                Text('날 수 있나요?'),
                Checkbox(
                    value: flyExist,
                    onChanged: (bool? check) {
                      setState(() {
                        flyExist = check;
                      });
                    })
              ],
            ),
            // 동물 이미지 선택
            Row(children: <Widget>[
              GestureDetector(
                child: Image.asset('repo/images/cow.png', width: 80),
                onTap: () {
                  _imagePath = 'repo/images/cow.png';
                },
              ),
              GestureDetector(
                child: Image.asset('repo/images/pig.png', width: 80),
                onTap: () {
                  _imagePath = 'repo/images/pig.png';
                },
              ),
              GestureDetector(
                child: Image.asset('repo/images/bee.png', width: 80),
                onTap: () {
                  _imagePath = 'repo/images/bee.png';
                },
              ),
              GestureDetector(
                child: Image.asset('repo/images/cat.png', width: 80),
                onTap: () {
                  _imagePath = 'repo/images/cat.png';
                },
              ),
              GestureDetector(
                child: Image.asset('repo/images/dog.png', width: 80),
                onTap: () {
                  _imagePath = 'repo/images/dog.png';
                },
              ),
            ], mainAxisAlignment: MainAxisAlignment.spaceAround),
            ElevatedButton(child: Text('동물 추가하기'), onPressed: () {}),
          ],
        )),
      ),
    );
  }

  _radioChange(int? value) {
    setState(() {
      _radioValue = value;
    });
  }
}
