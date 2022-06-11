import 'package:flutter/material.dart';
import 'package:flutter_sub/main_screen.dart';
import 'package:flutter_sub/model/list_course.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('All Course'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final ListCourse cour = courseList[index];
                  return CardCourseAll(cour: cour);
                },
                itemCount: courseList.length,
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    top: 0.0, right: 40.0, left: 40.0, bottom: 25.0),
                child: ElevatedButton(
                    child: Text(
                      'Back To Home',
                      style: TextStyle(
                          color: Colors.brown[300],
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow[600],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      minimumSize: Size(5, 41),
                      // elevation: 0.0,
                      // shadowColor: Colors.transparent,
                    )))
          ],
        ));
  }
}

class CardCourseAll extends StatelessWidget {
  final ListCourse cour;

  CardCourseAll({required this.cour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.0, right: 15.0, left: 15.0, bottom: 0),
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Column(
                  children: [
                    Text(
                      cour.day,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 2.0),
                    Text(
                      cour.date,
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
              SizedBox(width: 10.0),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  cour.name,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(cour.teacher), JoinButtonAll()],
                )
              ],
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.purple[200],
        borderRadius: BorderRadius.circular(25),
      ),
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
