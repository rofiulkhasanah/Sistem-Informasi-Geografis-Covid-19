-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Bulan Mei 2020 pada 17.46
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_webgis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota_kelompok`
--

CREATE TABLE `anggota_kelompok` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `src_gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota_kelompok`
--

INSERT INTO `anggota_kelompok` (`id`, `nama`, `nim`, `src_gambar`) VALUES
(1, 'Nabila Maulida', '17650034', 'images/kelompok/17650034.jpg'),
(2, 'Rofi\'ul Khasanah', '17650039', 'images/kelompok/17650039.jpg'),
(3, 'Nurul Khafidoh', '17650041', 'images/kelompok/17650041.jpeg'),
(4, 'Layla Qomariyah', '17650048', 'images/kelompok/17650048.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_covid`
--

CREATE TABLE `data_covid` (
  `id` int(11) NOT NULL,
  `ODP` varchar(50) NOT NULL,
  `PDP` varchar(50) NOT NULL,
  `Terkonfirmasi` varchar(50) NOT NULL,
  `Sembuh` varchar(50) NOT NULL,
  `Meninggal` varchar(50) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_covid`
--

INSERT INTO `data_covid` (`id`, `ODP`, `PDP`, `Terkonfirmasi`, `Sembuh`, `Meninggal`, `tanggal`) VALUES
(1, '775', '181', '18', '8', '12', '2020-05-06'),
(2, '778', '184', '21', '8', '12', '2020-05-07'),
(3, '782', '187', '21', '9', '13', '2020-05-08'),
(4, '785', '189', '22', '9', '14', '2020-05-09'),
(5, '791', '192', '24', '10', '14', '2020-05-10'),
(6, '802', '196', '25', '10', '14', '2020-05-11'),
(7, '810', '197', '25', '10', '14', '2020-05-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_covid_kecamatan`
--

CREATE TABLE `data_covid_kecamatan` (
  `id` int(11) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  `ODP` varchar(50) NOT NULL,
  `PDP` varchar(50) NOT NULL,
  `Terkonfirmasi` varchar(50) NOT NULL,
  `Sembuh` varchar(50) NOT NULL,
  `Meninggal` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_covid_kecamatan`
--

INSERT INTO `data_covid_kecamatan` (`id`, `id_kecamatan`, `ODP`, `PDP`, `Terkonfirmasi`, `Sembuh`, `Meninggal`, `deskripsi`, `tanggal`) VALUES
(16, 1, '171', '39', '7', '30', '2', 'Blimbing', '2020-05-10'),
(21, 2, '187', '51', '6', '32', '2', 'Kedungkandang', '2020-05-10'),
(26, 3, '183', '28', '4', '20', '4', 'Klojen', '2020-05-10'),
(31, 4, '110', '36', '7', '25', '1', 'Lowokwaru', '2020-05-10'),
(36, 5, '146', '42', '0', '19', '5', 'Sukun', '2020-05-10'),
(37, 1, '171', '41', '7', '30', '2', 'Blimbing', '2020-05-11'),
(38, 2, '183', '48', '6', '32', '2', 'Kedungkandang', '2020-05-11'),
(39, 3, '183', '28', '4', '20', '4', 'Klojen', '2020-05-11'),
(41, 4, '113', '37', '8', '25', '1', 'Lowokwaru', '2020-05-11'),
(42, 5, '152', '42', '0', '19', '5', 'Sukun', '2020-05-11'),
(43, 1, '171', '39', '7', '30', '2', 'Blimbing', '2020-05-12'),
(44, 2, '187', '51', '6', '32', '2', 'Kedungkandang', '2020-05-12'),
(45, 3, '185', '28', '4', '20', '4', 'Klojen', '2020-05-12'),
(46, 4, '114', '37', '8', '25', '1', 'Lowokwaru', '2020-05-12'),
(47, 5, '153', '42', '0', '19', '5', 'Sukun', '2020-05-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_crawling`
--

CREATE TABLE `data_crawling` (
  `id_data` int(11) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `lat` float(9,6) NOT NULL,
  `lng` float(9,6) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_crawling`
--

INSERT INTO `data_crawling` (`id_data`, `id_kecamatan`, `keterangan`, `lat`, `lng`, `tanggal`) VALUES
(5, 1, 'Jumlah pasien positif Covid-19 Kota Malang yang dirawat bertambah satu orang. Kembali datang dari kalangan tenaga k… https://t.co/CHVgvvs05X	', -7.975995, 112.655159, '2020-05-12'),
(9, 1, 'During #covid19 #covid_19 I\'ve made Unofficial Logo Universitas Widyagama Malang just for fun #redesign #logo… https://t.co/IAACMRBMPP	', -7.937026, 112.633522, '2020-05-12'),
(11, 1, 'Realityshow per-tetean duniawi. Kupikir bakal iyuh mure bgt, tp ini lucuuuk asli. Tiap Desiree komen itu lucu bat ?… https://t.co/Z1uk1pvItH	', -7.939567, 112.641327, '2020-05-11'),
(14, 1, 'Pandemi COVID-19 memicu kontraksi ekonomi paling tajam sepanjang sejarah kapitalisme. Apa yang perlu dilakukan kala… https://t.co/syYzpyKarA	', -7.934972, 112.645287, '2020-05-11'),
(15, 1, 'Intensitas covid-19 berbanding terbalik dengan intensitas wedding organizer	', -7.935008, 112.645638, '2020-05-05'),
(16, 1, 'Apakah betul datangnya covid 19 ini karena tidak bersyukur ?	', -7.937483, 112.649757, '2020-05-04'),
(17, 1, 'melantunkan Selawat Burdah di mulutnya._ _Kira-kira atas dasar apakah sekelompok pemuda kampung tersebut melakukan… https://t.co/57ZSUoECIi	', -7.936807, 112.648811, '2020-05-09'),
(18, 1, 'Barusan cek tagihan pdam, alhamdulillah gratis. Dengan keterangan “KOMPENSASI COVID-19”. Trims @pdammalangkota  cc : @infomalang	', -7.945237, 112.654945, '2020-05-10'),
(19, 1, 'Apa itu sars cov2? Apa itu covid? Mengapa sgt mudah menular? Apa yg bs kita lakukan utk menekan penularanya?  https://t.co/xsy6qPRWRu	', -7.943735, 112.644257, '2020-05-05'),
(20, 1, 'Sisi positif dari dampak covid ini bisa kumpul dengan keluarga secara lengkap.	', -7.945185, 112.651642, '2020-05-04'),
(27, 1, 'Kertanegara Group menggunakan protokol kesehatan. Demi memutus rantai penyebaran Virus Covid-19.  Mohon maaf bila p… https://t.co/6WGJm3TUtJ	', -7.977103, 112.635605, '2020-05-12'),
(28, 1, 'Karyawan PNM (Permodalan Nasional Madani) bagikan 25.000 paket sembako kepada nasabah PNM Mekaar terdampak Covid-19… https://t.co/Y5L7MQsLP5	', -7.975995, 112.655159, '2020-05-12'),
(29, 1, 'Digrebek Pak Polisi, Ternyata Kita Fogging Juga Unit Bapak Polisinya ? Yuk Mampir Di Matos, lantai Dasar Program Fr… https://t.co/4lI7qW5u0B	', -7.956948, 112.618797, '2020-05-12'),
(30, 1, 'Jumlah pasien positif Covid-19 Kota Malang yang dirawat bertambah satu orang. Kembali datang dari kalangan tenaga k… https://t.co/CHVgvvs05X	', -7.975995, 112.655159, '2020-05-11'),
(31, 1, 'Foto ini dikirimkan adik saya sewaktu berjaga menjadi relawan Perawat covid di RS daerah Kota Malang. \"Bagaimana r… https://t.co/OEpfYDSH7B	', -7.972975, 112.629524, '2020-05-09'),
(32, 1, 'Kepala Kemenag Kabupaten Malang Sembuh COVID-19 Kepala Kemenag Kabupaten Malang, Musta\'in, akhirnya dinyatakan sem… https://t.co/7wwvg6hTLr	', -7.976200, 112.629402, '2020-05-09'),
(41, 1, 'Digrebek Pak Polisi, Ternyata Kita Fogging Juga Unit Bapak Polisinya ? Yuk Mampir Di Matos, lantai Dasar Program Fr… https://t.co/4lI7qW5u0B	', -7.956948, 112.618797, '2020-05-12'),
(42, 1, 'Pandemi COVID-19 memicu kontraksi ekonomi paling tajam sepanjang sejarah kapitalisme. Apa yang perlu dilakukan kala… https://t.co/syYzpyKarA	', -7.952085, 112.641449, '2020-05-11'),
(43, 1, 'Barusan cek tagihan pdam, alhamdulillah gratis. Dengan keterangan “KOMPENSASI COVID-19”. Trims @pdammalangkota  cc : @infomalang	', -7.954832, 112.645187, '2020-05-10'),
(44, 1, 'Intensitas covid-19 berbanding terbalik dengan intensitas wedding organizer	', -7.954770, 112.646492, '2020-05-05'),
(45, 1, 'Selamat jalan lord ambyar padahal niatnya setelah covid-19 selesai dan didi kempot konser bakalan lihat lagi ?? https://t.co/LwcvFm6ysl	', -7.959511, 112.647263, '2020-05-06'),
(46, 1, 'jangan lewatkan seseruan besok bareng color_models_inc  gimana nasip event di Malang Raya dan bagaimana mereka men… https://t.co/PPcpfR861J	', -7.956943, 112.591263, '2020-05-06'),
(47, 1, '.  Kamu ingin mecari peluang mengisi waktu luang di tengah kegabutan kuliah atau bekerja dari rumah? Padahal di ten… https://t.co/LdH7WMuxsM	', -7.966058, 112.607681, '2020-05-06'),
(48, 1, 'Apa itu sars cov2? Apa itu covid? Mengapa sgt mudah menular? Apa yg bs kita lakukan utk menekan penularanya?  https://t.co/xsy6qPRWRu	', -7.964056, 112.641647, '2020-05-05'),
(49, 1, 'Kertanegara Group menggunakan protokol kesehatan. Demi memutus rantai penyebaran Virus Covid-19.  Mohon maaf bila p… https://t.co/6WGJm3TUtJ	', -7.977103, 112.635605, '2020-05-12'),
(50, 1, 'Foto ini dikirimkan adik saya sewaktu berjaga menjadi relawan Perawat covid di RS daerah Kota Malang. \"Bagaimana r… https://t.co/OEpfYDSH7B	', -7.972975, 112.629524, '2020-05-12'),
(51, 1, 'Semoga data ODP yg mulai menurun variansinya saat2 ini berdampak pula pada mulai penurunan variansi data PDP hingga… https://t.co/e3xUqJAcyJ	', -7.976515, 112.638107, '2020-05-12'),
(52, 1, '@PemkotMalang @sutiaji1964 @infomalang @KominfoMalang Didaerah rumah saaya nggak ada yg didata tiba\" ada 4orang yg… https://t.co/RfF9alpU9a	', -7.984101, 112.642570, '2020-05-12'),
(53, 1, 'Memasuki pekan ke tiga bulan suci Ramadan masih belum terlalu banyak pemudik memenuhi jalan-jalan protokol di Kota… https://t.co/lsq16CMHfV	', -7.987249, 112.639549, '2020-05-11'),
(54, 1, 'Disclaimer : Data dan Grafik diatas bukan merupakan kurva epidemi COVID-19 sesungguhnya. Jika ingin memahami Kurva… https://t.co/2yF6WkHekF	', -7.986179, 112.646736, '2020-05-10'),
(55, 1, 'Menjelang pemberlakuan PSBB, Ketua DPD Partai Persatuan Indonesia (Perindo) Kota Malang, Laily Fitriyah Liza Min Ne… https://t.co/5SgjuQvmp0	', -7.985013, 112.646744, '2020-05-11'),
(56, 1, 'Perayaan kelulusan terasa sangat berbeda dan bermanfaat dilakukan oleh SMKN 1 Kota Batu. Yakni dengan membagikan Al… https://t.co/rNTPp6aiIt	', -7.949309, 112.656090, '2020-05-11'),
(57, 1, 'Hallo gaes bagi kalian yg mau servis laptop dan butuh antara jemput, kita free antar jemput kota malang, bergaransi… https://t.co/gJigOcdn4J	', -7.943030, 112.658379, '2020-05-10'),
(58, 1, 'Hasil swab pertama 24 tenaga kesehatan (Nakes) yang diisolasi di Villa Talitakum di Jalan Metro, Kota Batu sudah ke… https://t.co/nZtgGwVImW	', -7.963484, 112.650024, '2020-05-09'),
(59, 1, 'Rakor PSBB untuk Malang Raya digelar Gedung Grahadi, Surabaya digelar Sabtu (9/5) siang ini. Hasilnya Malang Raya s… https://t.co/vyzmLtvlta	', -7.966150, 112.650360, '2020-05-09'),
(60, 1, 'Kepala Kemenag Kabupaten Malang Sembuh COVID-19 Kepala Kemenag Kabupaten Malang, Musta\'in, akhirnya dinyatakan sem… https://t.co/7wwvg6hTLr	', -7.976948, 112.642555, '2020-05-09'),
(61, 1, 'Banyak Plesetan Singkatan dari PSBB, Semoga covid ini segera berlalu, kita semua pada kangen yang namanya TOURING!	', -7.952670, 112.660027, '2020-05-10'),
(62, 4, 'Jangan kasih kendor. Indonesia yang tertib ya, please! Kita sama-sama pengen kelar ni isu covid. Jadi ente kalau al… https://t.co/sqBLf3QsiZ	', -7.937480, 112.590683, '2020-05-12'),
(63, 4, '@mouldie_sep Bikin rumah tanggap covid aaah ???	', -7.943130, 112.579208, '2020-05-11'),
(64, 4, 'Dapat ini dari mana dapat itu dari mana, mana lagi gambarnya. susah amat si mahaminya andaikan kuliah tatap muka pa… https://t.co/I1ryksvyDx	', -7.939448, 112.572220, '0000-00-00'),
(65, 4, 'Ijen dari sudut sebelum Covid  ?TWA Kawah Ijen https://t.co/AMmiBV2DgV	', -7.942974, 112.606918, '2020-05-10'),
(66, 4, '@alfinh214 Aseeek.  Nanti nyusul Komunikasi Empati dalam Pandemi Covid 19??	', -7.940057, 112.591362, '2020-05-10'),
(67, 4, 'Januari : Kobe Bryant Februari : Ashraf Sinclair Maret : Corona Virus April : Glenn Fredly Mei : Didi Kempot Dan ri… https://t.co/u0BJpFvAJL	', -7.957517, 112.611977, '2020-05-05'),
(68, 4, '@evitaprdnya @agama_nusantara Untung sebelum covid udah punya 5 ??	', -7.957983, 112.627182, '2020-05-04'),
(69, 4, '@bundadanu InsyaAllah abis covid kita surpei² hehe.	', -7.939011, 112.588371, '2020-05-08'),
(70, 4, 'Realityshow per-tetean duniawi. Kupikir bakal iyuh mure bgt, tp ini lucuuuk asli. Tiap Desiree komen itu lucu bat ?… https://t.co/Z1uk1pvItH	', -7.937474, 112.611053, '2020-05-11'),
(71, 4, 'Semenjak datangnya pandemi covid, banyak hal yg menurun drastis dari biasanya. Tapi tidak dengan perjuanganku mendapatkammu, taek?	', -7.930604, 112.602425, '2020-05-08'),
(72, 4, 'Intensitas covid-19 berbanding terbalik dengan intensitas wedding organizer	', -7.929221, 112.621635, '2020-05-05'),
(73, 4, 'Covid https://t.co/c7nNI3xKH4	', -7.929221, 112.621635, '2020-05-05'),
(74, 4, 'Terimaksih @UB_Official dan tim relawan covid-19 universitas  brawijaya yang sudah mendistribusikan sembako kepada… https://t.co/i7EIQY86FK	', -7.952504, 112.611671, '2020-05-05'),
(75, 2, 'Memang sosok orang yang baik dan berjiwa sosial yang tinggi ??  https://t.co/wLSHG0D0Vq	', -7.941636, 112.612762, '2020-05-05'),
(76, 4, 'Apakah betul datangnya covid 19 ini karena tidak bersyukur ?	', -7.950069, 112.627289, '2020-05-04'),
(77, 4, 'Yah intinya sih, covid ini penularannya cepet  dan bisa mematikan pada level tertentu adalah fakta. Dan ada!!!	', -7.950069, 112.620720, '2020-05-04'),
(78, 4, 'Ya memang masih jadi pertanyaan, asal muasal covid 19 ini beneran dari pileknya kelelawar yang nular ke manusia tru… https://t.co/3dA8NOAsS6	', -7.946670, 112.614723, '2020-05-04'),
(79, 4, 'Apa itu sars cov2? Apa itu covid? Mengapa sgt mudah menular? Apa yg bs kita lakukan utk menekan penularanya?  https://t.co/xsy6qPRWRu	', -7.943593, 112.628326, '2020-05-05'),
(80, 5, 'Semoga data ODP yg mulai menurun variansinya saat2 ini berdampak pula pada mulai penurunan variansi data PDP hingga… https://t.co/e3xUqJAcyJ	', -7.990647, 112.570763, '2020-05-12'),
(81, 5, '@PemkotMalang @sutiaji1964 @infomalang @KominfoMalang Didaerah rumah saaya nggak ada yg didata tiba\" ada 4orang yg… https://t.co/RfF9alpU9a	', -7.999657, 112.633148, '2020-05-12'),
(82, 5, 'RAMADHAN, COVID-19 &amp; TABAYYUN Slh stu tulisn lma kmi dilaman @nu_online ini skiranya msih relevan di ramadhan thun… https://t.co/mDjnQRG2JW	', -8.023725, 112.629143, '2020-05-11'),
(83, 5, 'Maaf kalu sy agak norak, tp berita yg spt ini perlu disyukuri dan di arsip buat kenangan.. sempro disertasi jalur c… https://t.co/jI8FUya7IX	', -7.959849, 112.592766, '2020-05-11'),
(84, 5, 'Stlh smpat landai ato tak ada pnambahn ksus positf Covid-19 rntg wkt 6 Apr - 21 Apr (2 mgu wkt efektf Physical Dist… https://t.co/pEqYQHzpXf	', -7.989864, 112.618294, '2020-05-10'),
(85, 5, 'Peduli Tenaga Medis, Pemain Bola Profesional-Dokjreng FC Lakukan Lelang Jersey Merebaknya wabah Covid-19 tidak han… https://t.co/uLBXXk6Vyo	', -7.998086, 112.625259, '2020-05-08'),
(86, 5, 'Refleksi Hikmah COVID-19, UM Re-Install Sistem Pendidikan MALANG – Wabah virus corona yang tak kunjung usai, dampa… https://t.co/eB5x1Rof3t	', -7.988681, 112.583450, '2020-05-08'),
(87, 5, '[ PPI DUNIA x CIBAS ] Webinar “Dampak Ekonomi &amp; Peran Millennials Pasca Pandemi Covid-19” Kira-kira gmna prubahn… https://t.co/cZNVrndDJz	', -7.988681, 112.583450, '2020-05-08'),
(88, 5, 'Rusunawa ASN di Kabupaten Malang Sudah Siap untuk RS Rujukan Covid-19 MALANG - Dengan rencana pembatalan PSBB di K… https://t.co/aMP9pMeEV7	', -7.959849, 112.592766, '2020-05-07'),
(89, 5, '. Assalamu\'alaikum, teman-teman. ?? . Seperti yang sama-sama kita tahu, adanya pandemik Covid-19 di Indonesia saat… https://t.co/SbieplV0SI	', -7.959849, 112.592766, '2020-05-07'),
(90, 5, 'Ditengah Pandemi Covid-19 Janganlah kita terlalu panic, Waspada !! Tetap Melakukan Anjuran dari Pemerintah, Seperti… https://t.co/DySpFVA1Ik	', -8.023552, 112.612717, '2020-05-06'),
(91, 5, '@brilliansatria_ @PemkotMalang @infomalang @sutiaji1964 @KominfoMalang Yo soale masyarakat cek panik, penyakit bera… https://t.co/SNvsIsmgB4	', -8.023552, 112.612717, '2020-05-06'),
(92, 5, 'Bismillah..giat warga janti utara RW 09 setiap malam.. siaga covid.. siaga keamanan.. wes ndang nyengkreo kabeh pen… https://t.co/DaT8TMVSCP	', -8.001723, 112.620354, '2020-05-04'),
(93, 5, 'Update COVID-19 di Kota Malang: 18 Positif, 8 Sembuh, 9 Dirawat MALANG-Pemerintah Kota Malang melalui satgas COVID… https://t.co/iMhHLpiRac	', -8.001608, 112.622002, '2020-05-04'),
(94, 5, 'Refleksi Hikmah COVID-19, UM Re-Install Sistem Pendidikan MALANG – Wabah virus corona yang tak kunjung usai, dampa… https://t.co/eB5x1Rof3t	', -7.954470, 112.602646, '2020-05-08'),
(95, 5, 'Stlh smpat landai ato tak ada pnambahn ksus positf Covid-19 rntg wkt 6 Apr - 21 Apr (2 mgu wkt efektf Physical Dist… https://t.co/pEqYQHzpXf	', -7.966166, 112.614990, '2020-05-10'),
(96, 5, 'RAMADHAN, COVID-19 &amp; TABAYYUN Slh stu tulisn lma kmi dilaman @nu_online ini skiranya msih relevan di ramadhan thun… https://t.co/mDjnQRG2JW	', -7.974321, 112.612183, '2020-05-11'),
(97, 5, 'Semoga data ODP yg mulai menurun variansinya saat2 ini berdampak pula pada mulai penurunan variansi data PDP hingga… https://t.co/e3xUqJAcyJ	', -7.983765, 112.611214, '2020-05-12'),
(105, 3, 'Satu lagi tambahan pasien konfirm positif Covid-19 di Kota Batu, Selasa (12/5) malam. Sehingga total pasien konfirm… https://t.co/Hwa2hO8X5h	', -7.968178, 112.616653, '2020-05-12'),
(106, 3, 'Avianca. Airline yg pesawatnya pernah diledakkan oleh Pablo Escobar. Akhirnya bangkrut karena covid. ? https://t.co/mLihPiVTlw	', -7.969777, 112.619507, '2020-05-11'),
(107, 3, 'Tambahan positif Covid-19 sangat luar biasa untuk Provinsi Jawa Timur, terjadi pada Selasa (12/05) sore ini. Betapa… https://t.co/lGIRqn98m0	', -7.965537, 112.624306, '2020-05-12'),
(108, 3, 'Kertanegara Group menggunakan protokol kesehatan. Demi memutus rantai penyebaran Virus Covid-19.  Mohon maaf bila p… https://t.co/6WGJm3TUtJ	', -7.965037, 112.629883, '2020-05-12'),
(109, 3, 'Karyawan PNM (Permodalan Nasional Madani) bagikan 25.000 paket sembako kepada nasabah PNM Mekaar terdampak Covid-19… https://t.co/Y5L7MQsLP5	', -7.969471, 112.631638, '2020-05-12'),
(110, 3, 'Satuan Tugas Covid-19 Komite Olahraga Nasional Indonesia (KONI) Jawa Timur terus melakukan roadshow ke daerah untuk… https://t.co/rgxE0EBl1o	', -7.982464, 112.628624, '2020-05-12'),
(111, 3, 'Memasuki pekan ke tiga bulan suci Ramadan masih belum terlalu banyak pemudik memenuhi jalan-jalan protokol di Kota… https://t.co/lsq16CMHfV	', -7.984627, 112.626266, '2020-05-11'),
(112, 2, 'Di tengah pandemi Covid-19 Universitas Islam Malang (Unisma) kembali memberikan perhatian kepada para mahasiswanya.… https://t.co/d9AS4FgwG8	', -7.974837, 112.649887, '2020-05-09'),
(113, 2, 'Satgas Covid-19 Polresta Malang Kota dan PSC 119 Kota Malang kembali memakamkan satu jenazah yang didiagnosis menga… https://t.co/RXaJdMX1M8	', -7.975017, 112.663475, '2020-05-09'),
(114, 2, 'Karyawan PNM (Permodalan Nasional Madani) bagikan 25.000 paket sembako kepada nasabah PNM Mekaar terdampak Covid-19… https://t.co/Y5L7MQsLP5	', -7.992925, 112.663506, '2020-05-12'),
(115, 2, 'Repot ngene iki kkn online  Maleh gak iso ero masalah e opo, Lek masalah covid gak mungkin proker kabeh isi e cov… https://t.co/hjCE3UadZG	', -7.983146, 112.658714, '2020-05-11'),
(116, 2, 'Hal paling serem saat ini jd Dokter 1. RJP Px Covid 19 2. Intubasi Px Covid 19 :\")	', -8.013628, 112.633331, '2020-05-11'),
(117, 2, 'Kemarin di timeline sliweran tulisan MENTAL KAYA. Ada mas mas yang lihat pedagang dan supir angkot yang sama sama p… https://t.co/0xXQVhX2EO	', -8.013007, 112.642174, '2020-05-04'),
(118, 2, 'Menakjubkan Ini adalah dokumentasi Tugas Akhir jauh sebelum Covid-19 merebak. Demi mendapatkan data dan gambar yang… https://t.co/oM9NybzCFC	', -8.022850, 112.648865, '2020-05-12'),
(119, 2, 'Apa kata mereka ketika Covid-19 berdampak pada kuliah Poltekom yang mendadak online? kuy_ikram --------------------… https://t.co/hHWMQ75djY	', -8.022850, 112.648865, '2020-05-05'),
(120, 2, 'Menakjubkan Ini adalah dokumentasi Tugas Akhir jauh sebelum Covid-19 merebak. Demi mendapatkan data dan gambar yang… https://t.co/oM9NybzCFC	', -8.038352, 112.650040, '2020-05-12'),
(121, 2, 'Hal paling serem saat ini jd Dokter 1. RJP Px Covid 19 2. Intubasi Px Covid 19 :\")	', -8.023472, 112.628227, '2020-05-11'),
(122, 2, 'Di saat semua orang harus saling menjaga jarak, justru kami tenaga medis menghampiri dan berdiri di garda terdepan… https://t.co/jlBNIla846	', -8.005584, 112.642563, '2020-05-08'),
(123, 2, '@jokowi Saya pribadi menaruh harap pada setiap kebijakan yang ada. Saya selalu berharap ketegasan dan ke\"GARANG\"an… https://t.co/PLgCkN98LU	', -8.005584, 112.642563, '2020-05-07'),
(124, 2, 'Apa kata mereka ketika Covid-19 berdampak pada kuliah Poltekom yang mendadak online? kuy_ikram --------------------… https://t.co/hHWMQ75djY	', -8.005584, 112.642563, '2020-05-05'),
(125, 2, 'Kemarin di timeline sliweran tulisan MENTAL KAYA. Ada mas mas yang lihat pedagang dan supir angkot yang sama sama p… https://t.co/0xXQVhX2EO	', -8.003968, 112.643837, '2020-05-04'),
(126, 2, 'Repot ngene iki kkn online  Maleh gak iso ero masalah e opo, Lek masalah covid gak mungkin proker kabeh isi e cov… https://t.co/hjCE3UadZG	', -7.991990, 112.640770, '2020-05-11'),
(127, 2, '@jokowi Saya pribadi menaruh harap pada setiap kebijakan yang ada. Saya selalu berharap ketegasan dan ke\"GARANG\"an… https://t.co/PLgCkN98LU	', -7.985049, 112.671921, '2020-05-07'),
(128, 2, 'Apa kata mereka ketika Covid-19 berdampak pada kuliah Poltekom yang mendadak online? kuy_ikram --------------------… https://t.co/hHWMQ75djY	', -8.009494, 112.637497, '2020-05-05'),
(129, 2, 'Repot ngene iki kkn online  Maleh gak iso ero masalah e opo, Lek masalah covid gak mungkin proker kabeh isi e cov… https://t.co/hjCE3UadZG	', -8.016286, 112.653008, '2020-05-11'),
(130, 2, 'Hal paling serem saat ini jd Dokter 1. RJP Px Covid 19 2. Intubasi Px Covid 19 :\")	', -8.009877, 112.658821, '2020-05-11'),
(131, 2, 'Kemarin di timeline sliweran tulisan MENTAL KAYA. Ada mas mas yang lihat pedagang dan supir angkot yang sama sama p… https://t.co/0xXQVhX2EO	', -8.002383, 112.652672, '2020-05-04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_kecamatan`
--

CREATE TABLE `m_kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `kd_kecamatan` varchar(10) NOT NULL,
  `nm_kecamatan` varchar(30) NOT NULL,
  `geojson_kecamatan` varchar(30) NOT NULL,
  `warna_kecamatan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_kecamatan`
--

INSERT INTO `m_kecamatan` (`id_kecamatan`, `kd_kecamatan`, `nm_kecamatan`, `geojson_kecamatan`, `warna_kecamatan`) VALUES
(1, '35.73.01', 'Blimbing', 'GeoJSON_blimbing.geojson', '#ff0000'),
(2, '35.73.03', 'Kedungkandang', 'GeoJSON_kedungkandang.geojson', '#00ff00'),
(3, '35.73.02', 'Klojen', 'GeoJSON_klojen.geojson', '#009900'),
(4, '35.73.05', 'Lowokwaru', 'GeoJSON_lowokwaru.geojson', '#880088'),
(5, '35.73.04', 'Sukun', 'GeoJSON_sukun.geojson', '#ff9900');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota_kelompok`
--
ALTER TABLE `anggota_kelompok`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_covid`
--
ALTER TABLE `data_covid`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_covid_kecamatan`
--
ALTER TABLE `data_covid_kecamatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kecamatan` (`id_kecamatan`);

--
-- Indeks untuk tabel `data_crawling`
--
ALTER TABLE `data_crawling`
  ADD PRIMARY KEY (`id_data`),
  ADD KEY `id_kecamatan` (`id_kecamatan`);

--
-- Indeks untuk tabel `m_kecamatan`
--
ALTER TABLE `m_kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota_kelompok`
--
ALTER TABLE `anggota_kelompok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `data_covid`
--
ALTER TABLE `data_covid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `data_covid_kecamatan`
--
ALTER TABLE `data_covid_kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `data_crawling`
--
ALTER TABLE `data_crawling`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT untuk tabel `m_kecamatan`
--
ALTER TABLE `m_kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_covid_kecamatan`
--
ALTER TABLE `data_covid_kecamatan`
  ADD CONSTRAINT `data_covid_kecamatan_ibfk_1` FOREIGN KEY (`id_kecamatan`) REFERENCES `m_kecamatan` (`id_kecamatan`);

--
-- Ketidakleluasaan untuk tabel `data_crawling`
--
ALTER TABLE `data_crawling`
  ADD CONSTRAINT `data_crawling_ibfk_1` FOREIGN KEY (`id_kecamatan`) REFERENCES `m_kecamatan` (`id_kecamatan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
