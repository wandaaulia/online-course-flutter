import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ini'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                padding: EdgeInsets.only(top: 30.0, left: 30.0, bottom: 30.0),
                child: Header(),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TitleCard(),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15.0),
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20.0),
                        child: CardCourse(),
                        decoration: BoxDecoration(
                          color: Colors.purple[200],
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ]),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TitleCardTeacher(),
              )
            ],
          ),
        ));
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Find Best',
          style: TextStyle(fontSize: 28),
        ),
        SizedBox(height: 8.0),
        Text(
          'Online School',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class CardCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              child: Column(
                children: [
                  Text(
                    'MON',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    '24',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            SizedBox(width: 20.0),
            Column(),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "UX & Web Design Course",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 5.0),
                  ElevatedButton(
                    child: Text(
                      'Join Class',
                      style: TextStyle(color: Colors.brown[300]),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow[600],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      minimumSize: Size(5, 41),
                      // elevation: 0.0,
                      // shadowColor: Colors.transparent,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class TitleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: [
            Text(
              'Next',
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(width: 8.0),
            Text(
              'Class',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.grey[200],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 0.0,
            shadowColor: Colors.transparent,
          ),
          child: Text(
            "View All",
            style: TextStyle(color: Colors.grey[500]),
          ),
        )
      ],
    );
  }
}

class TitleCardTeacher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: [
            Text(
              'Best',
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(width: 8.0),
            Text(
              'Teacher',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.grey[200],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 0.0,
            shadowColor: Colors.transparent,
          ),
          child: Text(
            "View All",
            style: TextStyle(color: Colors.grey[500]),
          ),
        )
      ],
    );
  }
}
