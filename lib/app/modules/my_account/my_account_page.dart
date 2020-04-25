import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'my_account_controller.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage();

  @override
  _MyAccountPageState createState() => _MyAccountPageState();
}

class _MyAccountPageState
    extends ModularState<MyAccountPage, MyAccountController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                    "https://scontent-gig2-1.xx.fbcdn.net/v/t1.0-9/p960x960/49682593_2280863221945619_5499720062208049152_o.jpg?_nc_cat=109&_nc_sid=85a577&_nc_eui2=AeFUslvtdns1Kh-Lz8JSlniY4hkezTT2AjniGR7NNPYCOa_icYoQ0WP98A2Y0gSGUbCfGU3H8zSGFhFmCaY_JyFo&_nc_ohc=MfonR7G2-soAX_RevOR&_nc_ht=scontent-gig2-1.xx&_nc_tp=6&oh=055666f5ef44d21d21df64e021cbb271&oe=5EC99DFF"),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Victor Emidio",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            Text("São João Nepomuceno", style: TextStyle(fontSize: 17)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  buildInfos("15", "Posts"),
                  buildInfos("1", "Pets encontrados"),
                  buildInfos("1", "Pets"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Column buildInfos(String title, String sub) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
        Text(sub, style: TextStyle(fontSize: 17)),
      ],
    );
  }
}
