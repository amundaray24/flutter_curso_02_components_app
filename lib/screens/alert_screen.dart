import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogCupertino(BuildContext context) {

    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context){
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus id elit tincidunt, mattis eros quis, dapibus tortor. Duis vitae massa pretium, vestibulum erat eu, sollicitudin ligula. Praesent bibendum posuere ipsum, consequat mollis metus tempus id. Proin eleifend arcu in elementum vestibulum. Integer suscipit, magna quis imperdiet feugiat, mauris neque lacinia purus, quis sollicitudin felis erat sed turpis. Sed ultrices tincidunt dapibus. Aenean rutrum ex sed risus commodo, sit amet euismod turpis vehicula. Morbi condimentum quis magna at feugiat. In nec mollis turpis, ac lobortis velit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis dignissim scelerisque aliquet. Vivamus non ultrices massa. Nulla vitae tortor elementum augue porta placerat. Nam sed neque ex. Aliquam in tellus ut risus varius commodo a pellentesque lorem. Nam at vehicula ligula.'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ]),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CANCEL',style: TextStyle(color: Colors.red),)
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK')
            )
          ],
        );
      }
    );
  }

  void displayDialogAndroid(BuildContext context) {

    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo del Dialog'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus id elit tincidunt, mattis eros quis, dapibus tortor. Duis vitae massa pretium, vestibulum erat eu, sollicitudin ligula. Praesent bibendum posuere ipsum, consequat mollis metus tempus id. Proin eleifend arcu in elementum vestibulum. Integer suscipit, magna quis imperdiet feugiat, mauris neque lacinia purus, quis sollicitudin felis erat sed turpis. Sed ultrices tincidunt dapibus. Aenean rutrum ex sed risus commodo, sit amet euismod turpis vehicula. Morbi condimentum quis magna at feugiat. In nec mollis turpis, ac lobortis velit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis dignissim scelerisque aliquet. Vivamus non ultrices massa. Nulla vitae tortor elementum augue porta placerat. Nam sed neque ex. Aliquam in tellus ut risus varius commodo a pellentesque lorem. Nam at vehicula ligula.'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ]),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CANCEL')
            )
          ],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
        onPressed: () => !Platform.isAndroid ? displayDialogAndroid(context) : displayDialogCupertino(context),
        child: const Text('Mostrar Alerta'), 
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}