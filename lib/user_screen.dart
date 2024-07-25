import 'package:flutter/material.dart';
import 'package:qube_bidding/essentials/colors.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Save',
                        style: TextStyle(
                            // color: Colors.white,
                            ),
                      )),
                ],
              ),
              Container(
                width: 128.0,
                height: 128.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(35)),
                  color: Color(0xffA0E9FF),
                  image: DecorationImage(
                      image: AssetImage('assets/avatarImg1.png')),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      // spreadRadius:,
                      blurRadius: 10,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                    suffixIcon: const Icon(
                      Icons.face,
                      size: 35,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 236, 234, 234),
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ColorContainer(setColor: AppColors.color1),
                    const ColorContainer(setColor: AppColors.color2),
                    const ColorContainer(setColor: AppColors.color3),
                    const ColorContainer(setColor: AppColors.color4),
                    const ColorContainer(setColor: AppColors.color5),
                    const ColorContainer(setColor: AppColors.color6),
                    Image.asset(
                      'assets/multiColor.png',
                      width: 45,
                      height: 45,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 550,
                width: 400,
                child: GridView.count(
                  crossAxisCount: 3,
                  // mainAxisSpacing: 8.0,
                  // crossAxisSpacing: 10.0,
                  children: [
                    GridAvatar(),
                    GridAvatar(),
                    GridAvatar(),
                    GridAvatar(),
                    GridAvatar(),
                    GridAvatar(),
                    GridAvatar(),
                    GridAvatar(),
                    GridAvatar(),
                    GridAvatar(),
                    GridAvatar(),
                    GridAvatar(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
