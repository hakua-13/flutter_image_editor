import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditSnapScreen extends StatefulWidget {
  const EditSnapScreen({super.key, required this.imageBitmap});

  final Uint8List imageBitmap;

  @override
  State<EditSnapScreen> createState() => _EditSnapScreenState();
}

class _EditSnapScreenState extends State<EditSnapScreen>{

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(l10n.imageEditScreenTitle),
      ),
      body: Center(
        child: Column(
          children: [
            Image.memory(widget.imageBitmap),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.rotate_left),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.flip),
            )
          ]
        ),
      )
    );
  }
}