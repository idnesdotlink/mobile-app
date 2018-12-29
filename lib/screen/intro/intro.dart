import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';

class IntroScreen extends StatelessWidget {

  final pages = [
    PageViewModel(
        pageColor: const Color(0xFF03A9F4),
        // iconImageAssetPath: 'assets/air-hostess.png',
        bubble: Image.asset('assets/png/logo.png'),
        body: Text(
          'Haselfree  booking  of  flight  tickets  with  full  refund  on  cancelation',
        ),
        title: Text(
          'Flights',
        ),
        // textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        mainImage: Image.asset(
          'assets/png/logo.png',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      iconImageAssetPath: 'assets/png/logo.png',
      body: Text(
        'We  work  for  the  comfort ,  enjoy  your  stay  at  our  beautiful  hotels',
      ),
      title: Text('Hotels'),
      mainImage: Image.asset(
        'assets/png/logo.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      // textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    PageViewModel(
      pageColor: const Color(0xFF607D8B),
      iconImageAssetPath: 'assets/png/logo.png',
      body: Text(
        'Easy  cab  booking  at  your  doorstep  with  cashless  payment  system',
      ),
      title: Text('Cabs'),
      mainImage: Image.asset(
        'assets/png/logo.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      // textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      pages,
        onTapDoneButton: () => Navigator.pop(context),
        doneText: Text('Selesai'),
        showSkipButton: false,//Whether you want to show the skip button or not.
        pageButtonTextStyles: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
/*       <PageViewModel>[
        PageViewModel(
          pageColor: const Color(0xFF607D8B),
          iconImageAssetPath: 'assets/png/logo.png',
          iconColor: null,
          bubbleBackgroundColor: null,
          body: Text(
            'XFocus ERP',
          ),
          title: Text('XFocus'),
          mainImage: Image.asset(
            'assets/png/logo.png',
            height: 285.0,
            width: 285.0,
            alignment: Alignment.center,
          ),
          textStyle: TextStyle(color: Colors.white),
        ),
        PageViewModel(
          pageColor: const Color(0xFF607D8B),
          iconImageAssetPath: 'assets/png/logo.png',
          iconColor: null,
          bubbleBackgroundColor: null,
          body: Text(
            'XFocus ERP 2',
          ),
          title: Text('XFocus 2'),
          mainImage: Image.asset(
            'assets/png/logo.png',
            height: 285.0,
            width: 285.0,
            alignment: Alignment.center,
          ),
          textStyle: TextStyle(color: Colors.white),
        ),
        PageViewModel(
          pageColor: const Color(0xFF607D8B),
          iconImageAssetPath: 'assets/png/logo.png',
          iconColor: null,
          bubbleBackgroundColor: null,
          body: Text(
            'XFocus ERP 3',
          ),
          title: Text('XFocus 3'),
          mainImage: Image.asset(
            'assets/png/logo.png',
            height: 285.0,
            width: 285.0,
            alignment: Alignment.center,
          ),
          textStyle: TextStyle(color: Colors.white),
        ),
      ],
      onTapDoneButton: () => Navigator.pop(context),
      doneText: Text('Selesai'),
      showSkipButton: false,
      // onTapSkipButton: () => Navigator.pop(context), */
    );
  }
}
