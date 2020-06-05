import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: OnboardingPage(),
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
                      'Find a Perfect \n Job Match.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w400,
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
                    padding: const EdgeInsets.fromLTRB( 24.0, 28.0, 10.0, 55.9),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: FlatButton(
                        padding: EdgeInsets.all(17.0),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                        color: Colors.orange[900],
                        onPressed: () {},
                        child: Text(
                          'Get started',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(55.0),
                    child: Text('Skip', style: TextStyle(color: Colors.white, fontSize: 17.0, decoration: TextDecoration.underline),),
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
