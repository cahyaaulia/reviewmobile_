import 'dart:io';

class Doctor {
  String nama;
  String? no_telpon;
  int? gaji;
  Doctor({required this.nama, this.no_telpon, this.gaji});

  @override
  String keterangan() {
    return 'Nama ; $nama\nNo Telpon : $no_telpon\nGaji : $gaji';
  }
}
