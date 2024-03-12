import 'package:codelab/states/my_app_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var favorites = appState.favorites;
    return Container(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
        itemBuilder: (cxt, index) {
          return ListTile(
            title: Text(favorites[index].asPascalCase),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                appState.delete(favorites[index]);
              },
            ),
          );
        },
        itemCount: favorites.length,
      ),
    );
  }
}
