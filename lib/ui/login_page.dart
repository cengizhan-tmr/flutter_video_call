import 'package:flutter/material.dart';
import '../ui/call_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _callIdController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _callIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.video_call, size: 100),

              Column(
                children: [
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    controller: _callIdController,
                    decoration: InputDecoration(
                      labelText: 'Call ID',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {
                  final userid = getUniqueID();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => CallPage(
                            callID: _callIdController.text,
                            userName: _usernameController.text,
                            userID: userid,
                          ),
                    ),
                  );
                },
                color: Colors.blue,
                child: const Text(
                  "join call",
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String getUniqueID() {
    String username = _usernameController.text;
    String id = username + DateTime.now().millisecondsSinceEpoch.toString();
    return id;
  }
}
