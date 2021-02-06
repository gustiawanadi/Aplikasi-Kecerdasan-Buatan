-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2020 pada 19.32
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penyakit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id` int(5) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `gejala` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_gejala`
--

INSERT INTO `tb_gejala` (`id`, `kode`, `gejala`) VALUES
(1, 'G001', 'Akar tanaman lebih sedikit'),
(2, 'G002', 'Anakan berkurang/sedikit'),
(3, 'G003', 'anakan bertambah banyak'),
(4, 'G004', 'anakan tumbuh lemas'),
(5, 'G005', 'anakan tumbuh tegak'),
(6, 'G006', 'bercak - bercak berwarna coklat'),
(7, 'G007', 'bercak berbentuk oval/elips'),
(8, 'G008', 'bercak berwarna abu-abu kehijauan / hijau keabu - abuan'),
(9, 'G009', 'Bercak berwarna kelabu/keputihan'),
(10, 'G010', 'Bercak dilingkari warna coklat/ merah kecoklatan'),
(11, 'G011', 'bercak hitam/coklat pada kulit gabah'),
(12, 'G012', 'bercak menyerang daun'),
(13, 'G013', 'bercak pada pelepah daun bagian bawah'),
(14, 'G014', 'bercak-bercak berwarna coklat'),
(15, 'G015', 'daerah dekat leher panikel berwarna coklat'),
(16, 'G016', 'daun bendera robek-robek/berombak sepanjang pembuluh'),
(17, 'G017', 'daun berwarna abu-abu keputih-putihan'),
(18, 'G018', 'Daun berwarna hijau pucat/ kekuning-kuningan'),
(19, 'G019', 'Daun berwarna hijau pucat/ kuning pucat'),
(20, 'G020', 'Daun berwarna hijau tua'),
(21, 'G021', 'Daun berwarna jingga'),
(22, 'G022', 'daun keriput dan layu seperti tersiram air panas'),
(23, 'G023', 'daun melingkar seperti terpilin'),
(24, 'G024', 'daun menggulung dan mengering'),
(25, 'G025', 'daun menguning sampai jingga dari puncuk ke panggal'),
(26, 'G026', 'daun mudah terlihat seperti mottle'),
(27, 'G027', 'daun pendek dan sempit'),
(28, 'G028', 'daun tua normal, daun muda pucat klorosis'),
(29, 'G029', 'daun tua seperti bintik-bintik coklat bekas ditusuk'),
(30, 'G030', 'gabah yang di hasilkan hampa/kosong'),
(31, 'G031', 'malai keluar sebagian'),
(32, 'G032', 'pangkal leher malai berwarna coklat keabu-abuan'),
(33, 'G033', 'tanaman kerdil '),
(34, 'G034', 'tepi daun luka berupa garis bercak kebasahan'),
(35, 'G035', 'tepi helai daun bergerigi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penyakit`
--

CREATE TABLE `tb_penyakit` (
  `id` int(5) NOT NULL,
  `penyakit` varchar(50) DEFAULT NULL,
  `definisi` longtext NOT NULL,
  `penyebab` longtext NOT NULL,
  `pengendalian_teknis` varchar(200) NOT NULL,
  `pengendalian_kimia` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`id`, `penyakit`, `definisi`, `penyebab`, `pengendalian_teknis`, `pengendalian_kimia`) VALUES
(1, 'tungro', 'tungro merupakan penyakit padi yang dibawa oleh wereng hijau dan wereng loreng', 'virus', 'rotasi / pergiliran tanaman, penanaman varietas unggul / tahan, pengolahan tanah secara optimal, pengaturan jarak tanam, penanaman serempak', 'dharmachin 50WP. baycarb 500EC, mipcin 50Wp, petrofur 3GR'),
(2, 'kerdil rumput', '-', '-', '-', '-'),
(3, 'kerdil hampa', '-', '-', '-', '-'),
(4, 'blast', '-', '-', '-', '-'),
(5, 'bercak coklat', '-', '-', '-', '-'),
(6, 'hawar pelepah', '-', '-', '-', '-'),
(7, 'hawar bakteri', '-', '-', '-', '-'),
(8, 'daun jingga', '-', '-', '-', '-'),
(9, 'kerdil kuning', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rule`
--

CREATE TABLE `tb_rule` (
  `id` int(5) NOT NULL,
  `G001` tinyint(1) DEFAULT NULL,
  `G002` tinyint(1) DEFAULT NULL,
  `G003` tinyint(1) DEFAULT NULL,
  `G004` tinyint(1) DEFAULT NULL,
  `G005` tinyint(1) DEFAULT NULL,
  `G006` tinyint(1) DEFAULT NULL,
  `G007` tinyint(1) DEFAULT NULL,
  `G008` tinyint(1) DEFAULT NULL,
  `G009` tinyint(1) DEFAULT NULL,
  `G010` tinyint(1) DEFAULT NULL,
  `G011` tinyint(1) DEFAULT NULL,
  `G012` tinyint(1) DEFAULT NULL,
  `G013` tinyint(1) DEFAULT NULL,
  `G014` tinyint(1) DEFAULT NULL,
  `G015` tinyint(1) DEFAULT NULL,
  `G016` tinyint(1) DEFAULT NULL,
  `G017` tinyint(1) DEFAULT NULL,
  `G018` tinyint(1) DEFAULT NULL,
  `G019` tinyint(1) DEFAULT NULL,
  `G020` tinyint(1) DEFAULT NULL,
  `G021` tinyint(1) DEFAULT NULL,
  `G022` tinyint(1) DEFAULT NULL,
  `G023` tinyint(1) DEFAULT NULL,
  `G024` tinyint(1) DEFAULT NULL,
  `G025` tinyint(1) DEFAULT NULL,
  `G026` tinyint(1) DEFAULT NULL,
  `G027` tinyint(1) DEFAULT NULL,
  `G028` tinyint(1) DEFAULT NULL,
  `G029` tinyint(1) DEFAULT NULL,
  `G030` tinyint(1) DEFAULT NULL,
  `G031` tinyint(1) DEFAULT NULL,
  `G032` tinyint(1) DEFAULT NULL,
  `G033` tinyint(1) DEFAULT NULL,
  `G034` tinyint(1) DEFAULT NULL,
  `G035` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_rule`
--

INSERT INTO `tb_rule` (`id`, `G001`, `G002`, `G003`, `G004`, `G005`, `G006`, `G007`, `G008`, `G009`, `G010`, `G011`, `G012`, `G013`, `G014`, `G015`, `G016`, `G017`, `G018`, `G019`, `G020`, `G021`, `G022`, `G023`, `G024`, `G025`, `G026`, `G027`, `G028`, `G029`, `G030`, `G031`, `G032`, `G033`, `G034`, `G035`) VALUES
(1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0),
(2, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1),
(4, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0),
(8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indeks untuk tabel `tb_rule`
--
ALTER TABLE `tb_rule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_gejala`
--
ALTER TABLE `tb_gejala`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `tb_rule`
--
ALTER TABLE `tb_rule`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD CONSTRAINT `tb_penyakit_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_rule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
