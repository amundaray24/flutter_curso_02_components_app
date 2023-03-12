import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Soy una Tarjeta'),
            subtitle: Text ('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus id elit tincidunt, mattis eros quis, dapibus tortor. Duis vitae massa pretium, vestibulum erat eu, sollicitudin ligula. Praesent bibendum posuere ipsum, consequat mollis metus tempus id. Proin eleifend arcu in elementum vestibulum. Integer suscipit, magna quis imperdiet feugiat, mauris neque lacinia purus, quis sollicitudin felis erat sed turpis. Sed ultrices tincidunt dapibus. Aenean rutrum ex sed risus commodo, sit amet euismod turpis vehicula. Morbi condimentum quis magna at feugiat. In nec mollis turpis, ac lobortis velit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis dignissim scelerisque aliquet. Vivamus non ultrices massa. Nulla vitae tortor elementum augue porta placerat. Nam sed neque ex. Aliquam in tellus ut risus varius commodo a pellentesque lorem. Nam at vehicula ligula.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('CANCEL')
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('OK')
                ),
              ],
            ),
          )
        ]
        ),
    );
  }
}