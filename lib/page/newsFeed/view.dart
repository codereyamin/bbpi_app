import 'package:flutter/material.dart';

class NewsView extends StatelessWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/profile.png"))),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Sample Title News",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Ex exercitation cupidatat mollit sit eiusmod dolor. Ea officia et labore aute fugiat ullamco deserunt mollit velit consectetur. Ullamco do pariatur ullamco duis officia aute esse do sit excepteur anim ad nulla. Aliquip qui excepteur magna sunt labore. Nulla ea officia tempor qui labore nulla exercitation elit ipsum incididunt. Labore adipisicing irure labore consectetur consectetur anim officia Lorem nostrud. Eiusmod ullamco laborum elit cupidatat laborum.Amet est occaecat laborum consectetur pariatur duis reprehenderit cupidatat magna anim cupidatat sunt. Non laboris occaecat ullamco eiusmod incididunt esse et commodo nisi officia reprehenderit. Dolore culpa ad non commodo ullamco in exercitation id quis in anim labore. Laboris exercitation nulla mollit sint qui esse fugiat in aliquip eiusmod ea. Ipsum in tempor fugiat pariatur labore enim proident sit dolor irure labore pariatur qui. Duis laboris labore exercitation labore nostrud excepteur sunt non. Nisi excepteur mollit pariatur quis aute occaecat labore.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
