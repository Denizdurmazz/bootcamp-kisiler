import 'package:flutter/material.dart';

import 'package:kisiler_uygulamasi/kisiler.dart';

class KisiDetaySayfa extends StatefulWidget {
  Kisiler kisiler;
  KisiDetaySayfa({
    Key? key,
    required this.kisiler,
  }) : super(key: key);

  @override
  _KisiDetaySayfaState createState() => _KisiDetaySayfaState();
}

class _KisiDetaySayfaState extends State<KisiDetaySayfa> {
  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();

  Future<void> guncelle(int kisi_id, String kisiAdi, String kisiTel) async {
    debugPrint("Kişi Güncelle $kisi_id - $kisiAdi - $kisiTel");
  }

  @override
  void initState() {
    super.initState();
    tfKisiAdi.text = widget.kisiler.kisi_adi;
    tfKisiTel.text = widget.kisiler.kisi_tel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kişi Detay"),
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
                    await guncelle(
                        widget.kisiler.kisi_id, tfKisiAdi.text, tfKisiTel.text);
                  },
                  child: const Text("Güncelle"))
            ],
          ),
        ),
      ),
    );
  }
}
