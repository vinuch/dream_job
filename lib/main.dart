import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Position.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SingleChildScrollView(child: JobsPage()),
    ));
  }
}

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SvgPicture.asset('assets/images/onboarding-bg.svg', width: size.width),
        Container(
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 30.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Find a Perfect \nJob Match.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          letterSpacing: 3),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 10.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'One place with the best job companies in tech Apply to all of them with a single profile and get in touch with hiring managers directly.',
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.grey,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 3,
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24.0, 28.0, 10.0, 55.9),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: FlatButton(
                        padding: EdgeInsets.all(17.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        color: Colors.orange[900],
                        onPressed: () {},
                        child: Text(
                          'Get started',
                          style: TextStyle(color: Colors.white, fontSize: 14.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(55.0),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class JobsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          color: Colors.grey[100],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.short_text,
              size: 25.0,
            ),
            Image.asset(
              'assets/icons/user.png',
              width: 25.0,
            )
          ],
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              'Hi Robert, \nFind your Dream Job',
              style:
                  TextStyle(fontSize: 25.0, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 270.0,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'search for job title',
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              ),
            ),
            Container(
              height: 50.0,
              width: 60.0,
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 60.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/icons/equalizer.svg',
                      width: 25.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Popular company',
              style:
                  TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            )),
        SizedBox(
          height: 10.0,
        ),
        SizedBox(
          height: 220.0,
          child: Companies(),
        ),
        SizedBox(
          height: 20.0,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Recent Jobs',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
          ),
        ),
          SizedBox(height: 10.0,),
        SizedBox(
          height: 200.0,
          child: Jobs(),
        ),
      ],
            ),
          ),
        ),
    );
  }
}

class Companies extends StatefulWidget {
  @override
  _CompaniesState createState() => _CompaniesState();
}

class _CompaniesState extends State<Companies> {
  List<Position> positions = [
    Position('assets/images/nike.png', 'Senior UI Designer', 'Google',
        'California, CA', '\$50k - \$90k', ['Full time', 'Remote', 'Anywhere']),
    Position('assets/images/uber.png', 'Senior Frontend Developer', 'Uber',
        'California, CA', '\$50k - \$90k', ['Full time', 'Remote', 'Anywhere']),
    Position('assets/images/soundcloud.png', 'Senior Backend Developer', 'Sound Cloud',
        'California, CA', '\$50k - \$90k', ['Full time', 'Remote', 'Anywhere']),
    Position('assets/images/facebook.png', 'Senior Systems Architect', 'facebook',
        'California, CA', '\$50k - \$90k', ['Full time', 'Remote', 'Anywhere']),
    Position('assets/images/netflix.png', 'Senior UI Designer', 'Netflix',
        'California, CA', '\$50k - \$90k', ['Full time', 'Remote', 'Anywhere']),
    Position('assets/images/twitter.png', 'Senior UI Designer', 'Twitter',
        'California, CA', '\$50k - \$90k', ['Full time', 'Remote', 'Anywhere']),
    Position('assets/images/eden.png', 'Our Eden Life', 'Google',
        'California, CA', '\$50k - \$90k', ['Full time', 'Remote', 'Anywhere']),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: positions.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            child: Card(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
                decoration: new BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 250.0,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.all(10.0),
                            padding: EdgeInsets.all(4.0),
                            width: 50.0,
                            height: 50.0,
                            child: Image.asset(positions[index].logo),
                          ),
                        ),
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 30.0, horizontal: 18.0),
                              child: Text(
                                positions[index].price,
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            positions[index].role,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                                fontSize: 17.0),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          positions[index].company +
                              ' at ' +
                              positions[index].location,
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: new Row(
                          children: positions[index]
                              .conditions
                              .map((item) => new Container(
                                  decoration: new BoxDecoration(
                                    color: Color(0xff3D3D3D),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  padding: EdgeInsets.all(6.0),
                                  margin: EdgeInsets.symmetric(horizontal: 3.0),
                                  child: Text(
                                    item,
                                    style: TextStyle(color: Colors.white),
                                  )))
                              .toList()),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class Jobs extends StatefulWidget {
  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  List<Position> positions = [
    Position('assets/images/soundcloud.png', 'Senior Backend Developer', 'Sound Cloud',
        'California, CA', '\$50k - \$90k', ['Full time', 'Remote', 'Anywhere']),
    Position('assets/images/facebook.png', 'Senior Systems Architect', 'facebook',
        'California, CA', '\$50k - \$90k', ['Full time', 'Remote', 'Anywhere']),
    Position('assets/images/netflix.png', 'Senior UI Designer', 'Netflix',
        'California, CA', '\$50k - \$90k', ['Full time', 'Remote', 'Anywhere']),
    Position('assets/images/twitter.png', 'Senior UI Designer', 'Twitter',
        'California, CA', '\$50k - \$90k', ['Full time', 'Remote', 'Anywhere']),
    Position('assets/images/eden.png', 'Our Eden Life', 'Google',
        'California, CA', '\$50k - \$90k', ['Full time', 'Remote', 'Anywhere']),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: positions.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            height: 90,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                    Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            decoration: new BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.all(10.0),
                            padding: EdgeInsets.all(8.0),
                            width: 50.0,
                            height: 90.0,
                            child: Image.asset(positions[index].logo),
                          ),
                        ),
                  Text(positions[index].role + '\n' + positions[index].company),
                  Icon(Icons.more_vert)
                ],
              ),
            ));
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
