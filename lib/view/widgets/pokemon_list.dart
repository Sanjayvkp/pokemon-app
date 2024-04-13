import 'package:flutter/material.dart';
import 'package:pokemon_api/controller/services/api_services.dart';

class PokeMonWidget extends StatelessWidget {
  const PokeMonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ApiService apiService = ApiService();
    return FutureBuilder(
      future: apiService.getData(),
      builder: (context, snapshot) {
        return ListView.separated(
          shrinkWrap: true,
          itemCount: 10,
          physics: const ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            return const Card(
              color: Colors.white,
              child: ListTile(
                leading: Text(
                  'Pokemon',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 16,
            );
          },
        );
      },
    );
  }
}
