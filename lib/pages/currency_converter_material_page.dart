import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    // valeurs initiale de la somme à convertir
    int resultConvert = 0;
    // pour recupération de la valeur input
    final TextEditingController textEditingController = TextEditingController();

    // une varaible pour les bordures
    final myborder = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(50)),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text(
          "Convertion App",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "0",
              style: TextStyle(
                color: Colors.white,
                fontSize: 55,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                // recupérons les valeurs rentré dans le champs
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: "Entrer votre montant FCFA",
                  hintStyle: const TextStyle(
                    color: Colors.black45,
                  ),
                  prefixIcon: const Icon(Icons.euro_outlined),
                  prefixIconColor: Colors.black45,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: myborder,
                  enabledBorder: myborder,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
                child: const Text("Convertir"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
