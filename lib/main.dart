import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        // appBar: AppBar(
        //   title: const Text(
        //     "Profile UI",
        //     style: TextStyle(
        //       fontSize: 23,
        //     ),
        //   ),
        // ),
        body: Stack(
          children: [
            const Positioned(
              top: 50,
              left: 20,
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 40,
              ),
            ),

            const Positioned(
              top: 50,
              right: 20,
              child: Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 50, right: 50, bottom: 20, top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 95 ,
                      backgroundImage: AssetImage('assets/images/user-3.png'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Lily Davis",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "lilydavis@gmail.com",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontStyle: FontStyle.italic),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.yellow[400],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          )),
                      height: 70,
                      width: 500,
                      child: const Center(
                        child: Text(
                          "Upgrade to Premium",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ProfileMenuItem(
                      text: 'Your order history',
                      icon: Icons.shopping_bag_outlined,
                      arrowShown: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ProfileMenuItem(
                      text: 'Help and Support',
                      icon: Icons.help_outline,
                      arrowShown: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ProfileMenuItem(
                      text: 'Load gift voucher',
                      icon: Icons.card_giftcard,
                      arrowShown: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ProfileMenuItem(
                      text: 'Logout',
                      icon: Icons.logout,
                      arrowShown: false,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem(
      {super.key,
      required this.text,
      required this.icon,
      required this.arrowShown});
  final String text;
  final IconData icon;
  final bool arrowShown;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      height: 70,
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          arrowShown
              ? const Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
