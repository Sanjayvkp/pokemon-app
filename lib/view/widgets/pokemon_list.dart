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
        if (snapshot.hasData) {
          return ListView.separated(
            shrinkWrap: true,
            itemCount: snapshot.data!.length,
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                child: ListTile(
                  leading: Text(
                    snapshot.data![index].ability!.name,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 16,
              );
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
