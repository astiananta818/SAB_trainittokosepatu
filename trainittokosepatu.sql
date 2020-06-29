# Host: localhost  (Version 5.5.5-10.1.13-MariaDB)
# Date: 2020-06-30 12:51:30
# Generator: MySQL-Front 5.3  (Build 5.33)

/*!40101 SET NAMES latin1 */;

#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

#
# Data for table "admin"
#

INSERT INTO `admin` VALUES (1,'sepatuasti.com','sepatuasti.com','Trainit Sepatu');

#
# Structure for table "ongkir"
#

DROP TABLE IF EXISTS `ongkir`;
CREATE TABLE `ongkir` (
  `id_ongkir` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  PRIMARY KEY (`id_ongkir`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "ongkir"
#


#
# Structure for table "pelanggan"
#

DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon_pelanggan` varchar(25) NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Data for table "pelanggan"
#

INSERT INTO `pelanggan` VALUES (1,'astiananta@gmail.com','asti','Asti Ananta','082293271149'),(2,'wildhaanggrana@gmail.com','wildha','Wildha Anggrana','085315703962');

#
# Structure for table "pembelian"
#

DROP TABLE IF EXISTS `pembelian`;
CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  PRIMARY KEY (`id_pembelian`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Data for table "pembelian"
#

INSERT INTO `pembelian` VALUES (1,1,'2020-06-03',150000),(2,1,'2020-06-05',200000);

#
# Structure for table "pembelian_produk"
#

DROP TABLE IF EXISTS `pembelian_produk`;
CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  PRIMARY KEY (`id_pembelian_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Data for table "pembelian_produk"
#

INSERT INTO `pembelian_produk` VALUES (1,1,1,1),(2,1,2,1);

#
# Structure for table "produk"
#

DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

#
# Data for table "produk"
#

INSERT INTO `produk` VALUES (9,'sepatu meow white',70000,1000,'6b9ce84f12c5522c0520538ec031d93d.jpg','dari bahan kampas'),(10,'sepatu panary 2021',150000,1000,'6e1eb2586d3119821c6920c07059fa9e.jpg','dari bahan import'),(11,'sepatu korea',200000,1000,'514729_083cb610-25ed-4888-8ea5-7c8854844ab7_1024_1024.jpg','bahan import'),(12,'sepatu trendi',120000,1000,'e6f9ef570654a4d78dcc1ea918958388.jpg','dari bahan kampas');

#
# Structure for table "tbl_users"
#

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE `tbl_users` (
  `id_user` int(150) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

#
# Data for table "tbl_users"
#

INSERT INTO `tbl_users` VALUES (1,'Administrator','admin','21232f297a57a5a743894a0e4a801fc3','2017-02-21 04:14:16','2017-03-06 13:42:37');
