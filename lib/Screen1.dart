import 'package:beach_app/Screen2.dart';
import 'package:flutter/material.dart';

class Pantalla1 extends StatelessWidget {
  const Pantalla1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: <Widget>[
                Image.asset(
                  'assets/images/BG.jpg',
                  fit: BoxFit.fitWidth,
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Colors.grey.withOpacity(0.0),
                        Colors.white,
                      ],
                      stops: const [0.7, 1.0],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 300,
              child: Text(
                'Explore Various Natural Beauty of Indonesia',
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 330,
              child: Text(
                'you can visit anywhere easily, order your ticket now to get lots of promos',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 330,
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Pantalla2()),
                    );
                },
                child: const Text('Get Started!'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}