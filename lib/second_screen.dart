import 'package:flutter/material.dart';
import 'package:flutter_sub/main_screen.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Column(
        children: [CardCourseContainer1(), CardCourseContainer2()],
      ),
    );
  }
}

class CardCourseContainer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0),
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      child: CardCourseAll(),
      decoration: BoxDecoration(
        color: Colors.purple[200],
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}

class CardCourseContainer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0),
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      child: CardCourse2(),
      decoration: BoxDecoration(
        color: Colors.purple[200],
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}

class CardCourseAll extends StatelessWidget {
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
                    'Tue',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    '26',
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
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Mobile design",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('by queen'), JoinButtonAll()],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class CardCourse2 extends StatelessWidget {
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
                    'Wed',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    '29',
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
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Design database",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('by Grace'), JoinButtonAll()],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class JoinButtonAll extends StatefulWidget {
  @override
  _JoinButtonAll createState() => _JoinButtonAll();
}

class _JoinButtonAll extends State<JoinButtonAll> {
  bool isJoin = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: isJoin
          ? Text(
              'has joined Class',
              style: TextStyle(color: Colors.brown[300]),
            )
          : Text(
              'Join Class',
              style: TextStyle(color: Colors.brown[300]),
            ),
      onPressed: () {
        setState(() {
          isJoin = !isJoin;
        });
      },
      style: ElevatedButton.styleFrom(
        primary: isJoin ? Colors.grey[300] : Colors.yellow[600],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        minimumSize: Size(5, 41),
        // elevation: 0.0,
        // shadowColor: Colors.transparent,
      ),
    );
  }
}
