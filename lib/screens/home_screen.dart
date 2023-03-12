import 'package:flutter/material.dart';
import 'package:flutter_curso_02_components_app/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components')
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        itemBuilder: (context, index) =>       
          ListTile(
            leading: Icon(AppRoutes.menuOptions[index].icon),
            title: Text(AppRoutes.menuOptions[index].tittle),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.pushNamed(context, AppRoutes.menuOptions[index].route),
          )
        ,
        separatorBuilder: ( _ , __) => const Divider(),
      )
    );
  }
}