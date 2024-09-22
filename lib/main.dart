import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

const url =
    'https://th.bing.com/th/id/OIP.VHe1DTnuwc6ZHYcAjUx0xQHaEo?rs=1&pid=ImgDetMain';
const url2 =
    'https://tse1.mm.bing.net/th/id/OIP.cJcmOUaPGW-E8gb2WNz8CwHaHa?rs=1&pid=ImgDetMain';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          _bckimg(),
          _floatingcard(),
        ],
      ),
    );
  }
}

Stack _floatingcard() {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      _cardone(),
      _pfprounded(),
    ],
  );
}

Positioned _cardone() {
  return Positioned.fill(
    left: 20,
    right: 20,
    bottom: 30,
    top: 210,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      color: Colors.white,
      child: Cardcontent(),
    ),
  );
}

class Cardcontent extends StatelessWidget {
  const Cardcontent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // const Expanded(child: SizedBox()),
        _infosection(),
        _iconbar(),
        _followsection(),
        _finalfolicon(),
        _follownow()
      ],
    );
  }

  Column _infosection() {
    return Column(
        children: [
          _namesections(),
          _skillsections(),
        ],
      );
  }
}

Padding _follownow() {
  return Padding(
          padding: const EdgeInsets.all(18.0),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "FOLLOW NOW",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),
        );
}

Container _finalfolicon() {
  return Container(
    color: Colors.grey.shade100,
    width: double.infinity,
    child: Column(
      children: [
        _followerbar(),
        Text(
          "22 FOLLOWERS YOU KNOW",
          style: TextStyle(color: Colors.grey),
        )
      ],
    ),
  );
}

Padding _followerbar() {
  return Padding(
    padding: const EdgeInsets.only(
      right: 8.0,
      left: 8.0,
      top: 8.0,
    ),
    child: Container(
      height: 70,
      width: 180,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          _person1(),
          _person2(),
          _person3(),
          _person4(),
        ],
      ),
    ),
  );
}

Positioned _person4() {
  return Positioned(
    left: 120,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: Colors.white,
            ),
          ),
          child: CircleAvatar(
            radius: 25,
            child: Image.network(url2),
          ),
        ),
      ),
    ),
  );
}

Positioned _person3() {
  return Positioned(
    left: 80,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: Colors.white,
            ),
          ),
          child: CircleAvatar(
            radius: 25,
            child: Image.network(url2),
          ),
        ),
      ),
    ),
  );
}

Positioned _person2() {
  return Positioned(
    left: 40,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: Colors.white,
            ),
          ),
          child: CircleAvatar(
            radius: 25,
            child: Image.network(url2),
          ),
        ),
      ),
    ),
  );
}

Positioned _person1() {
  return Positioned(
    left: 0,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: Colors.white,
            ),
          ),
          child: CircleAvatar(
            radius: 25,
            child: Image.network(url2),
          ),
        ),
      ),
    ),
  );
}

Row _followsection() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      _followersection(),
      _followingsection(),
    ],
  );
}

Padding _followersection() {
  return Padding(
    padding: EdgeInsets.all(15.0),
    child: Column(
      children: [
        Text(
          '240',
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(
          'FOLLOWING',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w100, color: Colors.grey),
        ),
      ],
    ),
  );
}

Padding _followingsection() {
  return Padding(
    padding: EdgeInsets.all(15.0),
    child: Column(
      children: [
        Text(
          '24K',
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(
          'FOLLOWERS',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w100, color: Colors.grey),
        ),
      ],
    ),
  );
}

Text _skillsections() {
  return Text(
    'App Dev',
    style: TextStyle(
      fontWeight: FontWeight.w100,
      fontSize: 25,
      color: Colors.grey,
    ),
  );
}

class _namesections extends StatelessWidget {
  const _namesections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Varun V.',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40,
      ),
    );
  }
}

Padding _iconbar() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 30.0,
      right: 30.0,
      bottom: 20.0,
      top: 35.0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _Twittericon(),
        _linkedinicon(),
        _pinteresticon(),
        _facebookicon(),
        _githubicon(),
      ],
    ),
  );
}

Container _githubicon() {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      border: Border.all(
        color: Colors.black,
        width: 2,
      ),
    ),
    child: IconButton(
      onPressed: () {
        launch('https://github.com/');
      },
      icon: FaIcon(FontAwesomeIcons.github),
    ),
  );
}

Container _facebookicon() {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      border: Border.all(
        color: Colors.black,
        width: 2,
      ),
    ),
    child: IconButton(
      onPressed: () {
        launch('https://github.com/');
      },
      icon: FaIcon(FontAwesomeIcons.facebookF),
    ),
  );
}

Container _pinteresticon() {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      border: Border.all(
        color: Colors.black,
        width: 2,
      ),
    ),
    child: IconButton(
      onPressed: () {
        launch('https://github.com/');
      },
      icon: FaIcon(FontAwesomeIcons.pinterestP),
    ),
  );
}

Container _linkedinicon() {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      border: Border.all(
        color: Colors.black,
        width: 2,
      ),
    ),
    child: IconButton(
      onPressed: () {
        launch('https://github.com/');
      },
      icon: FaIcon(FontAwesomeIcons.linkedinIn),
    ),
  );
}

Container _Twittericon() {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      border: Border.all(
        color: Colors.black,
        width: 2,
      ),
    ),
    child: IconButton(
      onPressed: () {
        launch('https://github.com/');
      },
      icon: FaIcon(FontAwesomeIcons.xTwitter),
    ),
  );
}

ImageFiltered _bckimg() {
  return ImageFiltered(
    imageFilter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
    child: Image.network(
      url,
      width: double.infinity,
      height: 300,
      fit: BoxFit.cover,
    ),
  );
}

Positioned _pfprounded() {
  return Positioned(
    top: 150,
    left: 0,
    right: 0,
    child: Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                url2,
              )),
        ),
      ),
    ),
  );
}
