import 'package:flutter/material.dart';

class CustomCardWidgetImage extends StatelessWidget {

  final ImageProvider image;
  final String? text;
  final bool hasCancelButton;
  final bool hasOkButton;

   
  const CustomCardWidgetImage({Key? key, 
    required this.image, 
    this.text, 
    this.hasCancelButton = false, 
    this.hasOkButton = false
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/loading.gif'),
            image: image,
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (text!=null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(text!)
            ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                (hasCancelButton ? TextButton(
                  onPressed: () {},
                  child: const Text('CANCEL')
                ) : Container()),
                (hasOkButton ? TextButton(
                  onPressed: () {},
                  child: const Text('OK')
                ) : Container())
              ],
            ),
          )
        ],
      ),
    );
  }
}