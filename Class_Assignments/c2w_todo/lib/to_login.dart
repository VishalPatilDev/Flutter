import 'package:c2w_todo/todo_model_class.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final usernameTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: usernameTextEditingController,
                decoration: const InputDecoration(
                  hintText: 'Enter Username :',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter username";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordTextEditingController,
                decoration: const InputDecoration(
                  hintText: 'Enter Password :',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter password";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    bool isValidated = _formKey.currentState!.validate();
                    isValidated
                        // ? ScaffoldMessenger.of(context).showSnackBar(
                        //     const SnackBar(content: Text('Login Succesfull')),
                        //   )
                        ? Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ToDoApp(),
                            ),
                          )
                        : ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                            content: Text("Login Failed"),
                          ));
                  },
                  child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
