import 'package:flutter/material.dart';

class KisiKayitSayfa extends StatefulWidget {
  const KisiKayitSayfa({Key? key}) : super(key: key);

  @override
  _KisiKayitSayfaState createState() => _KisiKayitSayfaState();
}

class _KisiKayitSayfaState extends State<KisiKayitSayfa> {
  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();

  Future<void> kayit(String kisiAdi, String kisiTel) async {
    debugPrint("Kişi Kayıt $kisiAdi - $kisiTel");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kişi Kayıt Sayfası"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: tfKisiAdi,
                decoration: const InputDecoration(
                  hintText: "Kişi Ad",
                ),
              ),
              TextField(
                controller: tfKisiTel,
                decoration: const InputDecoration(
                    hintText: "Kişi Tel", border: OutlineInputBorder()),
              ),
              ElevatedButton(
                  onPressed: () async {
                    await kayit(tfKisiAdi.text, tfKisiTel.text);
                  },
                  child: const Text("KAYDET"))
            ],
          ),
        ),
      ),
    );
  }
}
