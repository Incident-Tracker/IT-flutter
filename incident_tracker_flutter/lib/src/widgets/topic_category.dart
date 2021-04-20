import 'package:flutter/material.dart';

class TopicCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(4),
            width: 88,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).accentColor,
            ),
            child: ElevatedButton(
              child: Text(index.toString()),
              onPressed: () {},
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(3.0),
                backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).accentColor,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
