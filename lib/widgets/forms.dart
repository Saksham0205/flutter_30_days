import 'package:flutter/material.dart';
class FormsWidget extends StatefulWidget {
  const FormsWidget({super.key});

  @override
  State<FormsWidget> createState() => _FormsWidgetState();
}

class _FormsWidgetState extends State<FormsWidget> {

  final _formkey = GlobalKey<FormState>();
  submit(){
    _formkey.currentState!.save();
    final isValid= _formkey.currentState!.validate();
    if(isValid){
      submitForm();

    } else{
      const SnackBar(content: Text("Error while saving the data"));
    }

  }
  submitForm(){
    print("Saved");

  }
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: const Text("Forms"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Name",
                  ),
                validator: (value) {
                  if(value!.isEmpty){
                    return "Name cannot be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: " Email",
                ),
                validator: (value) {
                  if(value!.isEmpty){
                    return "email can't be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Password",
                ),
                validator: (value) {
                  if(value.toString().length!=6){
                    return "Password should be of 6 characters";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20,),
              TextButton(onPressed: (){
                submit();
              }, child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
