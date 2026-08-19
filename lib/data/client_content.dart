import 'package:flutter/material.dart';

class NewsItem {
  final String title;
  final String imageAsset;
  final String url;

  const NewsItem({
    required this.title,
    required this.imageAsset,
    required this.url,
  });
}

class MateriItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final List<MateriSection> sections;
  final List<FileLinkItem> files;

  const MateriItem({
    required this.title,
    this.subtitle = '',
    required this.icon,
    this.sections = const [],
    this.files = const [],
  });
}

class MateriSection {
  final String heading;
  final String body;
  final String? imageAsset;
  final String? linkUrl;

  const MateriSection({
    required this.heading,
    required this.body,
    this.imageAsset,
    this.linkUrl,
  });
}

class QuizQuestion {
  final String question;
  final List<String> options;
  final int correctIndex;
  final String? preface;
  final String? imageAsset;

  const QuizQuestion({
    required this.question,
    required this.options,
    required this.correctIndex,
    this.preface,
    this.imageAsset,
  });
}

class FileLinkItem {
  final String title;
  final String description;
  final IconData icon;
  final String? url;

  const FileLinkItem({
    required this.title,
    this.description = '',
    required this.icon,
    this.url,
  });
}

const List<NewsItem> newsList = [
  NewsItem(
    title:
        'Tindak Cepat Aduan Pencemaran Udara: KLH/BPLH Hentikan Operasional Boiler Biomassa PT Panca Kraft Pratama',
    imageAsset: 'assets/images/news_1.jpg',
    url:
        'https://kemenlh.go.id/news/detail/tindak-cepat-aduan-pencemaran-udara-klhbplh-hentikan-operasional-boiler-biomassa-pt-panca-kraft-pratama',
  ),
  NewsItem(
    title:
        'KLH Segel Pabrik Pengolahan Oli Bekas di Tangerang, Diduga Cemari Lingkungan Warga',
    imageAsset: 'assets/images/news_2.jpg',
    url: 'https://youtu.be/dYL-B-JaWwE?si=9v8VbC0koFElnMb0',
  ),
  NewsItem(
    title:
        'Tindak Lanjut Keluhan Masyarakat, Menteri LH Tugaskan Deputi Gakkum Segel Pabrik Pemanfaatan Oli Bekas Ilegal di Tangerang',
    imageAsset: 'assets/images/news_3.jpg',
    url:
        'https://kemenlh.go.id/news/detail/tindak-lanjut-keluhan-masyarakat-menteri-lh-tugaskan-deputi-gakkum-segel-pabrik-pemanfaatan-oli-bekas-ilegal-di-tangerang',
  ),
  NewsItem(
    title:
        'Sungai Cisadane Tercemar, Warga Diimbau Tak Konsumsi Ikan yang Mati | OneNews Update',
    imageAsset: 'assets/images/news_4.jpg',
    url: 'https://youtu.be/OCYixq4TwF0?si=f-w8_Gs6WeNhM8un',
  ),
  NewsItem(
    title:
        'DLH Jabar temukan debu pabrik kapur-tambang Cipatat lampaui baku mutu',
    imageAsset: 'assets/images/news_5.webp',
    url:
        'https://www.antaranews.com/berita/5655183/dlh-jabar-temukan-debu-pabrik-kapur-tambang-cipatat-lampaui-baku-mutu',
  ),
];

const List<FileLinkItem> worksheetList = [
  FileLinkItem(
    title: 'Worksheet (Neraca Lajur)',
    description:
        'Worksheet udah di-update setelah adjusting entries masuk, jadi semua angka udah disesuaikan dan siap lanjut ke laporan keuangan.',
    icon: Icons.table_chart,
    url:
        'https://docs.google.com/spreadsheets/d/1HsUG5JTjq9YhTNEhfj9ULOm8OkNYqtkBrIvrWUUAO68/edit?usp=drive_link',
  ),
];

const List<FileLinkItem> financialStatementList = [
  FileLinkItem(
    title: 'Income Statement',
    icon: Icons.description,
    url:
        'https://docs.google.com/spreadsheets/d/19CDB_hLAcghWXP5jvY2e_XyPULO40dkn0Y7WmXj-hI0/edit?usp=drive_link',
  ),
  FileLinkItem(
    title: 'Statement of Financial Position',
    icon: Icons.account_balance,
    url:
        'https://docs.google.com/spreadsheets/d/1zaF078ojAtS3u4w0ZQzwY4X_gV72BJStndqQW4D7iVc/edit?usp=drive_link',
  ),
  FileLinkItem(
    title: 'Statement of Changes in Equity',
    icon: Icons.trending_up,
    url:
        'https://docs.google.com/spreadsheets/d/1QLx5i-RJag1Lb04dnKAO3qy0_1VzcKx4iAYMJiJHZAU/edit?usp=drive_link',
  ),
  FileLinkItem(
    title: 'COGM Report',
    icon: Icons.factory,
    url:
        'https://docs.google.com/spreadsheets/d/1zO451UX7tCSOkCtOUscRP7Jiu5n3op5l0Zx4Qkvql_k/edit?usp=drive_link',
  ),
  FileLinkItem(
    title: 'Sustainability Report',
    icon: Icons.eco,
    url:
        'https://docs.google.com/spreadsheets/d/1X89HDhzYLmfcz748pgiSQZpw00t_1J35Ckyun_lWgwk/edit?usp=drive_link',
  ),
];

const List<FileLinkItem> caseStudyList = [
  FileLinkItem(
    title: 'Case Study',
    description:
        'Yuk, kenalan sama PT Care Soap! Cermati setiap transaksi dan informasi yang ada sebelum lanjut ke tahap pengerjaan.',
    icon: Icons.assignment_outlined,
    url:
        'https://drive.google.com/file/d/13iQzynoT7uS2fvtg9Bg9jvhEIUjtfsGY/view?usp=drive_link',
  ),
  FileLinkItem(
    title: 'Lembar Kerja',
    description:
        'Time to practice! Gunakan data dari studi kasus tadi dan kerjakan setiap tahapnya secara urut.',
    icon: Icons.table_chart,
    url:
        'https://docs.google.com/spreadsheets/d/1dTymfEV1ZWHAS4xXuC9dsOt0hXyjPmM3/edit?usp=drive_link&ouid=114030947879264930238&rtpof=true&sd=true',
  ),
];

const List<FileLinkItem> projectList = [
  FileLinkItem(
    title: 'Project : Let’s Explore UMKM!',
    description:
        'Lihat lebih dekat aktivitas UMKM manufaktur dan impact-nya terhadap sekitar!',
    icon: Icons.business,
    url:
        'https://drive.google.com/file/d/1vAFJ-jyIDm3VIJwL7Cd34u5Xg57Ffscp/view?usp=drive_link',
  ),
];

const List<FileLinkItem> perangkatList = [
  FileLinkItem(
    title: 'Rencana Pembelajaran Mendalam (RPM)',
    description:
        'RPM udah disusun sebagai panduan pembelajaran biar proses belajar lebih terarah dan bermakna.',
    icon: Icons.description,
    url:
        'https://drive.google.com/file/d/1yaAFIOJ6-rfYi9FPJgDy0e8ZYxEiukTT/view?usp=drive_link',
  ),
];

const List<MateriItem> materiList = [
  MateriItem(
    title: 'Introduction',
    icon: Icons.info_outline,
    sections: [
      MateriSection(
        heading: '',
        body: '',
        imageAsset: 'assets/images/manufacturing_company.png',
      ),
      MateriSection(
        heading: 'Journal Entries',
        body:
            'Transaksi itu kejadiannya, jurnal itu nyatetnya. Tiap ada perputaran duit di pabrik (beli bahan baku, bayar gaji buruh, atau jualan), saat itu juga langsung dicatet ke sistem harian.',
      ),
      MateriSection(
        heading: 'General Ledger',
        body:
            'Nah, dari jurnal tadi, datanya dipindah-pindahin ke "kamar"-nya masing-masing. Jadi dikelompokkin gitu, mana yang khusus bahan baku, barang setengah jadi (WIP), barang udah jadi, sama biaya produksi. Biar rapi dan nggak messy.',
      ),
      MateriSection(
        heading: 'Trial Balance',
        body:
            'Di fase ini kita make sure dulu, totalan debit sama kreditnya udah balance belum? Kalau jomplang, wah, berarti harus ngecek ulang lagi dari awal karena pasti ada yang salah catet.',
      ),
      MateriSection(
        heading: 'Adjusting Entries',
        body:
            'Fase nge-adjust hal-hal yang belum kecatet atau butuh update. Misalnya ada stok yang susut, biaya overhead yang kelupaan dihitung, atau tagihan yang masih gantung. Pokoknya di sini datanya dibikin valid dan real dulu.',
      ),
      MateriSection(
        heading: 'Worksheet',
        body:
            'Di sini saldo sebelum dan sesudah penyesuaian disusun biar kelihatan jelas mana angka yang udah benar. Jadi, worksheet bisa dibilang kayak “tempat final check” sebelum angka-angka tersebut dipakai buat nyusun laporan keuangan.',
      ),
      MateriSection(
        heading: 'Laporan Keuangan',
        body: '''Penyusunan laporan yang terdiri dari:

Laporan Harga Pokok Produksi: Jumlah biaya yang bener-bener kepake buat bikin tuh barang.

Laporan Laba Rugi: Buat liat bulan ini kita dapet cuan atau malah boncos.

Laporan Perubahan Ekuitas: Modal perusahaan nambah atau nyusut nih?

Laporan Posisi Keuangan : Update jumlah kekayaan (aset) sama sisa utang kita sekarang.

Laporan Arus Kas: Tracker duit beneran yang masuk dan keluar (cashflow).''',
      ),
      MateriSection(
        heading: 'Jurnal Penutup',
        body:
            'Waktunya tutup buku. Akun-akun pendapatan dan biaya dibikin jadi nol semua. Ibaratnya reset, biar bulan atau tahun depan bisa mulai dari nol lagi kayak meteran pom bensin. “Mulai dari 0 ya kak”',
      ),
      MateriSection(
        heading: 'Neraca Saldo Setelah Penutupan',
        body:
            'List ini cuma nyisain akun-akun yang beneran "hidup" aja buat dibawa ke periode selanjutnya. Seperti sisa bahan baku di gudang, barang yang belum kelar (WIP), duit kas, aset, dan utang yang belum dilunasi.',
      ),
      MateriSection(
        heading: 'Jurnal Pembalik (opsional)',
        body:
            'Ini optional sih. Dibikin cuma buat ngebantu biar nggak pusing di awal bulan depan, terutama pas nyatet tagihan atau biaya yang masih nyambung dari bulan kemarin biar nggak Double Entry.',
      ),
      MateriSection(
        heading: '',
        body:
            'Selain laporan keuangan, perusahaan juga punya Sustainability Report yang nunjukin gimana bisnis dijalankan secara bertanggung jawab. Laporan ini ngebahas impact perusahaan dari sisi lingkungan, sosial, dan tata kelola, mulai dari penggunaan sumber daya, kepedulian terhadap karyawan dan masyarakat, sampai cara perusahaan menjalankan bisnis dengan baik. Jadi, perusahaan nggak cuma ngejar profit, tapi juga mikirin impact-nya buat masa depan.',
      ),
      MateriSection(
        heading: 'Alur Produksi Manufaktur',
        body: '',
        imageAsset: 'assets/images/alur_produksi_manufaktur.png',
      ),
      MateriSection(
        heading: 'Bahan Baku (Raw Material)',
        body:
            'Bahan baku itu bahan utama yang nantinya bakal diolah jadi produk. Di tahap ini, limbah bisa muncul kalau bahannya rusak atau udah nggak layak dipakai.',
      ),
      MateriSection(
        heading: 'Barang Dalam Proses (Work in Process)',
        body:
            ' Ini kondisi saat bahan baku udah mulai diproses, tapi produknya belum selesai atau belum siap dijual. Nah, biasanya di tahap ini lumayan banyak sisa produksi yang muncul.',
      ),
      MateriSection(
        heading: 'Persediaan Barang Jadi (Finished Goods)',
        body:
            ' Ini produk yang proses produksinya udah selesai dan tinggal disimpan atau dijual ke konsumen. ',
      ),
      MateriSection(heading: 'Jenis Biaya Manufaktur', body: ''),
    ],
  ),
  MateriItem(
    title: 'Journal Entries',
    icon: Icons.receipt_long,
    sections: [
      MateriSection(
        heading: 'Profil Singkat Nusantara Uniform',
        body:
            'Nusantara Uniform (NU) adalah home industry yang fokus memproduksi berbagai jenis seragam sekolah. Produknya cukup lengkap, mulai dari seragam putih abu-abu, seragam praktik, pakaian olahraga, sampai jas almamater. Biar pencatatan stoknya tetap update dan nggak bikin bingung, Nusantara Uniform menggunakan metode perpetual. Jadi, setiap ada barang masuk atau keluar, data persediaannya langsung dicatat sehingga jumlah stok bisa dipantau secara real-time.',
      ),
      MateriSection(
        heading: 'Daftar Akun',
        body:
            'Sebelum masuk ke pencatatan, kita spill dulu nih Daftar Akun milik Nusantara Uniform (NU). Ini ibarat buku absen atau daftar folder biar pengelompokan duitnya jelas. Berikut list akunnya:',
        imageAsset: 'assets/images/nu_daftar_akun.png',
      ),
      MateriSection(
        heading: 'JURNAL TRANSAKSI',
        body:
            'Maret 2026, perusahaan ini resmi debut!  Semua transaksi early stage buat setup awal langsung dicatet rapi ke jurnal. Nah, semua pergerakan ini langsung di-record ke jurnal transaksi biar datanya aman dan ready diproses ke step berikutnya.',
      ),
      MateriSection(
        heading:
            '1 Maret 2026, Pak Aris selaku pemilik Nusantara Uniform (NU) menyetorkan Rp250.000.000 ke bank sebagai modal awal.',
        body: '''Dr. Cash in Bank
Rp250.000.000

  Cr. Owner’s Capital
Rp250.000.000

(Setoran modal awal pemilik)''',
      ),
      MateriSection(
        heading:
            '2 Maret 2026, Dibayar sewa tempat produksi selama 1 tahun kedepan senilai Rp48.000.000 secara tunai.',
        body: '''Dr. Prepaid Rent
Rp48.000.000

  Cr. Cash in Bank
Rp48.000.000

(Pembayaran sewa untuk 1 tahun)''',
      ),
      MateriSection(
        heading:
            '2 Maret 2026, Dibeli 4 mesin jahit, 1 mesin obras, 1 mesin potong kain senilai Rp32.000.000 secara tunai.',
        body: '''Dr. Machinery
Rp32.000.000

  Cr. Cash in Bank
Rp32.000.000

(Pembelian mesin)''',
      ),
      MateriSection(
        heading:
            '2 Maret 2026, Dibeli peralatan meja potong, rak kain, kursi dan lemari senilai Rp8.000.000 secara tunai.',
        body: '''Dr. Equipment
Rp8.000.000

  Cr. Cash in Bank
Rp8.000.000

(Pembelian peralatan)''',
      ),
      MateriSection(
        heading:
            '3 Maret 2026, Dibeli bahan baku kain drill dan kain oxford secara kredit sebesar Rp50.000.000.',
        body: '''Dr. Raw Materials
Rp50.000.000

      Cr. Account Payable
Rp50.000.000

(Pembelian bahan baku utama)''',
      ),
      MateriSection(
        heading:
            '3 Maret 2026, Dibeli bahan penolong berupa benang, kancing, resleting, label ukuran, dan tali kemasan sebesar Rp5.000.000 secara tunai.',
        body: '''Dr. Indirect Materials
Rp5.000.000

      Cr. Cash in Bank
Rp5.000.000

(Pembelian bahan baku penolong)''',
      ),
      MateriSection(
        heading: '3 Maret 2026, Untuk keperluan produksi seragam SD, maka :',
        body:
            '''1. Bahan baku kain dikeluarkan ke bagian produksi untuk membuat seragam sekolah sebesar Rp18.000.000.
2. Bahan penolong dikeluarkan ke bagian produksi sebesar Rp1.500.000.

Dr. Work in Process
Rp18.000.000

Dr. Factory Overhead Control
Rp1.500.000

  Cr. Raw Materials
Rp18.000.000
  Cr. Indirect Materials
Rp1.500.000

(Pemakaian bahan baku untuk di proses)

Dr. Work in Process
Rp1.500.000

   Cr. Factory Overhead Control
Rp1.500.000

(Pembebanan ke barang dalam di proses)''',
      ),
      MateriSection(
        heading:
            '4 Maret 2026, Dibeli perlengkapan keselamatan kerja seperti masker kain, sarung tangan, dan kotak P3K sebesar Rp1.250.000 secara tunai.',
        body: '''Dr. Supplies
Rp1.250.000

      Cr. Cash in Bank
Rp1.250.000

(Pembelian perlengkapan)''',
      ),
      MateriSection(
        heading:
            '6 Maret 2026, Dibayar pelatihan penggunaan mesin jahit dan obras untuk karyawan yang tidak memiliki pengalaman sebesar Rp1.000.000 secara tunai.',
        body: '''Dr. Training Expense
Rp1.000.000

      Cr. Cash in Bank
Rp1.000.000

(Pembayaran biaya pelatihan)''',
      ),
      MateriSection(
        heading:
            '6 Maret 2026, Dibeli kemasan kertas daur ulang dan paper bag untuk pengiriman seragam sebesar Rp1.200.000 secara kredit.',
        body: '''Dr. Packaging Inventory
Rp1.000.000

      Cr. Cash in Bank
Rp1.000.000

(Pembelian kemasan produk)''',
      ),
      MateriSection(
        heading:
            '7 Maret 2026, NU membayar biaya instalasi panel surya untuk membantu penerangan area produksi untuk malam hari sebesar Rp3.000.000 secara tunai.',
        body: '''Dr. Enviromental Expense
Rp3.000.000

      Cr. Cash in Bank
Rp3.000.000

(Pembayaran instalasi panel surya)''',
      ),
      MateriSection(
        heading:
            '8 Maret 2026, Produk seragam sekolah yang telah selesai diproduksi dipindahkan ke gudang seragam dengan total biaya produksi sebesar Rp16.000.000.',
        body: '''Dr. Finished Goods
Rp16.000.000

      Cr. Work in Process
Rp16.000.000

(Pemindahan ke persediaan barang jadi)''',
      ),
      MateriSection(
        heading:
            '9 Maret 2026, Dijual seragam sekolah kepada SDN 1 BATU secara kredit sebesar Rp27.000.000. Harga pokok barang yang dijual sebesar Rp13.500.000.',
        body: '''Dr. Account Receivable
Rp27.000.000

      Cr. Sales Revenue
Rp27.000.000

(Pencatatan penjualan secara kredit)

Dr. Cost of Goods Sold
Rp13.500.000

      Cr. Finished Goods
Rp13.500.000

(Pencatatan HPP)''',
      ),
      MateriSection(
        heading:
            '12 Maret 2026, Selain produksi seragam, NU juga mengolah kain perca sisa produksi menjadi pouch alat tulis. Biaya tambahan untuk pengolahan kain perca sebesar Rp600.000.',
        body: '''Dr. Enviromental Expense
Rp600.000

      Cr. Cash in Bank
Rp600.000

(Pencatatan biaya daur ulang)''',
      ),
      MateriSection(
        heading:
            '15 Maret 2026, Dijual 30 pouch hasil olahan kain perca kepada Toko Puddy sebesar Rp900.000 secara tunai.',
        body: '''Dr. Cash in Bank
Rp900.000

      Cr.  Other Income
Rp900.000

(Penerimaan pendapatan dari daur ulang)''',
      ),
      MateriSection(
        heading:
            '18 Maret 2026, NU membeli tanaman untuk kebutuhan vertical garden di area produksi sebesar Rp400.000 secara tunai, dengan tujuan membuat area produksi lebih sejuk dan mengurangi penggunaan pendingin ruangan.',
        body: '''Dr. Enviromental Expense
Rp400.000

      Cr. Cash in Bank
Rp400.000

(Pembelian tanaman vertical garden)''',
      ),
      MateriSection(
        heading:
            '22 Maret 2026, NU memberikan bantuan pendidikan berupa alat tulis dan tas sekolah kepada siswa kurang mampu di sekitar lokasi usaha sebesar Rp1.500.000.',
        body: '''Dr. Social Expense
Rp1.500.000

      Cr. Cash in Bank
Rp1.500.000

(Pembayaran untuk bantuan pendidikan)''',
      ),
      MateriSection(
        heading:
            '23 Maret 2026, Dibeli tempat sampah terpilah dan wadah penyimpanan kain perca untuk area produksi sebesar Rp200.000 secara tunai.',
        body: '''Dr. Supplies
Rp1.500.000

      Cr. Cash in Bank
Rp1.500.000

(Pembelian tempat sampah terpilah)''',
      ),
      MateriSection(
        heading:
            '24 Maret 2026, DDiterima pelunasan dari SDN 1 Batu dari penjualan tanggal 9 Maret 2026.',
        body: '''Dr. Cash in Bank
Rp27.000.000

      Cr. Account Receivable
Rp27.000.000

(Penerimaan piutang)''',
      ),
      MateriSection(
        heading: '25 Maret 2026, Untuk keperluan produksi seragam SMP, maka :',
        body:
            '''1. Bahan baku kain dikeluarkan ke bagian produksi untuk membuat seragam sekolah sebesar Rp13.000.000.
2. Bahan penolong dikeluarkan ke bagian produksi sebesar Rp2.500.000.

Dr. Work in Process
Rp13.000.000

Dr. Factory Overhead Control
Rp2.500.000

  Cr. Raw Materials
Rp13.000.000
  Cr. Indirect Materials
Rp2.500.000

(Pemakaian bahan baku untuk di proses)

Dr. Work in Process
Rp2.500.000

   Cr. Factory Overhead Control
Rp2.500.000

(Pembebanan ke barang dalam di proses)''',
      ),
      MateriSection(
        heading:
            '25 Maret 2026, Dibayar utang atas pembelian kemasan tanggal 3 Maret 2026.',
        body: '''Dr. Account Payable
Rp50.000.000

      Cr. Cash in Bank
Rp50.000.000

(Pembayaran utang)''',
      ),
      MateriSection(
        heading:
            '26 Maret 2026, Produk seragam sekolah yang telah selesai diproduksi dipindahkan ke gudang seragam dengan total biaya produksi sebesar Rp14.500.000.',
        body: '''Dr. Finished Goods
Rp14.500.000

      Cr. Work in Process
Rp14.500.000

(Pemindahan ke persediaan barang jadi)''',
      ),
      MateriSection(
        heading:
            '27 Maret 2026, Diterima pendapatan dari penjualan kepada SMPN 1 LAWANG secara tunai sebesar Rp20.000.000. Harga pokok barang yang dijual sebesar Rp10.000.000.',
        body: '''Dr. Cash in Bank
Rp20.000.000

      Cr. Sales Revenue
Rp20.000.000

(Pencatatan penjualan secara kredit)

Dr. Cost of Goods Sold
Rp10.000.000

      Cr. Finished Goods
Rp10.000.000

(Pencatatan HPP)''',
      ),
      MateriSection(
        heading:
            '29 Maret 2026, NU mengadakan bakti sosial berupa pembagian 25 set seragam sekolah sederhana kepada siswa kurang mampu senilai Rp1.500.000.',
        body: '''Dr. Social Expense
Rp1.500.000

      Cr. Finished Goods
Rp1.500.000

(Pembiayaan untuk bakti sosial)''',
      ),
      MateriSection(
        heading:
            '30 Maret 2026, NU mengadakan workshop kecil bersama siswa magang untuk membuat pouch dan tempat pensil dari kain perca. Biaya kegiatan sebesar Rp700.000.',
        body: '''Dr. Training Expense
Rp700.000

      Cr. Cash in Bank
Rp700.000

(Pembayaran biaya pelatihan)''',
      ),
    ],
  ),
  MateriItem(
    title: 'General Ledger',
    icon: Icons.menu_book,
    sections: [
      MateriSection(
        heading: '',
        body:
            'Jurnal udah beres dicatet, terus datanya juga udah diposting rapi ke Buku Besar. Kalau mau cek Buku Besar secara lengkap, klik di sini. Hasil akhirnya? Check this out, ini dia Neraca Saldo-nya buat ngecek dan mastiin total debit sama kredit udah balance!',
        imageAsset: 'assets/images/nu_trial_balance.png',
        linkUrl:
            'https://docs.google.com/spreadsheets/d/1AyaKPfVtoWz9OCjgTvQ2N57iZqjz7Aib4jqpOGAGKxg/edit?usp=drive_link',
      ),
    ],
  ),
  MateriItem(
    title: 'Adjusting Entries',
    icon: Icons.edit_note,
    sections: [
      MateriSection(
        heading: '',
        body:
            'Neraca saldonya emang udah balance, tapi wait, ini belum 100% valid guys. Masih ada beberapa hal yang harus di-update dari kondisi di lapangan. Makanya, kita perlu melakukan penyesuaian pada akhir periode biar datanya bener-bener real.',
      ),
      MateriSection(
        heading: 'Data gaji bulan Maret 2026, sebagai berikut :',
        body: '''Tenaga Kerja Langsung : 5.000.000
Tenaga Kerja Tidak Langsung : 2.000.000.
Pegawai kantor : 1.500.000

Dr. Work in Process
Rp5.000.000

Dr. Salaries Expense
Rp1.500.000

Dr. Factory Overhead Control
Rp2.000.000

     Cr. Accrued Expenses
Rp8.500.000

(Pengakuan beban gaji Maret 2026)''',
      ),
      MateriSection(
        heading: 'Hasil stock opname akhir bulan, sebagai berikut :',
        body: '''Perlengkapan tersisa Rp1.000.000
Kemasan telah digunakan sebanyak 20%

Dr. Supplies Expense
Rp450.000

      Cr. Supplies
Rp450.000

(Penyesuaian perlengkapan terpakai)

Dr. Factory Overhead Control
Rp240.000

      Cr. Packaging Inventory
Rp240.000

(Penyesuaian perlengkapan terpakai)''',
      ),
      MateriSection(
        heading: 'Mesin dan Peralatan disusutkan dengan masa manfaat 4 tahun',
        body: '''Dr. Supplies Expense
Rp833.333

      Cr. Accum. Depreciation Machinery
Rp666.667
      Cr. Accum. Depreciation Equipment
Rp166.667

(Penyusutan mesin dan peralatan)''',
      ),
      MateriSection(
        heading:
            'Tagihan listrik selama bulan Maret yang akan dibayarkan tanggal 1 April 2026, sebagai berikut :',
        body: '''Ruang admin : Rp100.000
Ruang produksi : Rp700.000

Dr. Office utilities expense
Rp100.000

Dr. Factory Overhead Control
Rp700.000

     Cr. Accrued Expenses
Rp800.000

(Pengakuan beban listrik Maret 2026)''',
      ),
      MateriSection(
        heading: 'Penyesuaian pemakaian sewa tempat produksi selama 1 tahun',
        body: '''Dr. Rent Expense
Rp4.000.000

      Cr. Prepaid Rent
Rp4.000.000

(Penyesuaian perlengkapan terpakai)''',
      ),
      MateriSection(
        heading:
            'Seluruh biaya overhead pabrik dibebankan ke barang dalam proses',
        body: '''Dr. Work in Process
Rp2.940.000

      Cr. Factory Overhead Control
Rp2.940.000

(Pembebanan biaya overhead)''',
      ),
    ],
  ),
  MateriItem(title: 'Worksheet', icon: Icons.table_chart, files: worksheetList),
  MateriItem(
    title: 'Financial Statement',
    icon: Icons.bar_chart,
    files: financialStatementList,
  ),
];
