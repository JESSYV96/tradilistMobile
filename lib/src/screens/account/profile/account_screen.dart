import 'package:flutter/material.dart';

import '../../../common/UIKit/default_button.dart';
import 'components/progress_circle.dart';

class AccountScreen extends StatelessWidget {
  final ringSize = 104.0;

  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: const [
            Text('Bobby'),
            Text(
              'bobby.brown@email.fr',
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomPaint(
              foregroundPainter:
                  ProgressCircle(translationsNumber: 10, ringSize: ringSize),
              child: SizedBox(
                  width: ringSize,
                  height: ringSize,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '${10}',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Text('Traductions',
                            style: TextStyle(fontWeight: FontWeight.w400)),
                        Text('Niveau 1',
                            style: TextStyle(fontWeight: FontWeight.w300)),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              child: Column(
                children: [
                  DefaultButton(
                    text: 'Changer de mot de passe',
                    onButtonTap: () {}
                
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                  const DefaultButton(
                    text: 'Se déconnecter',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
