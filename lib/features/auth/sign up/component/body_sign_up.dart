import 'package:flutter/material.dart';
import 'package:newtask/core/utils/validation.dart';

// ignore: must_be_immutable
class body_sign_up  extends StatelessWidget {
  body_sign_up({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Sign Up Page',
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        const Spacer(
          flex: 1,
        ),
        TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: TextEditingController(),
            keyboardType: TextInputType.name,
             validator: validationOf().nameValidate,
            decoration: decoration.copyWith(
                label: const Text("Name"),
                
                prefixIcon: const Icon(Icons.abc)
                )),
        const SizedBox(
          height: 30,
        ),
        TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: TextEditingController(),
            keyboardType: TextInputType.emailAddress,
            validator: validationOf().emailValidate,
            decoration: decoration.copyWith(
                label: const Text("Email"),
                hintText: "xxxx@gmail.com",
                prefixIcon: const Icon(Icons.email))),
        const SizedBox(
          height: 30,
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.emailAddress,
          validator: validationOf().passValidate,
          decoration: decoration.copyWith(
              label: const Text("Password"),
              //suffixIcon: const Icon(Icons.remove_red_eye)
              prefixIcon:const  Icon(Icons.lock)),
          obscureText: true,
          obscuringCharacter: '*',
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.emailAddress,
          validator: validationOf().passValidate,
          decoration: decoration.copyWith(
              label: const Text("Confirm Password"),
              //suffixIcon: const Icon(Icons.remove_red_eye))
              prefixIcon:const  Icon(Icons.lock)),
              
          obscureText: true,
          obscuringCharacter: '*',
        )
      ],
    );
  }

  InputDecoration decoration = InputDecoration(
    border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 3),
        borderRadius: BorderRadius.circular(20)),
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.blue, width: 3),
        borderRadius: BorderRadius.circular(20)),
    errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 3),
        borderRadius: BorderRadius.circular(20)),
  );
}
