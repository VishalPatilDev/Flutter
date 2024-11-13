import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 80;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    // double? result = 0;
    final border = OutlineInputBorder(
        borderSide: const BorderSide(
          width: 1.5,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(10));
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        toolbarHeight: 90,
        centerTitle: true,
        backgroundColor: Colors.deepPurple[400],
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.vertical(bottom: Radius.elliptical(50, 50))),
        title: const Text(
          "Currency Convertor",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w300,
            // fontStyle: FontStyle.italic,
          ),
        ),
        // centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white, //default size is 14
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.grey.shade400,
                  filled: true,
                  fillColor: Colors.white,
                  // focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: convert,
                // style: ButtonStyle(
                //   backgroundColor: const MaterialStatePropertyAll(Colors.black),
                //   foregroundColor: const MaterialStatePropertyAll(Colors.white),
                //   minimumSize: const MaterialStatePropertyAll(
                //     Size(double.infinity, 50),
                //   ),
                //   shape: MaterialStatePropertyAll(
                //     RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(5),
                //     ),
                //   ),
                // ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurple[400],
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),

                child: const Text(
                  "Convert",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
