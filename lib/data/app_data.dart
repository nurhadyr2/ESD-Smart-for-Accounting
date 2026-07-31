import 'package:flutter/material.dart';

// ============================================================
// MODEL
// ============================================================

class NewsItem {
  final String title;
  final String category;
  final String summary;
  final IconData icon;

  const NewsItem({
    required this.title,
    required this.category,
    required this.summary,
    required this.icon,
  });
}

class MateriItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final List<MateriSection> sections;

  const MateriItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.sections,
  });
}

class MateriSection {
  final String heading;
  final String body;
  final IconData? imageIcon; // placeholder ilustrasi
  final String? imageCaption;

  const MateriSection({
    required this.heading,
    required this.body,
    this.imageIcon,
    this.imageCaption,
  });
}

class QuizQuestion {
  final String question;
  final String category;
  final List<String> options;
  final int correctIndex;

  const QuizQuestion({
    required this.question,
    required this.category,
    required this.options,
    required this.correctIndex,
  });
}

class FileLinkItem {
  final String title;
  final String description;
  final String meta;
  final IconData icon;
  final String url;

  const FileLinkItem({
    required this.title,
    required this.description,
    required this.meta,
    required this.icon,
    required this.url,
  });
}

// ============================================================
// DATA BERITA (Do You Know — slider)
// ============================================================

const List<NewsItem> newsList = [
  NewsItem(
    title: 'Manufaktur Hijau: Masa Depan Industri Indonesia',
    category: 'Lingkungan',
    summary:
        'Konsep green manufacturing kini diterapkan banyak perusahaan untuk mengurangi limbah dan emisi karbon dalam proses produksi.',
    icon: Icons.factory,
  ),
  NewsItem(
    title: 'Akuntansi Lingkungan dalam Bisnis Modern',
    category: 'Akuntansi',
    summary:
        'Environmental accounting membantu perusahaan menghitung biaya lingkungan dan melaporkan dampak kegiatan bisnis terhadap alam.',
    icon: Icons.eco,
  ),
  NewsItem(
    title: 'Ekonomi Sirkular: Daur Ulang Jadi Nilai Ekonomis',
    category: 'Ekonomi',
    summary:
        'Ekonomi sirkular mengubah limbah menjadi sumber daya baru, menciptakan lapangan kerja hijau dan mengurangi ketergantungan bahan baku.',
    icon: Icons.recycling,
  ),
  NewsItem(
    title: 'ESG: Standar Baru Laporan Keuangan Perusahaan',
    category: 'Keuangan',
    summary:
        'Investor kini menilai perusahaan dari aspek Environmental, Social, dan Governance — bukan hanya laba finansial semata.',
    icon: Icons.trending_up,
  ),
  NewsItem(
    title: 'Energi Terbarukan di Sektor Manufaktur',
    category: 'Energi',
    summary:
        'Panel surya dan biomassa mulai menggantikan bahan bakar fosil di pabrik-pabrik, menekan biaya energi jangka panjang.',
    icon: Icons.solar_power,
  ),
];

// ============================================================
// DATA MATERI (4 sub bab)
// ============================================================

const List<MateriItem> materiList = [
  MateriItem(
    title: 'Jurnal Transaksi',
    subtitle: 'Pencatatan awal transaksi keuangan',
    icon: Icons.receipt_long,
    sections: [
      MateriSection(
        heading: 'Pengertian Jurnal Transaksi',
        body:
            'Jurnal transaksi adalah catatan kronologis atas seluruh transaksi keuangan yang terjadi dalam suatu periode akuntansi. Setiap transaksi dicatat berdasarkan bukti transaksi seperti faktur, kuitansi, dan nota.\n\n'
            'Dalam konteks manufaktur hijau, pencatatan transaksi juga mencakup biaya-biaya lingkungan seperti pengelolaan limbah, sertifikasi ramah lingkungan, dan investasi energi terbarukan.',
        imageIcon: Icons.receipt_long,
        imageCaption: 'Ilustrasi pencatatan jurnal transaksi',
      ),
      MateriSection(
        heading: 'Fungsi Jurnal',
        body:
            '1. Fungsi Historis — mencatat transaksi secara kronologis.\n'
            '2. Fungsi Pencatatan — mencatat seluruh transaksi tanpa terkecuali.\n'
            '3. Fungsi Analisis — menganalisis akun yang didebit dan dikredit.\n'
            '4. Fungsi Instruktif — menjadi perintah untuk memposting ke buku besar.\n'
            '5. Fungsi Informatif — memberikan informasi transaksi perusahaan.',
      ),
      MateriSection(
        heading: 'Format Jurnal Umum',
        body:
            'Jurnal umum terdiri dari kolom: Tanggal, Keterangan/Nama Akun, Ref, Debit, dan Kredit.\n\n'
            'Contoh:\n'
            'Tanggal: 1 Jan 2026\n'
            'Kas (D) Rp 10.000.000\n'
            '   Modal (K) Rp 10.000.000\n'
            '(Setoran awal pemilik usaha)',
        imageIcon: Icons.table_chart,
        imageCaption: 'Contoh format jurnal umum',
      ),
      MateriSection(
        heading: 'Aturan Debit dan Kredit',
        body:
            '• Aset bertambah → Debit, berkurang → Kredit\n'
            '• Kewajiban bertambah → Kredit, berkurang → Debit\n'
            '• Ekuitas/Modal bertambah → Kredit, berkurang → Debit\n'
            '• Pendapatan bertambah → Kredit\n'
            '• Beban bertambah → Debit\n\n'
            'Prinsip keseimbangan: total debit harus selalu sama dengan total kredit.',
      ),
    ],
  ),
  MateriItem(
    title: 'Buku Besar',
    subtitle: 'Pengelompokan akun-akun transaksi',
    icon: Icons.menu_book,
    sections: [
      MateriSection(
        heading: 'Pengertian Buku Besar',
        body:
            'Buku besar (general ledger) adalah kumpulan akun-akun yang digunakan untuk mengelompokkan dan meringkas transaksi yang telah dicatat dalam jurnal. Proses memindahkan catatan dari jurnal ke buku besar disebut posting.\n\n'
            'Buku besar menjadi dasar penyusunan neraca saldo dan laporan keuangan.',
        imageIcon: Icons.menu_book,
        imageCaption: 'Ilustrasi buku besar akuntansi',
      ),
      MateriSection(
        heading: 'Bentuk-Bentuk Buku Besar',
        body:
            '1. Bentuk T (T-Account) — bentuk paling sederhana, sisi kiri debit dan sisi kanan kredit.\n'
            '2. Bentuk Skontro — dua kolom berdampingan (debit dan kredit).\n'
            '3. Bentuk Staffel — memiliki kolom saldo sehingga saldo akun langsung terlihat setiap saat.',
      ),
      MateriSection(
        heading: 'Contoh Posting ke Buku Besar',
        body:
            'Akun: Kas (No. 111)\n\n'
            'Debit:\n'
            '1 Jan — Setoran modal Rp 10.000.000\n'
            '15 Jan — Penerimaan pendapatan Rp 3.500.000\n\n'
            'Kredit:\n'
            '5 Jan — Pembelian peralatan Rp 2.000.000\n'
            '20 Jan — Pembayaran beban listrik Rp 500.000\n\n'
            'Saldo akhir Kas = Rp 11.000.000 (Debit)',
        imageIcon: Icons.account_balance_wallet,
        imageCaption: 'Contoh akun Kas dalam buku besar',
      ),
    ],
  ),
  MateriItem(
    title: 'Jurnal Penyesuaian',
    subtitle: 'Penyesuaian saldo akhir periode',
    icon: Icons.edit_note,
    sections: [
      MateriSection(
        heading: 'Pengertian Jurnal Penyesuaian',
        body:
            'Jurnal penyesuaian (adjusting entries) adalah jurnal yang dibuat pada akhir periode akuntansi untuk menyesuaikan saldo akun-akun agar mencerminkan keadaan yang sebenarnya.\n\n'
            'Tujuannya agar laporan keuangan menyajikan informasi yang akurat sesuai prinsip akrual.',
        imageIcon: Icons.edit_note,
        imageCaption: 'Ilustrasi jurnal penyesuaian',
      ),
      MateriSection(
        heading: 'Akun yang Memerlukan Penyesuaian',
        body:
            '1. Perlengkapan — penyesuaian pemakaian perlengkapan.\n'
            '2. Beban dibayar di muka — alokasi beban per periode.\n'
            '3. Pendapatan diterima di muka — pengakuan pendapatan yang telah menjadi hak.\n'
            '4. Penyusutan aset tetap — alokasi biaya perolehan aset.\n'
            '5. Piutang pendapatan — pendapatan yang belum diterima.\n'
            '6. Utang beban — beban yang belum dibayar.',
      ),
      MateriSection(
        heading: 'Contoh Jurnal Penyesuaian',
        body:
            'Contoh 1 — Pemakaian perlengkapan:\n'
            'Beban Perlengkapan (D) Rp 750.000\n'
            '   Perlengkapan (K) Rp 750.000\n\n'
            'Contoh 2 — Penyusutan mesin produksi ramah lingkungan:\n'
            'Beban Penyusutan Mesin (D) Rp 1.200.000\n'
            '   Akumulasi Penyusutan Mesin (K) Rp 1.200.000',
        imageIcon: Icons.calculate,
        imageCaption: 'Contoh perhitungan penyesuaian',
      ),
    ],
  ),
  MateriItem(
    title: 'Laporan Keuangan',
    subtitle: 'Hasil akhir siklus akuntansi',
    icon: Icons.bar_chart,
    sections: [
      MateriSection(
        heading: 'Pengertian Laporan Keuangan',
        body:
            'Laporan keuangan adalah hasil akhir dari proses akuntansi yang menyajikan informasi keuangan perusahaan kepada pihak internal dan eksternal.\n\n'
            'Dalam era manufaktur hijau, banyak perusahaan juga menyusun laporan keberlanjutan (sustainability report) sebagai pelengkap laporan keuangan.',
        imageIcon: Icons.bar_chart,
        imageCaption: 'Ilustrasi laporan keuangan',
      ),
      MateriSection(
        heading: 'Jenis-Jenis Laporan Keuangan',
        body:
            '1. Laporan Laba Rugi — menunjukkan pendapatan, beban, dan laba/rugi periode berjalan.\n'
            '2. Laporan Perubahan Ekuitas — menunjukkan perubahan modal pemilik.\n'
            '3. Neraca (Laporan Posisi Keuangan) — menunjukkan aset, kewajiban, dan ekuitas pada tanggal tertentu.\n'
            '4. Laporan Arus Kas — menunjukkan aliran kas masuk dan keluar.\n'
            '5. Catatan atas Laporan Keuangan — penjelasan rinci pos-pos laporan.',
      ),
      MateriSection(
        heading: 'Laporan Keuangan & Keberlanjutan',
        body:
            'Perusahaan manufaktur hijau mengintegrasikan aspek lingkungan dalam pelaporan keuangan, antara lain:\n\n'
            '• Biaya lingkungan (environmental cost) sebagai bagian dari beban operasional.\n'
            '• Investasi aset ramah lingkungan seperti panel surya dan mesin hemat energi.\n'
            '• Pengungkapan emisi karbon dan target pengurangannya.\n'
            '• Standar pelaporan ESG (Environmental, Social, Governance).',
        imageIcon: Icons.eco,
        imageCaption: 'Pelaporan keberlanjutan perusahaan hijau',
      ),
    ],
  ),
];

// ============================================================
// DATA QUIZ (25 soal)
// ============================================================

const List<QuizQuestion> quizList = [
  QuizQuestion(
    question: 'Persamaan dasar akuntansi yang benar adalah…',
    category: 'Dasar Akuntansi',
    options: [
      'Aset = Kewajiban + Ekuitas',
      'Aset = Pendapatan - Beban',
      'Ekuitas = Aset + Kewajiban',
      'Kewajiban = Aset + Modal',
      'Modal = Aset - Kewajiban',
    ],
    correctIndex: 0,
  ),
  QuizQuestion(
    question: 'Langkah pertama dalam siklus akuntansi adalah…',
    category: 'Siklus Akuntansi',
    options: [
      'Posting ke Buku Besar',
      'Analisis Transaksi',
      'Penyusunan Laporan Keuangan',
      'Pembuatan Jurnal Penutup',
      'Pembuatan Neraca Saldo',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question: 'Dokumen yang menjadi dasar pencatatan transaksi adalah…',
    category: 'Dasar Akuntansi',
    options: [
      'Buku besar',
      'Neraca saldo',
      'Bukti transaksi (faktur, kuitansi, nota)',
      'Laporan laba rugi',
      'Jurnal penutup',
    ],
    correctIndex: 2,
  ),
  QuizQuestion(
    question: 'Jurnal yang dibuat pada akhir periode untuk menyesuaikan saldo akun disebut…',
    category: 'Jurnal Penyesuaian',
    options: [
      'Jurnal umum',
      'Jurnal khusus',
      'Jurnal penutup',
      'Jurnal penyesuaian',
      'Jurnal pembalik',
    ],
    correctIndex: 3,
  ),
  QuizQuestion(
    question: 'Proses memindahkan catatan dari jurnal ke buku besar disebut…',
    category: 'Buku Besar',
    options: [
      'Jurnalizing',
      'Posting',
      'Adjusting',
      'Closing',
      'Balancing',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question: 'Akun yang termasuk kelompok aset lancar adalah…',
    category: 'Dasar Akuntansi',
    options: [
      'Gedung',
      'Mesin produksi',
      'Kas',
      'Utang jangka panjang',
      'Modal pemilik',
    ],
    correctIndex: 2,
  ),
  QuizQuestion(
    question: 'Jika perusahaan membeli peralatan secara tunai, maka jurnalnya adalah…',
    category: 'Jurnal Transaksi',
    options: [
      'Peralatan (D), Kas (K)',
      'Kas (D), Peralatan (K)',
      'Peralatan (D), Utang (K)',
      'Beban (D), Kas (K)',
      'Kas (D), Modal (K)',
    ],
    correctIndex: 0,
  ),
  QuizQuestion(
    question: 'Laporan yang menunjukkan pendapatan dan beban suatu periode adalah…',
    category: 'Laporan Keuangan',
    options: [
      'Neraca',
      'Laporan arus kas',
      'Laporan laba rugi',
      'Laporan perubahan ekuitas',
      'Catatan atas laporan keuangan',
    ],
    correctIndex: 2,
  ),
  QuizQuestion(
    question: 'Saldo normal akun beban berada di sisi…',
    category: 'Dasar Akuntansi',
    options: [
      'Kredit',
      'Debit',
      'Debit dan kredit',
      'Tidak memiliki saldo',
      'Tergantung jenis beban',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question: 'Penyusutan aset tetap dicatat dalam jurnal penyesuaian dengan mendebit akun…',
    category: 'Jurnal Penyesuaian',
    options: [
      'Aset tetap',
      'Akumulasi penyusutan',
      'Beban penyusutan',
      'Kas',
      'Utang usaha',
    ],
    correctIndex: 2,
  ),
  QuizQuestion(
    question: 'Neraca saldo disusun setelah proses…',
    category: 'Siklus Akuntansi',
    options: [
      'Analisis transaksi',
      'Posting ke buku besar',
      'Penyusunan laporan keuangan',
      'Jurnal penutup',
      'Jurnal pembalik',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question: 'Pendapatan diterima di muka pada awalnya dicatat sebagai…',
    category: 'Jurnal Penyesuaian',
    options: [
      'Pendapatan',
      'Aset',
      'Kewajiban',
      'Ekuitas',
      'Beban',
    ],
    correctIndex: 2,
  ),
  QuizQuestion(
    question: 'Dalam konteks manufaktur hijau, biaya pengelolaan limbah pabrik dicatat sebagai…',
    category: 'Akuntansi Lingkungan',
    options: [
      'Aset',
      'Beban operasional',
      'Kewajiban',
      'Pendapatan',
      'Modal',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question: 'Laporan yang menggambarkan posisi aset, kewajiban, dan ekuitas pada tanggal tertentu adalah…',
    category: 'Laporan Keuangan',
    options: [
      'Laporan laba rugi',
      'Neraca',
      'Laporan arus kas',
      'Laporan perubahan ekuitas',
      'Neraca saldo',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question: 'Bentuk buku besar yang memiliki kolom saldo sehingga saldo akun langsung terlihat adalah…',
    category: 'Buku Besar',
    options: [
      'Bentuk T',
      'Bentuk skontro',
      'Bentuk staffel',
      'Bentuk ganda',
      'Bentuk tunggal',
    ],
    correctIndex: 2,
  ),
  QuizQuestion(
    question: 'Transaksi penerimaan pendapatan jasa secara tunai akan dicatat…',
    category: 'Jurnal Transaksi',
    options: [
      'Kas (D), Pendapatan (K)',
      'Pendapatan (D), Kas (K)',
      'Kas (D), Modal (K)',
      'Piutang (D), Pendapatan (K)',
      'Kas (D), Utang (K)',
    ],
    correctIndex: 0,
  ),
  QuizQuestion(
    question: 'ESG dalam pelaporan perusahaan merupakan singkatan dari…',
    category: 'Akuntansi Lingkungan',
    options: [
      'Economic, Social, Growth',
      'Environmental, Social, Governance',
      'Equity, Stock, Gain',
      'Energy, Sustainability, Green',
      'Earning, Saving, Goal',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question: 'Jurnal penutup digunakan untuk…',
    category: 'Siklus Akuntansi',
    options: [
      'Mencatat transaksi harian',
      'Menutup akun nominal (pendapatan dan beban)',
      'Menyesuaikan saldo akun',
      'Membalik jurnal penyesuaian',
      'Mencatat pembelian aset',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question: 'Ekonomi sirkular adalah konsep ekonomi yang…',
    category: 'Akuntansi Lingkungan',
    options: [
      'Berfokus pada pertumbuhan tanpa batas',
      'Mengubah limbah menjadi sumber daya baru',
      'Menghilangkan seluruh biaya produksi',
      'Hanya berlaku untuk perusahaan besar',
      'Menolak penggunaan teknologi',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question: 'Akun "Akumulasi Penyusutan" termasuk kelompok…',
    category: 'Dasar Akuntansi',
    options: [
      'Kewajiban',
      'Ekuitas',
      'Aset kontra (pengurang aset)',
      'Beban',
      'Pendapatan',
    ],
    correctIndex: 2,
  ),
  QuizQuestion(
    question: 'Perusahaan membayar beban listrik Rp 500.000. Jurnal yang benar adalah…',
    category: 'Jurnal Transaksi',
    options: [
      'Kas (D) Rp 500.000, Beban Listrik (K) Rp 500.000',
      'Beban Listrik (D) Rp 500.000, Kas (K) Rp 500.000',
      'Beban Listrik (D) Rp 500.000, Utang (K) Rp 500.000',
      'Kas (D) Rp 500.000, Pendapatan (K) Rp 500.000',
      'Utang (D) Rp 500.000, Kas (K) Rp 500.000',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question: 'Laporan arus kas mengelompokkan aktivitas menjadi tiga, yaitu…',
    category: 'Laporan Keuangan',
    options: [
      'Operasi, investasi, pendanaan',
      'Debit, kredit, saldo',
      'Aset, kewajiban, ekuitas',
      'Pendapatan, beban, laba',
      'Produksi, distribusi, konsumsi',
    ],
    correctIndex: 0,
  ),
  QuizQuestion(
    question: 'Investasi panel surya untuk pabrik dalam manufaktur hijau dicatat sebagai…',
    category: 'Akuntansi Lingkungan',
    options: [
      'Beban operasional',
      'Aset tetap',
      'Kewajiban',
      'Pendapatan',
      'Biaya dibayar di muka',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question: 'Urutan siklus akuntansi yang benar adalah…',
    category: 'Siklus Akuntansi',
    options: [
      'Jurnal → Laporan → Buku Besar → Neraca Saldo',
      'Analisis Transaksi → Jurnal → Buku Besar → Neraca Saldo → Penyesuaian → Laporan',
      'Buku Besar → Jurnal → Neraca Saldo → Laporan',
      'Laporan → Jurnal → Buku Besar → Penyesuaian',
      'Neraca Saldo → Jurnal → Buku Besar → Laporan',
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    question: 'Jika total debit neraca saldo Rp 50.000.000, maka total kreditnya adalah…',
    category: 'Buku Besar',
    options: [
      'Kurang dari Rp 50.000.000',
      'Lebih dari Rp 50.000.000',
      'Rp 50.000.000',
      'Rp 0',
      'Tidak dapat ditentukan',
    ],
    correctIndex: 2,
  ),
];

// ============================================================
// DATA PERANGKAT (file/link)
// ============================================================

const List<FileLinkItem> perangkatList = [
  FileLinkItem(
    title: 'Rencana Pelaksanaan Pembelajaran (RPP)',
    description:
        'Panduan operasional harian bagi pengajar dalam menyajikan materi akuntansi berbasis ESD.',
    meta: 'PDF • 5.1 MB',
    icon: Icons.picture_as_pdf,
    url: 'https://drive.google.com/rpp-akuntansi-esd',
  ),
  FileLinkItem(
    title: 'Silabus Akuntansi Dasar',
    description:
        'Rancangan pembelajaran pada mata pelajaran akuntansi dengan integrasi pendidikan berkelanjutan.',
    meta: 'DOCX • 2.4 MB',
    icon: Icons.description,
    url: 'https://drive.google.com/silabus-akuntansi',
  ),
  FileLinkItem(
    title: 'Capaian Pembelajaran (CP)',
    description:
        'Dokumen capaian pembelajaran sesuai kurikulum merdeka fase E untuk mata pelajaran akuntansi.',
    meta: 'PDF • 1.8 MB',
    icon: Icons.picture_as_pdf,
    url: 'https://drive.google.com/cp-akuntansi',
  ),
  FileLinkItem(
    title: 'Modul Ajar Akuntansi',
    description:
        'Modul ajar lengkap dengan skenario pembelajaran berdiferensiasi dan asesmen.',
    meta: 'PDF • 3.2 MB',
    icon: Icons.menu_book,
    url: 'https://drive.google.com/modul-ajar',
  ),
];

// ============================================================
// DATA SIKLUS (file/link)
// ============================================================

const List<FileLinkItem> siklusList = [
  FileLinkItem(
    title: 'Link Soal Evaluasi',
    description: 'Akses langsung ke materi dan latihan soal evaluasi siklus akuntansi.',
    meta: 'Google Forms • Online',
    icon: Icons.link,
    url: 'https://forms.gle/soal-evaluasi-siklus',
  ),
  FileLinkItem(
    title: 'Link Lembar Kerja (LKPD)',
    description: 'Akses dokumen kerja praktik akuntansi untuk peserta didik.',
    meta: 'Google Drive • PDF',
    icon: Icons.file_present,
    url: 'https://drive.google.com/lkpd-siklus',
  ),
  FileLinkItem(
    title: 'Video Siklus Akuntansi',
    description: 'Video pembelajaran animasi alur siklus akuntansi perusahaan dagang dan jasa.',
    meta: 'YouTube • 15 menit',
    icon: Icons.play_circle,
    url: 'https://youtube.com/siklus-akuntansi',
  ),
  FileLinkItem(
    title: 'Infografis Siklus Akuntansi',
    description: 'Diagram visual tahapan siklus akuntansi dari transaksi hingga laporan keuangan.',
    meta: 'PNG • 1.2 MB',
    icon: Icons.image,
    url: 'https://drive.google.com/infografis-siklus',
  ),
];

// ============================================================
// DATA PROJECT (file/link)
// ============================================================

const List<FileLinkItem> projectList = [
  FileLinkItem(
    title: 'Project: Observasi UMKM',
    description:
        'Lakukan pengamatan pada entitas bisnis atau UMKM di sekitar Anda untuk mengidentifikasi proses akuntansi dan dokumen transaksi yang digunakan.',
    meta: 'Panduan • PDF • 2.0 MB',
    icon: Icons.business,
    url: 'https://drive.google.com/project-observasi',
  ),
  FileLinkItem(
    title: 'Project: Studi Kasus Manufaktur Hijau',
    description:
        'Analisis penerapan akuntansi lingkungan pada perusahaan manufaktur yang menerapkan prinsip green manufacturing.',
    meta: 'Studi Kasus • PDF • 1.5 MB',
    icon: Icons.factory,
    url: 'https://drive.google.com/project-green',
  ),
  FileLinkItem(
    title: 'Template Laporan Project',
    description:
        'Format laporan project yang harus diisi peserta didik setelah melakukan observasi lapangan.',
    meta: 'DOCX • 800 KB',
    icon: Icons.edit_document,
    url: 'https://drive.google.com/template-laporan',
  ),
];
