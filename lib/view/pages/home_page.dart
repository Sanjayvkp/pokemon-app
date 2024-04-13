import 'package:flutter/material.dart';
import 'package:pokemon_api/view/widgets/pokemon_list.dart';
import 'package:pokemon_api/view/widgets/text_field_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              TextFieldWidget(),
              PokeMonWidget()
            ],
          ),
        ),
      ),
    );
  }
}
