import 'package:first_application/model/post_model.dart';
import "package:flutter/material.dart";

class firstPage extends StatefulWidget {
  const firstPage({Key key}) : super(key: key);

  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  postModel hasilApi = null;
  TextEditingController inputNama = TextEditingController();
  TextEditingController inputJabatan = TextEditingController();
  var nama, jabatan;

  _inputcheck(){
    if(inputNama.text == null && inputJabatan.text == null || inputNama.text == null || inputJabatan.text == null){
      print('Your data is empty');
    }else{
      nama = inputNama.text;
      jabatan = inputJabatan.text;
    }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
                Center(
                    child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'Masukan Nama & Jabatan',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.w500),
                        ))),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: inputNama,
                    decoration: InputDecoration(hintText: 'Nama'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: inputJabatan,
                    decoration: InputDecoration(hintText: 'Jabatan'),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                    child: Text((hasilApi != null)
                        ? hasilApi.id +
                            " " +
                            hasilApi.name +
                            " " +
                            hasilApi.job +
                            " " +
                            hasilApi.time_create
                        : 'Data kosong')),
                ElevatedButton(
                    onPressed: () => postModel
                            .apiRunning(inputNama.text, inputJabatan.text)
                            .then((value) {
                          hasilApi = value;
                          setState(() {});
                        }),
                    child: Text('Post'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
