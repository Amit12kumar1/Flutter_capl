import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  final String playerPhotoUrl;
  final String playerName;
  final String playerMobNumber;
  final String playerEmail;
  final String playerGender;

  const AccountPage({super.key,
    required this.playerPhotoUrl,
    required this.playerName,
    required this.playerMobNumber,
    required this.playerEmail,
    required this.playerGender,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEFF5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/bg.jpg"),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 100),
                  child: Text(
                    "Account",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
           const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20,bottom: 19.0,),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/p1.jpg'),
                ),
              ),
            ),
           const SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(7),
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 13.0, bottom: 8, left: 8),
                        child: Text(
                          playerName,
                          style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(7),
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 13.0, bottom: 8, left: 8),
                        child: Text(
                          playerName,
                          style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(7),
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 13.0, bottom: 8, left: 8),
                        child: Text(
                          playerMobNumber,
                          style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(7),
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 13.0, bottom: 8, left: 8),
                        child: Text(
                          playerName,
                          style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(7),
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 13.0, bottom: 8, left: 8),
                        child: Text(
                          playerGender,
                          style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}