import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider and Checks'),
      ),
      body: Column(
         children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            value: _sliderValue,
            onChanged: _sliderEnabled ? (value) {
              _sliderValue = value;
              setState(() {});
            } : null
          ),

          // Checkbox(
          //   value: _sliderEnabled, 
          //   onChanged: (value) {
          //     _sliderEnabled = value ?? true;
          //     setState(() {});
          //   }
          // ),

          CheckboxListTile(
            title: const Text('Enable Slider'),
            value: _sliderEnabled, 
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            }
          ),

          // Switch.adaptive(
          //   value: _sliderEnabled, 
          //   onChanged: (value) {
          //     _sliderEnabled = value ?? true;
          //     setState(() {});
          //   }
          // ),

          SwitchListTile.adaptive(
            title: const Text('Enable Slider'),
            value: _sliderEnabled, 
            onChanged: (value) {
              _sliderEnabled = value;
              setState(() {});
            }
          ),

          const AboutListTile(),
      
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://wallpapershome.com/images/wallpapers/corona-del-mar-2160x3840-4k-5k-wallpaper-8k-california-usa-best-6265.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),      
        ],
      ),
    );
  }
}