import 'client_content.dart';

const List<QuizQuestion> quizList = [
  QuizQuestion(
    question: 'Berikut yang hanya ada pada perusahaan manufaktur adalah...',
    options: [
      'a. Income Statement',
      'b. Cost of purchase',
      'c. Cost of penjualan',
      'd. The trial balance',
      'e. Cost of production',
    ],
    correctIndex: 4,
  ),
  QuizQuestion(
    question: 'Bahan yang menjadi bentuk integral dari produk jadi adalah…',
    options: [
      'a. Finished goods',
      'b. Material companion',
      'c. Forming materials',
      'd. Raw materials',
      'e. Indirect materials',
    ],
    correctIndex: 3,
  ),
  QuizQuestion(
    question:
        'Tenaga kerja yang terlibat langsung dalam proses mengubah bahan menjadi produk jadi disebut...',
    options: [
      'a. Direct labor',
      'b. Indirect labor',
      'c. Helpers',
      'd. Labor',
      'e. Supervisory personnel',
    ],
    correctIndex: 0,
  ),
  QuizQuestion(
    question:
        'Perusahaan mengeluarkan biaya listrik untuk mesin produksi, gaji operator, dan bahan baku utama. Dalam pencatatan biaya produksi, yang termasuk biaya overhead pabrik adalah…',
    options: [
      'a. Bahan baku utama',
      'b. Gaji operator produksi',
      'c. Listrik pabrik',
      'd. Bahan baku dan gaji operator',
      'e. Semua biaya produksi',
    ],
    correctIndex: 2,
  ),
  QuizQuestion(
    question: 'Urutan yang benar dalam proses manufaktur adalah…',
    options: [
      'a. Finished Goods → Raw Material→ Work in Process',
      'b. Raw Material→ Work in Process→ Finished Goods',
      'c. Work in Process → Raw Material→ Finished Goods',
      'd. Raw Material→ Finished Goods→ Work in Process',
      'e. Work in Process → Finished Goods → Raw Material',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    preface: '''Soal no 6 - 7

Suatu pabrik genting dalam bulan juli 2015 dapat menyelesaikan 12.000 unit. Biaya yang terjadi dalam bulan yang bersangkutan sebagai berikut :

Harga pokok bahan baku yang digunakan
Rp12.300.000
Upah karyawan pabrik
Rp8.700.000
Gaji Pengawas Produksi
Rp1.800.000
Bahan penolong yang digunakan
Rp2.400.000
Gaji admin kantor
Rp1.500.000
Penyusutan pabrik
Rp3.000.000''',
    question: 'Berdasarkan data di atas, biaya overhead pabrik adalah...',
    options: [
      'a. Rp12.300.000',
      'b. Rp18.300.000',
      'c. Rp28.800.000',
      'd. Rp7.200.000',
      'e. Rp30.300.000',
    ],
    correctIndex: 3,
  ),
  QuizQuestion(
    question: 'Berdasarkan data diatas, biaya tenaga kerja langsung adalah...',
    options: [
      'a. Rp. 12.000.000',
      'b. Rp. 8.700.000',
      'c. Rp. 15.600.000',
      'd. Rp. 10.500.000',
      'e. Rp. 1.800.000',
    ],
    correctIndex: 3,
  ),
  QuizQuestion(
    question:
        'Perusahaan ingin menurunkan HPP tanpa mengurangi kualitas produk. Strategi paling tepat adalah…',
    options: [
      'a. Menurunkan gaji karyawan tanpa perhitungan',
      'b. Mengurangi bahan baku utama',
      'c. Efisiensi penggunaan bahan dan overhead',
      'd. Menghapus biaya tenaga kerja',
      'e. Mengurangi penjualan',
    ],
    correctIndex: 2,
  ),
  QuizQuestion(
    question:
        'Dalam perusahaan manufaktur, biaya yang tidak bisa langsung ditelusuri ke produk disebut overhead pabrik. Jika sebuah biaya listrik pabrik meningkat drastis, dampak paling tepat terhadap laporan HPP adalah…',
    options: [
      'a. Menurunkan biaya produksi',
      'b. Meningkatkan HPP ',
      'c. Tidak berpengaruh',
      'd. Meningkatkan penjualan',
      'e. Menurunkan persediaan barang jadi',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question:
        'Bahan baku awal Rp 10.000.000, pembelian Rp 20.000.000, bahan baku akhir Rp 5.000.000. Jika 10% dari bahan baku merupakan bahan tidak langsung, maka bahan baku langsung digunakan adalah…',
    options: [
      'a. Rp 25.000.000',
      'b. Rp 22.500.000',
      'c. Rp 27.000.000',
      'd. Rp 23.000.000',
      'e. Rp 20.000.000',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question:
        'Bahan baku terpakai Rp 30.000.000, tenaga kerja Rp 10.000.000, overhead Rp 5.000.000, WIP awal Rp 4.000.000, WIP akhir Rp 2.000.000. Harga pokok produksi adalah…',
    options: [
      'a. Rp 47.000.000',
      'b. Rp 49.000.000',
      'c. Rp 45.000.000',
      'd. Rp 50.000.000',
      'e. Rp 52.000.000',
    ],
    correctIndex: 0,
  ),
  QuizQuestion(
    question: '''Sebuah perusahaan manufaktur memiliki data berikut:
Bahan baku langsung: Rp 80.000.000
Tenaga kerja langsung: Rp 50.000.000
Biaya overhead pabrik: Rp 40.000.000
Persediaan barang dalam proses awal: Rp 10.000.000
Persediaan barang dalam proses akhir: Rp 15.000.000
Berdasarkan data tersebut, harga pokok produksi (HPP) yang paling tepat adalah…''',
    options: [
      'a. Rp 150.000.000',
      'b. Rp 165.000.000',
      'c. Rp 155.000.000',
      'd. Rp 145.000.000',
      'e. Rp 140.000.000',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question:
        'Perusahaan manufaktur mengalami peningkatan biaya overhead pabrik sebesar 10% akibat penggunaan teknologi ramah lingkungan. Jika biaya overhead awal Rp 50.000.000, maka biaya overhead baru adalah…',
    options: [
      'a. Rp 55.000.000',
      'b. Rp 60.000.000',
      'c. Rp 65.000.000',
      'd. Rp 70.000.000',
      'e. Rp 75.000.000',
    ],
    correctIndex: 0,
  ),
  QuizQuestion(
    preface: 'Berdasarkan data diatas, jawab soal no 14 - 17.',
    imageAsset: 'assets/images/quiz_cogm.png',
    question: 'Berapakah nilai pembelian bahan baku yang tepat?',
    options: [
      'a. 27.500.000',
      'b. 30.500.000',
      'c. 31.500.000',
      'd. 32.500.000',
      'e. 33.500.000',
    ],
    correctIndex: 2,
  ),
  QuizQuestion(
    question: 'Berapakah nilai bahan baku pada akhir periode? ',
    options: [
      'a. 24.000.000',
      'b. 25.000.000',
      'c. 26.500.000',
      'd. 27.000.000',
      'e. 28.500.000',
    ],
    correctIndex: 3,
  ),
  QuizQuestion(
    question: 'Berapa total biaya produksi dari data diatas? ',
    options: [
      'a. 28.000.000',
      'b. 29.000.000',
      'c. 29.500.000',
      'd. 30.000.000',
      'e. 30.500.000',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question: 'Berapakah nilai barang dalam proses pada akhir periode? ',
    options: [
      'a. 16.500.000',
      'b. 17.500.000',
      'c. 18.500.000',
      'd. 19.500.000',
      'e. 21.000.000',
    ],
    correctIndex: 4,
  ),
  QuizQuestion(
    question:
        'Jika perusahaan menggunakan metode perpetual, karakteristik yang benar adalah…',
    options: [
      'a. HPP dihitung di akhir periode',
      'b. Persediaan tidak dicatat',
      'c. Setiap transaksi langsung mempengaruhi persediaan',
      'd. Tidak ada jurnal produksi',
      'e. Tidak ada laporan keuangan',
    ],
    correctIndex: 2,
  ),
  QuizQuestion(
    question: '''Perusahaan memiliki dua alternatif produksi:
Metode A: HPP lebih rendah tetapi menghasilkan limbah lebih tinggi
Metode B: HPP lebih tinggi tetapi lebih ramah lingkungan dan efisien jangka panjang

Keputusan yang paling tepat adalah…''',
    options: [
      'a. Memilih metode A karena selalu lebih murah',
      'b. Memilih metode B karena mempertimbangkan keberlanjutan',
      'c. Memilih metode berdasarkan biaya bahan baku dan tenaga kerja saja',
      'd. Tidak perlu mempertimbangkan aspek lingkungan',
      'e. Memilih metode yang menghasilkan produksi tercepat',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question:
        'Perusahaan ingin menurunkan HPP tanpa mengurangi kualitas produk dan tetap menjaga prinsip produksi ramah lingkungan. Strategi paling tepat adalah…',
    options: [
      'a. mengurangi seluruh biaya tenaga kerja langsung',
      'b. meningkatkan sistem kontrol produksi guna mengurangi waste bahan baku ',
      'c. menaikkan harga jual produk untuk menutupi biaya',
      'd. mengurangi kualitas bahan baku',
      'e. menghentikan penggunaan teknologi produksi',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question:
        'Perusahaan melakukan investasi berupa instalasi panel surya dan sistem pengolahan limbah yang memiliki manfaat ekonomis lebih dari satu periode akuntansi. Dalam perlakuan akuntansi, yang paling tepat adalah…',
    options: [
      'a. Seluruh biaya diakui sebagai beban pada periode terjadinya karena tidak berhubungan langsung dengan pendapatan yang dihasilkan pada periode yang sama',
      'b. Biaya diakui sebagai aset tetap karena memberikan manfaat ekonomi di masa depan dan dialokasikan melalui penyusutan selama masa manfaatnya',
      'c. Biaya tidak perlu dicatat dalam laporan keuangan karena termasuk aktivitas lingkungan yang tidak berhubungan dengan operasi utama perusahaan',
      'd. Biaya dicatat sebagai pengurang ekuitas karena tidak menghasilkan arus kas masuk langsung pada periode berjalan',
      'e. Biaya dicatat sebagai beban lain-lain tanpa mempertimbangkan umur manfaat atau prinsip akrual dalam pengakuan aset',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question:
        'Peningkatan reputasi perusahaan akibat kepatuhan terhadap standar lingkungan paling mungkin berdampak pada…',
    options: [
      'a. Penurunan arus kas operasi',
      'b. Penurunan harga saham secara otomatis',
      'c. Peningkatan kepercayaan investor dan nilai perusahaan',
      'd. Kenaikan kewajiban jangka pendek',
      'e. Penghapusan biaya pajak',
    ],
    correctIndex: 2,
  ),
  QuizQuestion(
    question:
        '''Sebuah perusahaan tekstil akan mengganti mesin produksi lama. Tersedia dua alternatif:
Mesin A meningkatkan kapasitas produksi sebesar 35%, tetapi konsumsi listrik naik 20%.
Mesin B meningkatkan kapasitas produksi sebesar 25%, mengurangi konsumsi listrik 30%, dan menghasilkan limbah produksi lebih sedikit.
Keputusan yang paling tepat bagi perusahaan untuk menjaga kinerja jangka panjang adalah …''',
    options: [
      'a. Memilih Mesin A karena kapasitas produksi merupakan satu-satunya ukuran keberhasilan',
      'b. Memilih Mesin B karena mempertimbangkan produktivitas, biaya, dan dampak operasional',
      'c. Mempertahankan mesin lama agar tidak terjadi pengeluaran investasi',
      'd. Memilih Mesin A karena kenaikan konsumsi listrik tidak memengaruhi perusahaan',
      'e. Memilih mesin dengan harga beli paling rendah tanpa analisis tambahan',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question:
        'Sebuah pabrik menghasilkan sisa bahan produksi sebanyak 800 kilogram setiap bulan. Selama ini seluruh sisa bahan dibuang. Manajemen mempertimbangkan untuk mengolahnya menjadi produk tambahan yang dapat dijual, tetapi diperlukan biaya pelatihan dan peralatan baru. Tindakan yang paling rasional adalah …',
    options: [
      'a. Tetap membuang sisa bahan karena proses tersebut lebih sederhana',
      'b. Menghentikan produksi agar tidak menghasilkan sisa bahan',
      'c. Mengolah sisa bahan jika nilai ekonomi dan pengurangan biaya pembuangan lebih besar daripada biaya program',
      'd. Menjual seluruh peralatan produksi untuk menghindari limbah',
      'e. Mengolah sisa bahan tanpa menghitung biaya dan potensi pasar',
    ],
    correctIndex: 2,
  ),
  QuizQuestion(
    question:
        '''Sebuah perusahaan akan memilih pemasok bahan baku. Pemasok X memberikan harga 12% lebih murah, tetapi sering terlambat, memiliki tingkat kecelakaan kerja tinggi, dan belum mengelola limbah dengan baik. Pemasok Y menawarkan harga lebih tinggi, tetapi kualitas stabil, pengiriman tepat waktu, dan proses produksinya lebih terkendali.
Keputusan terbaik adalah …''',
    options: [
      'a. Memilih Pemasok X karena harga beli paling rendah',
      'b. Memilih Pemasok Y tanpa melakukan analisis apa pun',
      'c. Membandingkan total biaya, kualitas, risiko operasional, dan dampak terhadap reputasi perusahaan',
      'd. Menggunakan Pemasok X dan mengabaikan masalah di tempat pemasok',
      'e. Memilih pemasok berdasarkan hubungan pribadi dengan manajemen',
    ],
    correctIndex: 2,
  ),
];
