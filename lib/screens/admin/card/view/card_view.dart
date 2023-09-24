import 'package:flutter/material.dart';
import 'package:flutter_base/model/card/card_model.dart';
import 'package:flutter_base/viewmodel/card/card_viewmodel.dart';
import 'package:provider/provider.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardView();
}

class _CardView extends State<CardView> {
  @override
  void initState() {
    super.initState();
    Provider.of<CardViewModel>(context, listen: false).get();
  }

  @override
  Widget build(BuildContext context) {
    final cardModel = Provider.of<CardViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing:
                20.0, // Khoảng cách giữa các phần tử theo trục chính
            crossAxisSpacing:
                20.0, // Khoảng cách giữa các phần tử theo trục ngang
            childAspectRatio:
                1, // Tỷ lệ giữa chiều rộng và chiều cao của mỗi phần tử
          ),
          itemCount: cardModel.getCards.length,
          itemBuilder: (context, index) {
            final Cards card = cardModel.getCards[index];
            return GestureDetector(
                onTap: () => cardModel.detail(context, card.id),
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(card.name),
                      Text(card.code),
                    ],
                  ),
                ));
          }),
    );
  }
}
