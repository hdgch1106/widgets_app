import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  static const name = "snackbar_screen";

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text("Hola Mundo"),
      action: SnackBarAction(label: "Ok!", onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text("¿Estás seguro?"),
              content: const Text("Ipsum ullamco nisi non eu dolore officia."),
              actions: [
                TextButton(
                    onPressed: () {
                      //Navigator.of(context).pop();
                      context.pop();
                    },
                    child: const Text("Cancelar")),
                FilledButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: const Text("Aceptar"))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars y Díalogos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text("Aute id pariatur ea elit nisi proident.")
                  ]);
                },
                child: const Text("Licencias usadas")),
            FilledButton(
                onPressed: () {
                  openDialog(context);
                },
                child: const Text("Mostrar diálogo"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Mostrar Snackbars"),
        icon: const Icon(
          Icons.remove_red_eye_outlined,
        ),
        onPressed: () {
          showCustomSnackbar(context);
        },
      ),
    );
  }
}
