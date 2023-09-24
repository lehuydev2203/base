import 'package:flutter/material.dart';
import 'package:flutter_base/viewmodel/home/home_viewmodel.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    Provider.of<HomeViewModel>(context, listen: false).get(context);
  }

  @override
  Widget build(BuildContext context) {
    final homeModel = Provider.of<HomeViewModel>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: ListView.builder(
            itemCount: homeModel.getData.length,
            itemBuilder: (context, index) {
              final product = homeModel.getData[index];
              return ListTile(
                title: Text('${product.name} ( ${product.status} )'),
                subtitle: Text(product.description),
                trailing: Text('\$${product.price}'),
              );
            }));
  }
}
