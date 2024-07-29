import 'package:flutter/material.dart';
import 'package:ornek1/view_model/ana_sayfa_view_model.dart';
import 'package:provider/provider.dart';

class AnaUygulama extends StatefulWidget {

  @override
  State<AnaUygulama> createState() => _AnaUygulamaState();
}

class _AnaUygulamaState extends State<AnaUygulama> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayaç"),
        backgroundColor: Colors.teal,
      ),

      body: Consumer<AnaSayfaViewModel>(
      builder: (context, viewModel, child) {
        return  Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Center(
        child:
        Text(
        viewModel.sayac.toString(),
        style: TextStyle(fontSize: 55),
        )
        ),
        ElevatedButton(
        child: Text(
          "Sayacı Arttır!",
          style: TextStyle(fontSize: 30),
        ),
        onPressed: viewModel.sayacArttir,
        ),
        ],
        );
},
      )
    );
  }
}
