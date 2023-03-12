import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardWidget(),
          SizedBox(height: 10,),
          CustomCardWidgetImage(
            image: NetworkImage('https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
          ),
          CustomCardWidgetImage(
            image: NetworkImage('https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg'),
            text: 'Un hermoso paisaje 2',
            hasCancelButton: true,
            hasOkButton: true,
          )
        ],
      )
    );
  }
}
