import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatelessWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('NinjaCard'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0.0, // to remove shadow
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(backgroundImage: AssetImage('assets/itachi.jpg'),
                radius: 45.0,
              ),
            ),
            Divider(
              height: 70.0,
              color: Colors.grey[700],
            ),
            Text('NAME',
              // textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 5.0,),
            Text('musafir',
              // textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0,),

            Text('CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),

            ),
            SizedBox(height: 5.0),
            Text('8',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                letterSpacing: 2.0,
                color: Colors.amberAccent,
              ),
            ),

            SizedBox(height: 30.0,),
            Row(
              children: [
                Icon(
                    Icons.email,
                    color: Colors.grey[400],
                ),
                SizedBox(width: 5.0,),
                Text('musafir@ninjacard.com',
                  style: TextStyle(
                    color: Colors.grey[500],
                    letterSpacing: 1.0,
                    fontSize: 18.0,
                  ),
                )

              ],
            )
          ],
        )
      ),
    );
  }
}
