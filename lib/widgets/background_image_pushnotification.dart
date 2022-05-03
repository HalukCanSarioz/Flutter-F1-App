import 'package:flutter/material.dart';

class BackgroundImagePushNotificationCreate extends StatelessWidget {
  const BackgroundImagePushNotificationCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        shaderCallback: (bounds) => const LinearGradient(
                colors: [Colors.black, Colors.black12],
                begin: Alignment.bottomCenter,
                end: Alignment.center)
            .createShader(bounds),
        blendMode: BlendMode.darken,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/thumb-1920-921528.jpg'),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black12, BlendMode.darken))),
        ));
  }
}
