import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
   
  const ListViewScreen({Key? key}) : super(key: key);

  final List<Map<String,dynamic>> options = const [
    {
      'tittle' : 'Banks',
      'icon': Icon(Icons.account_balance_outlined)
    },
    {
      'tittle' : 'Card',
      'icon': Icon(Icons.credit_card_outlined)
    },
    {
      'tittle' : 'Account',
      'icon': Icon(Icons.account_balance_wallet)
    }
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView')
      ),
      // body: ListView(
      //   children: [
      //     ...options.map((e) => 
      //         ListTile(
      //           leading: Icon(Icons.adb),
      //           title: Text(e),
      //           trailing: Icon(Icons.arrow_right),
      //         )
      //       ).toList()
      //   ],)
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) =>       
          ListTile(
            leading: options[index]['icon'],
            title: Text(options[index]['tittle']),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => print(index),
          )
        ,
        separatorBuilder: ( _ , __) => const Divider(),
      )
    );
  }
}