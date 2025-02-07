import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qube_bidding/essentials/colors.dart';
import 'package:qube_bidding/screens/home_screen.dart';
import 'package:qube_bidding/essentials/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  int selectedColor = 0;
  int selectedImage = 0;
  final TextEditingController _usernameController = TextEditingController();

  String? storedUsername;

  @override
  void initState() {
    super.initState();
    _loadUsername();
  }

  Future<void> _loadUsername() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      storedUsername = prefs.getString('username');
    });
  }

  Future<void> _saveUsername(String username) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', username);
  }

  Future<String?> getUsername() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('username');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () async {
                          final username = _usernameController.text.trim();
                          if (username.isEmpty) {
                            // Handle empty username
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Please enter a username'),
                              ),
                            );
                            return;
                          }

                          final storedUsername = await getUsername();

                          if (storedUsername != null &&
                              storedUsername == username) {
                            // Existing user, show popup
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text(
                                  'Existing User',
                                  style: TextStyle(color: Colors.red),
                                ),
                                content: const Text(
                                    'You are already a registered user.'),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                            return;
                          }

                          // Save username
                          await _saveUsername(username);

                          // Show success message
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.green,
                              content: Text('Username saved successfully'),
                            ),
                          );
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));

                          _usernameController.clear();
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        child: const Text(
                          'Save',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )),
                  ],
                ),
                Container(
                  width: 128.0,
                  height: 128.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.all(Radius.circular(35)),
                    color: appColor[selectedColor],
                    image: DecorationImage(image: images[selectedImage]),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 10,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: _usernameController,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(
                        appColor.length,
                        (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedColor = index;
                              });
                              // print("selected : $selectedColor");
                            },
                            child: ColorContainer(setColor: appColor[index]))),
                    Image.asset(
                      'assets/multiColor.png',
                      width: 45,
                      height: 45,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 500,
                  width: 400,
                  child: GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 20.0,
                    children: [
                      ...List.generate(
                          images.length,
                          (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedImage = index;
                                });
                              },
                              child: GridAvatar(avatarImage: images[index]))),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
