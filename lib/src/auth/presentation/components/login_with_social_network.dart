import 'package:flutter/material.dart';

class LoginWithSocialNetwork extends StatelessWidget {
  const LoginWithSocialNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 50,
                color: Colors.black,
              ),
            ),
            const Text('ou connecte toi avec'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 50,
                color: Colors.black,
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 35),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: Image.asset(
                'assets/images/icons/facebook_icon.png',
                width: 240,
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                fixedSize: const Size(60, 60),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
            ),
            ElevatedButton(
              child: Image.asset('assets/images/icons/google_icon.png'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                fixedSize: const Size(60, 60),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
