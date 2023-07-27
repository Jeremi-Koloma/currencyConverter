import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  // valeurs initiale de la somme à convertir
  double resultConvert = 0;
  // pour avoir accès à la valeur input(le text tapé)
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print("-- recompilation ---");
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "€ ${resultConvert != 0 ? resultConvert.toStringAsFixed(2) : resultConvert.toStringAsFixed(0)}", // toStringAsFixed le nombre de chiffre après la virgule
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                // recupérons les valeurs rentré dans le champs
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: "Entrer votre montant FCFA",
                  hintStyle: const TextStyle(
                    color: Colors.black45,
                  ),
                  prefixIcon: const Icon(Icons.money),
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
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  setState(() {
                    resultConvert =
                        double.parse(textEditingController.text) * 0.00152073;
                  });
                },
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
