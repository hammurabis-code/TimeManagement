-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 192.168.1.2    Database: peakertimemanagement
-- ------------------------------------------------------
-- Server version	5.7.13-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `__migrationhistory`
--

DROP TABLE IF EXISTS `__migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__migrationhistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ContextKey` varchar(300) NOT NULL,
  `Model` longblob NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__migrationhistory`
--

LOCK TABLES `__migrationhistory` WRITE;
/*!40000 ALTER TABLE `__migrationhistory` DISABLE KEYS */;
INSERT INTO `__migrationhistory` VALUES ('201611262318041_InitialCreate','Peaker.TimeManagment.Models.ApplicationDbContext','�\0\0\0\0\0\0\�\\[o\�~/\�� \�\�Z�t�\��\�E\�Iڠ�ƙE\��D;\�H�V��	���>�\'�/�P�n�\�b+��X`�\�w?�������w�\�KX\�8N|Jf�\�\�ض0q�\��\�N\�\�O�O?��\�+/|�~)\��zВ$3���\�\�q�	�(���ӄ�\�ĥ��<\��\�99q0@؀eY\�/)a~���sN��#��\��z8H\�w(Yd�\�\nq!\�\���\�x�\�oA\�6ɛ\�\�E\�#Pi���m!B(C>��\��)Y/\"���\�\�C�\n,:r^U\�ۧ\�S\�\'�jX@�i\�h8�\�Lɑ�odj�4\"��\n\�\�^y�3S\�\�g��\�\0 <�1�<�oKIt�٤h8\�!�c���\�\�\'u\�#�w���T��c�ߑ5O�\�xFp\�bY\�2�\�\�\�G��\�\�\�ru�\�\�G\�}�3>�P\�)�\�5>����F8\��\�m9\�v�ܰlVk�[��ön\�\�gL\�\�	f\�\�\'ۺ�_�W|\��J|�NЈ\�)��K�\0-\\�;�2��[��~�8�\�;�쯳��\�\�ĉa^}�AV�<�Q>�\Z\��MT��i\�7���~[\�4vyg��\�#�ט5��:y{Q�C�O\���\�5U魭\�;�\�L(D\�z6���\�ތ��\"��Z\�\"m�kٵ&�BS�\"\�I_2\�\�\�ym�\n���8��\�ʏC\\��g\nTDd�\�(I`m�����\�\�\�T_`7����\�\�ͥ=<Q�\�\�p\�g\�\�d�64��\�k\�2\Z_\�jk�\�\��NSvE�K\��W\���\'�۽FQ\�\�uq�\\��7�\��7����\�+վ��y��P\�Hk귢j\�\�k(^���\�SiS�3]����EU��y�NUE���r�~���fE�\n�z\�F���\Z\��\�`\��\�n�6�53.`�\�\�ǰ�y�1�j���p�\�\�B\�|o\�$���tlQ͆l6d��?25\��\�q��Ǒ���\�\�O[\�sN\�l\�ӡ\�\�]\�\�\Z`�.IB]?��`�e4�\�\�k佑c#\�1 �Ϸ<�}�eRݓK`��7\�Q\�\"O5#t\��X��j�b$M\���\��\�7B���L�	S��O\\?BA����=�0\��R�\\r�#L��NK���pJ9ҠtYh\�\�\�ND�\�j\Z�.�\Zw%R�Nv�\�^\n�\�M�\�n���\�$}0���APqV\�K\0�\�rh�NL�\n�j\'mZlm�\�\�4?��\�zh�l�w����k\�l\�\������ІA���\\�B�\�4�3\�S�\�\�\�\�\�\�̚!�\�\�\���N;�L�6��h�\�bPR&\�\0\�X^�v\0[\�\�Za\�\�/�\�8�b\�/Hk\�ר29{�>ʞ�lPH\�\�P\�\�B^��\�aS\\V5L_x�7\\\��ux�#�\�J5���sȆ�d[YIr�V*:3��G���q\n�[�����4يHG�۔eS\'O���!\�jz��\�\'\�Z\��b-���\�iHa�ḉ&�Զ�\�h�\�X*Ѡ\�\'\�1�D<\�3�B��vo5,��\����b���\�\"|\�r�\�\�tU�D�]\�y��\�XC}s��ġ\0Ś��iH̞��u~�Wo�Q����\�I)fS�\�\��\Z!uv�=Z�G����!Lv/�Ѻ\�M>��Y\�QLa����ɵ\�l\�d�q��u\"�\�L9+u\0�i F-\�A���Gmf�\�1�%����:�T4@\�z�IC\�z�Fx�\�k�����\�\�\�\��Ț�:��xl�\�rYTMJXS\��JH�W\�\�ˌ��\�7��\0�\�nf�x��q�Ͱv\�_�}�%n�0�� ie<nO�<\0��浨qU\�\\�Z\��͘��\�\�r\�v�o\�F\�7��r\Z���\�\�S�t����X�c\�h�W��3��u�k0\�\�\�\�y\�c��5�m�\n\',O��?L�\"=\�9�\'5N�x�\�$kzW\���o�g�O(V�)�xvR�*q\�\�ᗙ���\�y�\�e����\�+�M�\�1N��o59t�4���ׁ>�\�o՛~˛Y�1L�s\�X�\�&#\�|J1H��\�\�l��\��N�\�[-�4!6���4\�]B@A�\�j�Z\�g��i^�\05�\�L/63>�\�\'˞<\�\����\�C;�L���Ɨ>a[�#\�-��\�h\�G�X�2;w\�ao���\�\�II\�\�tҫ\�\����H�ހ\�,Oy�mQ��<\Z�>	�\�Ǉ�n\\%�\�7\�x��\�-WE��|\�Ȁ\�d�\�?kx\�\\3Er<�rXn���M\�y\�?x\�d3\�w�l��|�k�\�?�̴\�[\�޳v\�$Í�.ܕ��G\�ᘿ�@�ܣ\�S\�\��L\�*�VU\�B\��g�`e\�(r�\Z\�b��Ul���u\�\�\Z�6\�d���U��\�.ې��|bm6�.ǻckK�zO�Í�t��w���\�\�\�)]x�4f�\�r��d�b�1�΀l`���\�\�?\��w\�+�5\�6vͲ\�\rY\�b�4*�H�[̐[\�E\��r�\�r�\Z<\��+�%�n\�}ʢ�A�q�\Z/\��\�\�R��:O\�\�6���\���\�\�\��R\�kML\�\0��\�\�c\�x<w�Z\"\�Q\�H��t�q\0�ܓzƛ\����\�\�}�\"�&�\�h�}z\�u�\�D`T\�\�\'p\�_~�?<\����T\0\0','6.1.3-40302'),('201611281822497_InitializeTables','Peaker.TimeManagment.Migrations.Configuration','�\0\0\0\0\0\0\�]o\��@���\�b/\�\�\�ua\�!\�l�io7�8{\�ۂ��p�\�\�4A\�_և������\�7)R�)1��\�\�pf8�\�\����\����ػ�Y�\�\�}r\�{0	\�0J\�W\�}���\���\��C�y�~i\�\��P\�$_�ߊb�n6˃op�Mdi�\�\'A���0��9=��\��\�D |\��\�׻��6���~.\�$�\�b\�i\���JV%T\�\��|��?C�+\�NnP� \�\rL��sP\0\�;�#�Z��\��@��(�\�\�pUdi�^m\�\�<n!�w\�\�\�xG�\��\��\r\�ь6l@��H7�\0_��Y4�wb�OX���1�xĽ.��\�\�d\�\�\�\�-\�W\�p�P\��\n敧���(\�+��\�[\�\�b��EwEb\�nwG�\�\�\�M�+L\�.�Y\������>}\�\�-̊\�kxW�\�2��\�n&6$͘6UO/�\�\�\�����\�\�`��*\������AQ�,�0`\�\\	��\�\�Am+yVH�J�A\�{�\�\�0Y\�>�\��.�6_jB�$\Z��Q����P3�� �K\��\0�?��h]rL���\� �s߻�qY\'�m��zB˿R�BU/�ts�\��\�\���!\�\�\�Xm�\�@�w>�#\�8^(\�^ㅂ9���Ŭ��7T΂ \�sS�ƿ��\�$򿦷H	�\�m,�ܠ\Zr�5�e�5\�Ԗ^<0�6\�_\��I�U�K�BYIe)Z,[�\��i��E�WI,)\��*��UVr%�\�i�+�\nZ����TRnR\0ZI%~k�K\�\�\��(G\�ka|+	�cm1g��9\��(�\0\�،i�nj��gD�i�D\� z����������2��D\Z\�B�����2��\�lJ��X���:\�61\�CM0z*{\'[ؘ\�^��r��\�Y9�i�x�Apx��\�\�\�^\�dz�������Q�@~H\�Q!\��=\�^D0W0��8ğ\�{4�p\�\�\�\�`����\�N��\�}�w|\r;�w\�\�ؓi���\'P�\�E�\�t\�\�\�\�e�5\�\�0�6\0��3�_�\���\��a�#�`�r;��܆��D\�\�\�v\ZK\�*�\�X\"P�c\�`�H\��_@�\�&�p\�<�\���l4�,\�\� *i�\�\����NHB\�n��b??m\"9 =��H�I�S[\�\�\�gϩ��\�3�\�ff\�a��\�1%�1m�}\�,��t�\�C==9yݹ\�*��#\�h�)��ob\�}\�\�ނ��}\�0^%\�0��΂\�u	�\0��F�%\� [\n3l\�@�D\�Y\�()d\�%A�q{���V�F��%h\0�\�v\�\�`\����M\�\\�:�>\�v���l$��\�ml\�\�+��\�F�|l\��.\�r\�֩�y��*ø���h>��>��p\0}4\�g\"��܈�p�\�q�i�=�v�\�\�E��X\�8�\n-6jFT�+�>���u��-�\�z�\�\n��o\�8+M�!< n+IĲ�w\�-b\�8̆��ʦH\�X��a|�8\�A����F5T�\�C�\�\�\�q\0[/qH�qK&�zQ\�@\��\"\�a�L��d\�<6K�tNe\r\�ЬrH�\��f�r�I\�C\�\Z\�z\��7��>v\��Y2i�\�	�w\�{i�\�����ެ��\�\�!\���LgXCi\��\�+\�o\�\�!F���V\���~6W�Pz\Z�fw��%�l>��\�\��&z}�l�Q�f�\�\�/ު\ne_~�r\�\�T0fA���&\�LE��5J�p��(\���}�&\�2\�H\�x/L3�7�dGK]\�4m���ç�\�g�3ً�]dU��\�P9\�ʍ=|�\0\� Sl�/\�x�I�\�}k\�\�\�\�ã1,0�U�4�	\\�V2� !�4�k��\\����\�/4����\��C��8���$C�ת�J\�V��2������\\�Y\�L�f�����X#��9Zs����@k\��,VU��\rA��j\�\"L����˧&\���g��J��\�]4U�!Es�E\�(\�ʷ\�O�\�jY[�6֔\�\�\�j\�b�a,�\�g���L��3w5\�.X\�7{(\�%\n�X\�2�JW#�\�U*\�\�hփ̌��\�>36* ��\�s?�)j��D,\�;HZ\"\�R�iOǌ\�G2\�\�)}\0n��\��>\0�k5�\�\�n7Z�\0����\0\��\�\�O\���;@\�T]~�����`�\�	&X��~��D\��\�\�yF\r<��Awx��T\�S-\�i\�K�\�w��`FO\�LI?T���\�Z`��\�s\�{���|��\�\'\r�\�t�MJ\�\�Z	\�I�f|\�&\�\"2\'0\�����\�q\�Ob\�\�͑�,8�?ay�v\�F�\�_Ř�c�x�$�\�}	�o����y١N�k�\�nh�\�ByE�P~�o��\�ʱZU��t���.���o���\�r\�\�X�X\���\�CeK\\ \��<<�}D�O�\�8�\�A\�a\�9\�Q\�SLVfF\�	-?�\\�n��X�\�U��h%�$!�j�E)-	�\\�/RњI(\�\n}��NB\��ED-���M�@���,֏V��\�J��\�)Zɽmo3w<��\��콃a�tz\�\�}�oh��5>w��c�ᬇG�p\�|�Ձ�21GR�eD\�1��� �wa\�Wd�|�!Ε��8�\�Ew��CP)�؁�㴝S*ܑx�G�!\"\�\�DME~��噚�\�5���\�\���\�T\�lPʈ��lD��Qj�t\�E\��\���ӝ�\�\�Ӟ)���\�)�-\�MoTN/zz\�O�u�f�L\rn7#���\�0�[��n�V�U�d�Źm�b2:S�M�cE!�\�F�x#\�Y\����Ժ�u����q$v\\$\�#=E��{\�H�3=\�\�{���\�q\�K��Ң���A�J�\�00-�fAw\�lrR\"���)�AG�\Z8C�)O�X�x\���\�I�s�?����qV\��>\nq���\�\�J\��qTzM\r�c\�̋*���Ǔ?	\��\�	�Y��\�mA\�;~�\��A8\�lm\�\��Ճ8M\�U���\�Y\��(\��`~s��\'\�\�O�u�}�\��0�\�%ŝ�$\�\�ۑ�\�\�$��_e\�w\�\�?��m_yW2�\�S\�߽\�~\���|��I�\��%(�Vuy\�+��\�4��{E\\/7A\�\�t2�\�wc\�y����~g\'���\�@�s:\�0<�\�I���\�t��{��#8��7�ɏ\�t$�xc�\�#2\�c8+i�5�L\�~S��K�\�\�]��[5\'�ՇQ8;\�7J��\�\��k٬���\�`\�\�F\�ց�r\�\�z9KU�\'4��p#��@��/\�(���L�\"㿊6/��\"\�z��O\ng\�\�O�\�6�L]\�ށ�h;Gbd���^�/@\�e�T:\�v\�w\�\�|�.}��\�CW,&\�{�\'�:��\�\�\�\na\�\�##3�Q@\\s�ܞ\r�E�\�\���\�t\�W\�`cq��\�\�r\�\��@N\�y�E��S\r\�G\�&�I��\�Qj�u�\�J����\��\�i�X{$Фt�e\�\�\�R?s=;�s\�Q\�\�\�W�\�	qW�M��w�^gp\r\n�\��~\�\�eB~�bFA�|�̗\�f�\�\�6	r\��_�\r@D�\�?�\�����J\��U\�3>\Z�!P?�M\'�lN]q\���tES��?V��\�Q\��\�1�⫰ij\�\�iȣ�\�n�b��\�Bl\�E�YkV[�����\"φ�\�\�1/K�/\��Hپ\'\�����v)\�is>\0��!\�њ }��5u��r�\� ����\�Q/���\�\��b�\�	q\�uA����:�غ�2�غuk4�$c�s� S\�]԰u��\�\�L�\�{�\�`�>S_Ê	R&�	qAw��\��\�.!(}z�:Bh���A�r\�*\��l��$[\�B���;0�0�\�؏�\�E�w!\�	�	\�\�%��6\�t5\�1�\�\�%�\�{�O\�M\�.I�%\�#b#�$Dl�\n-oGĄ=Jx�2\Z��\�644�D\�B�TH�B-(�@`	S�B\�\�\�nC\�l�Jh�2\Z&�����*���\�	Z\�\Z�Ar�J:ܴ���OSdu�}�N\"\�\"Y�&�����,��]}Q\�1�^\�\�ԝ=u\��={ԉ�4w��n\�;3\n��Y\�d~�n�x\�`=�l�.{�(s�)�w7U78}m�\�чlOsA�i\�|P�\�5\�W\�:�ؿ����n�\�\�mi\"�Tj\�Hn��k\�\r��@i)T\��a��\�oKI8�\�\�\'K����l>�<���)\�&�ϮqҦ�>?�y�� p�\��\�R\�2�K�\�`����p��#\�\"Z��\�@P�\�\0\�y��}�\\\�-�h���\�ծ\�\�\n\�e���9k�ËM�\�3�\��Uy��\�Df��\�W	^��\�\��z\r,\�:a�e���	�Oib	�f	���h!��\�W\�\n\�\�.�!E�-{�\�&äH� x�\�\�#�FK׼�Aۣ�H�\�\�\���o�_\�\�\0\0','6.1.3-40302'),('201612041833167_Precision','Peaker.TimeManagment.Migrations.Configuration','�\0\0\0\0\0\0\�]o\��@���\�b/Jv[�\r\�;d�\�\�\�%Y\�\�k\��D{��%�$�	���>�\'�/�\��)R�+1��\�\�pf8�!�\����\�\�O\�\�y�i&�\�=;9u�Iƫ��͗\��\��\��\��f�)X?9?\��>\�z�e�M\�oy�9��\��\� ;Y�~�d\�2?��\�{z�g\�\�̃��`9\�\�n\�\�\Z?\�\�Y�p�oAt�0ʪ\�dQ@un�\Zf\�é��_`zr��_��\�0\�O.A\\\�\"\n\"h��\�8Nr�#rϿdp��I�Zl\�\�?o ��Q�n��\�=:}�{䑆5(�\�\�\�\�ه�E߼�݆������g\�낑S�n@�cι�\�|����ӥ�\n��0\�Y\�w�\� �\�\�\�6ʷ)�\�p�� B\��Q\��\r>\�\'��x\Zo���Q�ʘ\�\�\�4\��4��˪G��u<��\�7l�Qmʞ\�\��\�{׹A\��Cՠ��ȓ�c���A�\�4\�0`�\\;�\�f~\ZnJy�H�J�A\�:\�\�\�\'��oS�\�:W\�\�/!_\��I\�(O�PB��G��j�\�7\�1\\\�h@c0��9�\�u\�`T\�ɾ��r����D�Pի4Y\�%�����+���>\�V[$\�\�\�\�xddh\��\�k�0\��Ң��U\���ʅ\�\'xn�W����_\�%@\"�k�0\ra\�\�r\��\��!\�_=�Z\�_=LM\�\��a��޺��+=8	��r�VH+\�,E�e��n�\�4z�\�6\�\nbe\��\�J�\��=I�SA�P�*Д\��T��\�\��6b\�e}(G\�k`|K	�cm1g\r��9n\r�Q�̱\�,YWfoǈ>=m���F�1AC\�=\�{\�\�i\reYEf\"q�0��b[�NnepI	�\Z؄,I�`eu:\�\�\�5��y(1\�lamR{�\�\Z\�\�N\�tH\�E\n���.��G:Ϛ\�\���\r\�FY\0�)^�1����tx\�(X��1�\�0L\�H�\�}x�\�\�`�-�%�N��X}0w|5+�w\�\�\�7\�\\/k\�@9��\�k�\�\�~\�6�龄~�\�����\�5�߻\�\��=|�%W�(\�m�w�tN`��D=�R\�8��C6<�D\�Y\�n��W|\�R��\�_dY\�m\�\�\�\�\�Oq\����\�ggM$�\�\�i6\"i\��N`j+�f6%�\�m*-��G�Z\�.V���	q�i3\�\"�������zzrrֹ\�2��\"Qk�	��kb\�}mho�\�3�7���%�`��\�j��\��8�\�h	\�/Ȗ\�3\�\�8F\�9�s\����n@\�\����\�Ƥ5H�4\0`�\rn�lL�3\�HF��\�\\�:�>\�v���l$ʖ\�Ml\�\�+��{\�F�|Lг.\�t\�V��~�&*C��\���\�\Z�>\���}\�\�g$�(]�0p�$�q�i�%�v�\�\�E+�X\�8�\n#\�\�\n�O�$%D]�e�[\��C]�\\��Mg��)0�Ĭ$	�hV�\0b6�@Ԝ\��Z��ٴ\0�91��\��\��Pv�C���\�lFUY���`\��\�\'n�$5D�/�fa�$~wOd�.\�1	y(\��\�0C\�P�(�\�\�\�j�ȇ\�\�8\n����\rGt���{\�m�t\Z�r�\�\��^\�\"�|̆b\�\�kD\�{�\�>\"\�\�Pjx��\nw\��n�\�\�*�s��\�=��Ʀ^]k���l\�9\�Շ��H^�\\�\�&�WT2{�\�Y��\�\���\�\��\�g�\�\�S��`�\�2[\�*L��j?\0�:\�B5\�SL�5.\�\�EW{u�?\��I\��i\�L�\�+@Wi٢\�0�ζbc/\0H%\�\�$ڮcuX�n\�l\�\�`�sx$�F���&\�!��I%A��b�]m\�\"\"�c/�\�c4��S�C���-�$E�ײ�L\�F��R�1����93ۦ�$f0�\'��#����>�q@���z,�eU�l�\�\�B(\�\�S\��\�\��Ivⱌ�U)Wv���l?�hn\�p\�@�|\�>�ˬ���h�`u9���\�.\��\�\"�}F��K\�x7sW}ꂆP3�����e6�p2��]�\���z�����\�g\�Z�\�_\�g5y�\���\�}gAK��@�1\�阒��L\�GuzI�Y�<�\0�@�Z\rc��ˍ.��\�\�<\0�\��\�\�15\��3U_\�!P�4\�v�9\�C�\"_\�!�#<4$�����\��� +�\�|�v�)���\�V�\��\�0��t��\n��R\�Qk)0F@��\�\\v	V\�\�\�����j�\�&)n�i��e�U۱��\�\�\�x�\�A߂\�8\�G1\�w\�\�\�ۏ�<[;f\"\�Ïbt۱]<\�&�\�>�Q7\�Mc�_�����T-�\ZZ|1�P���\�\�K�2��U��/�|e�\�6�\�C�,p�\�: ��͗\�@��ƲP\��\�,�|?�\�Sg;�|\�\�;ĞCnվ\�\�dif��\�\�c?���\�\�\����Z!\�]�\�\�V0OR�F_��\�p�U�\"孙���\�!m\�dta_D\�\nhHѸ7t\Z�v ��\�J�\0>Zɣ�4B8F+��\�\�\�w)\���>w0��N\��؇������\�4\�	g5<r]\�7_-(+.faH*��u\�\�\��0�Cֳ\�G\�v,\�\��\�$\�\�쀂r�\�����-�%\�\�O��S�;���\ZF\\1n1\�\�/\"rzӎ�\�\�\�fO\�e\�m\�\�\�\�S/���R�e\'�E�\ŹmPdt�Py������	=kU\�7\"�ҥ�6\�Iyn\Z\�k�q�\�\�\�)b�>lG��\�%h\�+\�<\�W�5װt��>ȏ�Z\Z��\�,��=�CN8{`&A8hۑ�\Z\�\�\�@8�\�Wi<\�\�K�9�[��m�J1C\�K>�\�0�h���F���΢��\�\ZH\�\�%\���.H�\'\�^�:���,�\�+\�g�X�\�\�F\����\�\���pGI�*\�\���!�.o�\�\�\�Az�]��Ogp\�z\n#J\�%�c�$l(}{n�i\���hx\�\���n�ιM�\�<wN��z�fy�	u�i��IdZ\�\�ݑ�p�gE�$�\�U\�z\�	�j���H����c4t�v;;\�/>tB=\�\��\�=�Nڬ|��#4\�K�ɟa\�L|��# �0\�4x\�Y�f��ɤ���ڸ\���60�۪؈�:��#�2wG���e�Bl�[MlW���\�;\"\�Dt�k\�\�Z�\�%��Ȕ\�	�\�\0�4}\0B�\�(�^\�%.��\�A_\�+�\����\�\r\�\�{\\L\�\'\�\�Bk�=�.co\�7Y�m#Q�VHX-\�7�s��)�k\�\�\�\�\��I��܊\�\�\�u\�p�):��\�H\�\�\n��<BD�٢܃ؼsc)�\Z\�j�n�\��{8d��ּ\�7j\�Iz;�_w\�Nk��z]\�P4I|m\��M�h�.�� 5\�8C\�\0J�� �\��%�q�X{\"Шt�%n�r�_��\�\�9\�e�\��u�\�p\�#\�:�߹X�R�9Y\���\r�|7�o\��_�j�ϳY�\�$�L\�\�8c�/\�\Z ��l\�^DQ�\����8\�\�c����Fp\�\�\rN\�P&��8g?s+�rP\�{�rO�t�\�k�\�?\"�r��Ɯ�<�T�\�&#6�WO��\r�$4c\�jK?�Pt]\�\�0�y;f\�m\��-�\��\�qA��i�]ҬGҜ\�l�\�w4&H�\�hB�\�hA��\�8�~�-\�y\�˱\�\�+���g!u܈8h\�\�,��\'7���nM&���M#���O �\0�K�\0�J\Z�\0!Obཝ)�8`��\�W\�k1A�\�fD\\\�\�ѷ\�\�ط3�D oj�sWPA��6�CY\�!lԯ�+2]\�>9�%�;i��D�\�/ �e�t/\��4#U&CC?�ֆ�\�\�\nXH���x�x\'\�\�dH\�+\�\�P\Z�L����\�\\�Z��WS\��c�_#9Y%nR�\�\�\�\nbt\�~�D \�\�n&E�M\����\�ޖj.��\�=w1Jw�T�\�\�\��\�駺�\�\�A���J\�.\�\\�C��\�eG�\�I5���\�,cZ\�\�\�\�\�>d;��h�-�u@\�\�#T\'_u\�\�`V`���&�J�ݞ�:`�����vP3\'dN\�\\\�U\\;���BV��\����1|�d�pEXS6�Jϣ��~\nW�M�;�\�.O\\N.a�|�]ٸ��3��I��\�QTW\��^�.�x\\�y�~��}�ea�r�\"����\�0	\��\�6\�ls\�e�~�k�\��t�\'�@�\�XC̆\�\"3\�!�m�\�����Jr�U��:��e�\���\�\�M�\�פ7\�CH\"`\�m�\0��mHBa��\\_\�\�.�\�\��P\�U0H{�\�p�~���w�LR��\0\0','6.1.3-40302');
/*!40000 ALTER TABLE `__migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetroles`
--

DROP TABLE IF EXISTS `aspnetroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetroles` (
  `Id` varchar(128) NOT NULL,
  `Name` varchar(256) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `RoleNameIndex` (`Name`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetroles`
--

LOCK TABLES `aspnetroles` WRITE;
/*!40000 ALTER TABLE `aspnetroles` DISABLE KEYS */;
INSERT INTO `aspnetroles` VALUES ('f9608109-dc4e-4e4d-911c-137fe3f95237','Admin'),('273ec300-f322-49af-9560-28d4e08ca9e0','Supervisor');
/*!40000 ALTER TABLE `aspnetroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserclaims`
--

DROP TABLE IF EXISTS `aspnetuserclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(128) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext,
  PRIMARY KEY (`Id`),
  KEY `IX_UserId` (`UserId`) USING HASH,
  CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserclaims`
--

LOCK TABLES `aspnetuserclaims` WRITE;
/*!40000 ALTER TABLE `aspnetuserclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserclaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserlogins`
--

DROP TABLE IF EXISTS `aspnetuserlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(128) NOT NULL,
  `ProviderKey` varchar(128) NOT NULL,
  `UserId` varchar(128) NOT NULL,
  PRIMARY KEY (`LoginProvider`,`ProviderKey`,`UserId`),
  KEY `IX_UserId` (`UserId`) USING HASH,
  CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserlogins`
--

LOCK TABLES `aspnetuserlogins` WRITE;
/*!40000 ALTER TABLE `aspnetuserlogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserlogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserroles`
--

DROP TABLE IF EXISTS `aspnetuserroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(128) NOT NULL,
  `RoleId` varchar(128) NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `IX_UserId` (`UserId`) USING HASH,
  KEY `IX_RoleId` (`RoleId`) USING HASH,
  CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserroles`
--

LOCK TABLES `aspnetuserroles` WRITE;
/*!40000 ALTER TABLE `aspnetuserroles` DISABLE KEYS */;
INSERT INTO `aspnetuserroles` VALUES ('1c124d9f-364e-4b7d-942b-a49c7ae5ae99','273ec300-f322-49af-9560-28d4e08ca9e0'),('51bb8840-0b27-4500-9015-f8b40fc71b81','273ec300-f322-49af-9560-28d4e08ca9e0'),('704ac8f8-bb8a-487e-bc7a-e93989509e20','273ec300-f322-49af-9560-28d4e08ca9e0'),('8b1eb4c5-2e66-40ec-89a3-4ad1b79a8974','273ec300-f322-49af-9560-28d4e08ca9e0'),('9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750','f9608109-dc4e-4e4d-911c-137fe3f95237'),('a75a160e-c5af-491e-b5ef-4cc7531aacbb','273ec300-f322-49af-9560-28d4e08ca9e0'),('a7fb970d-c66e-4f07-8968-bae0eeaad8f9','f9608109-dc4e-4e4d-911c-137fe3f95237'),('bd670e5e-0697-42bc-bd7d-36f4e05dbcc2','f9608109-dc4e-4e4d-911c-137fe3f95237'),('d9579257-89ee-4804-8e4a-8ca9f39b0174','f9608109-dc4e-4e4d-911c-137fe3f95237'),('fdc7b33a-83ac-4ca4-9d83-2a903a2680c2','f9608109-dc4e-4e4d-911c-137fe3f95237');
/*!40000 ALTER TABLE `aspnetuserroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetusers`
--

DROP TABLE IF EXISTS `aspnetusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetusers` (
  `Id` varchar(128) NOT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext,
  `SecurityStamp` longtext,
  `PhoneNumber` longtext,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEndDateUtc` datetime DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  `UserName` varchar(256) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserNameIndex` (`UserName`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetusers`
--

LOCK TABLES `aspnetusers` WRITE;
/*!40000 ALTER TABLE `aspnetusers` DISABLE KEYS */;
INSERT INTO `aspnetusers` VALUES ('11f22b0e-9b49-448a-be12-6b12807ee7c5','kharrington@peaker.com',0,'AI4XJtEwdd7/pKQzqMIZzB3Ad5iXmHZWn8Fc0+XY+4wOI7XCrzCBS3/cREQZ3c8xUA==','7f739f2d-797e-4a6a-a698-5a5e9f0a03e4',NULL,0,0,NULL,0,0,'kharrington@peaker.com'),('1c124d9f-364e-4b7d-942b-a49c7ae5ae99','cwagnitz@peaker.com',0,'AD9YowRzcvCPuEvBpfoDlqRoAl3AzZVAXCd0AqH2nabX3FWpdErKi4jk4Ujrmzz2iA==','6448dca2-f130-4edc-95cd-5d0cc10a79ca',NULL,0,0,NULL,0,0,'cwagnitz@peaker.com'),('1ce091ee-abe3-4d86-833a-9cff9440a83b','csmith@peaker.com',0,'AK0W7wzr6gYL6HsMgtASXux6kHQkzSD0ejFTQta6wfwJGS56TZ/02aIGN5r3ajoNng==','541442b5-047d-47dc-88d6-aaa86b073a59',NULL,0,0,NULL,0,0,'csmith@peaker.com'),('1fa75a3d-0784-4d40-a855-d86915f13162','Sample@test.com',0,'AG8HQw4JmzWHtv2IyFYgIWb1GNVfRodX7ZZkHtaVtk4jNXUl2qwLgHlEYl6ycExy5g==','9330c095-824f-48f8-8c83-db5856a39268',NULL,0,0,NULL,0,0,'Sample@test.com'),('24f093e4-fa8a-4d00-80c4-a1df98ed227c','rronowski@peaker.com',0,'AOntoeWh66C/xyqDjoquGcuEOhl8PE1RRUunh8qR9sbfanKI06J/Tn36KC+S76liMQ==','6b937955-ed28-4c91-a39d-6df66e359be7',NULL,0,0,NULL,0,0,'rronowski@peaker.com'),('27b66804-6c90-4af8-ba8d-4d8e1851c863','mfoster@peaker.com',0,'AIeudPTS4li7VTl4iquJPIKh3GiYwPu59yKRZC4H1g6o/vvOhQEY7uu3mG4bubK53A==','5222f45a-663f-4f67-a171-8dd4f1b737f8',NULL,0,0,NULL,0,0,'mfoster@peaker.com'),('28431458-c8e0-484d-aca9-83215a591b88','jbrant@peaker.com',0,'ACJIDBP/+o4jdDFsWd6P9XyeqyrkRQ7zISZKcSfAPVAH4kNsg0VCC7cpv7tIAoJf9w==','f37ed9a1-76bc-47fe-8b82-f1020a337519',NULL,0,0,NULL,0,0,'jbrant@peaker.com'),('2c796ae3-0fba-40ef-bccc-d45491ac84d2','mkitko@peaker.com',0,'AOgdlblmKA16dVQKvu6cZKY1EvYCLY8BD2yxzv0gvKB3hQlf0zECQfNRdtMlDXezLw==','e7fc6883-e713-4c8c-8f39-cffac5c36c59',NULL,0,0,NULL,0,0,'mkitko@peaker.com'),('2da78e76-9b08-4063-83a9-bd74ab33490d','bbennett@peaker.com',0,'AFDO3XRH/K149BGSHDVlPWEMi5p7PbWIUbqg5FUcA9LBdprP1rOSH8WkVSKEONoQSA==','5c27a432-c680-41cd-ad44-ee80586beb7c',NULL,0,0,NULL,0,0,'bbennett@peaker.com'),('3a5c08f3-b683-457e-aa21-13b807c74110','mmallory@peaker.com',0,'ACN49imLfgGh/x2xB68wp2yrK1IKyym5Xbjsxp6otURkqpDBxMbUPzkSm+xkCFkeGQ==','4678800b-93b2-4bd9-8409-d3e002696389',NULL,0,0,NULL,0,0,'mmallory@peaker.com'),('3fb8e362-2c2c-4a48-a93d-84b0e0b501f1','jcarmack@peaker.com',0,'ABdO35M6X5XBVf74U3f61BSGH0hr21BAQaiVaEJt+Kw3rvVEjdPv21PAGEpIkdAa1w==','7fb76bc1-bf24-4fd2-a11f-6b7ca0c6babc',NULL,0,0,NULL,0,0,'jcarmack@peaker.com'),('44ba9c1e-59b9-4203-acca-1f71770a742f','dblack@peaker.com',0,'AIt7ss+nPMcHRCU/8fR3juzTOnyeB/vIaS4T+D6ZkC0mMXiqmNoiCEr9ZWxc+MnT3w==','2e1b8655-afcc-4a93-90bd-150898e81982',NULL,0,0,NULL,0,0,'dblack@peaker.com'),('485e334f-3776-4b43-a8bc-2d9e19767e5e','jwalter@peaker.com',0,'AFmflBDPudeDxBqUfikGAXA7s2QR13Tif+a59M1loZ4CxSp059soggLMsavl1ct2xw==','bb4c789c-1f4c-49be-9600-97d6155ab33e',NULL,0,0,NULL,0,0,'jwalter@peaker.com'),('4a44defe-fab2-4c61-a5ea-3b64b8bdf271','bwagner@peaker.com',0,'AFzSXa3ZDmYlNE8KoTaa7h4bWry4ajqr+t73CTOu29KFiJccwdXD95fsH1A9HxiRtQ==','00a147c2-6af8-4013-9cd8-9a16b6fbb139',NULL,0,0,NULL,0,0,'bwagner@peaker.com'),('4e6ba4de-a793-45ef-a30a-1bae65b8bb82','rfisher@peaker.com',0,'AExZex+sQrjRx5IUg5olQKUNPqOdBLn0Lnb7rLkqoSTJBkSOrjCYIkDzOhYXA6iZSQ==','28c4b687-6584-4975-84e9-2d62a9067f33',NULL,0,0,NULL,0,0,'rfisher@peaker.com'),('51bb8840-0b27-4500-9015-f8b40fc71b81','efeliler@peaker.com',0,'APE+7Yyfm7Cj/pLINXBgraO8pW3zhcquPKX0BQ90bva+gQsMuKX+z/2Q2s/Rnm38vw==','cce2100b-07b6-4f26-9ce3-21a789d455fc',NULL,0,0,NULL,0,0,'efeliler@peaker.com'),('5248aa03-fa3b-4325-9e33-3553bb71c8e3','awhite@peaker.com',0,'AIZbBq6aQY3/30yDuJ/ILMKcWu+ILORrGDzMWdkRhgeAq07w9uaPOTT/+eGO7CrEIw==','17082b6b-a6a6-4765-a838-e37897e12721',NULL,0,0,NULL,0,0,'awhite@peaker.com'),('577f6412-be92-4365-95cd-059235138ef6','kcenters@peaker.com',0,'AMGCtjdIZlX8xU2G+/LCIhfR3K16u1f4k8EwE59cIkPe6HHIBuBqCiQfk/Ux0vfG4g==','3e8f8148-583d-4c9f-86ba-eaa4fb32785d',NULL,0,0,NULL,0,0,'kcenters@peaker.com'),('64fa9e33-8f13-4c57-92c0-4a753aace0b9','lgerard@peaker.com',0,'AJ9j0NwLzORAz4r+g4HK6g3d7ZR9MJqRqNiCxUoXYjcTffSVjS+oCMHHyV5Nmo4YBg==','3df7f051-e821-4b6a-aa4f-3616980c6b70',NULL,0,0,NULL,0,0,'lgerard@peaker.com'),('704ac8f8-bb8a-487e-bc7a-e93989509e20','cchinn@peaker.com',0,'AJjE58odj8QI94ljvhEvsvozrl3RvvoHvCZZj9TJvHK0wuKzGriFvX/ZRrOqjT/5Og==','9b32e9fe-57f1-4411-a178-45e0108ad9c2',NULL,0,0,NULL,0,0,'cchinn@peaker.com'),('733cc2f9-ff3d-42e2-8570-24794d735e53','espicuzza@peaker.com',0,'AGtkO9TBwZFKcusmSDAPHo9dkJl7C1vfAaNg13AhbvgQjwhN0bMCOIKDpoXBX/UxhQ==','50053f76-a52f-4407-8d47-478ed7dcdb9d',NULL,0,0,NULL,0,0,'espicuzza@peaker.com'),('73ec3ff5-0af3-4563-9658-a9e4b5b2992b','kburgess@peaker.com',0,'APY4K5s3G8OHNk2/JJkzeHTzCxIezhGWG0blZGT0+CBl5OocN0qU5g8Q5SC3u8ep5g==','1d54a6b8-ea73-4a84-83fa-708ee6e26333',NULL,0,0,NULL,0,0,'kburgess@peaker.com'),('816b5bb2-8da2-40c4-8aff-f50bdc8ae9c6','dweaver@peaker.com',0,'AGO+4lPQg0NPD/ZZJQ1PlfK5kxIiy1BunmTP75PWwSPa5twSmDvnItGTipkJyndHrA==','279f85ad-cd07-489c-a684-853cb5cdfcd9',NULL,0,0,NULL,0,0,'dweaver@peaker.com'),('8b1eb4c5-2e66-40ec-89a3-4ad1b79a8974','isb@peaker.com',0,'AFR5Ajx7rb9YogV2ruLIqAQAzYZsu63+f3leZgwfA84afEKfQoiuCdf1/pdoeV6sqA==','b429a72f-d668-4ad3-8a00-8b9635da3fc0',NULL,0,0,NULL,0,0,'isb@peaker.com'),('8e04283b-64fd-498c-b592-1894a5bd9be2','ksmith@peaker.com',0,'ABQkYcXeMqKUJXKgmzvm4Ki2WQH79fH/obg8XNKQOqen+1inZhkWSNTJpxXGNSUUoA==','8bdf5c0f-f12d-4921-a4d7-fd316e793ae4',NULL,0,0,NULL,0,0,'ksmith@peaker.com'),('8ea1160d-5701-4f6f-9a8b-07295de01f86','jlambert@peaker.com',0,'AFHnUDRuI5r9VEJGrTnWfMkC9N9mc54VYwQjjS4UiDDY2/mf47nFKyccxrEmAwSWOw==','7dc7fc63-05b7-4cd0-8f68-9207db6bbe27',NULL,0,0,NULL,0,0,'jlambert@peaker.com'),('9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750','dcooke@peaker.com',0,'AGgd2/zptxh1GnkvBgBjUQMOtizt3+aex7+MKSNHvbP4SeHgSaB15merIzGjHoyUMg==','ea45ce8e-04f7-4217-b4b4-0d5a90d0aa3a',NULL,0,0,NULL,0,0,'dcooke@peaker.com'),('a2afec06-eb55-4068-b5d2-3c3efb8dea28','alucas@peaker.com',0,'ALQ+gR8VRrwNQzlKBEjFi/gl7R52exgYZ3zYuhjHZBF0iBmp823J7Ipeseip1Skh+w==','a331aef9-1092-4a33-bc26-5b6934931db3',NULL,0,0,NULL,0,0,'alucas@peaker.com'),('a4618a22-c3db-4feb-8ff4-ad3c49e4335b','kbezselich@peaker.com',0,'ADAsaa3Ixf2IbsD+2FE3fsksm/UWQrYQjqvspxJTQJqvhIKzoO7sT+bDBVeupPQyzw==','e959f46b-2d90-4899-8b1c-028e2c5eefa7',NULL,0,0,NULL,0,0,'kbezselich@peaker.com'),('a75a160e-c5af-491e-b5ef-4cc7531aacbb','pranville@peaker.com',0,'AAmQOJCCNidtXJJB6DSgJ8IbjkcYrrHeAeuZmUlASAIl32bdwYhDoZeCFpqqQReYxw==','3e387819-a7a3-43f8-ae85-369606eb17e0',NULL,0,0,NULL,0,0,'pranville@peaker.com'),('a7fb970d-c66e-4f07-8968-bae0eeaad8f9','mseaver@peaker.com',0,'AB1V2fWFOA0RYgAA9/ibzYUudqvRiNrw/7sKAFz2pUA7IW2xAS696BCDz35GM/xbaw==','f4da070c-e437-4505-b724-a7208db44c19',NULL,0,0,NULL,0,0,'mseaver@peaker.com'),('a9fc7c41-34ac-42fb-9408-8804d79d659d','dlorence@peaker.com',0,'AHjpyL0EHElsKQcOJINQIAdAlqiF9pqILro7uq5CNaO8MFpGBJdGcM5gHuH2pFZ/Rw==','a97d69c2-bd6f-4a3d-8d33-9e93dd274600',NULL,0,0,NULL,0,0,'dlorence@peaker.com'),('b18b0397-497f-4bff-90ab-82458470a776','rbrush@peaker.com',0,'APjpqyjRsDUlJRVjMhFikZxtWpr5Zpxbcqtv4OAUzhnbTK6Taf3paQWGqQwoxSjTXA==','779a5c4c-00cf-489d-9f73-0c6b106f40ce',NULL,0,0,NULL,0,0,'rbrush@peaker.com'),('bd670e5e-0697-42bc-bd7d-36f4e05dbcc2','test@test.com',0,'ADIt8NcIBL3vxFBnyn/x+TkzvdhAL0PaTqgkKd+gK0W7NhVgI841Z0kzjXkhEKRpfg==','4e241593-4b89-46a1-b154-450b6f60958a',NULL,0,0,NULL,0,0,'test@test.com'),('d9579257-89ee-4804-8e4a-8ca9f39b0174','ebudd@peaker.com',0,'AFgx6MsgA2PdKDYaBVm8vgppy4UvIxc3Y0bnoTsXLYsYN5oxIb6LvcmPDbPSp6U5LA==','cfa51f4d-70df-4700-837d-f86a18bd9a2d',NULL,0,0,NULL,0,0,'ebudd@peaker.com'),('e1eb233c-55d2-4dbc-8fe6-d5865112fe90','kgubert@peaker.com',0,'AAEk3nIH8oDtMeF4BwsNMT9mbxrtA1WZD4YrRTlA9jncoF37G1q72YV9rvgcYHG/yQ==','e1881ae1-3e6e-4337-9244-46bfd882551d',NULL,0,0,NULL,0,0,'kgubert@peaker.com'),('ed516c64-c243-4f86-9e20-a83d3c5063cd','ccaplin@peaker.com',0,'AKd1c7/lksT9VMa/AuZo3nOOebGVBfk/vJqOsOVJT0wancXKfSg7lK1HZrNP0odz8Q==','113e6798-51e6-4e7f-be93-65b0ab59baf0',NULL,0,0,NULL,0,0,'ccaplin@peaker.com'),('fc276ed7-34ae-4d77-a4a5-2a620a832b64','sbird@peaker.com',0,'AORt06HVnWfhrzZzh1h/yDgydQK6yrDyL/gu2yqphTRoF63m8P+xosP2jQJsvI0iXg==','a5e86a19-ae03-4d37-aa39-7ed8b8012fd8',NULL,0,0,NULL,0,0,'sbird@peaker.com'),('fdc7b33a-83ac-4ca4-9d83-2a903a2680c2','dscicluna@peaker.com',0,'AMmiUfcpInxmUeb7Ip7YadkIVS0ATHnjJ70qt6eqxEMV/Hfz/rJySusDUUyp5X7Wrg==','00c5221a-b549-4a51-aa86-2d05422fc45f',NULL,0,0,NULL,0,0,'dscicluna@peaker.com');
/*!40000 ALTER TABLE `aspnetusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` longtext NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Field Service'),(2,'Engineering'),(3,'Government'),(4,'Office'),(5,'Shop');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventtype` int(11) NOT NULL,
  `eventuserid` varchar(128) DEFAULT NULL,
  `eventcreated` datetime NOT NULL,
  `eventdata` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobnumber`
--

DROP TABLE IF EXISTS `jobnumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobnumber` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserDetailId` int(11) NOT NULL,
  `JobNumberValue` longtext NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_UserDetailId` (`UserDetailId`) USING HASH,
  CONSTRAINT `FK_JobNumbers_UserDetails_UserDetailId` FOREIGN KEY (`UserDetailId`) REFERENCES `userdetail` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobnumber`
--

LOCK TABLES `jobnumber` WRITE;
/*!40000 ALTER TABLE `jobnumber` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobnumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peakerevents`
--

DROP TABLE IF EXISTS `peakerevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peakerevents` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ObjectId` int(11) NOT NULL,
  `EventType` int(11) NOT NULL,
  `TimeStamp` datetime NOT NULL,
  `Data` longtext NOT NULL,
  `UserId` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peakerevents`
--

LOCK TABLES `peakerevents` WRITE;
/*!40000 ALTER TABLE `peakerevents` DISABLE KEYS */;
INSERT INTO `peakerevents` VALUES (1,0,1,'2017-01-21 00:00:00','null','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(2,1303,1,'2017-01-21 00:00:00','{\"id\":1303,\"userDetailId\":1,\"entryDate\":\"2017-01-21T21:13:17.823Z\",\"userHours\":3.75,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"55544\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(3,1304,1,'2017-01-21 00:00:00','{\"id\":1304,\"userDetailId\":1,\"entryDate\":\"2017-01-22T05:00:00Z\",\"userHours\":5.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"77888\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(4,1306,1,'2017-01-21 00:00:00','{\"id\":1306,\"userDetailId\":1,\"entryDate\":\"2017-01-21T21:48:51.722Z\",\"userHours\":4.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"88444\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(5,1310,1,'2017-01-23 15:08:21','{\"id\":1310,\"userDetailId\":1,\"entryDate\":\"2017-01-23T20:08:08.258Z\",\"userHours\":14.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"45111\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(6,1311,1,'2017-01-23 15:09:45','{\"id\":1311,\"userDetailId\":1,\"entryDate\":\"2017-01-22T05:00:00Z\",\"userHours\":9.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"77888\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(7,1312,1,'2017-01-23 16:57:18','{\"id\":1312,\"userDetailId\":23,\"entryDate\":\"2017-01-23T21:57:30.452Z\",\"userHours\":6.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"56789\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(8,1313,1,'2017-01-23 16:57:37','{\"id\":1313,\"userDetailId\":23,\"entryDate\":\"2017-01-23T21:57:45.781Z\",\"userHours\":4.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADR\",\"Description\":\"AIRDUCT REPAIR RIGHT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"56789\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":104,\"index\":0,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(9,1314,1,'2017-01-23 16:59:55','{\"id\":1314,\"userDetailId\":23,\"entryDate\":\"2017-01-23T22:00:06.782Z\",\"userHours\":8.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"AXB\",\"Description\":\"AUX DR BLOW REBUILD\",\"Area\":\"COMPS\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"56789\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":105,\"index\":0,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(10,1313,2,'2017-01-23 17:02:06','{\"id\":1313,\"userDetailId\":23,\"entryDate\":\"2017-01-23T00:00:00\",\"userHours\":5.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"56789\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":104,\"index\":1,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(11,1313,2,'2017-01-23 17:02:20','{\"id\":1313,\"userDetailId\":23,\"entryDate\":\"2017-01-23T00:00:00\",\"userHours\":4.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"56789\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":104,\"index\":1,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(12,1315,1,'2017-01-31 10:36:01','{\"id\":1315,\"userDetailId\":40,\"entryDate\":\"2017-01-02T05:00:00Z\",\"userHours\":8.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"HOL\",\"Description\":\"HOLIDAY\",\"Area\":\"TIME OFF\",\"Sub\":\"O\",\"IsJobNumberRequired\":false,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":172,\"index\":0,\"hours\":null}','fdc7b33a-83ac-4ca4-9d83-2a903a2680c2'),(13,1314,2,'2017-01-31 12:36:29','{\"id\":1314,\"userDetailId\":23,\"entryDate\":\"2017-01-23T00:00:00\",\"userHours\":8.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"56789\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":true,\"workCodeId\":105,\"index\":2,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(14,1312,2,'2017-01-31 12:37:27','{\"id\":1312,\"userDetailId\":23,\"entryDate\":\"2017-01-23T00:00:00\",\"userHours\":6.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"56789\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":true,\"workCodeId\":103,\"index\":0,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(15,1316,1,'2017-02-02 21:57:25','{\"id\":1316,\"userDetailId\":23,\"entryDate\":\"2017-02-03T02:57:31.957Z\",\"userHours\":2.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"83838\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(16,1316,2,'2017-02-03 08:49:52','{\"id\":1316,\"userDetailId\":23,\"entryDate\":\"2017-02-03T00:00:00\",\"userHours\":3.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"83838\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(17,1312,2,'2017-02-03 08:50:35','{\"id\":1312,\"userDetailId\":23,\"entryDate\":\"2017-01-23T00:00:00\",\"userHours\":12.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"56789\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":1,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(18,1312,2,'2017-02-03 08:50:44','{\"id\":1312,\"userDetailId\":23,\"entryDate\":\"2017-01-23T00:00:00\",\"userHours\":7.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"56789\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":1,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(19,1312,2,'2017-02-03 08:51:08','{\"id\":1312,\"userDetailId\":23,\"entryDate\":\"2017-01-23T00:00:00\",\"userHours\":6.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"56789\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":1,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(20,1313,2,'2017-02-03 08:51:13','{\"id\":1313,\"userDetailId\":23,\"entryDate\":\"2017-01-23T00:00:00\",\"userHours\":2.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"56789\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":104,\"index\":2,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(21,1314,2,'2017-02-03 08:51:19','{\"id\":1314,\"userDetailId\":23,\"entryDate\":\"2017-01-23T00:00:00\",\"userHours\":4.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"56789\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":105,\"index\":3,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(22,1316,2,'2017-02-05 15:31:40','{\"id\":1316,\"userDetailId\":23,\"userAccountingName\":\"COOKE\",\"entryDate\":\"2017-02-03T00:00:00\",\"userHours\":3.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"83835\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":true,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(23,1310,2,'2017-02-05 20:48:30','{\"id\":1310,\"userDetailId\":1,\"userAccountingName\":\"Test McTest\",\"entryDate\":\"2017-01-23T00:00:00\",\"userHours\":12.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"45113\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(24,1308,2,'2017-02-05 20:54:38','{\"id\":1308,\"userDetailId\":22,\"userAccountingName\":\"bbennett@peaker.com\",\"entryDate\":\"2017-01-23T00:00:00\",\"userHours\":12.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"19654\",\"comments\":\"test\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":140,\"index\":0,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(25,1308,2,'2017-02-05 20:54:49','{\"id\":1308,\"userDetailId\":22,\"userAccountingName\":\"bbennett@peaker.com\",\"entryDate\":\"2017-01-23T00:00:00\",\"userHours\":12.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"19654\",\"comments\":\"test\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":140,\"index\":0,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(26,1316,2,'2017-02-05 20:55:39','{\"id\":1316,\"userDetailId\":23,\"userAccountingName\":\"COOKE\",\"entryDate\":\"2017-02-03T00:00:00\",\"userHours\":2.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"83835\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(27,1312,2,'2017-02-05 20:55:46','{\"id\":1312,\"userDetailId\":23,\"userAccountingName\":\"COOKE\",\"entryDate\":\"2017-01-23T00:00:00\",\"userHours\":5.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"56789\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":1,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(28,1316,2,'2017-02-05 20:56:45','{\"id\":1316,\"userDetailId\":23,\"userAccountingName\":\"COOKE\",\"entryDate\":\"2017-02-03T00:00:00\",\"userHours\":3.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"83835\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(29,1316,2,'2017-02-05 21:05:41','{\"id\":1316,\"userDetailId\":23,\"userAccountingName\":\"COOKE\",\"entryDate\":\"2017-02-03T00:00:00\",\"userHours\":2.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"83835\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(30,1312,2,'2017-02-05 21:07:35','{\"id\":1312,\"userDetailId\":23,\"userAccountingName\":\"COOKE\",\"entryDate\":\"2017-01-23T00:00:00\",\"userHours\":1.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"56789\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":1,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(31,1313,2,'2017-02-05 21:08:06','{\"id\":1313,\"userDetailId\":23,\"userAccountingName\":\"COOKE\",\"entryDate\":\"2017-01-23T00:00:00\",\"userHours\":1.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"56789\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":104,\"index\":2,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(32,1310,2,'2017-02-05 21:25:21','{\"id\":1310,\"userDetailId\":1,\"userAccountingName\":\"Test McTest\",\"entryDate\":\"2017-01-23T00:00:00\",\"userHours\":11.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"45113\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":true,\"exportedToPayroll\":true,\"workCodeId\":103,\"index\":2,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(33,1310,2,'2017-02-05 21:26:26','{\"id\":1310,\"userDetailId\":1,\"userAccountingName\":\"Test McTest\",\"entryDate\":\"2017-01-23T00:00:00\",\"userHours\":11.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"AXB\",\"Description\":\"AUX DR BLOW REBUILD\",\"Area\":\"COMPS\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"45113\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":true,\"exportedToPayroll\":true,\"workCodeId\":103,\"index\":2,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(34,1316,2,'2017-02-05 21:40:42','{\"id\":1316,\"userDetailId\":23,\"userAccountingName\":\"COOKE\",\"entryDate\":\"2017-02-03T00:00:00\",\"userHours\":1.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"83835\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(35,1316,2,'2017-02-05 21:40:50','{\"id\":1316,\"userDetailId\":23,\"userAccountingName\":\"COOKE\",\"entryDate\":\"2017-02-03T00:00:00\",\"userHours\":1.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADR\",\"Description\":\"AIRDUCT REPAIR RIGHT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"83835\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(36,1316,2,'2017-02-05 21:40:55','{\"id\":1316,\"userDetailId\":23,\"userAccountingName\":\"COOKE\",\"entryDate\":\"2017-02-03T00:00:00\",\"userHours\":1.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"AXB\",\"Description\":\"AUX DR BLOW REBUILD\",\"Area\":\"COMPS\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"83835\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(37,1316,2,'2017-02-05 21:47:41','{\"id\":1316,\"userDetailId\":23,\"userAccountingName\":\"COOKE\",\"entryDate\":\"2017-02-03T00:00:00\",\"userHours\":1.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADR\",\"Description\":\"AIRDUCT REPAIR RIGHT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"83835\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(38,1316,2,'2017-02-05 21:47:48','{\"id\":1316,\"userDetailId\":23,\"userAccountingName\":\"COOKE\",\"entryDate\":\"2017-02-03T00:00:00\",\"userHours\":1.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"AXB\",\"Description\":\"AUX DR BLOW REBUILD\",\"Area\":\"COMPS\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"83835\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750'),(39,1317,1,'2017-02-07 10:37:01','{\"id\":1317,\"userDetailId\":18,\"userAccountingName\":\"\",\"entryDate\":\"2017-02-06T05:00:00Z\",\"userHours\":8.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"PER\",\"Description\":\"OFF WITH PAY\",\"Area\":\"TIME OFF\",\"Sub\":\"O\",\"IsJobNumberRequired\":false,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":189,\"index\":0,\"hours\":null}','d9579257-89ee-4804-8e4a-8ca9f39b0174'),(40,1318,1,'2017-02-07 10:37:42','{\"id\":1318,\"userDetailId\":18,\"userAccountingName\":\"\",\"entryDate\":\"2017-02-07T05:00:00Z\",\"userHours\":4.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ERE\",\"Description\":\"ESG REDO\",\"Area\":\"ECS - 12. POST PROJECT SUPPORT\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"19562\",\"comments\":\"test\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":147,\"index\":0,\"hours\":null}','d9579257-89ee-4804-8e4a-8ca9f39b0174'),(41,1319,1,'2017-02-07 10:38:28','{\"id\":1319,\"userDetailId\":18,\"userAccountingName\":\"\",\"entryDate\":\"2017-02-07T15:38:01.956Z\",\"userHours\":6.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"FS1\",\"Description\":\"PEAKER & OIL RIGS\",\"Area\":\"FIELD SERVICE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"19555\",\"comments\":\"testing \",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":162,\"index\":0,\"hours\":null}','d9579257-89ee-4804-8e4a-8ca9f39b0174'),(42,1320,1,'2017-02-07 10:39:57','{\"id\":1320,\"userDetailId\":22,\"userAccountingName\":\"\",\"entryDate\":\"2017-02-01T05:00:00Z\",\"userHours\":12.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"EPM\",\"Description\":\"PROJECT MANAGEMENT\",\"Area\":\"ECS - 01. PROJECT PLANNING\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"18565\",\"comments\":\"test\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":142,\"index\":0,\"hours\":null}','2da78e76-9b08-4063-83a9-bd74ab33490d'),(43,1321,1,'2017-02-07 10:40:41','{\"id\":1321,\"userDetailId\":22,\"userAccountingName\":\"\",\"entryDate\":\"2017-02-07T15:40:17.02Z\",\"userHours\":22.5,\"workCode\":{\"Id\":0,\"BaseCode\":\"EPK\",\"Description\":\"PREP-START/INSTALL/CK\",\"Area\":\"ECS - 08. VERIFICATION\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"17895\",\"comments\":\"test\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":141,\"index\":0,\"hours\":null}','2da78e76-9b08-4063-83a9-bd74ab33490d'),(44,1322,1,'2017-02-07 15:36:16','{\"id\":1322,\"userDetailId\":40,\"userAccountingName\":\"\",\"entryDate\":\"2017-02-07T20:36:03.381Z\",\"userHours\":5.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"MIS\",\"Description\":\"MISC\",\"Area\":\"OVERHEAD\",\"Sub\":\"O\",\"IsJobNumberRequired\":false,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":182,\"index\":0,\"hours\":null}','fdc7b33a-83ac-4ca4-9d83-2a903a2680c2'),(45,1323,1,'2017-02-07 15:36:38','{\"id\":1323,\"userDetailId\":40,\"userAccountingName\":\"\",\"entryDate\":\"2017-02-07T20:36:40.243Z\",\"userHours\":3.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"PER\",\"Description\":\"OFF WITH PAY\",\"Area\":\"TIME OFF\",\"Sub\":\"O\",\"IsJobNumberRequired\":false,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":189,\"index\":0,\"hours\":null}','fdc7b33a-83ac-4ca4-9d83-2a903a2680c2'),(46,1324,1,'2017-02-07 15:37:39','{\"id\":1324,\"userDetailId\":40,\"userAccountingName\":\"\",\"entryDate\":\"2017-02-06T05:00:00Z\",\"userHours\":8.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"MIS\",\"Description\":\"MISC\",\"Area\":\"OVERHEAD\",\"Sub\":\"O\",\"IsJobNumberRequired\":false,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":182,\"index\":0,\"hours\":null}','fdc7b33a-83ac-4ca4-9d83-2a903a2680c2'),(47,1325,1,'2017-02-08 09:53:58','{\"id\":1325,\"userDetailId\":18,\"userAccountingName\":\"\",\"entryDate\":\"2017-02-08T14:53:55.488Z\",\"userHours\":4.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"PER\",\"Description\":\"OFF WITH PAY\",\"Area\":\"TIME OFF\",\"Sub\":\"O\",\"IsJobNumberRequired\":false,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"\",\"comments\":\"Test\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":189,\"index\":0,\"hours\":null}','d9579257-89ee-4804-8e4a-8ca9f39b0174'),(48,1326,1,'2017-02-08 09:53:58','{\"id\":1326,\"userDetailId\":18,\"userAccountingName\":\"\",\"entryDate\":\"2017-02-08T14:53:55.488Z\",\"userHours\":4.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"SIC\",\"Description\":\"SICK WITH PAY\",\"Area\":\"TIME OFF\",\"Sub\":\"O\",\"IsJobNumberRequired\":false,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"\",\"comments\":\"Test \",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":196,\"index\":1,\"hours\":null}','d9579257-89ee-4804-8e4a-8ca9f39b0174'),(49,1327,1,'2017-02-08 14:07:15','{\"id\":1327,\"userDetailId\":18,\"userAccountingName\":\"\",\"entryDate\":\"2017-02-08T19:06:29.371Z\",\"userHours\":8.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"FHL\",\"Description\":\"FLOATING HOLIDAY\",\"Area\":\"TIME OFF\",\"Sub\":\"O\",\"IsJobNumberRequired\":false,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"\",\"comments\":\"Testing\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":159,\"index\":0,\"hours\":null}','d9579257-89ee-4804-8e4a-8ca9f39b0174'),(50,1328,1,'2017-02-08 14:07:15','{\"id\":1328,\"userDetailId\":18,\"userAccountingName\":\"\",\"entryDate\":\"2017-02-08T19:06:29.371Z\",\"userHours\":4.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"EFP\",\"Description\":\"FAB CONTROL PANEL\",\"Area\":\"ECS - 04. IN HOUSE FABRICATION\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"98766\",\"comments\":\"Test \",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":127,\"index\":1,\"hours\":null}','d9579257-89ee-4804-8e4a-8ca9f39b0174'),(51,1329,1,'2017-02-08 14:22:06','{\"id\":1329,\"userDetailId\":18,\"userAccountingName\":\"\",\"entryDate\":\"2017-02-01T05:00:00Z\",\"userHours\":10.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ERE\",\"Description\":\"ESG REDO\",\"Area\":\"ECS - 12. POST PROJECT SUPPORT\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"45897\",\"comments\":\"Test\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":147,\"index\":0,\"hours\":null}','d9579257-89ee-4804-8e4a-8ca9f39b0174'),(52,1330,1,'2017-02-08 14:22:06','{\"id\":1330,\"userDetailId\":18,\"userAccountingName\":\"\",\"entryDate\":\"2017-02-01T05:00:00Z\",\"userHours\":4.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ESC\",\"Description\":\"STANDBY TIME-CUSTOMER\",\"Area\":\"ECS - 10. ON-SITE NON PRODUCTIVE TIME\",\"Sub\":\"L\",\"IsJobNumberRequired\":false,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":148,\"index\":1,\"hours\":null}','d9579257-89ee-4804-8e4a-8ca9f39b0174'),(53,1331,1,'2017-02-08 20:10:47','{\"id\":1331,\"userDetailId\":1,\"userAccountingName\":\"\",\"entryDate\":\"2017-02-09T01:09:21.3Z\",\"userHours\":3.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"44222\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(54,1331,2,'2017-02-12 10:16:51','{\"id\":1331,\"userDetailId\":1,\"userAccountingName\":\"Test McTest\",\"entryDate\":\"2017-02-09T00:00:00\",\"userHours\":3.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"AXB\",\"Description\":\"AUX DR BLOW REBUILD\",\"Area\":\"COMPS\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"44222\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":0,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(55,1332,1,'2017-02-12 10:17:21','{\"id\":1332,\"userDetailId\":1,\"userAccountingName\":\"\",\"entryDate\":\"2017-02-12T15:16:56.468Z\",\"userHours\":8.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"AXB\",\"Description\":\"AUX DR BLOW REBUILD\",\"Area\":\"COMPS\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"77888\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":105,\"index\":0,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(56,1332,2,'2017-02-12 10:21:58','{\"id\":1332,\"userDetailId\":1,\"userAccountingName\":\"Test McTest\",\"entryDate\":\"2017-02-12T00:00:00\",\"userHours\":8.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"AXT\",\"Description\":\"AUX DR TURBO REBUILD\",\"Area\":\"COMPS\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"77888\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":105,\"index\":0,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(57,1331,2,'2017-02-12 10:24:14','{\"id\":1331,\"userDetailId\":1,\"userAccountingName\":\"Test McTest\",\"entryDate\":\"2017-02-09T00:00:00\",\"userHours\":3.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADL\",\"Description\":\"AIRDUCT REPAIR LEFT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"44222\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":1,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(58,1331,2,'2017-02-12 10:25:24','{\"id\":1331,\"userDetailId\":1,\"userAccountingName\":\"Test McTest\",\"entryDate\":\"2017-02-09T00:00:00\",\"userHours\":3.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"AXB\",\"Description\":\"AUX DR BLOW REBUILD\",\"Area\":\"COMPS\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"44222\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":1,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(59,1331,2,'2017-02-12 10:28:44','{\"id\":1331,\"userDetailId\":1,\"userAccountingName\":\"Test McTest\",\"entryDate\":\"2017-02-09T00:00:00\",\"userHours\":3.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"ADR\",\"Description\":\"AIRDUCT REPAIR RIGHT\",\"Area\":\"ENGINE\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"44222\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":1,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(60,1331,2,'2017-02-12 10:31:02','{\"id\":1331,\"userDetailId\":1,\"userAccountingName\":\"Test McTest\",\"entryDate\":\"2017-02-09T00:00:00\",\"userHours\":3.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"AXT\",\"Description\":\"AUX DR TURBO REBUILD\",\"Area\":\"COMPS\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"44222\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":103,\"index\":1,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(61,1331,2,'2017-02-12 10:43:54','{\"id\":1331,\"userDetailId\":1,\"userAccountingName\":\"Test McTest\",\"entryDate\":\"2017-02-09T00:00:00\",\"userHours\":3.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"AXB\",\"Description\":\"AUX DR BLOW REBUILD\",\"Area\":\"COMPS\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"44222\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":105,\"index\":1,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2'),(62,1331,2,'2017-02-12 10:44:01','{\"id\":1331,\"userDetailId\":1,\"userAccountingName\":\"Test McTest\",\"entryDate\":\"2017-02-09T00:00:00\",\"userHours\":3.0,\"workCode\":{\"Id\":0,\"BaseCode\":\"AXT\",\"Description\":\"AUX DR TURBO REBUILD\",\"Area\":\"COMPS\",\"Sub\":\"L\",\"IsJobNumberRequired\":true,\"IsEngineeringCode\":false,\"IsFieldServiceCode\":false,\"IsGovernmentCode\":false,\"IsOfficeCode\":false,\"IsShopCode\":false,\"IsActive\":false},\"jobnumber\":\"44222\",\"comments\":\"\",\"hoursError\":false,\"jobNumberError\":false,\"workCodeError\":false,\"exportedToNavision\":false,\"exportedToPayroll\":false,\"workCodeId\":106,\"index\":1,\"hours\":null}','bd670e5e-0697-42bc-bd7d-36f4e05dbcc2');
/*!40000 ALTER TABLE `peakerevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restrictedjobnumbers`
--

DROP TABLE IF EXISTS `restrictedjobnumbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restrictedjobnumbers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobnumber` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restrictedjobnumbers`
--

LOCK TABLES `restrictedjobnumbers` WRITE;
/*!40000 ALTER TABLE `restrictedjobnumbers` DISABLE KEYS */;
INSERT INTO `restrictedjobnumbers` VALUES (1,'00000'),(2,'12345'),(3,'11111'),(4,'33333'),(5,'44444'),(6,'55555'),(7,'66666'),(8,'77777'),(9,'88888'),(10,'99999');
/*!40000 ALTER TABLE `restrictedjobnumbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeentry`
--

DROP TABLE IF EXISTS `timeentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timeentry` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserDetailId` int(11) NOT NULL,
  `EntryDate` date NOT NULL,
  `JobNumber` longtext,
  `Comments` longtext,
  `ExportedToNavision` tinyint(1) NOT NULL DEFAULT '0',
  `ExportedToPayroll` tinyint(1) NOT NULL DEFAULT '0',
  `WorkCodeId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_UserDetailId` (`UserDetailId`) USING HASH,
  CONSTRAINT `FK_TimeEntries_UserDetails_UserDetailId` FOREIGN KEY (`UserDetailId`) REFERENCES `userdetail` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1333 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeentry`
--

LOCK TABLES `timeentry` WRITE;
/*!40000 ALTER TABLE `timeentry` DISABLE KEYS */;
INSERT INTO `timeentry` VALUES (654,34,'2016-11-01','','6hrs from 10-31/PR',0,1,181),(655,34,'2016-11-02','','',0,1,181),(656,34,'2016-11-03','','',0,1,181),(657,34,'2016-11-03','','Bus Fare',0,1,182),(658,34,'2016-11-03','','',0,1,189),(659,34,'2016-11-07','','',0,1,202),(660,34,'2016-11-08','','',0,1,202),(661,34,'2016-11-09','','',0,1,202),(662,34,'2016-11-10','','',0,1,202),(663,34,'2016-11-11','','',0,1,202),(664,34,'2016-11-15','','',0,1,181),(665,34,'2016-11-16','','Performed 15NOV16',0,1,181),(666,34,'2016-11-16','','',0,1,181),(667,34,'2016-11-17','','',0,1,181),(668,34,'2016-11-17','','',0,1,183),(669,34,'2016-11-18','','',0,1,181),(670,34,'2016-11-18','','Expense Report / Bus Fare',0,1,182),(671,34,'2016-11-21','','',0,1,181),(672,34,'2016-11-22','','',0,1,181),(673,34,'2016-11-24','','',0,1,172),(674,34,'2016-11-25','','',0,1,172),(675,34,'2016-11-28','','Performed 22NOV16 Expense Report / Bus Fare',0,1,182),(676,34,'2016-11-28','','Performed 23NOV16',0,1,181),(677,34,'2016-11-29','','Performed 28NOV16',0,1,181),(678,34,'2016-11-29','','Performed 28NOV16',0,1,204),(679,34,'2016-11-30','','Performed 29NOV16',0,1,181),(680,34,'2016-12-01','','+10.25 from 11/30',0,0,181),(681,34,'2016-12-01','','Performed 30NOV16',0,0,204),(682,34,'2016-12-01','','Bus Fare Performed 30NOV16',0,0,182),(683,34,'2016-12-05','','Performed 30NOV16',0,0,181),(684,34,'2016-12-05','','Performed 1DEC16',0,0,181),(685,34,'2016-12-06','','Performed 5DEC16',0,0,181),(686,34,'2016-12-06','','Performed 5DEC16',0,0,204),(687,34,'2016-12-07','','Performed 6DEC16',0,0,181),(688,34,'2016-12-08','','Performed 7DEC16',0,0,181),(689,34,'2016-12-08','','Bus Fare Performed 7DEC16',0,0,182),(690,34,'2016-12-12','','Performed 7DEC16',0,0,181),(691,34,'2016-12-12','','Performed 8DEC16',0,0,181),(692,34,'2016-12-12','','Performed 8DEC16',0,0,204),(693,34,'2016-12-13','','Performed 9DEC16',0,0,181),(694,34,'2016-12-13','','Expense Report\'s Performed 9DEC16',0,0,182),(695,34,'2016-12-13','','Performed 12DEC16',0,0,204),(696,34,'2016-12-13','','',0,0,181),(697,34,'2016-12-14','','',0,0,181),(698,34,'2016-12-14','','Expense Report\'s',0,0,182),(699,34,'2016-12-14','','Bus Fare',0,0,182),(701,22,'2016-11-03','18929','',1,1,142),(702,22,'2016-11-08','18929','',1,1,142),(703,22,'2016-12-05','18929','',1,0,142),(704,22,'2016-12-06','18929','',1,0,142),(705,22,'2016-11-01','19187','',1,1,142),(706,22,'2016-11-02','19187','',1,1,142),(707,22,'2016-11-04','19187','',1,1,142),(708,22,'2016-11-07','19187','',1,1,142),(709,22,'2016-11-09','19187','',1,1,142),(710,22,'2016-11-10','19187','',1,1,142),(711,22,'2016-11-11','19187','',1,1,145),(712,22,'2016-11-14','19187','',1,1,154),(713,22,'2016-11-15','19187','',1,1,154),(714,22,'2016-11-16','19187','',1,1,130),(715,22,'2016-11-17','19187','',1,1,130),(716,22,'2016-11-18','19187','',1,1,130),(717,22,'2016-11-19','19187','',1,1,130),(718,22,'2016-11-20','19187','',1,1,148),(719,22,'2016-11-21','19187','',1,1,142),(720,22,'2016-11-22','19187','',1,1,142),(721,22,'2016-11-23','19187','',1,1,142),(722,22,'2016-11-24','19187','DT approved for Holiday',1,1,142),(723,22,'2016-11-25','19187','DT was approved for holiday',1,1,142),(724,22,'2016-11-26','19187','',1,1,148),(725,22,'2016-11-27','19187','',1,1,148),(726,22,'2016-11-28','19187','',1,1,142),(727,22,'2016-11-29','19187','',1,1,142),(728,22,'2016-11-30','19187','',1,1,142),(729,22,'2016-12-01','19187','',1,0,142),(730,22,'2016-12-02','19187','',1,0,142),(731,22,'2016-12-04','19187','',1,0,142),(732,22,'2016-12-07','19187','',1,0,142),(733,22,'2016-12-08','19187','ot chgd from 12 to 4 per bb request. eb.',1,0,142),(734,22,'2016-12-09','19187','',1,0,142),(735,22,'2016-12-10','19187','',1,0,139),(736,22,'2016-12-11','19187','',1,0,139),(737,22,'2016-12-12','19187','',1,0,142),(738,22,'2016-12-13','19187','ADDED A COMMENT ',1,0,142),(739,22,'2016-11-24','','',0,1,172),(740,22,'2016-11-25','','',0,1,172),(741,17,'2016-12-15','18164','Travel New Paris, OH --> DPL Sidney --> DPL Monument --> New Paris, OH',1,0,154),(742,17,'2016-12-15','18164','Troubleshooting Sidney power cycling issue, HMI security problem, Monument immersion heaters operation',1,0,157),(743,17,'2016-12-16','18164','Travel New Paris, OH --> DPL Sidney --> DPL Monument --> New Paris, OH',1,0,154),(744,17,'2016-12-16','18164','Troubleshooting Sidney power problems, Monument starting / immersion heater operation',1,0,157),(745,17,'2016-11-01','18628','Travel hotel --> All Sys Central Office --> Carillon Facility --> Hotel',1,1,154),(746,17,'2016-11-01','18628','Programming PCM, EasyGen, I/O checks',1,1,139),(747,17,'2016-11-02','18628','Helping Carillon IT program port forwarding for remote access, testing remote access, finishing I/O checks\nTrying to start engine, oversped engine, wiring changes for GCB close circuitry',1,1,139),(748,17,'2016-11-03','18628','Fixing EasyGen 5101 CAN protocol discrete input messages, starting and loading engine\nWorking on J1939 protocol to transmit PCM data to EasyGen for local display of cogen system temps',1,1,139),(749,17,'2016-11-04','18628','Implementing J1939 parameter display, troubleshooting protective shutdowns with GCB aux contact',1,1,150),(750,17,'2016-11-05','18628','Final testing of cogen #2, customer training for software use, testing remote HMI application at central office',1,1,150),(751,17,'2016-11-05','18628','Return Travel Long Island, NY --> New Paris, OH',1,1,154),(752,17,'2016-11-07','18628','As Build Drawings and paperwork for All Sys Cogen',1,1,120),(753,17,'2016-11-08','18628','As Build Drawings and paperwork for All Sys Cogen',1,1,120),(754,17,'2016-12-02','18628','Trying to program Indusoft mobile access for tablet/phone display for unit information - All Sys Cogen',1,0,139),(755,17,'2016-12-05','18628','Trying to configure Indusoft mobile access for all systems cogen phase II',1,0,139),(756,17,'2016-12-06','18628','Troubleshooting bug with indusoft mobile access for only specific tags - all sys cogen, having ron brush test out remote view on various browsers',1,0,139),(757,17,'2016-12-07','18628','All Sys Cogen - Phase II change request software implementation',1,0,139),(758,17,'2016-12-08','18628','Fixing All Systems mobile access tag problem, reorganizing mobile access website for easy navigation to specific site/unit',1,0,139),(759,17,'2016-12-09','18628','Reviewing XAMPP security settings for web server, tweaking All SYS MA pages',1,0,139),(760,17,'2016-11-09','19276','Designing MPU removal tool for CAT 3406 locomotive hotel power engines - Mid America Rail',1,1,122),(761,17,'2016-11-09','19276','Procuring parts and fabricating MPU removal tool for 3406 Indianapolis locomotive job next week',1,1,126),(762,17,'2016-11-17','19276','Round trip travel New Paris, OH <--> Indianapolis, IN',1,1,154),(763,17,'2016-11-17','19276','Installing new MPU and MPU wiring / actuator wiring for 4135 locomotive',1,1,156),(764,17,'2016-11-18','19276','Mid America Rail - Site Report, Expense Report',1,1,120),(765,17,'2016-11-21','19276','Round trip travel New Paris, OH <---> Indianapolis, IN',1,1,154),(766,17,'2016-11-21','19276','Installing new EPG actuator, EPG control, new actuator and MPU wiring 4144 locomotive, testing engine after changes, tuning.',1,1,156),(767,17,'2016-12-01','19276','Site Report for Mid America Rail work on 11-21',1,0,120),(768,17,'2016-11-15','','Indusoft / database testing with All Sys Cogen project',0,1,139),(769,17,'2016-11-14','','Indusoft / database testing with All Sys Cogen project',0,1,139),(770,17,'2016-12-12','','Installing new autocad and uninstalling old version/license',0,0,139),(771,17,'2016-11-08','','Reading MySQL / Indusoft documentation for historical data',0,1,201),(772,17,'2016-11-10','','Helping Chris Knight - RP3000 question and Ryan with Moxa troubles',0,1,199),(773,17,'2016-11-10','','Reading documentation for Indusoft trend tool, history files',0,1,201),(774,17,'2016-11-11','','',0,1,196),(775,17,'2016-11-16','','Discussing reverse power monitoring settings with Rick - All Sys Cogen, looking into FAN counter problems',0,1,199),(776,17,'2016-11-16','','Reading GAP help blocks and Indusoft help for mobile access setup',0,1,201),(777,17,'2016-11-18','','Uploading as-builds for All Sys Cogen, Discussing alarm history with Rick Cincotta',0,1,199),(778,17,'2016-11-22','','Discussing action items with Chris Knight and Rick Cincotta - All Systems Cogen',0,1,183),(779,17,'2016-11-22','','',0,1,189),(780,17,'2016-11-23','','',0,1,159),(781,17,'2016-11-24','','Thanksgiving',0,1,172),(782,17,'2016-11-25','','Day after Thanksgiving',0,1,172),(783,17,'2016-11-28','','',0,1,196),(784,17,'2016-11-29','','Discussing maintenance counters with Rick Cincotta from All Systems Cogen and working on remaining action items, helping Chris Knight with L series software problem',0,1,199),(785,17,'2016-11-30','','Helping Dan Groman - Husky Energy with Peak 150 configuration issue, Chris Knight with L-series service tool uninstaller, Updating all sys as builds and making new drawing set for hillside site',0,1,199),(786,17,'2016-12-01','','Experimenting with new job cost app and providing feedback to E. Budd',0,0,182),(787,17,'2016-12-01','','Sketching arduino speed simulator circuit and giving construction details to Ryan to build his own simulator',0,0,199),(788,17,'2016-12-07','','Helping Ryan with Protech TPS / Moxa Modbus comms problem',0,0,199),(789,17,'2016-12-12','','Reading apache security recommendations to run web server from all sys central office PC',0,0,201),(790,17,'2016-12-13','','DP&L Sidney HMI issues',0,0,199),(791,17,'2016-12-14','','DP&L Sidney - looking into IHC problem and how it is controlled from LECM Gap',0,0,199),(792,32,'2016-12-13','16820','',1,0,125),(793,32,'2016-12-14','16820','',1,0,125),(794,32,'2016-11-07','18101','',1,1,125),(795,32,'2016-11-12','18655','',1,1,126),(796,32,'2016-11-01','18812','',1,1,125),(797,32,'2016-11-02','18812','',1,1,127),(798,32,'2016-11-03','18812','',1,1,125),(799,32,'2016-11-08','18812','',1,1,125),(800,32,'2016-11-26','18927','',1,1,154),(801,32,'2016-11-27','18927','',1,1,154),(802,32,'2016-11-28','18927','',1,1,156),(803,32,'2016-11-29','18927','',1,1,141),(804,32,'2016-12-03','18928','',1,0,148),(805,32,'2016-12-04','18928','',1,0,148),(806,32,'2016-12-05','18928','',1,0,148),(807,32,'2016-12-06','18928','',1,0,148),(808,32,'2016-12-07','18928','',1,0,148),(809,32,'2016-12-08','18928','',1,0,154),(810,32,'2016-12-09','18928','',1,0,154),(811,32,'2016-11-21','18929','',1,1,126),(812,32,'2016-11-22','18929','',1,1,145),(813,32,'2016-11-02','19142','PICK UP NEW PANEL',1,1,154),(814,32,'2016-11-11','19142','WRAP AND STRAP CABINET',1,1,144),(815,32,'2016-12-01','19187','',1,0,148),(816,32,'2016-12-02','19187','',1,0,148),(817,32,'2016-11-05','19242','',1,1,126),(818,32,'2016-11-07','19242','',1,1,144),(819,32,'2016-11-11','19291','',1,1,127),(820,32,'2016-12-15','19321','',1,0,125),(821,32,'2016-11-01','19325','',1,1,125),(822,32,'2016-11-22','19349','',1,1,125),(823,32,'2016-11-10','19353','tach kit',1,1,125),(824,32,'2016-11-12','19356','',1,1,125),(825,32,'2016-12-19','19420','',1,0,126),(826,32,'2016-12-19','19421','',1,0,126),(827,32,'2016-12-14','19442','',1,0,132),(828,32,'2016-12-16','19475','',1,0,125),(829,32,'2016-11-30','19870','Invalid job number entered - J001987 - added 0',1,1,148),(830,32,'2016-11-01','','',0,1,182),(831,32,'2016-11-02','','',0,1,183),(832,32,'2016-11-03','','',0,1,183),(833,32,'2016-11-04','','move stuff to silver lake and empty roller racking',0,1,182),(834,32,'2016-11-04','','',0,1,189),(835,32,'2016-11-05','','WORK WITH JOE GO THUR MATERIAL ON RACKING.',0,1,182),(836,32,'2016-11-07','','',0,1,182),(837,32,'2016-11-08','','MOVE AREA',0,1,182),(838,32,'2016-11-09','','moving stuff racking',0,1,182),(839,32,'2016-11-10','','move racking',0,1,182),(840,32,'2016-11-11','','MOVE',0,1,182),(841,32,'2016-11-12','','harness for itb stock',0,1,182),(842,32,'2016-11-12','','clean parts with joe',0,1,182),(843,32,'2016-11-14','','',0,1,202),(844,32,'2016-11-15','','',0,1,202),(845,32,'2016-11-16','','',0,1,202),(846,32,'2016-11-17','','',0,1,202),(847,32,'2016-11-18','','',0,1,202),(848,32,'2016-11-23','','pick up panels ,labels clean shop area',0,1,182),(849,32,'2016-11-24','','',0,1,172),(850,32,'2016-11-25','','',0,1,172),(851,32,'2016-12-12','','',0,0,196),(852,32,'2016-12-13','','paper work',0,0,182),(853,32,'2016-12-14','','',0,0,189),(854,32,'2016-12-14','','bench test proact for haldeman hydraulics tag #34676 no sor',0,0,182),(855,32,'2016-12-15','','pick up supplies from home depot for dave ruff',0,0,182),(856,32,'2016-12-16','','',0,0,189),(857,32,'2016-12-16','','CLEAN AREA',0,0,182),(858,27,'2016-11-28','18656','Traveled from Rogersville, MO to Peoria, IL',1,1,154),(859,27,'2016-11-29','18656','Altorfer Cat Caterpillar Energy Center',1,1,150),(860,27,'2016-11-30','18656','Altorfer Cat Caterpillar Energy Center',1,1,150),(861,27,'2016-12-01','18656','Altorfer Cat Caterpillar Energy Center',1,0,150),(862,27,'2016-12-02','18656','Altorfer Cat Caterpillar Energy Center',1,0,150),(863,27,'2016-11-19','18704','Traveled from Elroy, WI to Morris, IL',1,1,154),(864,27,'2016-11-21','18704','LyondellBasell L5 Centec',1,1,150),(865,27,'2016-11-22','18704','Traveled from Morris, IL to Rogersville, MO',1,1,154),(866,27,'2016-11-18','19055','Traveled to Elroy, WI',1,1,154),(867,27,'2016-11-18','19055','Elroy Engine Maint.',1,1,150),(868,27,'2016-11-19','19055','Elroy Engine Maint.',1,1,150),(869,27,'2016-11-02','19327','Traveled from Rogersville, MO to Tinley Park, IL',1,1,154),(870,27,'2016-11-03','19327','Traveled from Tinley Park, IL to Wheeler, IN',1,1,154),(871,27,'2016-11-03','19327','Trouble shooting WM Wheeler site 3516 Cat',1,1,153),(872,27,'2016-11-04','19327','Trouble shooting WM Wheeler site 3516 Cat',1,1,153),(873,27,'2016-11-04','19327','Traveled from Wheeler, IN to Clinton, IL',1,1,154),(874,27,'2016-11-10','19327','Traveled from Winchester, IL to Wheeler, IN',1,1,154),(875,27,'2016-11-11','19327','',1,1,153),(876,27,'2016-11-07','19337','Traveled from Robinson, IL to Winchester, IL',1,1,154),(877,27,'2016-11-08','19337','ProEnergy service call',1,1,153),(878,27,'2016-11-09','19337','ProEnergy service call',1,1,153),(879,27,'2016-11-10','19337','ProEnergy service call',1,1,153),(880,27,'2016-11-11','19337','Traveled from Wheeler back to Winchester, IL',1,1,154),(881,27,'2016-11-14','19337','ProEnergy service call',1,1,153),(882,27,'2016-11-15','19337','ProEnergy service call',1,1,153),(883,27,'2016-11-16','19337','ProEnergy service call',1,1,153),(884,27,'2016-11-16','19337','ProEnergy service call',1,1,153),(885,27,'2016-11-17','19337','ProEnergy Service call',1,1,153),(886,27,'2016-11-18','19337','ProEnergy service call',1,1,153),(887,27,'2016-12-08','19337','Traveled from Rockford, IL to Winchester, IL',1,0,154),(888,27,'2016-12-08','19337','ProEnergy NOX valve at Winchester site',1,0,153),(889,27,'2016-12-08','19337','Traveled from Winchester IL to Rogersville, MO',1,0,154),(890,27,'2016-12-12','19389','Traveled from Rogersville, MO to Lafayette, IN',1,0,154),(891,27,'2016-12-13','19389','Evonik service on steam turbines',1,0,153),(892,27,'2016-12-14','19389','Evonik service on steam turbines',1,0,153),(893,27,'2016-12-15','19389','Evonik service on steam turbines',1,0,153),(894,27,'2016-12-16','19389','Evonik service on steam turbines',1,0,153),(895,27,'2016-12-02','19427','Traveled from Peoria, IL to Libertyville, IL',1,0,154),(896,27,'2016-12-05','19427','Peterson Propane',1,0,150),(897,27,'2016-12-06','19427','Peterson Propane',1,0,150),(898,27,'2016-12-07','19435','Traveled from Libertyville, IL to Elroy, WI',1,0,154),(899,27,'2016-12-07','19435','Elroy Electric utility coolant heater pump failed',1,0,153),(900,27,'2016-12-07','19435','Traveled from Elroy, WI to Rockford, IL',1,0,154),(901,27,'2016-11-06','','Traveled from Clinton, IL to Terra Haute, IN',0,1,154),(902,27,'2016-11-15','','Traveled from Winchester, IL to Robinson, IL',0,1,154),(903,27,'2016-11-16','','Traveled from Robinson, IL to Winchester, IL',0,1,154),(904,27,'2016-11-01','','Billing for Caraustar, Peterson Propane,Evonik, Lyondellbasell',0,1,199),(905,27,'2016-11-02','','Marathon Robinson, IL, KRMA and Eric Budd email',0,1,199),(906,27,'2016-11-05','','NICOR Gas, Caterpillar Energy Center,Wabash (enclosure issues)KRMA, and Domtar',0,1,199),(907,27,'2016-11-07','','Double recorded time sheets',0,1,182),(908,27,'2016-11-07','','Marathon Refinery Turbine upgrades',0,1,199),(909,27,'2016-11-12','','Marathon Quote\nKraft Power quote',0,1,199),(910,27,'2016-11-13','','Double recording time sheets and expense reports',0,1,182),(911,27,'2016-11-13','','Billings',0,1,199),(912,27,'2016-11-14','','Helped Ryan Fritz on L-Series\nHelped Felipe Londono from Emerson Automation',0,1,199),(913,27,'2016-11-16','','Marathon Robinson Meeting',0,1,199),(914,27,'2016-11-20','','HighProtec for MG&E Class',0,1,199),(915,27,'2016-11-22','','Rich Henry Northshore Gas\nJohn Bryant Pro Energy\nRyan Frazier C&I engineering',0,1,199),(916,27,'2016-11-23','','MG&E files to Eric F \nMarathon Peak 200 with Tim Harwick\nEd Carder Waste Management',0,1,199),(917,27,'2016-11-24','','',0,1,172),(918,27,'2016-11-25','','',0,1,172),(919,27,'2016-11-28','','C&I Engineering\nExpense Reports\nAVG issues with laptop\nWorked with John Staab Patten Cat on KRMA',0,1,199),(920,27,'2016-11-29','','Eddy Carder Waste Management Help',0,1,199),(921,27,'2016-11-30','','Bid Mods to Marathon quote',0,1,199),(922,27,'2016-12-01','','Drawings with C&I engineering',0,0,199),(923,27,'2016-12-02','','After hours help (Chris Knight) David Pedro',0,0,199),(924,27,'2016-12-03','','Ron Weiss ProEnergy\nElroy Service quote',0,0,199),(925,27,'2016-12-04','','AVG issues, billings to Kim Stone, mileage to Dawn',0,0,182),(926,27,'2016-12-08','','BES Biogas in Amboy, IL stop by',0,0,199),(927,27,'2016-12-09','','Lyondellbasell billing and scheduling issues\nQuote to Elroy\nWorked with ProEnergy about valve testing and control sales',0,0,199),(928,27,'2016-12-17','','Worked on paper work and returned emails',0,0,199),(929,27,'2016-12-18','','Reports',0,0,199),(930,27,'2016-12-18','','double recorded time sheets time sheets and expense reports',0,0,182),(931,35,'2016-11-04','18928','',1,1,142),(932,35,'2016-11-07','18928','',1,1,142),(933,35,'2016-12-01','18928','',1,0,148),(934,35,'2016-12-02','18928','',1,0,148),(935,35,'2016-12-03','18928','',1,0,148),(936,35,'2016-12-04','18928','',1,0,148),(937,35,'2016-12-05','18928','',1,0,148),(938,35,'2016-12-06','18928','',1,0,148),(939,35,'2016-12-07','18928','',1,0,148),(940,35,'2016-12-08','18928','',1,0,154),(941,35,'2016-12-09','18928','',1,0,154),(942,35,'2016-11-01','19187','',1,1,142),(943,35,'2016-11-01','19187','',1,1,142),(944,35,'2016-11-03','19187','',1,1,142),(945,35,'2016-11-08','19187','',1,1,145),(946,35,'2016-11-08','19187','',1,1,154),(947,35,'2016-11-11','19187','',1,1,145),(948,35,'2016-11-14','19187','',1,1,154),(949,35,'2016-11-16','19187','',1,1,140),(950,35,'2016-11-16','19187','',1,1,130),(951,35,'2016-11-17','19187','',1,1,130),(952,35,'2016-11-18','19187','',1,1,130),(953,35,'2016-11-19','19187','',1,1,130),(954,35,'2016-11-20','19187','',1,1,148),(955,35,'2016-11-21','19187','',1,1,156),(956,35,'2016-11-22','19187','',1,1,156),(957,35,'2016-11-23','19187','',1,1,150),(958,35,'2016-11-26','19187','',1,1,148),(959,35,'2016-11-27','19187','',1,1,148),(960,35,'2016-11-28','19187','',1,1,156),(961,35,'2016-11-29','19187','',1,1,156),(962,35,'2016-11-30','19187','',1,1,141),(963,35,'2016-11-01','','',0,1,199),(964,35,'2016-11-02','','',0,1,183),(965,35,'2016-11-03','','',0,1,183),(966,35,'2016-11-03','','',0,1,199),(967,35,'2016-11-04','','',0,1,199),(968,35,'2016-11-04','','scp office',0,1,182),(969,35,'2016-11-05','','scp office',0,1,182),(970,35,'2016-11-07','','',0,1,199),(971,35,'2016-11-09','','',0,1,143),(972,35,'2016-11-09','','',0,1,199),(973,35,'2016-11-10','','',0,1,199),(974,35,'2016-11-14','','',0,1,183),(975,35,'2016-11-18','','',0,1,183),(976,35,'2016-11-24','','start up testing',0,1,172),(977,35,'2016-11-25','','start up testing',0,1,172),(978,16,'2016-11-02','19147','Set Up Acromag for show and tell',1,1,124),(979,16,'2016-11-01','19187','DHTE, LECM',1,1,124),(980,16,'2016-11-02','19187','DHTE, LECM',1,1,124),(981,16,'2016-11-03','19187','DHTE, LECM',1,1,124),(982,16,'2016-11-04','19187','DHTE, LECM',1,1,124),(983,16,'2016-11-07','19187','DHTE, LECM',1,1,124),(984,16,'2016-11-07','19187','DHTE, LECM',1,1,127),(985,16,'2016-11-08','19187','DHTE, LECM',1,1,127),(986,16,'2016-11-09','19187','DHTE, LECM',1,1,124),(987,16,'2016-11-10','19187','DHTE, LECM',1,1,127),(988,16,'2016-11-11','19187','DHTE, LECM',1,1,127),(989,16,'2016-11-14','19187','DHTE, LECM',1,1,127),(990,16,'2016-11-15','19187','DHTE, LECM',1,1,127),(991,16,'2016-11-17','19187','DHTE, LECM',1,1,127),(992,16,'2016-11-17','19187','DHTE, LECM',1,1,124),(993,16,'2016-11-18','19187','DHTE, LECM',1,1,127),(994,16,'2016-11-01','','Calls',0,1,199),(995,16,'2016-11-02','','calls',0,1,199),(996,16,'2016-11-04','','Calls',0,1,199),(997,16,'2016-11-09','','Calls',0,1,199),(998,16,'2016-11-10','','Calls',0,1,199),(999,16,'2016-11-10','','Moving stuff',0,1,182),(1000,16,'2016-11-11','','Calls',0,1,199),(1001,16,'2016-11-14','','Calls',0,1,199),(1002,16,'2016-11-16','','Helped FS at Belle River Power Plant J0019360',0,1,182),(1003,16,'2016-11-17','','Calls',0,1,199),(1004,16,'2016-11-18','','Calls',0,1,199),(1005,16,'2016-11-21','','Support',0,1,199),(1006,16,'2016-11-22','','Support',0,1,199),(1007,16,'2016-11-23','','Calls',0,1,199),(1008,16,'2016-11-24','','',0,1,172),(1009,16,'2016-11-25','','',0,1,172),(1010,16,'2016-11-28','','Support',0,1,199),(1011,16,'2016-11-29','','cleanup area',0,1,182),(1012,16,'2016-11-30','','cleanup',0,1,182),(1013,16,'2016-11-30','','support',0,1,199),(1014,16,'2016-12-01','','CPR',0,0,201),(1015,16,'2016-12-01','','support',0,0,199),(1016,16,'2016-12-02','','support',0,0,199),(1017,16,'2016-12-02','','clean-up / carts',0,0,182),(1018,16,'2016-12-05','','support',0,0,199),(1019,16,'2016-12-05','','carts',0,0,182),(1020,16,'2016-12-06','','area setup / carts',0,0,182),(1021,16,'2016-12-07','','area layout / carts',0,0,182),(1022,16,'2016-12-08','','support',0,0,199),(1023,16,'2016-12-08','','area layout',0,0,182),(1024,16,'2016-12-09','','Bob Young',0,0,107),(1025,16,'2016-12-12','','area layout / computer software',0,0,182),(1026,16,'2016-12-13','','area layout / carts',0,0,182),(1027,16,'2016-12-14','','support',0,0,199),(1028,16,'2016-12-14','','carts',0,0,182),(1029,16,'2016-12-15','','carts',0,0,182),(1030,16,'2016-12-15','','support',0,0,199),(1031,16,'2016-12-16','','support',0,0,199),(1032,16,'2016-12-16','','carts',0,0,182),(1033,16,'2016-12-19','','carts',0,0,182),(1034,16,'2016-12-19','','support',0,0,199),(1035,36,'2016-11-01','18317','Travel to East Dubuque, IA',1,1,154),(1036,36,'2016-11-02','18317','A and B Solar troubleshooting and testing',1,1,153),(1037,36,'2016-11-03','18317','A and B Solar troubleshooting and testing',1,1,153),(1038,36,'2016-11-03','18317','Travel from Dubuque, IA',1,1,154),(1039,36,'2016-11-08','18752','As-build drawings (sorting)',1,1,120),(1040,36,'2016-11-08','18929','DHTE / China preparation meetings',1,1,145),(1041,36,'2016-11-09','18929','DHTE / China travel preparation',1,1,145),(1042,36,'2016-11-10','18929','DHTE / China travel preparation',1,1,145),(1043,36,'2016-11-14','18929','Travel to Beijing, China',1,1,154),(1044,36,'2016-11-15','18929','Travel to Beijing, China',1,1,154),(1045,36,'2016-11-16','18929','Preparation of dyno cell and controls installation',1,1,130),(1046,36,'2016-11-17','18929','Natural gas system modifications; intake manifold removal; camshaft profiling',1,1,130),(1047,36,'2016-11-18','18929','Engine wiring harness installation; miscellaneous other installation',1,1,130),(1048,36,'2016-11-18','18929','Next steps planning',1,1,142),(1049,36,'2016-11-18','18929','Next steps planning',1,1,142),(1050,36,'2016-11-19','18929','Engine wiring harness installation; miscellaneous other installation',1,1,130),(1051,36,'2016-11-20','18929','Stand by time',1,1,148),(1052,36,'2016-11-21','18929','Engine wiring harness installation; miscellaneous other installation',1,1,130),(1053,36,'2016-11-22','18929','Control equipment power up and I/O checks',1,1,141),(1054,36,'2016-11-23','18929','Control equipment power up and I/O checks',1,1,141),(1055,36,'2016-11-24','18929','Control equipment power up and I/O checks',1,1,141),(1056,36,'2016-11-25','18929','Control equipment power up and I/O checks',1,1,141),(1057,36,'2016-11-26','18929','Standby time',1,1,148),(1058,36,'2016-11-27','18929','Standby time',1,1,148),(1059,36,'2016-11-28','18929','Systems checks; injector and thermocouple tests',1,1,141),(1060,36,'2016-11-29','18929','Reworking dyno generator cabling',1,1,156),(1061,36,'2016-11-30','18929','Engine starting attempted',1,1,150),(1062,36,'2016-12-01','18929','Engine starting attempted',1,0,150),(1063,36,'2016-12-02','18929','Engine initial run',1,0,150),(1064,36,'2016-12-03','18929','Startup testing',1,0,150),(1065,36,'2016-12-05','18929','Startup testing � knock setup',1,0,150),(1066,36,'2016-12-06','18929','Startup testing � knock setup',1,0,150),(1067,36,'2016-12-07','18929','Standby time',1,0,148),(1068,36,'2016-12-08','18929','Travel from Beijing, China',1,0,154),(1069,36,'2016-12-09','18929','',1,0,154),(1070,36,'2016-12-12','19185','Roquette America as-built drawings',1,0,120),(1071,36,'2016-12-14','19185','Roquette America as-built drawings',1,0,120),(1072,36,'2016-12-15','19185','Roquette America as-built drawings',1,0,120),(1073,36,'2016-12-16','19185','Roquette America as-built drawings',1,0,120),(1074,36,'2016-11-01','','Technical support for Phillips 66 Peak 150 control',0,1,199),(1075,36,'2016-11-01','','Miscellaneous',0,1,182),(1076,36,'2016-11-04','','Miscellaneous',0,1,182),(1077,36,'2016-11-07','','Technical support � Ryan and Phillips 66',0,1,199),(1078,36,'2016-11-07','','DHTE / China preparation meetings',0,1,183),(1079,36,'2016-11-07','','Miscellaneous',0,1,182),(1080,36,'2016-11-08','','Technical support � Ryan and Phillips 66',0,1,199),(1081,36,'2016-11-08','','Miscellaneous',0,1,182),(1082,36,'2016-11-09','','Miscellaneous',0,1,182),(1083,36,'2016-11-10','','L-Series study',0,1,201),(1084,36,'2016-11-10','','Miscellaneous',0,1,182),(1085,36,'2016-11-11','','One (1) vacation day',0,1,202),(1086,36,'2016-11-24','','Thanksgiving holiday',0,1,172),(1087,36,'2016-11-25','','Thanksgiving holiday',0,1,172),(1088,36,'2016-12-12','','Miscellaneous',0,0,182),(1089,36,'2016-12-12','','Drawing standards investigation',0,0,201),(1090,36,'2016-12-13','','Organizing; other miscellaneous',0,0,182),(1091,36,'2016-12-14','','Drawing standards review with Ryan',0,0,201),(1092,36,'2016-12-14','','Miscellaneous',0,0,182),(1093,36,'2016-12-15','','Miscellaneous',0,0,182),(1094,36,'2016-12-16','','Technical support',0,0,199),(1095,36,'2016-12-16','','Miscellaneous',0,0,182),(1096,36,'2016-12-19','','Peak 150 and Protech system development',0,0,201),(1097,36,'2016-12-19','','Miscellaneous',0,0,182),(1098,37,'2016-11-14','16820','',1,1,125),(1099,37,'2016-11-15','16820','',1,1,125),(1100,37,'2016-11-01','18262','MAKE NEW 25\' MPU CABLES TO REPLACE THE ORIGINAL 15\' MPU CABLES.',1,1,125),(1101,37,'2016-12-16','18655','',1,0,125),(1102,37,'2016-12-19','18655','',1,0,125),(1103,37,'2016-11-01','18812','',1,1,127),(1104,37,'2016-11-02','18812','',1,1,127),(1105,37,'2016-11-04','18812','',1,1,127),(1106,37,'2016-11-05','18812','',1,1,125),(1107,37,'2016-11-07','18812','',1,1,125),(1108,37,'2016-11-08','18812','',1,1,125),(1109,37,'2016-11-02','19142','',1,1,127),(1110,37,'2016-11-03','19142','',1,1,127),(1111,37,'2016-11-04','19142','',1,1,127),(1112,37,'2016-11-11','19142','',1,1,144),(1113,37,'2016-11-15','19142','',1,1,125),(1114,37,'2016-11-16','19142','',1,1,125),(1115,37,'2016-11-17','19142','',1,1,125),(1116,37,'2016-11-18','19187','',1,1,127),(1117,37,'2016-11-22','19187','',1,1,125),(1118,37,'2016-11-22','19187','HELP CC PREP FOR CHINA',1,1,145),(1119,37,'2016-11-23','19187','',1,1,145),(1120,37,'2016-11-05','19242','',1,1,127),(1121,37,'2016-11-05','19242','',1,1,125),(1122,37,'2016-11-14','19265','',1,1,127),(1123,37,'2016-11-16','19265','',1,1,125),(1124,37,'2016-11-21','19265','',1,1,126),(1125,37,'2016-11-22','19265','',1,1,144),(1126,37,'2016-11-11','19291','',1,1,127),(1127,37,'2016-11-23','19291','',1,1,154),(1128,37,'2016-11-28','19291','',1,1,127),(1129,37,'2016-12-07','19294','',1,0,127),(1130,37,'2016-11-03','19334','',1,1,125),(1131,37,'2016-11-17','19349','',1,1,127),(1132,37,'2016-11-21','19349','',1,1,127),(1133,37,'2016-11-22','19349','',1,1,127),(1134,37,'2016-11-23','19349','',1,1,127),(1135,37,'2016-11-28','19352','',1,1,127),(1136,37,'2016-12-08','19352','',1,0,127),(1137,37,'2016-12-09','19352','',1,0,127),(1138,37,'2016-12-13','19352','',1,0,127),(1139,37,'2016-12-14','19352','',1,0,127),(1140,37,'2016-12-15','19352','',1,0,127),(1141,37,'2016-12-16','19352','',1,0,127),(1142,37,'2016-12-19','19352','',1,0,132),(1143,37,'2016-11-16','19356','',1,1,126),(1144,37,'2016-11-15','19362','',1,1,125),(1145,37,'2016-12-07','19379','',1,0,127),(1146,37,'2016-12-01','19380','',1,0,144),(1147,37,'2016-11-21','19383','',1,1,126),(1148,37,'2016-11-28','19383','',1,1,126),(1149,37,'2016-11-30','19383','',1,1,144),(1150,37,'2016-11-28','19404','',1,1,127),(1151,37,'2016-11-29','19404','',1,1,127),(1152,37,'2016-11-30','19404','',1,1,127),(1153,37,'2016-12-01','19404','',1,0,127),(1154,37,'2016-12-02','19404','',1,0,127),(1155,37,'2016-12-05','19404','',1,0,127),(1156,37,'2016-12-06','19404','',1,0,127),(1157,37,'2016-12-01','19408','',1,0,125),(1158,37,'2016-12-05','19409','',1,0,125),(1159,37,'2016-12-05','19409','',1,0,127),(1160,37,'2016-12-06','19434','',1,0,144),(1161,37,'2016-12-09','19448','',1,0,126),(1162,37,'2016-11-04','','HELP WITH RACK',0,1,182),(1163,37,'2016-11-08','','CLEAN OFF SHELVING',0,1,182),(1164,37,'2016-11-09','','CLEAN AND MOVE AREA AROUND',0,1,182),(1165,37,'2016-11-10','','CLEAN AND MOVE AREA AROUND',0,1,182),(1166,37,'2016-11-11','','CLEAN AND MOVE AREA AROUND',0,1,182),(1167,37,'2016-11-14','','GOT PARTS TAKEN OFF OF JOBS AND PUT INTO STOCK',0,1,182),(1168,37,'2016-11-15','','GET P/N FOR JG, FOR C401 MPU CABLES',0,1,182),(1169,37,'2016-11-15','','PULL WIRE FOR KM',0,1,182),(1170,37,'2016-11-17','','',0,1,183),(1171,37,'2016-11-17','','MPU CABLES FOR STOCK',0,1,182),(1172,37,'2016-11-18','','MPU CABLES FOR STOCK',0,1,182),(1173,37,'2016-11-18','','AREA CLEANUP',0,1,181),(1174,37,'2016-11-18','','HELP STEVE OUTSIDE',0,1,182),(1175,37,'2016-11-21','','PULL AND SHIP PARTS FOR KM',0,1,182),(1176,37,'2016-11-24','','',0,1,172),(1177,37,'2016-11-25','','',0,1,172),(1178,37,'2016-11-29','','SORT PARTS',0,1,182),(1179,37,'2016-11-30','','AREA CLEANUP',0,1,182),(1180,37,'2016-12-02','','AREA CLEANUP',0,0,182),(1181,37,'2016-12-05','','BUILT MPU HARNESS FOR JOE J.',0,0,182),(1182,37,'2016-12-07','','PULL PARTS FOR JOE J.',0,0,182),(1183,37,'2016-12-08','','SET TACH AND BUILD TACH KIT FOR JOE J.',0,0,182),(1184,37,'2016-12-08','','AREA IMPROVEMENT',0,0,182),(1185,37,'2016-12-12','','',0,0,184),(1186,37,'2016-12-15','','PAPERWORK',0,0,182),(1187,38,'2016-11-01','18929','GT - methanol',1,1,139),(1188,38,'2016-11-02','18929','GT - methanol',1,1,139),(1189,38,'2016-11-02','18929','GT - methanol',1,1,139),(1190,38,'2016-11-04','18929','GT - methanol',1,1,139),(1191,38,'2016-11-07','18929','GT - methanol',1,1,139),(1192,38,'2016-11-10','18929','GT',1,1,139),(1193,38,'2016-11-26','18929','departed Millville NJ 08:15 26 Nov, arrived hotel Beijing 05:15 27 Nov (all times EST) - unsure if I should use J0018929 or J0019187',1,1,154),(1194,38,'2016-11-30','18929','',1,1,141),(1195,38,'2016-12-01','18929','GT',1,0,139),(1196,38,'2016-12-02','18929','GT',1,0,139),(1197,38,'2016-12-03','18929','GT',1,0,139),(1198,38,'2016-12-07','18929','',1,0,141),(1199,38,'2016-11-01','19187','GT - nat gas',1,1,139),(1200,38,'2016-11-02','19187','GT - nat gas',1,1,139),(1201,38,'2016-11-03','19187','GT - nat gas (Spaceclaim/GEM3D for mixer assembly)',1,1,139),(1202,38,'2016-11-04','19187','GT - nat gas',1,1,139),(1203,38,'2016-11-08','19187','GT - nat gas',1,1,139),(1204,38,'2016-11-09','19187','writeup of Knock Setup procedure (including reading time)',1,1,152),(1205,38,'2016-11-09','19187','GT - nat gas',1,1,139),(1206,38,'2016-11-10','19187','write up, email questions for Dylan re: Knock Setup',1,1,152),(1207,38,'2016-11-11','19187','Knock Setup Procedure - tel. call w/Dylan re: questions, finish writeup, email drafts for comment/feedback',1,1,152),(1208,38,'2016-11-11','19187','GT',1,1,139),(1209,38,'2016-11-17','19187','GT - natural gas',1,1,139),(1210,38,'2016-11-18','19187','WILL WORK SATURDAY - THERE ARE NO MISSING HOURS TODAY - GT - natural gas',1,1,139),(1211,38,'2016-11-20','19187','NOT OVERTIME - REGULAR HOURS (owed 4 hours from Friday 18 Nov)',1,1,139),(1212,38,'2016-11-21','19187','GT',1,1,139),(1213,38,'2016-11-22','19187','GT',1,1,139),(1214,38,'2016-11-23','19187','NO MISSING HOURS - SEE SAT 11/26',1,1,139),(1215,38,'2016-11-28','19187','',1,1,141),(1216,38,'2016-11-29','19187','',1,1,141),(1217,38,'2016-12-02','19187','',1,0,141),(1218,38,'2016-12-04','19187','',1,0,141),(1219,38,'2016-12-04','19187','',1,0,148),(1220,38,'2016-12-05','19187','Knock setup',1,0,141),(1221,38,'2016-12-06','19187','',1,0,141),(1222,38,'2016-12-08','19187','',1,0,141),(1223,38,'2016-12-09','19187','',1,0,150),(1224,38,'2016-12-10','19187','',1,0,150),(1225,38,'2016-12-11','19187','',1,0,150),(1226,38,'2016-12-12','19187','',1,0,148),(1227,38,'2016-12-13','19187','',1,0,141),(1228,38,'2016-12-14','19187','departed hotel 11:00 14 Dec Beijing time, arrived home 10:30 15 Dec Beijing time',1,0,154),(1229,38,'2016-12-15','19187','organizing data from China trip for uploading to Box',1,0,142),(1230,38,'2016-11-01','','weekly methanol meeting (GoToMeeting)',0,1,183),(1231,38,'2016-11-01','','combustion/knock reading',0,1,182),(1232,38,'2016-11-02','','combustion/knock reading',0,1,182),(1233,38,'2016-11-03','','email, phone calls, knock reading, GT that isn\'t particular to either methanol or nat gas,',0,1,182),(1234,38,'2016-11-04','','join.me meeting with Eric F',0,1,183),(1235,38,'2016-11-04','','email, phone calls, testing out remote access to GT desktop with Dylan\'s assistance, testing to see if remote access (TeamViewer) affected by restart, etc - changed to 1.25 hrs per LG request eb',0,1,182),(1236,38,'2016-11-08','','Running pressure sensors to Dylan, phone call with Chris K (tech support)',0,1,182),(1237,38,'2016-11-11','','Catching up on administrivia - entering job cost, sorting through email, organizing workspace, etc',0,1,182),(1238,38,'2016-11-13','','Millville NJ - Plymouth, MI for GT conference - departed 14:00 arr 23:00',0,1,201),(1239,38,'2016-11-14','','GT conference',0,1,201),(1240,38,'2016-11-15','','GT conference',0,1,201),(1241,38,'2016-11-16','','return travel from GT conference dep Plymouth MI 07:30 arr Millville 17:15 + 45 minutes rental car return',0,1,201),(1242,38,'2016-11-17','','email, exp report, uploading GT conference stuff to Box, etc',0,1,182),(1243,38,'2016-11-24','','Thanksgiving',0,1,172),(1244,38,'2016-11-25','','day after Thanksgiving',0,1,172),(1245,38,'2016-12-12','','Expense reports, organizing notes, email, etc.',0,0,182),(1246,38,'2016-12-15','','DISA testing (including travel to/from Concentra Bellmawr), catching up on email, expense report, phone calls, roundtrip to PSI New Castle shop',0,0,182),(1247,38,'2016-12-16','','',0,0,196),(1248,33,'2016-11-08','19234','SOR69586',1,1,154),(1249,33,'2016-11-09','19234','',1,1,150),(1250,33,'2016-11-10','19234','',1,1,150),(1251,33,'2016-11-11','19234','',1,1,150),(1252,33,'2016-11-12','19234','',1,1,154),(1253,33,'2016-11-15','','',0,1,202),(1254,33,'2016-11-16','','',0,1,202),(1255,33,'2016-11-17','','',0,1,202),(1256,33,'2016-11-18','','',0,1,202),(1257,33,'2016-11-21','','',0,1,202),(1258,39,'2016-11-01','19142','',1,1,123),(1259,39,'2016-11-02','19142','',1,1,123),(1260,39,'2016-11-03','19142','',1,1,123),(1261,39,'2016-11-04','19142','',1,1,123),(1262,39,'2016-11-10','19142','',1,1,183),(1263,39,'2016-11-11','19142','',1,1,123),(1264,39,'2016-11-06','19282','',1,1,145),(1265,39,'2016-11-06','19282','',1,1,154),(1266,39,'2016-11-07','19282','',1,1,141),(1267,39,'2016-11-08','19282','',1,1,141),(1268,39,'2016-11-09','19282','',1,1,141),(1269,39,'2016-11-10','19282','',1,1,153),(1270,39,'2016-11-10','19282','',1,1,145),(1271,39,'2016-11-10','19282','',1,1,154),(1272,39,'2016-11-14','19282','',1,1,145),(1273,39,'2016-11-14','19282','',1,1,154),(1274,39,'2016-11-15','19282','',1,1,120),(1275,39,'2016-11-16','19282','',1,1,150),(1276,39,'2016-11-17','19282','',1,1,154),(1277,39,'2016-11-20','19282','',1,1,145),(1278,39,'2016-11-20','19282','',1,1,154),(1279,39,'2016-11-21','19282','',1,1,150),(1280,39,'2016-11-22','19282','',1,1,154),(1281,39,'2016-11-30','19291','East Dubuque',1,1,124),(1282,39,'2016-12-02','19291','',1,0,123),(1283,39,'2016-11-09','','',0,1,182),(1284,39,'2016-11-14','','',0,1,199),(1285,39,'2016-11-18','','',0,1,199),(1286,39,'2016-11-22','','',0,1,199),(1287,39,'2016-11-23','','',0,1,199),(1288,39,'2016-11-24','','',0,1,172),(1289,39,'2016-11-25','','',0,1,172),(1290,39,'2016-11-28','','',0,1,199),(1291,39,'2016-11-29','','',0,1,199),(1292,39,'2016-11-30','','',0,1,199),(1293,39,'2016-12-01','','CPR',0,0,201),(1294,39,'2016-12-01','','',0,0,199),(1295,39,'2016-12-02','','',0,0,199),(1296,39,'2016-12-05','','',0,0,199),(1297,39,'2016-12-06','','',0,0,199),(1299,22,'2016-12-03','18929','job # s/b 18929',1,0,142),(1301,22,'2017-01-17','98740','',1,0,140),(1307,22,'2017-01-03','19856','test',1,0,140),(1308,22,'2017-01-23','19654','test',1,0,140),(1310,1,'2017-01-23','45113','',1,0,103),(1311,1,'2017-01-22','77888','',1,0,103),(1312,23,'2017-01-23','56789','',1,0,103),(1313,23,'2017-01-23','56789','',1,0,104),(1314,23,'2017-01-23','56789','',1,0,105),(1315,40,'2017-01-02','','',0,0,172),(1316,23,'2017-02-03','83835','',1,0,103),(1317,18,'2017-02-06','','',0,0,189),(1318,18,'2017-02-07','19562','test',1,0,147),(1319,18,'2017-02-07','19555','testing ',1,0,162),(1320,22,'2017-02-01','18565','test',1,0,142),(1321,22,'2017-02-07','17895','test',1,0,141),(1322,40,'2017-02-07','','',0,0,182),(1323,40,'2017-02-07','','',0,0,189),(1324,40,'2017-02-06','','',0,0,182),(1325,18,'2017-02-08','','Test',0,0,189),(1326,18,'2017-02-08','','Test ',0,0,196),(1327,18,'2017-02-08','','Testing',0,0,159),(1328,18,'2017-02-08','98766','Test ',0,0,127),(1329,18,'2017-02-01','45897','Test',0,0,147),(1330,18,'2017-02-01','','',0,0,148),(1331,1,'2017-02-09','44222','',0,0,106),(1332,1,'2017-02-12','77888','',0,0,105);
/*!40000 ALTER TABLE `timeentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeentryhours`
--

DROP TABLE IF EXISTS `timeentryhours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timeentryhours` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TimeEntryId` int(11) NOT NULL,
  `Duration` decimal(4,2) NOT NULL,
  `HoursType` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`),
  KEY `FK_timeentryhours_timeentry_idx` (`TimeEntryId`),
  CONSTRAINT `FK_timeentryhours_timeentry` FOREIGN KEY (`TimeEntryId`) REFERENCES `timeentry` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2728 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeentryhours`
--

LOCK TABLES `timeentryhours` WRITE;
/*!40000 ALTER TABLE `timeentryhours` DISABLE KEYS */;
INSERT INTO `timeentryhours` VALUES (1314,654,8.00,1),(1315,654,6.00,2),(1316,655,8.00,1),(1317,655,4.25,2),(1321,656,4.75,1),(1322,657,0.50,1),(1323,658,0.50,1),(1324,659,8.00,1),(1325,660,8.00,1),(1326,661,8.00,1),(1327,662,8.00,1),(1328,663,8.00,1),(1329,664,8.00,1),(1330,664,3.00,2),(1332,665,0.25,1),(1333,666,7.75,1),(1334,666,4.25,2),(1337,667,8.00,1),(1338,667,3.50,2),(1339,668,0.75,2),(1341,669,3.00,1),(1342,670,1.50,1),(1343,671,8.00,1),(1344,671,3.75,2),(1345,672,8.00,1),(1346,672,4.25,2),(1347,673,8.00,1),(1348,674,8.00,1),(1350,675,0.75,1),(1351,676,7.25,1),(1352,676,3.00,2),(1355,677,8.00,1),(1356,677,2.25,2),(1357,678,1.75,2),(1358,679,8.00,1),(1359,679,3.25,2),(1365,680,8.00,1),(1366,680,6.25,2),(1367,681,1.50,2),(1368,682,0.25,2),(1370,683,4.00,1),(1371,684,4.00,1),(1372,684,0.50,2),(1375,685,8.00,1),(1376,685,1.75,2),(1377,686,1.75,2),(1378,687,8.00,1),(1379,687,4.25,2),(1381,688,7.50,1),(1382,689,0.25,1),(1387,690,1.50,1),(1388,691,6.50,1),(1389,691,3.00,2),(1390,692,1.75,2),(1397,693,4.00,1),(1398,694,1.00,1),(1399,695,1.75,1),(1400,696,1.25,1),(1401,696,10.25,2),(1407,697,8.00,1),(1408,697,0.75,2),(1409,698,0.50,2),(1410,699,0.25,2),(1413,701,8.00,1),(1414,702,8.00,1),(1415,703,8.00,1),(1416,703,4.00,2),(1417,704,8.00,1),(1418,704,5.00,2),(1419,705,8.00,1),(1420,706,8.00,1),(1421,707,8.00,1),(1422,708,8.00,1),(1423,708,5.00,2),(1424,709,8.00,1),(1425,709,5.00,2),(1426,710,8.00,1),(1427,710,3.00,2),(1428,711,8.00,1),(1429,712,8.00,1),(1430,712,10.00,2),(1431,713,8.00,1),(1432,714,8.00,1),(1433,714,4.00,2),(1434,715,8.00,1),(1435,715,5.00,2),(1436,716,8.00,1),(1437,716,6.00,2),(1438,717,8.00,1),(1439,717,4.00,2),(1440,718,8.00,1),(1441,719,8.00,1),(1442,719,5.00,2),(1443,720,8.00,1),(1444,720,4.00,2),(1445,721,8.00,1),(1446,721,4.00,2),(1451,724,8.00,1),(1452,725,8.00,1),(1453,726,8.00,1),(1454,726,5.00,2),(1455,727,8.00,1),(1456,727,5.00,2),(1457,728,8.00,1),(1458,728,4.00,2),(1459,729,8.00,1),(1460,729,5.00,2),(1461,730,8.00,1),(1462,730,5.00,2),(1463,731,8.00,1),(1464,731,3.00,2),(1465,732,8.00,1),(1466,732,5.00,2),(1467,733,8.00,1),(1468,733,4.00,2),(1469,734,8.00,1),(1470,734,2.00,2),(1471,735,8.00,1),(1472,735,7.00,2),(1473,736,8.00,1),(1474,736,6.00,2),(1475,737,8.00,1),(1478,722,8.00,1),(1479,722,4.00,2),(1480,739,8.00,2),(1481,723,8.00,1),(1482,723,4.00,2),(1483,740,8.00,2),(1485,741,3.00,1),(1486,742,5.00,1),(1487,742,1.00,2),(1489,743,3.00,1),(1490,744,5.00,1),(1491,744,2.00,2),(1493,745,1.00,1),(1494,746,7.00,1),(1495,746,3.50,2),(1496,747,8.00,1),(1497,747,5.00,2),(1498,748,8.00,1),(1499,748,4.50,2),(1500,749,8.00,1),(1501,749,4.00,2),(1503,750,7.00,1),(1504,751,1.00,1),(1505,751,11.00,2),(1506,752,8.00,1),(1508,754,8.00,1),(1509,755,8.00,1),(1510,756,8.00,1),(1512,758,8.00,1),(1513,759,8.00,1),(1515,760,2.00,1),(1516,761,6.00,1),(1518,762,3.00,1),(1519,763,5.00,1),(1520,763,3.00,2),(1523,765,3.00,1),(1524,766,5.00,1),(1525,766,3.00,2),(1527,768,8.00,1),(1528,769,8.00,1),(1530,753,2.00,1),(1531,771,6.00,1),(1533,772,2.00,1),(1534,773,6.00,1),(1535,774,8.00,1),(1537,775,3.00,1),(1538,776,5.00,1),(1539,764,3.00,1),(1540,777,2.00,1),(1542,778,2.00,1),(1543,779,3.00,1),(1544,780,8.00,1),(1545,781,8.00,1),(1546,782,8.00,1),(1547,783,8.00,1),(1548,784,8.00,1),(1549,785,8.00,1),(1552,767,2.00,1),(1553,786,3.00,1),(1554,787,3.00,1),(1555,757,6.50,1),(1556,788,1.50,1),(1557,770,2.50,1),(1558,789,5.50,1),(1559,790,8.00,1),(1560,791,7.00,1),(1570,800,8.00,1),(1571,800,10.00,2),(1572,801,8.00,1),(1573,802,8.00,1),(1574,802,4.00,2),(1575,803,8.00,1),(1576,803,4.00,2),(1577,804,8.00,1),(1578,804,4.00,2),(1579,805,8.00,1),(1580,805,3.00,2),(1581,806,8.00,1),(1582,806,4.00,2),(1583,807,8.00,1),(1584,807,4.00,2),(1585,808,8.00,1),(1586,808,4.00,2),(1587,809,8.00,1),(1588,809,11.00,2),(1589,810,8.00,1),(1590,810,2.00,2),(1591,811,8.00,1),(1596,815,8.00,1),(1597,815,4.00,2),(1598,816,8.00,1),(1599,816,4.00,2),(1608,812,5.00,1),(1609,822,3.00,1),(1614,825,4.00,1),(1615,826,4.00,1),(1619,829,8.00,1),(1620,829,4.00,2),(1621,796,5.00,1),(1622,821,1.00,1),(1623,830,2.00,1),(1624,797,2.00,1),(1625,813,6.00,1),(1626,831,0.00,1),(1627,831,1.00,2),(1628,798,8.00,1),(1629,798,1.00,2),(1630,832,1.00,2),(1632,833,7.00,1),(1633,834,1.00,1),(1634,817,4.50,1),(1635,835,2.00,1),(1636,794,6.00,1),(1637,818,1.50,1),(1638,836,0.50,1),(1639,799,6.00,1),(1640,837,2.00,1),(1641,837,1.00,2),(1642,838,8.00,1),(1643,838,1.00,2),(1644,823,1.00,1),(1645,839,7.00,1),(1646,839,3.00,2),(1647,814,1.50,1),(1648,819,0.50,1),(1649,840,5.50,1),(1653,795,1.00,1),(1654,824,1.00,1),(1655,841,3.00,1),(1656,842,2.00,1),(1657,843,8.00,1),(1658,844,8.00,1),(1659,845,8.00,1),(1660,846,8.00,1),(1661,847,8.00,1),(1662,848,8.00,1),(1663,848,1.00,2),(1664,849,8.00,1),(1665,850,8.00,1),(1666,851,8.00,1),(1667,792,4.00,1),(1668,852,4.00,1),(1672,793,2.00,1),(1673,827,1.00,1),(1674,853,4.00,1),(1675,854,1.00,1),(1676,820,6.00,1),(1677,855,2.00,1),(1680,828,3.00,1),(1681,856,4.00,1),(1682,857,1.00,1),(1692,864,8.00,1),(1693,864,1.00,2),(1698,863,5.00,1),(1699,868,3.00,1),(1700,868,2.00,2),(1703,870,1.00,1),(1704,871,7.00,1),(1705,871,4.00,2),(1707,872,5.00,1),(1708,873,3.00,1),(1709,873,1.00,2),(1713,877,8.00,1),(1714,877,2.00,2),(1715,878,8.00,1),(1716,878,2.00,2),(1717,874,5.00,1),(1718,879,3.00,1),(1719,879,2.00,2),(1720,875,5.00,1),(1721,880,3.00,1),(1722,880,1.00,2),(1730,885,8.00,1),(1731,885,3.00,2),(1732,866,5.00,1),(1733,867,1.00,1),(1734,886,2.00,1),(1735,886,2.00,2),(1743,890,8.00,1),(1744,890,1.00,2),(1745,891,8.00,1),(1746,891,2.00,2),(1747,892,8.00,1),(1748,892,1.00,2),(1749,893,8.00,1),(1750,893,2.00,2),(1751,894,8.00,1),(1752,894,2.00,2),(1756,896,8.00,1),(1757,896,2.00,2),(1758,897,8.00,1),(1759,897,2.00,2),(1763,898,5.00,1),(1764,899,2.00,1),(1765,900,1.00,1),(1766,900,2.00,2),(1767,901,4.00,1),(1768,882,8.00,1),(1769,882,2.00,2),(1770,902,4.00,2),(1775,904,8.00,1),(1776,869,8.00,1),(1777,905,0.00,1),(1778,905,8.00,2),(1779,906,5.00,1),(1782,876,4.00,1),(1783,907,2.00,1),(1784,908,2.00,1),(1785,908,6.00,2),(1786,909,8.00,1),(1788,910,2.00,1),(1789,911,2.00,1),(1790,881,8.00,1),(1791,912,0.00,1),(1792,912,4.00,2),(1793,883,4.00,1),(1794,884,4.00,1),(1795,884,8.00,2),(1796,903,4.00,2),(1797,913,8.00,2),(1798,914,8.00,1),(1799,865,8.00,1),(1800,915,0.00,1),(1801,915,3.00,2),(1802,916,8.00,1),(1803,917,8.00,1),(1804,918,8.00,1),(1805,858,7.00,1),(1806,919,1.00,1),(1807,919,7.00,2),(1808,859,8.00,1),(1809,859,2.00,2),(1810,920,3.00,2),(1811,860,8.00,1),(1812,860,2.00,2),(1813,921,3.00,2),(1814,861,8.00,1),(1815,861,2.00,2),(1816,922,3.00,2),(1817,862,8.00,1),(1818,895,0.00,1),(1819,895,4.00,2),(1820,923,2.00,2),(1821,924,4.00,1),(1822,925,4.00,1),(1823,887,4.00,1),(1824,888,2.00,1),(1825,889,2.00,1),(1826,889,3.00,2),(1827,926,2.00,2),(1828,927,8.00,1),(1829,928,2.00,1),(1831,929,4.00,1),(1832,930,4.00,1),(1833,930,1.00,2),(1836,933,8.00,1),(1837,933,4.00,2),(1838,934,8.00,1),(1839,934,4.00,2),(1840,935,8.00,1),(1841,935,4.00,2),(1842,936,8.00,1),(1843,936,4.00,2),(1844,937,8.00,1),(1845,937,4.00,2),(1846,938,8.00,1),(1847,938,4.00,2),(1848,939,8.00,1),(1849,939,4.00,2),(1850,940,8.00,1),(1851,940,11.00,2),(1852,941,8.00,1),(1853,941,2.00,2),(1860,945,8.00,1),(1861,945,1.00,2),(1862,946,8.00,2),(1863,947,8.00,1),(1867,949,8.00,1),(1868,950,0.00,1),(1869,950,4.00,2),(1870,951,8.00,1),(1871,951,4.00,2),(1874,953,8.00,1),(1875,953,3.00,2),(1876,954,8.00,1),(1877,955,8.00,1),(1878,955,4.00,2),(1879,956,8.00,1),(1880,956,4.00,2),(1881,957,8.00,1),(1882,957,4.00,2),(1883,958,8.00,1),(1884,959,8.00,1),(1885,960,8.00,1),(1886,960,4.00,2),(1887,961,8.00,1),(1888,961,4.00,2),(1889,962,8.00,1),(1890,962,4.00,2),(1891,942,1.00,1),(1892,943,7.00,1),(1893,963,0.00,1),(1894,963,8.00,2),(1895,964,2.00,1),(1898,944,5.00,1),(1899,965,2.00,1),(1900,966,1.00,1),(1901,966,1.00,2),(1904,931,6.00,1),(1905,967,2.00,1),(1906,968,0.00,1),(1907,968,3.50,2),(1908,969,2.50,1),(1909,932,5.00,1),(1910,970,3.00,1),(1911,970,1.00,2),(1913,971,4.00,1),(1914,972,4.00,1),(1915,972,1.00,2),(1916,973,8.00,1),(1917,973,1.00,2),(1918,948,8.00,1),(1919,948,10.00,2),(1920,974,1.00,2),(1921,952,8.00,1),(1922,952,4.00,2),(1923,975,2.00,2),(1924,976,8.00,1),(1925,976,12.00,2),(1926,977,8.00,1),(1927,977,12.00,2),(1932,981,8.00,1),(1933,981,2.00,2),(1936,983,6.00,1),(1937,984,2.00,1),(1938,984,2.00,2),(1939,985,8.00,1),(1940,985,2.00,2),(1945,990,8.00,1),(1946,990,2.00,2),(1951,979,8.00,1),(1952,994,0.00,1),(1953,994,2.00,2),(1954,978,2.00,1),(1955,980,2.00,1),(1956,995,4.00,1),(1957,995,2.50,2),(1958,982,8.00,1),(1959,996,0.00,1),(1960,996,2.00,2),(1961,986,6.00,1),(1962,997,2.00,1),(1963,997,2.00,2),(1966,987,4.00,1),(1967,998,4.00,1),(1968,999,0.00,1),(1969,999,2.00,2),(1970,988,6.00,1),(1971,1000,2.00,1),(1972,1000,2.00,2),(1973,989,8.00,1),(1974,1001,0.00,1),(1975,1001,2.00,2),(1976,1002,8.00,1),(1977,1002,2.00,2),(1978,991,4.00,1),(1979,992,2.00,1),(1980,1003,2.00,1),(1981,1003,2.00,2),(1982,993,4.00,1),(1983,1004,4.00,1),(1984,1004,2.00,2),(1985,1005,8.00,1),(1986,1005,2.00,2),(1987,1006,8.00,1),(1988,1006,2.00,2),(1989,1007,8.00,1),(1990,1007,2.00,2),(1991,1008,8.00,1),(1992,1009,8.00,1),(1993,1010,8.00,1),(1994,1010,2.00,2),(1995,1011,8.00,1),(1996,1011,2.00,2),(1998,1012,8.00,1),(1999,1013,0.00,1),(2000,1013,2.00,2),(2002,1014,7.00,1),(2003,1015,1.00,1),(2004,1015,2.00,2),(2006,1016,2.00,1),(2007,1017,6.00,1),(2008,1017,2.00,2),(2010,1018,2.00,1),(2011,1019,6.00,1),(2012,1019,2.00,2),(2013,1020,8.00,1),(2014,1020,2.50,2),(2015,1021,8.00,1),(2016,1021,3.00,2),(2018,1022,1.00,1),(2019,1023,7.00,1),(2020,1023,2.00,2),(2021,1024,8.00,1),(2022,1025,8.00,1),(2023,1026,8.00,1),(2024,1026,3.00,2),(2026,1027,1.00,1),(2027,1028,7.00,1),(2028,1028,2.00,2),(2030,1029,8.00,1),(2031,1030,0.00,1),(2032,1030,2.00,2),(2034,1031,8.00,1),(2035,1032,0.00,1),(2036,1032,2.00,2),(2038,1033,8.00,1),(2039,1034,0.00,1),(2040,1034,2.00,2),(2043,1036,8.00,1),(2044,1036,2.00,2),(2046,1037,6.00,1),(2047,1038,2.00,1),(2048,1038,7.00,2),(2054,1043,8.00,1),(2055,1043,10.00,2),(2056,1044,8.00,1),(2057,1045,8.00,1),(2058,1045,4.00,2),(2059,1046,8.00,1),(2060,1046,4.00,2),(2066,1047,8.00,1),(2067,1047,4.00,2),(2068,1048,1.00,2),(2069,1049,1.00,2),(2070,1050,8.00,1),(2071,1050,3.00,2),(2072,1051,8.00,1),(2073,1052,8.00,1),(2074,1052,4.00,2),(2075,1053,8.00,1),(2076,1053,4.00,2),(2077,1054,8.00,1),(2078,1054,4.00,2),(2083,1057,8.00,1),(2084,1058,8.00,1),(2085,1059,8.00,1),(2086,1059,4.00,2),(2087,1060,8.00,1),(2088,1060,4.00,2),(2089,1061,8.00,1),(2090,1061,4.00,2),(2091,1062,8.00,1),(2092,1062,4.00,2),(2093,1063,8.00,1),(2094,1063,5.00,2),(2095,1064,8.00,1),(2096,1064,5.00,2),(2097,1065,8.00,1),(2098,1065,5.00,2),(2099,1066,8.00,1),(2100,1066,4.00,2),(2101,1067,8.00,1),(2102,1067,4.00,2),(2103,1068,8.00,1),(2104,1068,11.00,2),(2105,1069,8.00,1),(2106,1069,2.00,2),(2114,1035,8.00,1),(2115,1035,1.00,2),(2116,1074,1.00,2),(2117,1075,2.00,2),(2118,1076,4.00,1),(2122,1077,4.00,1),(2123,1078,2.00,1),(2124,1079,2.00,1),(2128,1039,1.00,1),(2129,1040,2.00,1),(2130,1080,2.00,1),(2131,1081,3.00,1),(2132,1041,5.00,1),(2133,1082,3.00,1),(2136,1042,4.00,1),(2137,1083,3.00,1),(2138,1084,1.00,1),(2139,1085,8.00,1),(2140,1055,8.00,1),(2141,1055,3.00,2),(2142,1086,8.00,2),(2143,1056,8.00,1),(2144,1056,4.00,2),(2145,1087,8.00,2),(2148,1070,5.00,1),(2149,1088,1.00,1),(2150,1089,2.00,1),(2151,1090,8.00,1),(2154,1071,5.00,1),(2155,1091,2.00,1),(2156,1092,1.00,1),(2157,1072,5.00,1),(2158,1093,3.00,1),(2161,1073,4.00,1),(2162,1094,2.00,1),(2163,1095,2.00,1),(2165,1096,5.00,1),(2166,1097,3.00,1),(2172,1100,5.00,1),(2173,1103,3.00,1),(2177,1107,8.00,1),(2179,1104,6.50,1),(2180,1109,1.50,1),(2197,1106,2.00,1),(2198,1120,1.50,1),(2199,1121,2.50,1),(2214,1110,5.00,1),(2215,1130,1.50,1),(2220,1117,2.00,1),(2221,1118,4.50,1),(2222,1125,1.00,1),(2223,1133,0.50,1),(2224,1133,1.50,2),(2225,1119,2.00,1),(2226,1127,1.00,1),(2227,1134,3.00,1),(2232,1138,8.00,1),(2233,1138,1.00,2),(2234,1139,7.00,1),(2237,1101,5.00,1),(2238,1141,3.00,1),(2239,1102,4.00,1),(2240,1142,4.00,1),(2241,1142,1.00,2),(2242,1114,5.00,1),(2243,1123,2.00,1),(2244,1143,1.00,1),(2258,1128,2.00,1),(2259,1135,2.00,1),(2260,1148,1.00,1),(2261,1150,3.00,1),(2262,1150,0.50,2),(2272,1146,0.50,1),(2273,1153,4.50,1),(2274,1157,3.00,1),(2280,1156,8.00,1),(2281,1156,0.50,2),(2282,1160,0.50,2),(2283,1137,7.50,1),(2284,1161,0.50,1),(2285,1161,0.50,2),(2286,1105,6.50,1),(2287,1111,1.50,1),(2288,1111,1.00,2),(2289,1162,1.00,2),(2290,1108,7.00,1),(2291,1163,1.00,1),(2292,1163,1.00,2),(2293,1164,8.00,1),(2294,1165,8.00,1),(2295,1165,0.25,2),(2296,1112,1.50,1),(2297,1126,1.50,1),(2298,1166,5.00,1),(2299,1166,1.00,2),(2300,1098,5.00,1),(2301,1122,1.00,1),(2302,1167,2.00,1),(2303,1167,1.00,2),(2308,1099,1.50,1),(2309,1113,1.50,1),(2310,1144,1.50,1),(2311,1168,1.00,1),(2312,1169,2.00,1),(2316,1115,2.00,1),(2317,1131,1.50,1),(2318,1170,0.50,1),(2319,1171,4.00,1),(2325,1116,1.50,1),(2326,1172,5.00,1),(2327,1173,1.00,1),(2328,1174,0.50,1),(2329,1124,1.50,1),(2330,1132,1.00,1),(2331,1147,5.00,1),(2332,1175,0.50,1),(2333,1176,8.00,1),(2334,1177,8.00,1),(2335,1151,5.00,1),(2336,1178,3.00,1),(2337,1178,1.00,2),(2338,1149,1.00,1),(2339,1152,5.00,1),(2340,1179,2.00,1),(2341,1154,6.00,1),(2342,1180,2.00,1),(2343,1155,4.50,1),(2344,1158,1.50,1),(2345,1159,1.50,1),(2346,1181,0.50,1),(2347,1181,0.50,2),(2348,1129,1.50,1),(2349,1145,1.00,1),(2350,1182,3.00,1),(2353,1136,5.50,1),(2354,1183,2.00,1),(2355,1184,0.50,1),(2356,1184,1.50,2),(2357,1185,8.00,1),(2358,1140,8.00,1),(2359,1140,1.00,2),(2360,1186,1.00,2),(2366,1191,8.00,1),(2368,1193,8.00,1),(2369,1193,13.00,2),(2370,1194,8.00,1),(2371,1194,4.00,2),(2372,1195,8.00,1),(2373,1195,4.00,2),(2375,1197,2.00,1),(2376,1198,8.00,1),(2377,1198,4.00,2),(2388,1204,4.00,1),(2389,1205,4.00,1),(2390,1192,7.50,1),(2391,1206,0.50,1),(2396,1210,4.00,1),(2397,1211,4.00,1),(2398,1212,8.00,1),(2399,1213,8.00,1),(2400,1214,5.00,1),(2401,1215,8.00,1),(2402,1215,3.00,2),(2403,1216,8.00,1),(2404,1216,4.00,2),(2405,1196,4.00,1),(2406,1217,4.00,1),(2407,1217,4.00,2),(2409,1218,7.00,1),(2410,1219,1.00,1),(2411,1219,2.00,2),(2412,1220,8.00,1),(2413,1220,4.00,2),(2414,1221,8.00,1),(2415,1221,4.00,2),(2416,1222,8.00,1),(2417,1222,4.00,2),(2418,1223,8.00,1),(2419,1223,2.00,2),(2420,1224,8.00,1),(2421,1224,7.00,2),(2422,1225,8.00,1),(2423,1225,5.00,2),(2425,1227,8.00,1),(2426,1227,3.00,2),(2427,1228,8.00,1),(2428,1228,15.50,2),(2433,1187,2.50,1),(2434,1199,2.50,1),(2435,1230,1.00,1),(2436,1231,2.00,1),(2437,1188,2.00,1),(2438,1189,3.00,1),(2439,1200,3.00,1),(2440,1232,0.00,1),(2441,1232,2.00,2),(2442,1201,4.00,1),(2443,1233,2.00,1),(2447,1190,2.00,1),(2448,1202,4.00,1),(2449,1234,0.75,1),(2450,1235,1.25,1),(2451,1203,6.50,1),(2452,1236,1.50,1),(2453,1207,2.00,1),(2454,1208,5.00,1),(2455,1237,1.00,1),(2456,1238,8.00,1),(2457,1238,1.00,2),(2458,1239,8.00,1),(2459,1240,8.00,1),(2460,1241,8.00,1),(2461,1241,2.50,2),(2462,1209,6.50,1),(2463,1242,1.50,1),(2464,1243,8.00,1),(2465,1244,8.00,1),(2466,1226,5.50,1),(2467,1245,0.50,1),(2468,1229,1.00,1),(2469,1246,7.00,1),(2470,1247,8.00,1),(2471,1248,8.00,1),(2472,1249,8.00,1),(2473,1250,8.00,1),(2474,1251,8.00,1),(2475,1252,8.00,1),(2476,1253,8.00,1),(2477,1254,8.00,1),(2478,1255,8.00,1),(2479,1256,8.00,1),(2480,1257,8.00,1),(2481,1258,8.00,1),(2482,1258,4.00,2),(2483,1259,8.00,1),(2484,1259,2.00,2),(2485,1260,8.00,1),(2486,1260,2.00,2),(2487,1261,8.00,1),(2489,1263,8.00,1),(2491,1264,2.00,1),(2492,1265,6.00,1),(2493,1265,4.00,2),(2494,1266,8.00,1),(2495,1266,4.00,2),(2496,1267,8.00,1),(2497,1267,2.00,2),(2505,1262,2.50,1),(2506,1269,3.00,1),(2507,1270,1.50,1),(2508,1271,1.00,1),(2509,1271,9.00,2),(2514,1274,8.00,1),(2515,1274,2.00,2),(2516,1275,8.00,1),(2517,1275,2.00,2),(2518,1276,8.00,1),(2519,1276,2.50,2),(2521,1277,1.00,1),(2522,1278,7.00,1),(2523,1278,1.50,2),(2524,1279,8.00,1),(2525,1279,1.00,2),(2530,1268,8.00,1),(2531,1268,1.00,2),(2532,1283,1.00,2),(2533,1272,2.00,1),(2534,1273,6.00,1),(2535,1273,4.00,2),(2536,1284,2.00,2),(2537,1285,8.00,1),(2538,1280,8.00,1),(2539,1280,2.00,2),(2540,1286,1.00,2),(2541,1287,8.00,1),(2542,1288,8.00,1),(2543,1289,8.00,1),(2544,1290,8.00,1),(2545,1290,1.50,2),(2546,1291,8.00,1),(2547,1281,2.00,1),(2548,1292,6.00,1),(2550,1293,6.00,1),(2551,1294,2.00,1),(2552,1282,2.00,1),(2553,1295,6.00,1),(2554,1296,8.00,1),(2555,1297,8.00,1),(2581,1299,8.00,1),(2582,1299,5.00,2),(2587,738,8.00,1),(2588,738,2.00,2),(2597,1307,4.00,1),(2606,1301,6.00,1),(2611,1311,9.00,3),(2628,1315,8.00,1),(2664,1308,8.00,1),(2665,1308,4.00,2),(2676,1312,1.00,1),(2677,1314,4.00,1),(2678,1313,1.00,1),(2681,1310,10.00,1),(2682,1310,1.00,2),(2687,1316,1.00,1),(2688,1317,8.00,1),(2690,1318,4.00,1),(2691,1319,4.00,1),(2692,1319,2.00,2),(2693,1320,8.00,1),(2694,1320,4.00,2),(2695,1321,8.00,1),(2696,1321,14.50,2),(2698,1322,5.00,1),(2699,1323,3.00,1),(2700,1324,8.00,1),(2708,1325,4.00,1),(2709,1326,4.00,1),(2710,1327,0.00,1),(2711,1327,8.00,2),(2712,1328,4.00,2),(2715,1329,8.00,1),(2716,1329,2.00,2),(2717,1330,4.00,2),(2721,1332,8.00,3),(2727,1331,3.00,1);
/*!40000 ALTER TABLE `timeentryhours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdepartment`
--

DROP TABLE IF EXISTS `userdepartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdepartment` (
  `UserDetailId` int(11) NOT NULL,
  `DepartmentId` int(11) NOT NULL,
  PRIMARY KEY (`UserDetailId`,`DepartmentId`),
  KEY `IX_UserDetailId` (`UserDetailId`) USING HASH,
  KEY `IX_DepartmentId` (`DepartmentId`) USING HASH,
  CONSTRAINT `FK_UserDepartment_Departments_DepartmentId` FOREIGN KEY (`DepartmentId`) REFERENCES `department` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_UserDepartment_UserDetails_UserDetailId` FOREIGN KEY (`UserDetailId`) REFERENCES `userdetail` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdepartment`
--

LOCK TABLES `userdepartment` WRITE;
/*!40000 ALTER TABLE `userdepartment` DISABLE KEYS */;
/*!40000 ALTER TABLE `userdepartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdetail`
--

DROP TABLE IF EXISTS `userdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdetail` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` longtext NOT NULL,
  `AccountingName` longtext NOT NULL,
  `DefaultJobEntries` int(11) NOT NULL,
  `IsSecondShift` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetail`
--

LOCK TABLES `userdetail` WRITE;
/*!40000 ALTER TABLE `userdetail` DISABLE KEYS */;
INSERT INTO `userdetail` VALUES (1,'bd670e5e-0697-42bc-bd7d-36f4e05dbcc2','Test McTest',1,1),(16,'485e334f-3776-4b43-a8bc-2d9e19767e5e','jwalter@peaker.com',2,0),(17,'4a44defe-fab2-4c61-a5ea-3b64b8bdf271','bwagner@peaker.com',3,0),(18,'d9579257-89ee-4804-8e4a-8ca9f39b0174','BUDDE',1,0),(19,'a7fb970d-c66e-4f07-8968-bae0eeaad8f9','mseaver@peaker.com',3,0),(20,'a75a160e-c5af-491e-b5ef-4cc7531aacbb','pranville@peaker.com',3,0),(21,'816b5bb2-8da2-40c4-8aff-f50bdc8ae9c6','dweaver@peaker.com',3,0),(22,'2da78e76-9b08-4063-83a9-bd74ab33490d','BENNETTB',1,0),(23,'9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750','COOKE',1,0),(24,'a4618a22-c3db-4feb-8ff4-ad3c49e4335b','BEZSELICH',3,0),(25,'fc276ed7-34ae-4d77-a4a5-2a620a832b64','BIRDS',3,0),(26,'577f6412-be92-4365-95cd-059235138ef6','CENTERS',3,0),(27,'44ba9c1e-59b9-4203-acca-1f71770a742f','dblack@peaker.com',1,0),(28,'4e6ba4de-a793-45ef-a30a-1bae65b8bb82','FISHER',3,0),(29,'27b66804-6c90-4af8-ba8d-4d8e1851c863','FOSTER',3,0),(30,'8ea1160d-5701-4f6f-9a8b-07295de01f86','LAMBERT',1,0),(31,'8e04283b-64fd-498c-b592-1894a5bd9be2','SMITHK',2,0),(32,'ed516c64-c243-4f86-9e20-a83d3c5063cd','ccaplin@peaker.com',3,0),(33,'b18b0397-497f-4bff-90ab-82458470a776','rbrush@peaker.com',1,0),(34,'5248aa03-fa3b-4325-9e33-3553bb71c8e3','awhite@peaker.com',3,0),(35,'3fb8e362-2c2c-4a48-a93d-84b0e0b501f1','jcarmack@peaker.com',3,0),(36,'e1eb233c-55d2-4dbc-8fe6-d5865112fe90','kgubert@peaker.com',3,0),(37,'11f22b0e-9b49-448a-be12-6b12807ee7c5','kharrington@peaker.com',3,0),(38,'64fa9e33-8f13-4c57-92c0-4a753aace0b9','lgerard@peaker.com',3,0),(39,'24f093e4-fa8a-4d00-80c4-a1df98ed227c','rronowski@peaker.com',3,0),(40,'fdc7b33a-83ac-4ca4-9d83-2a903a2680c2','SCICLUNAD',1,0);
/*!40000 ALTER TABLE `userdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userworkcode`
--

DROP TABLE IF EXISTS `userworkcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userworkcode` (
  `UserDetailId` int(11) NOT NULL,
  `WorkCodeId` int(11) NOT NULL,
  PRIMARY KEY (`UserDetailId`,`WorkCodeId`),
  KEY `IX_UserDetailId` (`UserDetailId`) USING HASH,
  KEY `IX_WorkCodeId` (`WorkCodeId`) USING HASH,
  CONSTRAINT `FK_UserWorkCode_UserDetails_UserDetailId` FOREIGN KEY (`UserDetailId`) REFERENCES `userdetail` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_UserWorkCode_WorkCodes_WorkCodeId` FOREIGN KEY (`WorkCodeId`) REFERENCES `workcode` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userworkcode`
--

LOCK TABLES `userworkcode` WRITE;
/*!40000 ALTER TABLE `userworkcode` DISABLE KEYS */;
INSERT INTO `userworkcode` VALUES (1,103),(1,104),(1,105),(1,106),(1,155),(18,107),(18,117),(18,124),(18,125),(18,126),(18,127),(18,144),(18,145),(18,146),(18,147),(18,148),(18,149),(18,159),(18,162),(18,163),(18,172),(18,182),(18,183),(18,184),(18,189),(18,196),(18,201),(18,202),(22,140),(22,141),(22,142),(22,143),(22,144),(22,145),(22,146),(22,147),(22,148),(22,149),(22,150),(22,151),(22,152),(22,153),(22,154),(22,155),(23,103),(23,104),(23,105),(32,125),(32,126),(32,127),(32,132),(32,141),(32,144),(32,156),(32,172),(32,182),(32,183),(32,189),(32,196),(32,202),(33,150),(33,154),(33,202),(40,107),(40,159),(40,172),(40,182),(40,189),(40,196),(40,202);
/*!40000 ALTER TABLE `userworkcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workcode`
--

DROP TABLE IF EXISTS `workcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workcode` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `BaseCode` longtext NOT NULL,
  `Description` longtext NOT NULL,
  `Area` longtext NOT NULL,
  `Sub` longtext NOT NULL,
  `IsJobNumberRequired` tinyint(1) NOT NULL,
  `IsEngineeringCode` tinyint(1) NOT NULL,
  `IsFieldServiceCode` tinyint(1) NOT NULL,
  `IsGovernmentCode` tinyint(1) NOT NULL,
  `IsOfficeCode` tinyint(1) NOT NULL,
  `IsShopCode` tinyint(1) NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workcode`
--

LOCK TABLES `workcode` WRITE;
/*!40000 ALTER TABLE `workcode` DISABLE KEYS */;
INSERT INTO `workcode` VALUES (103,'ADL','AIRDUCT REPAIR LEFT','ENGINE','L',1,0,0,0,0,1,1),(104,'ADR','AIRDUCT REPAIR RIGHT','ENGINE','L',1,0,0,0,0,1,1),(105,'AXB','AUX DR BLOW REBUILD','COMPS','L',1,0,0,0,0,1,1),(106,'AXT','AUX DR TURBO REBUILD','COMPS','L',1,0,0,0,0,1,1),(107,'BER','BEREAVEMENT','TIME OFF','O',0,1,1,1,1,1,1),(108,'BMA','BORING MACH MILLNG','CASE & PAN','L',1,0,0,0,0,1,1),(109,'BMM','BORING MACH MAINT','CASE & PAN','L',0,0,0,0,0,1,1),(110,'CCP','CRANKCASE PRESSURE','COMPS','L',1,0,0,0,0,1,1),(111,'COM','COMMUTER GOV','GOV','L',1,0,0,1,0,0,1),(112,'CP1','TEARDOWN/CLEAN','CASE & PAN','L',1,0,0,0,0,1,1),(113,'CP2','INSPECT/ REPAIR','CASE & PAN','L',1,0,0,0,0,1,1),(114,'CP3','ASSEMBLE','CASE & PAN','L',1,0,0,0,0,1,1),(115,'CPM','MAGNAFLUX','CASE & PAN','L',1,0,0,0,0,1,1),(116,'CPW','WELDING','CASE & PAN','L',1,0,0,0,0,1,1),(117,'CRT','COURT','TIME OFF','O',0,1,1,1,1,1,1),(118,'CUT','PRODUCTION CUT','TIME OFF','O',0,0,0,1,0,1,1),(119,'EAB','AS BUILT/INSTALL DRAWG','ECS - 11. FINAL DOCUMENTATION','L',1,1,0,0,0,0,1),(120,'EAD','ASSY-DOCUMENTATION','ECS - 11. FINAL DOCUMENTATION','L',1,1,0,0,0,0,1),(121,'ECR','CONTRACT REVIEW','ECS - 01. PROJECT PLANNING','L',1,1,0,0,0,0,1),(122,'EDM','DESIGN-MECHANICAL','ECS - 02. DESIGN','L',1,1,0,0,0,0,1),(123,'EDR','DESIGN REVIEW MTGS.','ECS - 02. DESIGN','L',1,1,0,0,0,0,1),(124,'EDS','DESIGN-SYSTEM','ECS - 02. DESIGN','L',1,1,0,0,0,0,1),(125,'EFE','FAB-ELECTRICAL INTERF','ECS - 04. IN HOUSE FABRICATION','L',1,1,0,1,0,0,1),(126,'EFM','FAB-MECHANICAL INTEF','ECS - 04. IN HOUSE FABRICATION','L',1,1,0,0,0,0,1),(127,'EFP','FAB CONTROL PANEL','ECS - 04. IN HOUSE FABRICATION','L',1,1,0,0,0,0,1),(128,'EFS','FIELD SERVICE–SYSTEMS','ECS – 13. GENERAL','L',1,1,0,0,0,0,1),(129,'EGB','EGB GOV','GOV','L',1,0,0,1,0,0,1),(130,'EIC','INSTALLATION COMPONENTS','ECS - 07. INSTALLATION','L',1,1,0,0,0,0,1),(131,'EID','INST/DEMO','ECS - 07. INSTALLATION','L',1,1,0,0,0,0,1),(132,'EIT','IN HOUSE TESTING','ECS - 05. VALIDATION','L',1,1,0,0,0,0,1),(133,'ELT','LOST TIME','ECS - 10. ON-SITE NON PRODUCTIVE TIME','L',1,1,0,0,0,1,1),(134,'EN1','TEARDOWN/CLEAN','ENGINE','L',1,0,0,0,0,1,1),(135,'EN2','REPAIR/REBUILD','ENGINE','L',1,0,0,0,0,1,1),(136,'EN3','ASSEMBLE/TEST/SHIP','ENGINE','L',1,0,0,0,0,1,1),(137,'ENM','MAGNAFLUX','ENGINE','L',1,0,0,0,0,1,1),(138,'ENW','WELDING','ENGINE','L',1,0,0,0,0,1,1),(139,'EPC','PROGRAMMING & CONFIG','ECS - 04. IN HOUSE FABRICATION','L',1,1,0,0,0,0,1),(140,'EPJ','PREPARATION JOB SITE','ECS - 06. FIELD WORK PREPARATION','L',1,1,0,1,0,0,1),(141,'EPK','PREP-START/INSTALL/CK','ECS - 08. VERIFICATION','L',1,1,0,1,0,0,1),(142,'EPM','PROJECT MANAGEMENT','ECS - 01. PROJECT PLANNING','L',1,1,0,0,0,0,1),(143,'EPR','PROCUREMENT','ECS - 03. MATERIAL','L',1,1,0,1,0,1,1),(144,'EPS','SHIPPING ','ECS - 06. FIELD WORK PREPARATION','L',1,1,0,1,0,0,1),(145,'EPT','PREP TRAVEL','ECS - 06. FIELD WORK PREPARATION','L',0,1,0,1,0,1,1),(146,'EQT','QUOTE/PROPOSAL','ECS - 01. PROJECT PLANNING','L',0,1,0,1,0,1,1),(147,'ERE','ESG REDO','ECS - 12. POST PROJECT SUPPORT','L',1,1,0,1,0,0,1),(148,'ESC','STANDBY TIME-CUSTOMER','ECS - 10. ON-SITE NON PRODUCTIVE TIME','L',1,1,0,1,0,0,1),(149,'ESS','SITE SURVEY','ECS - 01. PROJECT PLANNING','L',1,1,0,1,0,0,1),(150,'EST','START UP TESTING','ECS - 08. VERIFICATION','L',1,1,0,1,0,0,1),(151,'ETC','TRAINING-CUSTOMER','ECS - 09. TRAINING','L',1,1,0,1,0,0,1),(152,'ETP','TEST PLAN DEVELOPMENT','ECS - 05. VALIDATION','L',1,1,0,0,0,0,1),(153,'ETS','TROUBLE SHOOTING','ECS - 12. POST PROJECT SUPPORT','L',1,1,0,1,0,0,1),(154,'ETW','TRAVEL-NOT BILLABLE','ECS - 13. GENERAL','O',1,1,0,1,0,0,1),(155,'ETV','TRAVEL-BILLABLE','ECS - 13. GENERAL','L',1,1,0,1,0,0,1),(156,'EWF','WIRING-FIELD','ECS - 07. INSTALLATION','L',1,1,0,1,0,0,1),(157,'EWT','WARRANTY/TROUBLE SHT','ECS - 12. POST PROJECT SUPPORT','L',1,1,0,0,0,0,1),(158,'EXE','EXPEDITING','ECS - 03. MATERIAL','L',1,1,0,0,0,0,1),(159,'FHL','FLOATING HOLIDAY','TIME OFF','O',0,1,1,1,1,1,1),(160,'FMG','MAGNAFLUX','FIELD SERVICE','L',1,0,0,0,0,0,1),(161,'FRB','FIELD SERVICE REBUILD','FIELD SERVICE','L',1,0,1,1,0,0,1),(162,'FS1','PEAKER & OIL RIGS','FIELD SERVICE','L',1,0,1,1,0,0,1),(163,'FS2','BOAT SERVICE','FIELD SERVICE','L',1,0,1,1,0,0,1),(164,'FS3','LOCO','FIELD SERVICE','L',1,0,1,1,0,0,1),(165,'FS4','GENERATOR SET','FIELD SERVICE','L',1,0,1,1,0,0,1),(166,'FSM','FIELD SERVICE MAINT','FIELD SERVICE','L',1,0,1,0,0,0,1),(167,'FSP','FIELD SERVICE JOB PREP','FIELD SERVICE','L',1,0,1,1,0,0,1),(168,'FSS','FIELD SERVICE SALES','FIELD SERVICE','O',0,0,1,0,0,0,1),(169,'FSW','WELDING','FIELD SERVICE','L',1,0,1,0,0,0,1),(170,'GDR','GOV DR REBUILD','COMPS','L',1,0,0,0,0,1,1),(171,'GOV','GOVERNOR','GOV','L',1,1,0,1,0,0,1),(172,'HOL','HOLIDAY','TIME OFF','O',0,1,1,1,1,1,1),(173,'HON','HONE LINERS','COMPS','L',1,0,0,0,0,1,1),(174,'INV','INVENTORY PROJECT','OVERHEAD','O',1,1,1,1,1,1,1),(175,'LO1','LOCO ENGINE REMOVAL','ENGINE','L',1,0,0,0,0,1,1),(176,'LO2','LOCO ENGINE INSTALL','ENGINE','L',1,0,0,0,0,1,1),(177,'LO3','LOCO TESTING','ENGINE','L',1,0,0,0,0,1,1),(178,'LOP','LUBE OIL PUMP','COMPS','L',1,0,0,0,0,1,1),(179,'LOS','LUBE OIL SCAVENGING','COMPS','L',1,0,0,0,0,1,1),(180,'MAD','MAGNAFLUX','COMPS','L',1,0,0,0,0,1,1),(181,'MAI','MAINTENANCE','OVERHEAD','O',0,1,1,1,0,1,1),(182,'MIS','MISC','OVERHEAD','O',0,1,1,1,1,1,1),(183,'MTG','MEETING','OVERHEAD','O',0,1,1,1,1,1,1),(184,'OFF','OFF W/O PAY','TIME OFF','O',0,1,1,1,1,1,1),(185,'P2M','MAGNAFLUX','COMPS','L',1,0,0,0,0,1,1),(186,'PA1','TEARDOWN','COMPS','L',0,0,0,0,0,1,1),(187,'PA2','INSPECT & REPAIR','COMPS','L',1,0,0,0,0,1,1),(188,'PA3','ASSEMBLE','COMPS','L',1,0,0,0,0,1,1),(189,'PER','OFF WITH PAY','TIME OFF','O',0,1,1,1,1,1,1),(190,'PGA','PNUMATIC GOV','GOV','L',1,1,0,1,0,0,1),(191,'PGE','PGE GOV','GOV','L',1,0,0,1,0,0,1),(192,'PGV','VAN SERVO GOV','GOV','L',1,0,0,1,0,0,1),(193,'REB','MISC REBUILD','OTHER PRODUCTION','O',1,0,1,1,0,1,1),(194,'REW','REWORK','OTHER PRODUCTION','O',1,1,1,1,0,1,1),(195,'ROC','ROCKER ARMS','ENGINE','L',1,0,0,0,0,1,1),(196,'SIC','SICK WITH PAY','TIME OFF','O',0,1,1,1,1,1,1),(197,'SPM','SOAKBACK PUMP & MOTOR','COMPS','L',1,0,0,0,0,1,1),(198,'SRV','SHIPPING & RECEIVING','OVERHEAD','O',1,1,0,1,0,1,1),(199,'SSS','SALES & SERVICE SUPPT','ECS - 13. GENERAL','L',0,1,0,1,0,0,1),(200,'TCC','TEST CELL','OVERHEAD','O',1,1,0,0,0,1,1),(201,'TRG','TRAINING','OVERHEAD','O',0,1,1,0,1,1,1),(202,'VAC','VACATION','TIME OFF','O',0,1,1,1,1,1,1),(203,'WAD','WELDING','OTHER PRODUCTION','L',1,0,0,0,0,1,1),(204,'WKC','WORKERS COMP','TIME OFF','L',0,1,1,1,1,1,1),(205,'WPS','WATER PUMPS','COMPS','L',1,0,0,0,0,1,1);
/*!40000 ALTER TABLE `workcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'peakertimemanagement'
--
/*!50003 DROP PROCEDURE IF EXISTS `deletehoursfortimeentry` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `deletehoursfortimeentry`(
	IN p_timeEntryId int
)
BEGIN
	DELETE FROM timeentryhours
    WHERE TimeEntryId = p_timeEntryId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deletetimeentry` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `deletetimeentry`(IN p_entryId int)
BEGIN
	DELETE FROM timeentryhours
    WHERE
		TimeEntryId = p_entryId;

	DELETE FROM timeentry 
    WHERE 
		Id = p_entryId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteuserworkcode` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `deleteuserworkcode`(
	IN p_userDetailId int,
    IN p_workCodeId int
)
BEGIN
	DELETE FROM `peakertimemanagement`.`userworkcode`
	WHERE UserDetailId = userDetailId
    AND WorkCodeId = workCodeId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getallworkcodes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getallworkcodes`()
BEGIN
SELECT `workcode`.`Id`,
    `workcode`.`BaseCode`,
    `workcode`.`Description`,
    `workcode`.`Area`,
    `workcode`.`Sub`,
    `workcode`.`IsJobNumberRequired`,
    `workcode`.`IsEngineeringCode`,
    `workcode`.`IsFieldServiceCode`,
    `workcode`.`IsGovernmentCode`,
    `workcode`.`IsOfficeCode`,
    `workcode`.`IsShopCode`,
    `workcode`.`IsActive`
FROM `peakertimemanagement`.`workcode`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getauserdetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getauserdetail`(
	IN p_userIdParam longtext
)
BEGIN
	SELECT `userdetail`.`Id`,
    `userdetail`.`UserId`,
    `userdetail`.`AccountingName`,
    `userdetail`.`DefaultJobEntries`,
    `userdetail`.`IsSecondShift`
FROM `peakertimemanagement`.`userdetail`
WHERE `userdetail`.`UserId` = p_userIdParam;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `gethoursfordate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `gethoursfordate`(
	IN p_entryDate date,
    IN p_userDetailId int,
    IN p_timeEntryIdToSkip int
)
BEGIN
	SELECT TEH.Id, TEH.TimeEntryId, Duration, HoursType
    FROM timeentryhours TEH
    INNER JOIN timeentry TE 
		ON TEH.TimeEntryId = TE.Id
	WHERE TE.UserDetailId = p_userDetailId
    AND TE.EntryDate = p_entryDate
    AND TE.id <> p_timeEntryIdToSkip;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `gethoursforentry` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `gethoursforentry`(
	IN p_Id int
)
BEGIN
	SELECT `timeentryhours`.`Id`,
    `timeentryhours`.`TimeEntryId`,
    `timeentryhours`.`Duration`,
    `timeentryhours`.`HoursType`
FROM `peakertimemanagement`.`timeentryhours`
	WHERE TimeEntryId = p_Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getissecondshift` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getissecondshift`(
	IN p_userDetailId int
)
BEGIN
	SELECT IsSecondShift
    FROM UserDetail
    WHERE Id = p_userDetailId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPayrollExportEntries` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getPayrollExportEntries`()
BEGIN
	SELECT U.AccountingName, T.Id AS TimeEntryId, T.UserDetailId, T.EntryDate, W.BaseCode, W.Description, W.sub, Sum(H.Duration) AS Hours
	FROM userdetail U
	INNER JOIN timeentry T 
		ON U.Id = T.UserDetailId
	INNER JOIN workcode W
		ON T.WorkCodeId = W.Id
	INNER JOIN timeentryhours H ON t.Id = H.TimeEntryId
	WHERE T.ExportedToPayroll = 0
	GROUP BY U.AccountingName,TimeEntryId, T.UserDetailId, T.EntryDate, W.BaseCode, W.Description, W.sub;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getrestrictedjobnumbers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getrestrictedjobnumbers`()
BEGIN
	SELECT Id,Jobnumber
    FROM RestrictedJobnumbers;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `gettargetworkcode` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `gettargetworkcode`(
	IN p_workCodeId int
)
BEGIN
	SELECT `workcode`.`Id`,
    `workcode`.`BaseCode`,
    `workcode`.`Description`,
    `workcode`.`Area`,
    `workcode`.`Sub`,
    `workcode`.`IsJobNumberRequired`,
    `workcode`.`IsEngineeringCode`,
    `workcode`.`IsFieldServiceCode`,
    `workcode`.`IsGovernmentCode`,
    `workcode`.`IsOfficeCode`,
    `workcode`.`IsShopCode`,
    `workcode`.`IsActive`
FROM `peakertimemanagement`.`workcode`
WHERE Id = p_workCodeId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getuserdetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getuserdetail`(
	IN p_userIdParam longtext
)
BEGIN
	SELECT `userdetail`.`Id`,
    `userdetail`.`UserId`,
    `userdetail`.`AccountingName`,
    `userdetail`.`DefaultJobEntries`,
    `userdetail`.`IsSecondShift`
FROM `peakertimemanagement`.`userdetail`
WHERE `userdetail`.`UserId` = p_userIdParam;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getuserdetailidfromusername` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getuserdetailidfromusername`(
	IN p_usernamne varchar(256)
)
BEGIN
	SELECT UD.Id 
	FROM UserDetail UD 
	INNER JOIN aspnetusers U 
		ON UD.UserId = U.Id
	WHERE U.UserName = p_usernamne;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getuserworkcodelist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getuserworkcodelist`(
	IN p_userDetailId int
)
BEGIN
	SELECT 
		WorkCodeId
    FROM peakertimemanagement.userworkcode
    WHERE UserDetailId = p_userDetailId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getWorkCode` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getWorkCode`(
	IN p_workCodeId int
    )
BEGIN
	SELECT `workcode`.`Id`,
    `workcode`.`BaseCode`,
    `workcode`.`Description`,
    `workcode`.`Area`,
    `workcode`.`Sub`,
    `workcode`.`IsJobNumberRequired`,
    `workcode`.`IsEngineeringCode`,
    `workcode`.`IsFieldServiceCode`,
    `workcode`.`IsGovernmentCode`,
    `workcode`.`IsOfficeCode`,
    `workcode`.`IsShopCode`,
    `workcode`.`IsActive`
	FROM `peakertimemanagement`.`workcode`
	WHERE Id = p_workCodeId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getworkcodeidfrombasecode` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getworkcodeidfrombasecode`(
	IN p_basecode longtext
)
BEGIN
	SELECT Id 
	FROM workcode 
	WHERE BaseCode = p_basecode;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertpeakerevent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `insertpeakerevent`(
	IN p_Id int,
    IN p_ObjectId int,
    IN p_EventType int,
    IN p_TimeStamp datetime,
    IN p_Data longtext,
    IN p_UserId varchar(128)
)
BEGIN
	INSERT INTO `peakertimemanagement`.`peakerevents`
	(`Id`,
	`ObjectId`,
	`EventType`,
	`TimeStamp`,
	`Data`,
	`UserId`)
	VALUES
	(p_Id,
	p_ObjectId,
	p_EventType,
	p_TimeStamp,
	p_Data,
	p_UserId);    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserttimeentry` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `inserttimeentry`(
	IN p_userDetailId int,
    IN p_entryDate datetime,
    IN p_workCodeId int,
    IN p_jobnumber longtext,
    IN p_comments longtext,
    IN p_exportedToNavision tinyint,
    IN p_exportedToPayroll tinyint
)
BEGIN
	INSERT INTO `peakertimemanagement`.`timeentry`
	(
		`UserDetailId`,
		`EntryDate`,
		`JobNumber`,
		`Comments`,
		ExportedToNavision,
        ExportedToPayroll,
        WorkCodeId
	)
	VALUES
	(
		p_userDetailId,
		p_entryDate,
		p_jobnumber,
		p_comments,
        p_exportedToNavision,
        p_exportedToPayroll,
        p_workCodeId
	);
        
    SELECT LAST_INSERT_ID();
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserttimeentryhours` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `inserttimeentryhours`(
	IN p_timeEntryId int,
    IN p_hours decimal(4,2),
    IN p_hoursType int
)
BEGIN
	INSERT INTO `peakertimemanagement`.`timeentryhours`
	(`TimeEntryId`,
	`Duration`,
	`HoursType`)
	VALUES
	(p_timeEntryId,
	p_hours,
	p_hoursType);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertuserdetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `insertuserdetail`(
	IN p_userId longtext,
    IN p_accountingName longtext,
    IN p_defaultJobEntries int
)
BEGIN

	INSERT INTO `peakertimemanagement`.`userdetail`
	(UserId,
	AccountingName,
	DefaultJobEntries)
	VALUES
	(p_userId,
	p_accountingName,
	p_defaultJobEntries);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertuserworkcode` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `insertuserworkcode`(
	IN p_userDetailId int,
    IN p_workCodeId int
)
BEGIN
	INSERT INTO `peakertimemanagement`.`userworkcode`
	(`UserDetailId`,
	`WorkCodeId`)
	VALUES
	(p_userDetailId,
	p_workCodeId);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertworkcode` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `insertworkcode`(
	IN baseCode longtext,
    IN description longtext,
    IN area longtext,
    IN sub longtext,
    IN isJobNumberRequired tinyint(1),
    IN isEngineeringCode tinyint(1),
    IN isFieldServiceCode tinyint(1),
    IN isGovernmentCode tinyint(1),
    IN isOfficeCode tinyint(1),
    IN isShopCode tinyint(1)
)
BEGIN
	INSERT INTO `peakertimemanagement`.`workcode`
	(`BaseCode`,
	`Description`,
	`Area`,
	`Sub`,
	`IsJobNumberRequired`,
	`IsEngineeringCode`,
	`IsFieldServiceCode`,
	`IsGovernmentCode`,
	`IsOfficeCode`,
	`IsShopCode`,
	`IsActive`)
	VALUES
	(baseCode,
	description,
	area,
	sub,
	isJobNumberRequired,
	isEngineeringCode,
	isFieldServiceCode,
	isGovernmentCode,
	isOfficeCode,
	isShopCode,
	1);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setexportedtonavision` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `setexportedtonavision`(
	IN p_timeEntryId int
)
BEGIN
	UPDATE timeentry 
    SET ExportedToNavision = 1
    WHERE Id = p_timeEntryId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setexportedtopayroll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `setexportedtopayroll`(
	IN p_TimeEntryId int
)
BEGIN
	UPDATE timeentry 
    SET ExportedToPayroll = 1
    WHERE Id = p_timeEntryId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatetimeentry` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `updatetimeentry`(
	IN p_id int,
    IN p_userDetailId int,
    IN p_entryDate date,
    in p_jobNumber longtext,
    IN p_comments longtext,
    IN p_exportedToNavision tinyint(1),
    IN p_exportedToPayroll tinyint(1),
    IN p_workCodeId int
)
BEGIN
	UPDATE timeentry
	SET
		EntryDate = p_entryDate,
		JobNumber = p_jobNumber,
		Comments = p_comments,
		ExportedToNavision = p_exportedToNavision,
		ExportedToPayroll = p_exportedToPayroll,
        WorkCodeId = p_workCodeId
	WHERE Id = p_id
		AND UserDetailId = p_userDetailId;
	
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateTimeEntryClearNavisionExport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `UpdateTimeEntryClearNavisionExport`()
BEGIN
	UPDATE timeentry
    SET ExportedToNavision = 0
    WHERE Id <> -1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateTimeEntryClearPayrollExport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `UpdateTimeEntryClearPayrollExport`()
BEGIN
	UPDATE timeentry
    SET ExportedToPayroll = 0
    WHERE Id <> -1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateuserdetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `updateuserdetail`(
	IN p_id int,
    IN p_userId longtext,
	IN p_accountingName longtext,
    IN p_defaultJobEntries int,
    IN p_isSecondShift tinyint
)
BEGIN
	UPDATE `peakertimemanagement`.`userdetail`
	SET
	`AccountingName` = p_accountingName,
	`DefaultJobEntries` = p_defaultJobEntries,
    `IsSecondShift` = p_isSecondShift
	WHERE `Id` = p_id
    AND UserId = p_userId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateworkcode` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `updateworkcode`(
	IN p_id int,
	IN p_baseCode longtext,
    IN p_description longtext,
    IN p_area longtext,
    IN p_sub longtext,
    IN p_isJobNumberRequired tinyint(1),
    IN p_isEngineeringCode tinyint(1),
    IN p_isFieldServiceCode tinyint(1),
    IN p_isGovernmentCode tinyint(1),
    IN p_isOfficeCode tinyint(1),
    IN p_isShopCode tinyint(1),
    IN p_isActive tinyint(1)
)
BEGIN
	UPDATE `peakertimemanagement`.`workcode`
	SET
	`BaseCode` = p_baseCode,
	`Description` = p_description,
	`Area` = p_area,
	`Sub` = p_sub,
	`IsJobNumberRequired` = p_isJobNumberRequired,
	`IsEngineeringCode` = p_isEngineeringCode,
	`IsFieldServiceCode` = p_isFieldServiceCode,
	`IsGovernmentCode` = p_isGovernmentCode,
	`IsOfficeCode` = p_isOfficeCode,
	`IsShopCode` = p_isShopCode,
	`IsActive` = p_isActive
	WHERE `Id` = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-12 17:40:55
