import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          child: Image.asset(
            'assets/images/bg_black.png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.10),
              Image.asset(
                'assets/images/name_privacy.png',
                fit: BoxFit.fill,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed viverra purus id purus laoreet laoreet. Cras feugiat id orci et pharetra. Ut eget porta quam, quis pulvinar eros. Aliquam venenatis ultrices dolor vel lobortis. Ut sit amet vehicula felis, in rhoncus nibh. In a dolor arcu. Phasellus sagittis non dui eget pharetra. Proin at aliquam sapien. Donec eu eros ac ligula dictum egestas eu quis eros. Praesent rutrum vulputate quam, eget accumsan eros tristique et. Maecenas tristique orci ac leo dapibus rhoncus. Ut id dolor lorem. Donec blandit magna nec sem ullamcorper, tristique pretium est vulputate. Proin ut ipsum sit amet ipsum fringilla volutpat a at dolor. Aenean semper ut risus non molestie.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Container(
                width: double.infinity,
                child: IconButton(
                  icon: Image.asset(
                    'assets/images/btn_back.png',
                    scale: 1,
                  ),
                  iconSize: 100,
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
