/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : db_myatk

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 24/04/2021 11:24:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_atk
-- ----------------------------
DROP TABLE IF EXISTS `tb_atk`;
CREATE TABLE `tb_atk`  (
  `id_atk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_atk` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jenis_atk` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `harga_atk` int(11) NULL DEFAULT NULL,
  `stok_atk` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deskripsi_atk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `foto_atk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_atk`) USING BTREE,
  INDEX `jenis_atk`(`jenis_atk`) USING BTREE,
  CONSTRAINT `tb_atk_ibfk_1` FOREIGN KEY (`jenis_atk`) REFERENCES `tb_jenis` (`id_jenis`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_atk
-- ----------------------------
INSERT INTO `tb_atk` VALUES (1, 'Binder Clip', 'ATK001', 1000, '10', 'Ini Binder clip', 'atk_1.jpg');
INSERT INTO `tb_atk` VALUES (2, 'Business File', 'ATK001', 1000, '10', 'Ini Bisnis file', 'atk_2.jpg');
INSERT INTO `tb_atk` VALUES (3, 'Box File Bindex', 'ATK001', 1000, '10', 'Ini box file', 'atk_3.jpg');
INSERT INTO `tb_atk` VALUES (4, 'Gunting Kenko', 'ATK001', 1000, '10', 'ini gunting', 'atk_4.jpg');
INSERT INTO `tb_atk` VALUES (5, 'Steples MAX', 'ATK001', 1000, '10', 'ini hekter', 'atk_5.jpg');
INSERT INTO `tb_atk` VALUES (6, 'Lem UHU Stick', 'ATK001', 1000, '10', 'ini lem uhu', 'atk_6.jpg');
INSERT INTO `tb_atk` VALUES (7, 'Matk n Notes', 'ATK001', 1000, '10', 'ini sticky note', 'atk_7.jpg');
INSERT INTO `tb_atk` VALUES (8, 'Penggaris Butterfly', 'ATK001', 1000, '10', 'ini penggaris', 'atk_8.jpg');
INSERT INTO `tb_atk` VALUES (9, 'Penghapus Staedler', 'ATK001', 1000, '10', 'ini penghapus', 'atk_9.jpg');
INSERT INTO `tb_atk` VALUES (10, 'Pensil FaberCastel 2B', 'ATK001', 1000, '10', 'ini pensil', 'atk_10.jpg');
INSERT INTO `tb_atk` VALUES (11, 'Pulpen Faster C600', 'ATK001', 1000, '10', 'ini pulpen', 'atk_11.jpg');
INSERT INTO `tb_atk` VALUES (12, 'Serutan Kenko SP-818', 'ATK001', 1000, '10', 'ini serutan', 'atk_12.jpg');
INSERT INTO `tb_atk` VALUES (13, 'Stabilo Highligter', 'ATK001', 1000, '10', 'ini stabilo', 'atk_13.jpg');
INSERT INTO `tb_atk` VALUES (14, 'Tonbow Mono Correction Pen', 'ATK001', 1000, '10', 'ini tip x', 'atk_14.jpg');

-- ----------------------------
-- Table structure for tb_jenis
-- ----------------------------
DROP TABLE IF EXISTS `tb_jenis`;
CREATE TABLE `tb_jenis`  (
  `id_jenis` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_atk` varchar(54) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_jenis`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_jenis
-- ----------------------------
INSERT INTO `tb_jenis` VALUES ('ATK001', 'ALAT TULIS');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
