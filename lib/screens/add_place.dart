import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:map_app/providers/user_places.dart';
class AddPlacesScreen extends ConsumerStatefulWidget {
  const AddPlacesScreen({super.key});

  @override
 ConsumerState<AddPlacesScreen> createState() => _AddPlacesScreenState();
}

class _AddPlacesScreenState extends ConsumerState<AddPlacesScreen> {
  final _titleController = TextEditingController();
  void _savePlace(){
    final enteredTitle = _titleController.text;

    if(  enteredTitle.isEmpty){
        return;
    }

    ref.read(userPlacesProvider.notifier).addPlace(enteredTitle);
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _titleController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Title"),
              controller: _titleController,
              style:TextStyle(color:Theme.of(context).colorScheme.onBackground,)
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton.icon(
                onPressed: _savePlace,
                label: const Text('Add Place'),
                icon: const Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
