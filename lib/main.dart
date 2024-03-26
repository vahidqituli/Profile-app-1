import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: getAppbar(),
        body: SafeArea(child: getMainbody()),
      ),
    );
  }
}

PreferredSizeWidget getAppbar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.red[400],
    title: Center(
      child: Text('وحید قیطولی'),
    ),
  );
}

Widget getMainbody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        getColumn(),
      ],
    ),
  );
}

Widget getColumn() {
  return Column(
    children: [
      SizedBox(
        height: 20,
      ),
      Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('images/vahid.png'),
          radius: 70,
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Text(
        'وحید قیطولی هستم عاشق برنامه نویسی',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
      ),
      Text('در حال یادگیری جاوا و لینوکس'),
      SizedBox(
        height: 30,
      ),
      getRowIcons(),
      SizedBox(
        height: 30,
      ),
      getSkillsTitle(),
      SizedBox(
        height: 30,
      ),
      getRsume(),
    ],
  );
}

Widget getRowIcons() {
  return Wrap(
    runAlignment: WrapAlignment.center,
    runSpacing: 20,
    spacing: 29,
    children: [
      IconButton(
        onPressed: () {
          print('Hello world');
        },
        icon: FaIcon(FontAwesomeIcons.squareInstagram),
      ),
      IconButton(
        onPressed: () {
          print('Hello world');
        },
        icon: FaIcon(FontAwesomeIcons.linkedinIn),
      ),
      IconButton(
        onPressed: () {
          print('Hello world');
        },
        icon: FaIcon(FontAwesomeIcons.telegram),
      ),
      IconButton(
        onPressed: () {
          print('Hello world');
        },
        icon: FaIcon(FontAwesomeIcons.whatsapp),
      ),
    ],
  );
}

Widget getSkills() {
  return Card(
    child: Wrap(
      runSpacing: 15,
      spacing: 10,
      children: [
        Container(
          width: 80,
          height: 80,
          child: Image(
            image: AssetImage('images/vahid.png'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Text('vahid'),
        ),
        Container(
          width: 80,
          height: 80,
          child: Image(
            image: AssetImage('images/vahid.png'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Text('vahid'),
        ),
        Container(
          width: 80,
          height: 80,
          child: Image(
            image: AssetImage('images/vahid.png'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Text('vahid'),
        ),
        Container(
          width: 80,
          height: 80,
          child: Image(
            image: AssetImage('images/vahid.png'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Text('vahid'),
        ),
      ],
    ),
  );
}

Widget getSkillsTitle() {
  var list = [
    'android',
    'dart',
    'flutter',
    'java',
  ];
  return Wrap(
    children: [
      for (var skill in list)
        Card(
          child: Column(
            children: [
              Container(
                width: 80,
                height: 80,
                child: Image(
                  image: AssetImage('images/$skill.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text('$skill'),
              )
            ],
          ),
        ),
    ],
  );
}

Widget getRsume() {
  var listRsume = [
    'برنامه نویس زرین پال از سال 98',
    'هست ترم ورک شاپ عملی دانشگاه تهران',
    'چنل آموزشی یوتیوب از سال 98',
    'آموزش برنامه نویسی از سال 93',
    ' مدرس و بنیان گذار Expert Flutter'
  ];
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    width: double.infinity,
    color: Colors.grey[300],
    child: Column(
      children: [
        Text(
          'سابقه کاری من',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: double.infinity,
              height: 10,
            ),
            for (var target in listRsume)
              Text(
                '$target',
                textDirection: TextDirection.rtl,
              ),
          ],
        ),
      ],
    ),
  );
}
