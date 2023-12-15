import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _loginFormkey = GlobalKey<FormState>();
  final TextEditingController _usernameCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 225, 159),
      appBar: AppBar(
        title: Text("nutty"),
        backgroundColor: Color.fromARGB(255, 255, 167, 35),
      ),
      body: Form(
        key: _loginFormkey,
        child: Column(
          children: [
            SizedBox(height: 16),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your Username";
                }
                return null;
              },
              controller: _usernameCtrl,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  labelText: "Username",
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 112, 47, 4))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 58, 183, 64)))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your Password";
                  }
                  return null;
                },
                obscureText: true,
                obscuringCharacter: "#",
                controller: _passwordCtrl,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.key),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 92, 49, 0))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 58, 183, 64)))),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  print("onPressed");
                  if (_loginFormkey.currentState!.validate()) {
                    print("Successful");
                  }
                },
                child: Text("Log In")),
          ],
        ),
      ),
    );
  }
}
