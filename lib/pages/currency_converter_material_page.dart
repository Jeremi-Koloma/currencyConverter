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
  // une varaible pour les bordures
  static const myborder = OutlineInputBorder(
    borderSide: BorderSide(
      width: 1.0,
      style: BorderStyle.solid,
      color: Color(0xff18DAA3),
    ),
    borderRadius: BorderRadius.all(Radius.circular(50)),
  );

  // Pour detruire l'object
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191C32),
      appBar: AppBar(
        title: const Text(
          "Convertion App",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff18DAA3),
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xff191C32),
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
                  color: Color(0xff18DAA3),
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                // recupérons les valeurs rentré dans le champs
                controller: textEditingController,
                style: const TextStyle(
                  color: Color(0xff18DAA3),
                ),
                decoration: const InputDecoration(
                  hintText: "Entrer votre montant FCFA",
                  hintStyle: TextStyle(
                    color: Color(0xff18DAA3),
                  ),
                  prefixIcon: Icon(Icons.money),
                  prefixIconColor: Color(0xff18DAA3),
                  filled: true,
                  fillColor: Color(0xff193843),
                  focusedBorder: myborder,
                  enabledBorder: myborder,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 13),
              TextButton(
                onPressed: () {
                  setState(() {
                    resultConvert =
                        double.parse(textEditingController.text) * 0.00152073;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xff763135),
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
              const SizedBox(height: 15),
              const Text(
                "© Copyright - Jeremi Koloma",
                style: TextStyle(
                  color: Color(0xff91939D),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
