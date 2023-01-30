-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2023 at 12:33 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemperpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookId` char(20) NOT NULL,
  `idKategori` char(20) NOT NULL,
  `judul` char(100) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `status` char(20) DEFAULT NULL,
  `tanggalTerbit` char(50) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `isbn` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookId`, `idKategori`, `judul`, `jumlah`, `status`, `tanggalTerbit`, `harga`, `isbn`) VALUES
('BJDOY-1033758407', 'LINN', 'Another Volume 1', 5, 'Available', '29-Oktober-2009', 64000, '9786025254727'),
('BMOUL-4233937468', 'FIKS', 'Apa Ini? Apa Itu?', 2, 'Not Available', '12-Des-2011', 80000, '98973645671973'),
('HUWIY-9084013871', 'FIKS', 'It Ends With Us', 4, 'Available', '02-Aug-2016', 49900, '9783423718622'),
('ICLKF-7204117374', 'BIOG', 'Warren Buffett : An Illustrated Biography', 4, 'Available', '14-Dec-2004', 66000, '9780470821534'),
('IFVRA-1276232523', 'FIKS', 'Negeri Lima menara', 2, 'Not available', 'Jul-2009', 106000, '9789792248616'),
('KICXD-3159588348', 'KAMU', 'Concise English-Chinese Chinese-English Dictionary (4th Edition) (English and Chinese Edition)', 8, 'Available', '16-Mei-2021', 250000, '9787100059459'),
('OTGAP-5984586745', 'FIKS', 'OOOO', 2, 'Available', '11-11-1201', 909000, '90867857623'),
('PKGXZ-5977570848', 'REFR', 'Buku Siswa Bahasa Indonesia untuk SMP/MTs Kelas VII', 9, 'Not Available', '2017', 18000, '9786022829683'),
('PUNDW-5993370241', 'ENSI', 'Encyclopedia of Toxicology', 6, 'Available', '07-Apr-2014', 1267320, '9780123864543'),
('QDLKV-6356880234', 'BIOG', 'Soekarno Arsitek Bangsa', 2, 'Available', '27-Mei-2021', 50000, '9789797096328'),
('SAKHP-7307181418', 'REFR', 'The Unofficial Sims Cookbook', 2, 'Not available', '11-Oct-2022', 275000, '9781507219461'),
('UANOD-6632365723', 'NASK', 'Pembalesan baccarat : (samboengan penipoe besar) / ditjeritaken oleh Lie Kim Hok', 1, 'Not available', '1912', 0, '9789797096328'),
('UBUPC-6052907159', 'KOMI', 'JOURNEY. THE ART OF CARLES DALMAU', 4, 'Available', '10-Nov-2022', 440000, '9788467959154'),
('USNHJ-7060782910', 'NFIK', 'Buku Filsafat Ilmu : Hakikat Mencari Pengetahuan', 3, 'Available', '27-Mei-2021', 130000, '9786024014278'),
('VFYUQ-3539487716', 'HIST', ' China: Warisan Klasik dan Daya Dinamis yang Menggetarkan Dunia', 3, 'Not available', '27-Mei-2021', 70000, '9786020636395'),
('WSPJK-9202333288', 'MAJA', 'Majalah Bobo Edisi 48 3 Maret 2022', 5, 'Available', '3-Maret-2022', 15000, '9118536305183'),
('WSUFE-1041466813', 'FIKS', 'Bumi Manusia', 5, 'Available', '25-Aug-1980', 66000, '9780140256352'),
('XBVST-5208317967', 'FIKS', 'Laut Bercerita', 2, 'Available', 'Oct-2017', 171000, '9786024246945'),
('ZZMOJ-5439089530', 'FIKS', 'Cantik Itu Luka', 2, 'Available', '2002', 142400, '9788426414183');

-- --------------------------------------------------------

--
-- Stand-in structure for view `bukumaxpinjam`
-- (See below for the actual view)
--
CREATE TABLE `bukumaxpinjam` (
`bookId` char(20)
,`staffId` char(20)
,`nama` char(20)
,`judul` char(100)
,`JumlahBuku` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `bukupeminjaman`
-- (See below for the actual view)
--
CREATE TABLE `bukupeminjaman` (
`idPeminjaman` char(20)
,`bookId` char(20)
,`tanggalPeminjaman` date
,`tanggalPengembalian` date
,`judul` char(100)
,`namaKategori` char(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `customermaxpinjam`
-- (See below for the actual view)
--
CREATE TABLE `customermaxpinjam` (
`memberId` char(20)
,`Nama` varchar(50)
,`JumlahBuku` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `daftarpeminjaman`
-- (See below for the actual view)
--
CREATE TABLE `daftarpeminjaman` (
`idPeminjaman` char(20)
,`idDenda` char(20)
,`memberId` char(20)
,`staffId` char(20)
,`bookId` char(20)
,`tanggalPeminjaman` date
,`tanggalPengembalian` date
,`bentukBuku` char(20)
,`judul` char(100)
,`idKategori` char(20)
,`isbn` char(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `denda`
--

CREATE TABLE `denda` (
  `idDenda` char(20) NOT NULL,
  `totalDenda` int(11) DEFAULT NULL,
  `hariKeterlambatan` int(11) DEFAULT NULL,
  `jenisPembayaran` char(20) DEFAULT NULL,
  `jenisDenda` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `denda`
--

INSERT INTO `denda` (`idDenda`, `totalDenda`, `hariKeterlambatan`, `jenisPembayaran`, `jenisDenda`) VALUES
('DH0215', 500000, 0, 'OVO', 'Hilang'),
('DH4044', 500000, 0, 'BCA', 'Hilang'),
('DN0001', 0, 0, '-', '-'),
('DN0002', 0, 0, 'OVO', 'Terlambat'),
('DN0804', 0, 0, '-', '-'),
('DN9065', 0, 0, 'Cash', '-'),
('DT0112', 40000, 8, 'GoPay', 'Terlambat'),
('DT0215', 15000, 3, 'Cash', 'Terlambat'),
('DT0271', 145000, 29, 'Cash', 'Terlambat'),
('DT0315', 30000, 6, 'Cash', 'Terlambat'),
('DT0912', 0, 0, 'BCA', 'Terlambat');

-- --------------------------------------------------------

--
-- Stand-in structure for view `dendamax`
-- (See below for the actual view)
--
CREATE TABLE `dendamax` (
`nama` varchar(50)
,`jenisDenda` char(20)
,`totalDenda` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idKategori` char(20) NOT NULL,
  `namaKategori` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idKategori`, `namaKategori`) VALUES
('BIOG', 'Biographies'),
('ENSI', 'Encylopedia'),
('FIKS', 'Fiction'),
('HIST', 'History'),
('KAMU', 'Dictionary'),
('KOMI', 'Komik'),
('LINN', 'Light Novel'),
('MAJA', 'Magazine'),
('NASK', 'Script'),
('NFIK', 'Non-Fiction'),
('REFR', 'Referensi');

-- --------------------------------------------------------

--
-- Stand-in structure for view `kategoriurut`
-- (See below for the actual view)
--
CREATE TABLE `kategoriurut` (
`namaKategori` char(20)
,`SUM(books.jumlah)` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberId` char(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `noHp` char(20) DEFAULT NULL,
  `riwayatPeminjaman` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberId`, `nama`, `email`, `noHp`, `riwayatPeminjaman`) VALUES
('MEMB0122', 'Vanesa Danuwijaya', 'vanessa@gmail.com', '08123455789', 0),
('MEMB0991', 'Nile Calliora', 'nille.2701@binus.ac.id', '08220995555', 1),
('MEMB1102', 'Gaviella Elena', 'gaviella@binus.ac.id', '08992015432', 1),
('MEMB1234', 'Keshia Jean', 'keshia@binus.ac.id', '08987654321', 0),
('MEMB1287', 'Ashley Sagerue', 'ashsagerue@binus.ac.id', '08283772988', 3),
('MEMB1949', 'Revino Alexander', 'alexander@binus.ac.id', '08251230926', 10),
('MEMB2008', 'Angelica Beatrice', 'ang.beatrice@binus.ac.id', '08996274040', 0),
('MEMB2208', 'Marvella Graciana', 'marvellagrace@binus.ac.id', '081915352002', 8),
('MEMB2345', 'Fangeline', 'fangeline@binus.ac.id', '0829172846', 2),
('MEMB2981', 'Annette Jeanny', 'annejeanny@binus.ac.id', '081928882411', 8);

-- --------------------------------------------------------

--
-- Stand-in structure for view `morningstaff`
-- (See below for the actual view)
--
CREATE TABLE `morningstaff` (
`staffId` char(20)
,`shiftCode` char(20)
,`nama` char(20)
,`noHp` char(20)
,`email` char(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `idPeminjaman` char(20) NOT NULL,
  `idDenda` char(20) NOT NULL,
  `memberId` char(20) NOT NULL,
  `staffId` char(20) NOT NULL,
  `bookId` char(20) NOT NULL,
  `jumlahBuku` int(11) DEFAULT NULL,
  `tanggalPeminjaman` date DEFAULT NULL,
  `tanggalPengembalian` date DEFAULT NULL,
  `bentukBuku` char(20) DEFAULT NULL,
  `statusPeminjaman` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`idPeminjaman`, `idDenda`, `memberId`, `staffId`, `bookId`, `jumlahBuku`, `tanggalPeminjaman`, `tanggalPengembalian`, `bentukBuku`, `statusPeminjaman`) VALUES
('PNJ1098765', 'DN0804', 'MEMB1949', 'ST304', 'ZZMOJ-5439089530', 1, '2022-11-06', '2022-11-10', 'Fisik', 'Kembali'),
('PNJ1234567', 'DT0112', 'MEMB2981', 'ST308', 'ICLKF-7204117374', 1, '2022-12-06', '2023-01-20', 'Digital', 'Belum'),
('PNJ1627009', 'DT0315', 'MEMB1287', 'ST302', 'PUNDW-5993370241', 5, '2022-11-03', '2023-01-22', 'Fisik', 'Belum'),
('PNJ1928300', 'DN0001', 'MEMB2008', 'ST310', 'WSUFE-1041466813', 1, '2022-11-01', '2022-11-08', 'Digital', 'Kembali'),
('PNJ2617772', 'DT0271', 'MEMB1234', 'ST305', 'QDLKV-6356880234', 1, '2022-11-02', '2022-12-30', 'Fisik', 'Belum'),
('PNJ2817015', 'DH4044', 'MEMB0991', 'ST309', 'HUWIY-9084013871', 2, '2022-11-02', '0000-00-00', 'Fisik', 'Hilang'),
('PNJ7283526', 'DN0002', 'MEMB1102', 'ST303', 'UBUPC-6052907159', 2, '2022-11-04', '2022-11-10', 'Digital', 'Kembali'),
('PNJ7284632', 'DH0215', 'MEMB2208', 'ST307', 'XBVST-5208317967', 2, '2022-11-10', '0000-00-00', 'Fisik', 'Hilang'),
('PNJ9001623', 'DT0912', 'MEMB0122', 'ST306', 'IFVRA-1276232523', 1, '2022-11-11', '2022-11-29', 'Digital', 'Kembali'),
('PNJ9099678', 'DT0215', 'MEMB2345', 'ST301', 'HUWIY-9084013871', 1, '2022-11-03', '2022-11-20', 'Fisik', 'Kembali');

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `shiftCode` char(20) NOT NULL,
  `jamMulai` time DEFAULT NULL,
  `jamPulang` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shiftCode`, `jamMulai`, `jamPulang`) VALUES
('SH101', '07:00:00', '10:00:00'),
('SH102', '10:00:01', '13:00:00'),
('SH103', '13:00:01', '16:00:00'),
('SH104', '16:05:01', '19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffId` char(20) NOT NULL,
  `shiftCode` char(20) NOT NULL,
  `nama` char(20) DEFAULT NULL,
  `noHp` char(20) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `jabatan` char(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffId`, `shiftCode`, `nama`, `noHp`, `email`, `jabatan`) VALUES
('ST301', 'SH101', 'Lauren', '083456178293', 'laurenbliss@gmail.com', 'Kepala Perpustakaan'),
('ST302', 'SH103', 'Rosie', '089127364528', 'rosieli@gmail.com', 'Pengelola IT'),
('ST303', 'SH104', 'Eden', '087263549172', 'edenlee@gmail.com', 'Pengelola Keuangan'),
('ST304', 'SH101', 'Hellen', '018263548271', 'hellenpark@gmail.com', 'Teknisi Sarpras'),
('ST305', 'SH102', 'Troy', '081723527182', 'troyanderson@yahoo.com', 'Supervisor'),
('ST306', 'SH104', 'Scarlett', '082937461222', 'scarlettjane@gmail.com', 'Supervisor'),
('ST307', 'SH103', 'Nina', '018273645177', 'ninarowland@gmail.com', 'Staff'),
('ST308', 'SH102', 'Clara', '182736442817', 'claraadams@yahoo.com', 'Staff'),
('ST309', 'SH102', 'Luca', '087263517263', 'lucabalsa@gmail.com', 'Staff'),
('ST310', 'SH101', 'Ethan', '086785241322', 'ethanwinter@gmail.com', 'Staff');

-- --------------------------------------------------------

--
-- Structure for view `bukumaxpinjam`
--
DROP TABLE IF EXISTS `bukumaxpinjam`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bukumaxpinjam`  AS SELECT `books`.`bookId` AS `bookId`, `staff`.`staffId` AS `staffId`, `staff`.`nama` AS `nama`, `books`.`judul` AS `judul`, `peminjaman`.`jumlahBuku` AS `JumlahBuku` FROM ((`peminjaman` join `books` on(`peminjaman`.`bookId` = `books`.`bookId`)) join `staff` on(`peminjaman`.`staffId` = `staff`.`staffId`)) WHERE `peminjaman`.`jumlahBuku` = (select max(`peminjaman`.`jumlahBuku`) from `peminjaman`)  ;

-- --------------------------------------------------------

--
-- Structure for view `bukupeminjaman`
--
DROP TABLE IF EXISTS `bukupeminjaman`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bukupeminjaman`  AS SELECT `p`.`idPeminjaman` AS `idPeminjaman`, `p`.`bookId` AS `bookId`, `p`.`tanggalPeminjaman` AS `tanggalPeminjaman`, `p`.`tanggalPengembalian` AS `tanggalPengembalian`, `b`.`judul` AS `judul`, `k`.`namaKategori` AS `namaKategori` FROM ((`peminjaman` `p` join `books` `b` on(`p`.`bookId` = `b`.`bookId`)) join `kategori` `k` on(`b`.`idKategori` = `k`.`idKategori`)) WHERE `b`.`harga` = (select max(`books`.`harga`) from `books`)  ;

-- --------------------------------------------------------

--
-- Structure for view `customermaxpinjam`
--
DROP TABLE IF EXISTS `customermaxpinjam`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customermaxpinjam`  AS SELECT `member`.`memberId` AS `memberId`, `member`.`nama` AS `Nama`, `peminjaman`.`jumlahBuku` AS `JumlahBuku` FROM (`peminjaman` join `member` on(`peminjaman`.`memberId` = `member`.`memberId`)) WHERE `peminjaman`.`jumlahBuku` = (select max(`peminjaman`.`jumlahBuku`) from `peminjaman`)  ;

-- --------------------------------------------------------

--
-- Structure for view `daftarpeminjaman`
--
DROP TABLE IF EXISTS `daftarpeminjaman`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `daftarpeminjaman`  AS SELECT `p`.`idPeminjaman` AS `idPeminjaman`, `p`.`idDenda` AS `idDenda`, `p`.`memberId` AS `memberId`, `p`.`staffId` AS `staffId`, `p`.`bookId` AS `bookId`, `p`.`tanggalPeminjaman` AS `tanggalPeminjaman`, `p`.`tanggalPengembalian` AS `tanggalPengembalian`, `p`.`bentukBuku` AS `bentukBuku`, `b`.`judul` AS `judul`, `b`.`idKategori` AS `idKategori`, `b`.`isbn` AS `isbn` FROM (`peminjaman` `p` join `books` `b` on(`p`.`bookId` = `b`.`bookId`))  ;

-- --------------------------------------------------------

--
-- Structure for view `dendamax`
--
DROP TABLE IF EXISTS `dendamax`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dendamax`  AS SELECT `member`.`nama` AS `nama`, `denda`.`jenisDenda` AS `jenisDenda`, `denda`.`totalDenda` AS `totalDenda` FROM ((`peminjaman` join `denda` on(`peminjaman`.`idDenda` = `denda`.`idDenda`)) join `member` on(`peminjaman`.`memberId` = `member`.`memberId`)) WHERE `denda`.`totalDenda` = (select max(`denda`.`totalDenda`) from `denda`)  ;

-- --------------------------------------------------------

--
-- Structure for view `kategoriurut`
--
DROP TABLE IF EXISTS `kategoriurut`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kategoriurut`  AS SELECT `kategori`.`namaKategori` AS `namaKategori`, sum(`books`.`jumlah`) AS `SUM(books.jumlah)` FROM (`books` join `kategori` on(`books`.`idKategori` = `kategori`.`idKategori`)) GROUP BY `books`.`idKategori` ORDER BY sum(`books`.`jumlah`) AS `DESCdesc` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `morningstaff`
--
DROP TABLE IF EXISTS `morningstaff`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `morningstaff`  AS SELECT `staff`.`staffId` AS `staffId`, `staff`.`shiftCode` AS `shiftCode`, `staff`.`nama` AS `nama`, `staff`.`noHp` AS `noHp`, `staff`.`email` AS `email` FROM `staff` WHERE `staff`.`shiftCode` like '%SH101%\'%SH101%\'%SH101%\'%SH101%\'%SH101%\'%SH101%\'%SH101%\'%SH101%''%SH101%\'%SH101%\'%SH101%\'%SH101%\'%SH101%\'%SH101%\'%SH101%\'%SH101%'  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookId`),
  ADD KEY `idKategori` (`idKategori`);

--
-- Indexes for table `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`idDenda`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idKategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberId`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`idPeminjaman`),
  ADD KEY `idDenda` (`idDenda`),
  ADD KEY `memberId` (`memberId`),
  ADD KEY `staffId` (`staffId`),
  ADD KEY `bookId` (`bookId`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`shiftCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
