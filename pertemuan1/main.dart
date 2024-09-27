import 'dart:io';
import 'appointment.dart';
import 'doctor.dart';

void main() {
  List<Doctor> data_dokter = [
    Doctor(nama: 'dr. john doe', no_telpon: '1111', gaji: 10000),
    Doctor(nama: 'anis', no_telpon: '2222', gaji: 20000),
    Doctor(nama: 'beleng', no_telpon: '3333', gaji: 30000),
  ];
  List<Appointment> data_janji_temu = [];

  bool runing = true;
  while (runing) {
    print('1. Lihat data dokter');
    print('2. Buat janji temy');
    print('3. Lihat janji temy');
    print('4. klelur');
    stdout.write('masukkan pilihan anda >> ');
    String? pilihan = stdin.readLineSync();
    if (pilihan == '1') {
      print('\n Daftar dokter');
      (data_dokter.isEmpty)
          ? print('belum ada data dokter!')
          : data_dokter.asMap().forEach((index, doctor) {
              print('${index + 1}. ${doctor.keterangan()}');
            });
      stdout.write('masukkan nomor dokter >> ');
      String? pilih_dokter = stdin.readLineSync();
      int? pilihan_dokter = int.tryParse(pilih_dokter ?? '');
      if (pilihan_dokter != null &&
          pilihan_dokter > 0 &&
          pilihan_dokter <= data_dokter.length) {
        stdout.write('masukkan nama pasien : ');
        String? nama_pasien = stdin.readLineSync();
        stdout.write('masukkan tanggal janji temu (yyyy-mm-dd) : ');
        String? tanggal_janji_temu = stdin.readLineSync();
        stdout.write('masukkan jam janji temu (HH : MM) : ');
        String? jam_temu = stdin.readLineSync();
        if (nama_pasien != null &&
            tanggal_janji_temu != null &&
            jam_temu != null) {
          data_janji_temu.add(Appointment(
              dokter: data_dokter[pilihan_dokter - 1],
              nama_pasien: nama_pasien,
              date: tanggal_janji_temu,
              time: jam_temu));
        }
      }
    }
  }
}
