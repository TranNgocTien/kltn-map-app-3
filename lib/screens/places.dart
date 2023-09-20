import 'package:flutter/material.dart';
import 'package:map_app/providers/user_places.dart';
import 'package:map_app/widgets/places_list.dart';
import 'package:map_app/screens/add_place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final userPlaces = ref.watch(userPlacesProvider);


    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const AddPlacesScreen(),
                ),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: PlacesList(
        places: userPlaces,
      ),
    );
  }
}
