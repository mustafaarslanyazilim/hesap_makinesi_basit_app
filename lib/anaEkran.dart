import 'package:flutter/material.dart';

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  //değişkenler buraya //değer ataması istiyor en başta //veya ? nollable yapmamız gerekli
  //örn:  num? sayi; şeklinde
  num sayi1 = 0;
  num sayi2 = 0;
  num sonuc = 0;

  TextEditingController t1 = TextEditingController();
  //textEditing parametresi -->text default olarak bulunuyor içinde. ve biz textfield a girilen değeri bu text ile alıyoruz.
  TextEditingController t2 = TextEditingController();

  sayiTopla() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  sayiCikar() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  sayiCarp() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  sayiBol() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 / sayi2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin -->dış boşluk --çerçevden itibaren verilen boşluk
      //padding--> iç boşluk
      margin: const EdgeInsets.all(50.0),
      child: Center(
        child: Column(
          children: [
            Text("$sonuc"),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            const Padding(
              padding: EdgeInsets.all(22.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                  ),
                  onPressed: sayiTopla,
                  child: const Text(
                    "+",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.deepOrange),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                  ),
                  onPressed: sayiCikar,
                  child: const Text(
                    "-",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                  ),
                  onPressed: sayiCarp,
                  child: const Text(
                    "x",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                  ),
                  onPressed: sayiBol,
                  child: const Text(
                    "/",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
