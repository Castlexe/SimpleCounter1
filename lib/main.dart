import 'package:flutter/material.dart';
import 'package:ornek1/view/ana_sayfa.dart';
import 'package:ornek1/view_model/ana_sayfa_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(AnaSayfa());
}

class AnaSayfa extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
          create:(BuildContext context)=>AnaSayfaViewModel(),
          child: AnaUygulama(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
