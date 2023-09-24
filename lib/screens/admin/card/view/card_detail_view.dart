import 'package:flutter/material.dart';
import 'package:flutter_base/model/card/card_model.dart';
import 'package:flutter_base/viewmodel/card/card_viewmodel.dart';
import 'package:provider/provider.dart';

class CardDetailView extends StatefulWidget {
  const CardDetailView({super.key});

  @override
  State<CardDetailView> createState() => _CardDetailView();
}

class _CardDetailView extends State<CardDetailView> {
  @override
  Widget build(BuildContext context) {
    final cardModel = Provider.of<CardViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Detail'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.width * 0.75,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text((cardModel.getCard as Cards).name),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20), // Khoảng cách giữa Card và nút button
            ElevatedButton(
              onPressed: () {
               cardModel.readCard();
              },
              child: const Text('Sử dụng code với NFC Manager'),
            ),
          ],
        ),
      ),
    );
  }
}
