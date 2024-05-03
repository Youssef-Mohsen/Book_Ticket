import 'package:book_ticket/screens/main_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  bool isSecurePassword = true;
  var formKey = GlobalKey<FormState>();

  void changeSecurePassword() {
    setState(() {
      isSecurePassword = !isSecurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Flight App',
          style: TextStyle(
              color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            CircleAvatar(
              radius: 120,
              child: Lottie.asset(
                'assets/LoginAnim.json',
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            TextFormField(
              controller: usernameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Username Must Not Be Empty';
                }
                if (value.toLowerCase() == 'youssef') {
                  return null;
                }
                return 'Incorrect Username';
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.green,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: isSecurePassword,
              controller: passwordController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Password Must Not Be Empty';
                }
                if (value == '0000') {
                  return null;
                }
                return 'Incorrect Password';
              },
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: "Password",
                prefixIcon: const Icon(
                  Icons.password,
                  color: Colors.green,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    changeSecurePassword();
                  },
                  icon: isSecurePassword
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            MaterialButton(
                color: Colors.green,
                height: 45,
                minWidth: 100,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const MainPage()));
                  }
                },
                child: const Text(
                  'Log In',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        elevation: 50,
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
              label: "If you Don't Have An Account", icon: Icon(Icons.person)),
          BottomNavigationBarItem(
              label: "Try youssef and 0000 pass", icon: Icon(Icons.password)),
        ],
      ),
    );
  }
}
