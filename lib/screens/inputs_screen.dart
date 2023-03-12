import 'dart:ffi';

import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final Map<String,String> formValues = {
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: formKey,
            onChanged: () {
              
            },
            child: Column(
              children: [
                CustomInputField(
                  formProperty: 'firstName',
                  formValues: formValues,
                  labelText: 'Name',
                  hintText: 'User Name',
                ),
                const SizedBox(height: 30,),
          
                CustomInputField(
                  formProperty: 'lastName',
                  formValues: formValues,
                  labelText: 'LastName',
                  hintText: 'User Last Name',
                ),
                const SizedBox(height: 30,),
          
                CustomInputField(
                  formProperty: 'email',
                  formValues: formValues,
                  labelText: 'Email',
                  hintText: 'User Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 30,),
          
                CustomInputField(
                  formProperty: 'password',
                  formValues: formValues,
                  labelText: 'Password',
                  hintText: 'User Password',
                  obscureText: true,
                ),
                const SizedBox(height: 30,),

                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem( value: 'SuperUser', child: Text('Super User')),
                    DropdownMenuItem( value: 'User', child: Text('User')),
                    DropdownMenuItem( value: 'Developer', child: Text('Developer')),
                  ], 
                  onChanged: (value) {
                    formValues['role'] = value ?? 'User';
                  }
                ),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Save'),
                    ),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!formKey.currentState!.validate()){
                      print('Formulario inválido');
                      return;
                    }
                    print(formValues);
                  }, 
                )
              ]
            ),
          ),
        ),
      )
    );
  }
}