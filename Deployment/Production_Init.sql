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
INSERT INTO `__migrationhistory` VALUES ('201611262318041_InitialCreate','Peaker.TimeManagment.Models.ApplicationDbContext','�\0\0\0\0\0\0\�\\[o\��~/\�� \��\�Z�t�\��\�E\�Iڠ�ƙE\��D;\�H�V��	���>�\'�/�P�n�\�b+��X`�\�w?��������w�\�KX\�8N|Jf�\�\�ض0q�\���\�N\�\��O�O?��\�+/|�~)\���zВ$3���\�\�q�	�(���ӄ�\�ĥ��<\���\�99q0@؀eY\�/)a~���sN��#��\��z8H\�w(Yd�\�\nq!\�\���\�x�\�oA\�6ɛ\�\�E\�#Pi���m!B(C>��\��)Y/\"���\�\�C�\n,:r^U\�ۧ\�S\�\'�jX@�i\�h8�\�Lɑ�odj�4\"��\n\�\�^y�3S\�\�g��\�\0 <�1�<�oKIt�٤h8\�!�c���\�\�\'u\�#�w���T��c�ߑ5O�\�xFp\�bY\�2�\�\�\�G��\�\�\�ru�\�\�G\��}�3>�P\�)�\�5>����F8\���\��m9\�v�ܰlVk�[��ön\�\�gL\�\�	f\�\�\'ۺ�_�W|\��J|�NЈ\�)��K�\0-\\�;�2��[��~�8�\�;�쯳��\�\�ĉa^}�AV�<�Q>�\Z\��MT��i\�7���~[\�4vyg��\�#�ט5��:y{Q�C�O\����\�5U魭\�;�\�L(D\�z6���\�ތ��\"��Z\�\"m�kٵ&�BS�\"\�I_2\�\�\�ym�\n���8��\�ʏC\\��g\nTDd�\�(I`m�����\�\�\�T_`7����\�\�ͥ=<Q�\�\�p\�g\�\�d�64��\�k\�2\Z_\�jk�\�\��NSvE�K\��W\���\'�۽FQ\�\�uq�\\��7�\��7����\�+վ��y��P\��Hk귢j\��\�k(^���\�SiS�3]����EU��y�NUE���r�~���fE�\n�z\��F���\Z\��\�`\��\�n�6�53.`�\�\�ǰ�y�1�j���p�\�\�B\�|o\�$���tlQ͆l6d��?25\���\�q��Ǒ����\�\�O[\�sN\�l\�ӡ\�\�]\�\�\Z`�.IB]?��`�e4�\�\��k佑c#\�1 �Ϸ<�}�eRݓK`��7\�Q\�\"O5#t\��X��j�b$M\���\��\��7B���L�	S��O\\?BA����=�0\��R�\\r�#L��NK���pJ9ҠtYh\�\�\�ND�\�j\Z�.�\Zw%R�Nv�\�^\n�\�M�\�n���\�$}0���APqV\�K\0�\�rh�NL�\n�j\'mZlm�\�\�4?��\��zh�l�w����k\�l\�\������ІA���\\�B�\�4�3\�S�\�\�\�\�\�\�̚!�\�\�\���N;�L�6��h�\�bPR&\�\0\��X^�v\0[\�\�Za\�\�/�\�8�b\�/Hk\�ר29{�>ʞ�lPH\�\��P\�\�B^��\�aS\\V5L_x�7\\\���ux�#�\�J5���sȆ�d[YIr�V*:3��G���q\n�[�����4يHG�۔eS\'O���!\�jz��\�\'\�Z\���b-�����\�iHa�ḉ&�Զ�\�h�\�X*Ѡ\��\'\�1�D<\�3�B��vo5,��\����b���\�\"|\�r�\�\�tU�D�]\�y��\�XC}s��ġ\0Ś��iH̞��u~�Wo�Q����\�I)fS�\�\��\Z!uv�=Z�G����!Lv/�Ѻ\�M>��Y\�QLa����ɵ\�l\�d�q��u\"�\�L9+u\0�i F-\�A���Gmf�\�1�%����:�T4@\�z�IC\�z�Fx�\�k�����\�\�\�\��Ț�:��xl�\�rYTMJXS\��JH�W\�\�ˌ��\�7��\0�\�nf�x��q�Ͱv\�_�}�%n�0�� ie<nO�<\0��浨qU\�\\�Z\��͘��\�\�r\�v�o\�F\�7��r\Z���\�\�S�t����X�c\�h�W��3��u�k0\�\��\�\�y\�c��5�m�\n\',O��?L�\"=\�9�\'5N�x�\�$kzW\���o�g�O(V�)�xvR�*q\�\�ᗙ���\�y�\�e����\�+�M�\�1N��o59t�4���ׁ>�\�o՛~˛Y�1L�s\�X�\�&#\�|J1H��\�\�l��\��N�\�[-�4!6���4\�]B@A�\��j�Z\�g��i^�\05�\�L/63>�\�\'˞<\�\����\�C;�L���Ɨ>a[�#\��-��\�h\�G�X�2;w\�ao���\�\�II\�\�tҫ\�\����H�ހ\�,Oy�mQ��<\Z�>	�\��Ǉ�n\\%�\�7\�x��\�-WE��|\�Ȁ\�d�\�?kx\�\\3Er<�rXn���M\�y\�?x\�d3\�w�l��|�k�\�?�̴\�[\�޳v\�$Í�.ܕ��G\�ᘿ�@�ܣ\�S\�\��L\�*�VU\�B\��g�`e\�(r�\Z\�b��Ul���u\�\�\Z�6\�d���U��\�.ې��|bm6�.ǻckK�zO�Í�t��w���\�\�\�)]x�4f�\�r��d�b�1�΀l`���\�\�?\��w\��+�5\�6vͲ\�\rY\�b��4*�H�[̐[\�E\��r�\�r�\Z<\��+�%�n\�}ʢ�A�q�\Z/\��\�\�R��:O\��\�6���\���\�\�\��R\�kML\�\0��\�\�c\�x<w�Z\"\�Q\�H��t�q\0�ܓzƛ\����\�\�}�\"�&�\��h�}z\��u�\�D`T\�\�\'p\�_~�?<\����T\0\0','6.1.3-40302'),('201611281822497_InitializeTables','Peaker.TimeManagment.Migrations.Configuration','�\0\0\0\0\0\0\�]o\����@���\�b/\�\��\�ua\�!\�l�io7�8{\�ۂ��p�\��\�4A\�_և������\�7)R�)1��\�\�pf8�\�\����\����ػ�Y�\�\�}r\�{0	\�0J\�W\�}���\���\��C�y�~i\��\��P\�$_�ߊb�n6˃op��Mdi�\�\'A���0��9=��\��\�D |\��\�׻��6���~.\�$�\�b\��i\����JV%T\�\��|��?C�+\�NnP�� \�\rL��sP\0\�;�#�Z��\��@��(�\��\�pUdi�^m\�\�<n!�w\�\�\�xG�\��\��\r\�ь6l@��H7�\0_��Y4�wb�OX���1�xĽ.��\�\�d\��\��\�\�-\�W\�p�P\��\n敧���(\�+��\�[\�\�b��EwEb\�nwG�\�\�\�M�+L\�.�Y\������>}\�\�-̊\�kxW�\�2��\�n&6$͘6UO/�\�\�\�����\�\�`��*\������AQ�,�0`\�\\	��\�\�Am+yVH�J�A\�{�\�\�0Y\�>�\��.�6_jB�$\Z��Q����P3�� �K\��\0�?��h]rL���\� �s߻�qY\'�m��zB˿R�BU/�ts�\��\�\���!\�\��\�Xm�\��@�w>�#\�8^(\�^ㅂ9���Ŭ��7T΂ \�sS�ƿ��\�$򿦷H	�\�m,�ܠ\Zr�5�e�5\�Ԗ^<0�6\��_\��I�U�K�BYIe)Z,[�\��i��E�WI,)\��*��UVr%�\�i�+�\nZ����TRnR\0ZI%~k�K\�\�\��(G\�ka|+	�cm1g��9\��(�\0\�،i�nj��gD�i�D\� z����������2��D\Z\�B�����2��\�lJ��X���:\�61\�CM0z*{\'[ؘ\�^��r��\�Y9�i�x�Apx��\�\�\��^\�dz�������Q�@~H\�Q!\��=\�^D0W0��8ğ\�{4�p\�\�\�\�`����\�N��\�}�w|\r;�w\�\�ؓi���\'P�\��E�\�t\�\�\�\�e�5\�\�0�6\0��3�_�\���\���a�#�`�r;��܆��D\�\�\�v\ZK\�*�\�X\"P�c\�`�H\��_@�\�&�p\�<�\���l4�,\�\� *i�\�\����NHB\�n��b??m\"9 =��H�I�S[\��\��\�gϩ��\�3�\�ff\�a��\�1%�1m�}\�,��t�\�C==9yݹ\�*��#\�h�)��ob\�}\�\�ނ��}\�0^%\�0��΂\��u	�\0���F�%\�� [\n3l\�@�D\�Y\�()d\�%A�q{���V�F��%h\0�\�v\�\�`\����M\�\\�:�>\�v���l$��\�ml\�\�+��\�F�|l\��.\��r\�֩�y��*ø���h>��>��p\0}4\�g\"��܈�p�\�q�i�=�v�\�\�E��X\�8�\n-6jFT�+�>���u��-�\�z�\�\n��o\�8+M�!< n+IĲ�w\�-b\��8̆��ʦH\�X��a|�8\�A����F5T�\�C�\�\�\�q\0[/qH�qK&�zQ\�@\��\"\�a�L��d\��<6K�tNe\r\�ЬrH�\��f�r�I\�C\�\Z\�z\���7��>v\���Y2i�\�	�w\�{i�\������ެ��\�\�!\���LgXCi\��\�+\�o\�\�!F���V\���~6W�Pz\Z�fw��%�l>��\�\���&z}�l�Q�f�\�\�/ު\ne_~�r\�\�T0fA���&\�LE��5J�p��(\���}�&\�2\�H\�x/L3�7�dGK]\�4m���ç�\�g�3ً�]dU��\�P9\�ʍ=|�\0\� Sl�/\�x�I�\�}k\�\��\�\�ã1,0�U�4�	\\�V2� !�4�k��\\����\�/4����\��C��8���$C�ת�J\�V��2������\\�Y\��L�f�����X#��9Zs����@k\���,VU��\rA��j\�\"L����˧&\���g��J��\�]4U�!Es�E\�(\�ʷ\�O�\�jY[�6֔\�\�\�j\�b�a,�\�g���L��3w5\�.X\�7{(\�%\n�X\�2�JW#�\�U*\�\�hփ̌��\�>36* ��\�s?�)j��D,\�;HZ\"\�R�iOǌ\�G2\�\�)}\0n��\��>\0�k5�\�\�n7Z�\0����\0\��\�\�O\���;@\�T]~�����`�\�	&X���~��D\����\�\�yF\r<��Awx��T\�S-\�i\�K�\�w��`FO\�LI?T���\�Z`��\�s\�{���|��\�\'\r�\�t�MJ\�\�Z	\�I�f|\�&\�\"2\'0\�����\�q\�Ob\�\�͑�,8�?ay�v\�F�\�_Ř�c�x�$�\�}	�o����y١N��k�\�nh�\�ByE�P~�o��\�ʱZU��t���.���o���\�r\�\��X�X\���\�CeK\\ \��<<�}D�O�\�8�\��A\�a\�9\�Q\�SLVfF\�	-?�\\�n��X�\�U��h%�$!�j�E)-	�\\�/RњI(\�\n}��NB\��ED-���M�@���,֏V��\�J��\�)Zɽmo3w<��\��콃a�tz\�\�}�oh��5>w��c�ᬇG��p\�|�Ձ�21GR�eD\�1��� �wa\�Wd�|�!Ε��8�\�Ew��CP)�؁�㴝S*ܑx�G�!\"\�\�DME~��噚�\�5���\��\���\�T\�lPʈ��lD��Qj�t\�E\��\���ӝ�\�\�Ӟ)���\��)�-\��MoTN/zz\�O�u�f�L\rn7#���\�0�[��n�V�U�d�Źm�b2:S�M�cE!�\�F�x#\�Y\����Ժ�u����q$v\\$\�#=E��{\�H�3=\�\�{���\�q\�K��Ң���A�J�\�00-�fAw\�lrR\"���)�AG�\Z8C�)O�X�x\����\�I�s�?����qV\��>\nq���\�\�J\��qTzM\r�c\�̋*���Ǔ?	\��\�	�Y��\�mA\�;~�\��A8\�lm\�\��Ճ8M\�U���\�Y\��(\��`~s��\'\�\�O�u�}�\��0�\�%ŝ�$\�\�ۑ��\�\�$��_e\�w\�\�?��m_yW2�\��S\�߽\�~\���|��I�\��%(�Vuy\��+��\�4��{E\\/7A\�\�t2�\�wc\�y����~g\'���\�@�s:\�0<�\�I���\�t��{��#8��7�ɏ\�t$�xc�\�#2\�c8+i�5�L\�~S���K�\�\�]��[5\'�ՇQ8;\�7J��\�\���k٬���\�`\��\�F\�ց�r\�\�z9KU�\'4��p#��@��/\�(���L�\"㿊6/��\"\�z��O\ng\�\�O�\�6�L]\�ށ�h;Gbd���^�/@\�e�T:\�v\�w\�\�|�.}��\�CW,&\�{�\'�:��\�\�\�\na\�\�##3�Q@\\s�ܞ\r��E�\�\���\�t\�W\��`cq��\�\�r\�\��@N\�y�E��S\r\�G\�&�I��\�Qj�u�\�J����\��\��i�X{$Фt�e\�\�\�R?s=;�s\�Q\�\�\�W�\�	qW�M��w�^gp\r\n�\��~\�\�eB~�bFA�|�̗\�f�\�\�6	r\��_�\r@D�\�?�\�����J\���U\�3>\Z�!P?�M\'�lN]q\���tES��?V��\�Q\��\�1�⫰ij\�\�iȣ�\�n��b��\�Bl\�E�YkV[�����\"φ�\�\�1/K�/\��Hپ\'\�����v)\�is>\0��!\�њ }��5u��r�\� ����\�Q/���\�\��b�\�	q\�uA����:�غ�2�غuk4�$c�s� S\��]԰u��\�\�L�\�{�\�`�>S_Ê	R&�	qAw��\��\�.!(}z�:Bh���A�r\��*\��l��$[\�B���;0�0�\�؏�\�E�w!\�	�	\�\�%��6\�t5\�1�\�\�%�\�{�O\�M\�.I�%\�#b#�$Dl�\n-oGĄ=Jx�2\Z��\�644�D\�B�TH�B-(�@`	S�B\�\�\�nC\�l�Jh�2\Z&�����*���\�	Z\�\Z�Ar�J:ܴ���OSdu�}�N\"\�\"Y�&�����,��]}Q\�1�^\�\�ԝ=u\��={ԉ�4w��n\�;3\n��Y\�d~�n�x\�`=�l�.{�(s�)��w7U78}m�\�чlOsA�i\�|P�\�5\�W\�:�ؿ�����n�\�\�mi\"�Tj\��Hn��k\�\r��@i)T\��a��\�oKI8�\�\�\'K����l>�<���)\�&�ϮqҦ�>?�y�� p�\��\�R\�2�K�\�`����p��#\�\"Z��\�@P�\�\0\�y��}�\\\�-�h���\�ծ\�\�\n\�e���9k�ËM�\�3�\��Uy��\�Df��\�W	^��\�\��z\r,\�:a�e���	�Oib	�f	���h!��\�W\�\n\�\�.�!E�-{�\�&äH� x�\�\�#�FK׼�Aۣ�H�\�\�\���o�_\�\�\0\0','6.1.3-40302'),('201612041833167_Precision','Peaker.TimeManagment.Migrations.Configuration','�\0\0\0\0\0\0\�]o\����@���\�b/Jv[�\r\�;d�\�\�\�%Y\�\�k\��D{��%�$�	���>�\'�/�\��)R�+1��\�\�pf8�!�\����\�\�O\�\�y�i&�\�=;9u�Iƫ��͗\��\��\��\��f�)X?9?\��>\�z�e�M\�oy�9��\��\� ;Y�~�d\�2?����\�{z�g\�\�̃��`9\�\�n\�\�\Z?\�\�Y�p�oAt�0ʪ\��dQ@un�\Zf\�é��_`zr��_��\�0\�O.A\\\�\"\n\"h��\��8Nr�#rϿdp��I�Zl\�\�?o ��Q�n��\��=:}�{䑆5(�\�\�\�\�ه�E߼�݆������g\�낑S�n@�cι�\�|����ӥ�\n��0\�Y\�w�\� �\�\��\�6ʷ)�\�p�� B\��Q\��\r>\�\'��x\Zo���Q�ʘ\�\�\�4\��4��˪G��u<��\�7l�Qmʞ\�\��\�{׹A\��Cՠ��ȓ�c���A�\�4\�0`�\\;�\�f~\ZnJy�H�J�A\�:\�\�\�\'��oS�\�:W\�\�/!_\��I\�(O�PB��G��j�\�7\�1\\\�h@c0��9�\�u\�`T\�ɾ��r�����D�Pի4Y\�%�����+���>\�V[$\�\�\�\��xddh\��\�k�0\��Ң��U\���ʅ\�\'xn�W����_\�%@\"�k���0\ra\�\�r\��\��!\�_=�Z\�_=LM\�\��a��޺��+=8	��r�VH+\�,E�e��n�\�4z�\�6\�\nbe\��\�J�\��=I�SA�P�*Д\��T��\�\��6b\�e}(G\�k`|K	�cm1g\r��9n\r�Q�̱\�,YWfoǈ>=m���F�1AC\�=\�{\�\�i\reYEf\"q�0��b[�NnepI	�\Z؄,I�`eu:\�\�\�5��y(1\��lamR{�\�\Z\�\�N\�tH\�E\n���.��G:Ϛ\�\���\r\�FY\0�)^�1����tx\�(X��1�\�0L\�H�\�}x�\�\�`�-�%�N��X}0w|5+�w\�\�\�7\�\\/k\�@9��\�k�\�\�~\�6�龄~�\�����\�5�߻\�\��=|�%W�(\�m�w�tN`��D=�R\�8��C6<�D\�Y\�n��W|\�R��\�_dY\��m\�\�\�\�\�Oq\�����\�ggM$�\�\�i6\"i\��N`j+�f6%�\�m*-��G�Z\�.V���	q�i3\��\"�������zzrrֹ\�2��\"Qk�	��kb\�}mho�\�3�7���%�`��\�j��\��8�\�h	\�/Ȗ\�3\�\�8F\�9�s\����n@\�\����\�Ƥ5H�4\0`�\rn�lL�3\��HF��\�\\�:�>\�v���l$ʖ\�Ml\�\�+��{\�F�|Lг.\��t\�V��~�&*C��\���\�\Z�>\���}\�\�g$�(]�0p�$�q�i�%�v�\�\�E+�X\�8�\n#\�\�\n�O�$%D]�e�[\��C]�\\��Mg��)0�Ĭ$	�hV�\0b6�@Ԝ\��Z��ٴ\0�91��\��\��Pv�C���\�lFUY���`\��\�\'n�$5D�/�fa�$~wOd�.\�1	y(\��\�0C\�P�(�\�\�\�j�ȇ\�\�8\n����\rGt���{\�m�t\Z�r�\�\��^\�\"�|̆b\�\�kD\��{�\�>\"\�\�Pjx��\nw\��n�\�\�*�s��\�=��Ʀ^]k���l\��9\�Շ��H^�\\�\�&�WT2{�\�Y��\��\���\�\��\�g�\��\�S��`�\�2[\�*L��j?\0�:\�B5\�SL�5.\�\�EW{u�?\��I\��i\�L�\�+@Wi٢\�0�ζbc/\0H%\�\��$ڮcuX�n\�l\�\�`�sx$�F���&\�!��I%A��b�]m\�\"\"�c/�\�c4����S�C���-�$E�ײ�L\�F��R�1����93ۦ�$f0�\'��#����>�q@���z,�eU�l�\�\�B(\�\�S\��\�\���Ivⱌ�U)Wv���l?�hn\�p\�@�|\�>�ˬ���h�`u9���\�.\��\�\"�}F��K\�x7sW}ꂆP3�����e6��p2��]�\���z������\�g\�Z�\�_\�g5y�\���\�}gAK��@�1\�阒��L\�GuzI�Y�<�\0�@�Z\rc��ˍ.��\�\�<\0�\��\�\�15\��3U_\�!P�4\�v�9\�C�\"_\�!�#<4$�����\��� +�\�|�v�)���\��V�\���\�0��t��\n��R\�Qk)0F@��\��\\v	V\�\�\�����j�\�&)n�i��e�U۱��\�\�\�x�\�A߂\�8\�G1\�w\�\�\�ۏ�<[;f\"\�Ïbt۱]<\�&�\�>�Q7\�Mc�_�����T-�\ZZ|1�P���\�\�K�2��U��/�|e�\�6�\�C�,p�\�: ��͗\�@��ƲP\��\��,�|?�\�Sg;�|\�\�;ĞCnվ\�\�dif��\�\�c?���\�\�\����Z!\�]�\�\��V0OR�F_��\�p�U�\"孙���\�!m\�dta_D\�\nhHѸ7t\Z�v ��\�J�\0>Zɣ�4B8F+��\��\�\�w)\���>w0��N\��؇��������\�4\�	g5<r]\�7_-(+.faH*��u\�\�\��0�Cֳ\�G\�v,\�\��\�$\�\��쀂r�\�����-�%\�\�O��S�;���\ZF\\1n1\�\�/\"rzӎ�\��\�\�fO\�e\��m\�\�\�\�S/���R�e\'�E�\ŹmPdt�Py������	=kU\�7\"�ҥ�6\�Iyn\Z\�k�q�\�\�\�)b�>lG��\��%h\�+\�<\�W�5װt��>ȏ�Z\Z��\�,��=�CN8{`&A8hۑ�\Z\�\�\�@8�\�Wi<\�\�K��9�[��m�J1C\�K>�\�0�h���F���΢��\�\ZH\�\�%\���.H�\'\�^�:���,�\�+\�g�X�\�\�F\����\�\���pGI�*\��\���!�.o�\�\�\�Az�]��Ogp\�z\n#J\�%�c�$l(}{n�i\���hx\�\����n�ιM�\�<wN��z�fy�	u�i��IdZ\�\�ݑ�p�gE�$�\�U\�z\�	�j���H����c4t�v;;\�/>tB=\�\��\�=�Nڬ|��#4\�K�ɟa\�L|��# �0\�4x\�Y�f��ɤ���ڸ\���60�۪؈�:��#�2wG���e�Bl�[MlW���\�;\"\��Dt�k\�\�Z�\�%��Ȕ\��	�\�\0�4}\0B�\�(�^\�%.��\�A_\�+�\����\�\r\�\�{\\L\�\'\�\�Bk�=�.co\�7Y�m#Q�VHX-\�7�s��)�k\�\�\�\�\��I��܊\�\�\�u\�p�):��\�H\�\�\n��<BD�٢܃ؼsc)�\Z\�j�n�\��{8d��ּ\�7j\�Iz;�_w\�Nk��z]\�P4I|m\��M�h�.�� 5\�8C\�\0J�� �\��%�q�X{\"Шt�%n�r�_��\�\�9\��e�\���u�\�p\�#\�:�߹X�R�9Y\���\r�|7�o\��_�j�ϳY�\�$�L\�\�8c�/\�\Z ��l\�^DQ�\����8\�\�c����Fp\�\�\rN\�P&��8g?s+�rP\�{�rO�t�\�k�\�?\"�r��Ɯ�<�T�\�&#6�WO��\r�$4c\�jK?�Pt]\�\�0�y;f\�m\��-�\��\�qA��i�]ҬGҜ\�l�\�w4&H�\�hB�\�hA��\�8�~�-\�y\�˱\�\�+���g!u܈8h\�\�,��\'7���nM&���M#���O �\0�K�\0�J\Z�\0!Obཝ)�8`��\�W\�k1A�\�fD\\\�\�ѷ\��\�ط3�D oj�sWPA��6�CY\�!lԯ�+2]\�>9�%�;i��D�\�/ �e�t/\����4#U&CC?�ֆ�\�\�\nXH���x�x\'\��\�dH\�+\�\�P\Z�L����\�\\�Z��WS\��c�_#9Y%nR�\�\�\�\nbt\��~�D \�\�n&E�M\����\�ޖj.��\�=w1Jw�T�\�\��\��\�駺�\�\�A���J\��.\�\\�C��\�eG�\�I5���\��,cZ\�\�\�\�\�>d;��h�-�u@\�\�#T\'_u\�\�`V`���&�J�ݞ�:`�����vP3\'dN\��\\\�U\\;���BV��\����1|�d�pEXS6�Jϣ��~\nW�M�;�\��.O\\N.a�|�]ٸ��3��I��\�QTW\��^�.�x\\�y�~��}�ea�r�\"����\�0	\��\�6\�ls\�e�~�k�\��t�\'�@�\��XC̆\�\"3\�!�m�\�����Jr�U��:��e�\����\�\�M�\�פ7\�CH\"`\�m�\0��mHBa��\\_\��\�.�\��\��P\��U0H{�\�p�~���w�LR��\0\0','6.1.3-40302');
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
  `Name` varchar(128) NOT NULL,
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
INSERT INTO `aspnetuserroles` VALUES ('1c124d9f-364e-4b7d-942b-a49c7ae5ae99','273ec300-f322-49af-9560-28d4e08ca9e0'),('704ac8f8-bb8a-487e-bc7a-e93989509e20','273ec300-f322-49af-9560-28d4e08ca9e0'),('8b1eb4c5-2e66-40ec-89a3-4ad1b79a8974','273ec300-f322-49af-9560-28d4e08ca9e0'),('9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750','f9608109-dc4e-4e4d-911c-137fe3f95237'),('a75a160e-c5af-491e-b5ef-4cc7531aacbb','273ec300-f322-49af-9560-28d4e08ca9e0'),('a7fb970d-c66e-4f07-8968-bae0eeaad8f9','f9608109-dc4e-4e4d-911c-137fe3f95237'),('bd670e5e-0697-42bc-bd7d-36f4e05dbcc2','f9608109-dc4e-4e4d-911c-137fe3f95237'),('d9579257-89ee-4804-8e4a-8ca9f39b0174','f9608109-dc4e-4e4d-911c-137fe3f95237'),('fdc7b33a-83ac-4ca4-9d83-2a903a2680c2','f9608109-dc4e-4e4d-911c-137fe3f95237');
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
  `UserName` varchar(128) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserNameIndex` (`UserName`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetusers`
--

LOCK TABLES `aspnetusers` WRITE;
/*!40000 ALTER TABLE `aspnetusers` DISABLE KEYS */;
INSERT INTO `aspnetusers` VALUES ('01ddc265-36c7-47ae-a664-089fdd49c63f','bnoblit@peaker.com',0,'AJgkaz/XVXqa1Oz9yiviWUGFZ65Rt4oIe8yBRbE1KWZXcWl2i3/iVwlPcUeCoJ940Q==','e363eb43-2584-43f7-9f4b-789f7d532997',NULL,0,0,NULL,0,0,'bnoblit@peaker.com'),('06378758-7f36-4282-b521-4caf6a041f50','jlogue@peaker.com',0,'ANr7aYkSxFSHDlok83RaoBdYVlWncG1jutmnLjZPG4xPKPr/zSl3Y8V0MwUnXX6Tyw==','d795b346-ea19-4992-8565-6ea8044c0b09',NULL,0,0,NULL,0,0,'jlogue@peaker.com'),('0fbf5079-a669-4a69-82f9-e406927df00b','efeiler@peaker.com',0,'AHVovyU+XAkuC67z+4ORYUvdaXDJgRctbVWbTwIFCrx2ZzrGoplW7Nb3UTnijBVGCg==','eee6ad6f-b92b-4e7d-89f2-638c601222be',NULL,0,0,NULL,0,0,'efeiler@peaker.com'),('11f22b0e-9b49-448a-be12-6b12807ee7c5','kharrington@peaker.com',0,'AI4XJtEwdd7/pKQzqMIZzB3Ad5iXmHZWn8Fc0+XY+4wOI7XCrzCBS3/cREQZ3c8xUA==','7f739f2d-797e-4a6a-a698-5a5e9f0a03e4',NULL,0,0,NULL,0,0,'kharrington@peaker.com'),('14078252-f5b6-4e7d-b4ac-743f584b7b4b','jmorris@peaker.com',0,'APXm4khMYZg/cwuOn+hDDG/6emYiM+2juMll7TH3XO9FtXCxyyqqUfU1wEFK8xY8eg==','cd6d0319-0d1d-4a58-bceb-31a64c2bf201',NULL,0,0,NULL,0,0,'jmorris@peaker.com'),('14a027ee-75c6-4c8c-b60a-1aae6d0c2e1c','cknight@peaker.com',0,'AL/kJpas7eouwp4QSizVfq/c+/Qq7HCuiaH59OwYEjjmuXl6EehUGLaZGmJU831zJA==','92009005-9727-4cbb-9826-61b1207a2d3a',NULL,0,0,NULL,0,0,'cknight@peaker.com'),('17c7be56-6296-4a76-a2b7-635eda3a78c8','ereamer@peaker.com',0,'AALQSGPfSh8+jizk9T3v88BqR7NdNKG5jIdFHt6XbW7mTmp2H8BnBlrhEcAJ5UuH1w==','86fbf9f3-aa94-4db2-9b5b-e59f6d2e5e0b',NULL,0,0,NULL,0,0,'ereamer@peaker.com'),('1c124d9f-364e-4b7d-942b-a49c7ae5ae99','cwagnitz@peaker.com',0,'AD9YowRzcvCPuEvBpfoDlqRoAl3AzZVAXCd0AqH2nabX3FWpdErKi4jk4Ujrmzz2iA==','6448dca2-f130-4edc-95cd-5d0cc10a79ca',NULL,0,0,NULL,0,0,'cwagnitz@peaker.com'),('1ce091ee-abe3-4d86-833a-9cff9440a83b','csmith@peaker.com',0,'AK0W7wzr6gYL6HsMgtASXux6kHQkzSD0ejFTQta6wfwJGS56TZ/02aIGN5r3ajoNng==','541442b5-047d-47dc-88d6-aaa86b073a59',NULL,0,0,NULL,0,0,'csmith@peaker.com'),('1d3e8fdf-d04a-4b96-b50c-7866624bd3a0','seinfeldt@peaker.com`',0,'AL9rErZk0jmwkKC+dJlDbGwrtG5qTcisLmxayIynvcDltRM9cinUx2Yj3cgfdNu7Gw==','20610082-8893-4717-a04f-5d5e526bb2bb',NULL,0,0,NULL,0,0,'seinfeldt@peaker.com`'),('1fa75a3d-0784-4d40-a855-d86915f13162','Sample@test.com',0,'AG8HQw4JmzWHtv2IyFYgIWb1GNVfRodX7ZZkHtaVtk4jNXUl2qwLgHlEYl6ycExy5g==','9330c095-824f-48f8-8c83-db5856a39268',NULL,0,0,NULL,0,0,'Sample@test.com'),('2110b62c-fa87-4b3f-95d4-657321f27f4f','amazzonne@peaker.com',0,'AK+iUHYnMiNgvsT5TY1Bd05dd6CPfEA/X2KJ4BxdQ8KMZYdTVKiOxKjFSLnPyLExpA==','0ebef2ae-4e38-4a0d-947c-1376a4fc237b',NULL,0,0,NULL,0,0,'amazzonne@peaker.com'),('24f093e4-fa8a-4d00-80c4-a1df98ed227c','rronowski@peaker.com',0,'AOntoeWh66C/xyqDjoquGcuEOhl8PE1RRUunh8qR9sbfanKI06J/Tn36KC+S76liMQ==','6b937955-ed28-4c91-a39d-6df66e359be7',NULL,0,0,NULL,0,0,'rronowski@peaker.com'),('27b66804-6c90-4af8-ba8d-4d8e1851c863','mfoster@peaker.com',0,'AIeudPTS4li7VTl4iquJPIKh3GiYwPu59yKRZC4H1g6o/vvOhQEY7uu3mG4bubK53A==','5222f45a-663f-4f67-a171-8dd4f1b737f8',NULL,0,0,NULL,0,0,'mfoster@peaker.com'),('28431458-c8e0-484d-aca9-83215a591b88','jbrant@peaker.com',0,'ACJIDBP/+o4jdDFsWd6P9XyeqyrkRQ7zISZKcSfAPVAH4kNsg0VCC7cpv7tIAoJf9w==','f37ed9a1-76bc-47fe-8b82-f1020a337519',NULL,0,0,NULL,0,0,'jbrant@peaker.com'),('2c796ae3-0fba-40ef-bccc-d45491ac84d2','mkitko@peaker.com',0,'AOgdlblmKA16dVQKvu6cZKY1EvYCLY8BD2yxzv0gvKB3hQlf0zECQfNRdtMlDXezLw==','e7fc6883-e713-4c8c-8f39-cffac5c36c59',NULL,0,0,NULL,0,0,'mkitko@peaker.com'),('2da78e76-9b08-4063-83a9-bd74ab33490d','bbennett@peaker.com',0,'AFDO3XRH/K149BGSHDVlPWEMi5p7PbWIUbqg5FUcA9LBdprP1rOSH8WkVSKEONoQSA==','5c27a432-c680-41cd-ad44-ee80586beb7c',NULL,0,0,NULL,0,0,'bbennett@peaker.com'),('2eec56b3-c6fe-4589-947e-165f5947e5f4','dmann@peaker.com',0,'AATSHs3rKAqMmDVgsCl2/LliwA675leJ4ER6GEgKTDLKGHGWJzYfKJSq9C3C5PAaAg==','bdaa7c0f-c0dc-46c1-abcd-a49a27d3b8a5',NULL,0,0,NULL,0,0,'dmann@peaker.com'),('308cfeda-4d3a-4d78-9e0e-9015b0dd026d','jmurphy@peaker.com',0,'AAPxRn9MnDrYH5wakS9vpdfFZ6coKSkjaDCWO6wnEtwnvGqY5NsaDVBTqktdLlczKQ==','4cf7c431-69a0-4495-933f-cb139cbf4ffe',NULL,0,0,NULL,0,0,'jmurphy@peaker.com'),('3136fd80-0567-4d05-bc04-13e02e8a0b40','jpoquette@peaker.com',0,'APLhAgm3F2IGg80VXndRjJBhX9z3ApIbWt9KiCmInwb3cZzx8UnO+eZPIdkffhXyNA==','8571bd73-b125-4cfb-b163-99830d66ad63',NULL,0,0,NULL,0,0,'jpoquette@peaker.com'),('32500633-3428-4ef8-aad0-44d60a2006e5','lboldt@peaker.com',0,'AAEUe8gAvHktJf8nGCPRr+R6qLcblpItaLIO7LLqmxQMhko7L0+Oj1WCYZtDFWjnpQ==','e6b146e4-2c92-49eb-83f7-6300e4a7ae32',NULL,0,0,NULL,0,0,'lboldt@peaker.com'),('3385e700-18fa-4af2-ae7d-5cbfd432b041','rduffey@peaker.com',0,'ANkZpvzLuaBFU8fDodxo/QIsQdxcp2cwI/+Mk9cruKxoUgTAak5fApMB6101JmjQhA==','d59dd800-39e2-4dd6-8c73-360d86905575',NULL,0,0,NULL,0,0,'rduffey@peaker.com'),('3a5c08f3-b683-457e-aa21-13b807c74110','mmallory@peaker.com',0,'ACN49imLfgGh/x2xB68wp2yrK1IKyym5Xbjsxp6otURkqpDBxMbUPzkSm+xkCFkeGQ==','4678800b-93b2-4bd9-8409-d3e002696389',NULL,0,0,NULL,0,0,'mmallory@peaker.com'),('3fade1a2-d0db-4ffb-91c9-8bcfbde864de','bvalente@peaker.com',0,'AK5iyqdlGeOu33WptgmQ8B734wEbCtpG+512882AUne2tLcBlm4dshp+PnNeJuDvjQ==','f26b1f2f-1a7b-44e2-bdfd-70f703204175',NULL,0,0,NULL,0,0,'bvalente@peaker.com'),('3fb8e362-2c2c-4a48-a93d-84b0e0b501f1','jcarmack@peaker.com',0,'ABdO35M6X5XBVf74U3f61BSGH0hr21BAQaiVaEJt+Kw3rvVEjdPv21PAGEpIkdAa1w==','7fb76bc1-bf24-4fd2-a11f-6b7ca0c6babc',NULL,0,0,NULL,0,0,'jcarmack@peaker.com'),('44ba9c1e-59b9-4203-acca-1f71770a742f','dblack@peaker.com',0,'AIt7ss+nPMcHRCU/8fR3juzTOnyeB/vIaS4T+D6ZkC0mMXiqmNoiCEr9ZWxc+MnT3w==','2e1b8655-afcc-4a93-90bd-150898e81982',NULL,0,0,NULL,0,0,'dblack@peaker.com'),('485e334f-3776-4b43-a8bc-2d9e19767e5e','jwalter@peaker.com',0,'AFmflBDPudeDxBqUfikGAXA7s2QR13Tif+a59M1loZ4CxSp059soggLMsavl1ct2xw==','bb4c789c-1f4c-49be-9600-97d6155ab33e',NULL,0,0,NULL,0,0,'jwalter@peaker.com'),('489438c5-0350-4acb-b748-1dcfb506a2bb','mcolantuoni@peaker.com',0,'ABwaTudSU18RylpVJHSGNv2EEsXpiVRUBlJmjviOY9UfFnOroivMcw7PJgL0+splog==','b9f6f387-a1a3-4b0d-bf4e-cc5513abfe86',NULL,0,0,NULL,0,0,'mcolantuoni@peaker.com'),('499ba8f6-c5a4-4494-b015-f54612a1886b','jjandry@peaker.com',0,'AIWIRvxfMHweB2q1cwoWq5R0+inJCJZ6SJ7zt/LDIYu213JwtNSXUAzdmamk/UrNfQ==','746ef4c9-2ee3-43bc-b463-b7e0325742c9',NULL,0,0,NULL,0,0,'jjandry@peaker.com'),('4a44defe-fab2-4c61-a5ea-3b64b8bdf271','bwagner@peaker.com',0,'AFzSXa3ZDmYlNE8KoTaa7h4bWry4ajqr+t73CTOu29KFiJccwdXD95fsH1A9HxiRtQ==','00a147c2-6af8-4013-9cd8-9a16b6fbb139',NULL,0,0,NULL,0,0,'bwagner@peaker.com'),('4d3d569f-0f90-4a7c-b98f-b7b0a3b3a3e3','druff@peaker.com',0,'AHt3IppvW9TQPyIgESMosNKipur2W8RcGcW535t++oCBZgs0xLpOkIhB3OurKDKiRg==','00056ed8-3c97-410b-882e-227c96257290',NULL,0,0,NULL,0,0,'druff@peaker.com'),('4e6ba4de-a793-45ef-a30a-1bae65b8bb82','rfisher@peaker.com',0,'AExZex+sQrjRx5IUg5olQKUNPqOdBLn0Lnb7rLkqoSTJBkSOrjCYIkDzOhYXA6iZSQ==','28c4b687-6584-4975-84e9-2d62a9067f33',NULL,0,0,NULL,0,0,'rfisher@peaker.com'),('5248aa03-fa3b-4325-9e33-3553bb71c8e3','awhite@peaker.com',0,'AIZbBq6aQY3/30yDuJ/ILMKcWu+ILORrGDzMWdkRhgeAq07w9uaPOTT/+eGO7CrEIw==','17082b6b-a6a6-4765-a838-e37897e12721',NULL,0,0,NULL,0,0,'awhite@peaker.com'),('55ead5ed-b0ca-41b4-b2ad-03f6fe458a0b','rlantis@peaker.com',0,'ADrCJs59lcsf7wCRKYblgdRi1VezuyNBk0o5tMOwrTRhk5Ia+hYWC2uZ3PNzqWgBMg==','06d5a062-e0dc-4a82-a5d7-9d1b45f4d585',NULL,0,0,NULL,0,0,'rlantis@peaker.com'),('577f6412-be92-4365-95cd-059235138ef6','kcenters@peaker.com',0,'AMGCtjdIZlX8xU2G+/LCIhfR3K16u1f4k8EwE59cIkPe6HHIBuBqCiQfk/Ux0vfG4g==','3e8f8148-583d-4c9f-86ba-eaa4fb32785d',NULL,0,0,NULL,0,0,'kcenters@peaker.com'),('5a099905-7963-4724-a2d0-c13c455decd2','tmurray@peaker.com',0,'AGwCHrhizcjRwGG9pbpF8eRuZcClV5TAU/xfDJOT47f5by72HeMuiv1MJCXJs+Acqw==','53d88bd5-b437-478e-a342-94e2ecfea7e9',NULL,0,0,NULL,0,0,'tmurray@peaker.com'),('5c4492ea-d19b-4446-ac8b-042c59bc2280','kulbick@peaker.com',0,'AJBRVEqXb8ftuyjnWtonpEjRrOkfsCfWvoe5y1LuVhWx+g+1X95nM5oMhcqjEmM7mQ==','8248f814-fb60-40d7-b444-b8e320511362',NULL,0,0,NULL,0,0,'kulbick@peaker.com'),('646bfb7e-c1da-4425-a48d-fbd619472f79','ncrampton@peaker.com',0,'ABj9Wx9VpkfmqxAsowBv3A8lvpBVsEoBA3NpTFuN0jzg7IwWUatWfqt4ROd4MhkgDQ==','35a79fdc-9d6f-48b2-8f0a-9a5270bfa74b',NULL,0,0,NULL,0,0,'ncrampton@peaker.com'),('64fa9e33-8f13-4c57-92c0-4a753aace0b9','lgerard@peaker.com',0,'AJ9j0NwLzORAz4r+g4HK6g3d7ZR9MJqRqNiCxUoXYjcTffSVjS+oCMHHyV5Nmo4YBg==','3df7f051-e821-4b6a-aa4f-3616980c6b70',NULL,0,0,NULL,0,0,'lgerard@peaker.com'),('69cf6000-ed5d-41fe-b9c2-69635b5a6579','bburke@peaker.com',0,'ABt84thytiHk4ioTXNCKTXsK+mAsHhkUEzkBMSOjhkgT+3/rycOe+aZbTttDvbqtig==','c0386739-d8cd-45c5-ae74-c17073a9f2cc',NULL,0,0,NULL,0,0,'bburke@peaker.com'),('6aabe41e-0c14-487c-a165-5744c8e634fc','dkillian@peaker.com',0,'AKCjtt0yitbZOXb6AQ6/OuSDNQHzJgggduQo3iv3GEE+u4YnrYk8Tv6OTW/b0rnexQ==','7e4a8cd3-86d6-4194-a9d7-9231617ec1e9',NULL,0,0,NULL,0,0,'dkillian@peaker.com'),('6f89449e-ca63-4b58-8ac9-f5b2caf3750d','khessler@peaker.com',0,'AGQtbGfUhZ8Tj0buYBqNKTAZRyijGYufHdPThFtM1KL9yCOr1VDlhVpi9XkuIEcxXg==','d6633cca-b1f8-4c61-9d4a-34cdfc125583',NULL,0,0,NULL,0,0,'khessler@peaker.com'),('704ac8f8-bb8a-487e-bc7a-e93989509e20','cchinn@peaker.com',0,'AJjE58odj8QI94ljvhEvsvozrl3RvvoHvCZZj9TJvHK0wuKzGriFvX/ZRrOqjT/5Og==','9b32e9fe-57f1-4411-a178-45e0108ad9c2',NULL,0,0,NULL,0,0,'cchinn@peaker.com'),('733cc2f9-ff3d-42e2-8570-24794d735e53','espicuzza@peaker.com',0,'AGtkO9TBwZFKcusmSDAPHo9dkJl7C1vfAaNg13AhbvgQjwhN0bMCOIKDpoXBX/UxhQ==','50053f76-a52f-4407-8d47-478ed7dcdb9d',NULL,0,0,NULL,0,0,'espicuzza@peaker.com'),('73ec3ff5-0af3-4563-9658-a9e4b5b2992b','kburgess@peaker.com',0,'APY4K5s3G8OHNk2/JJkzeHTzCxIezhGWG0blZGT0+CBl5OocN0qU5g8Q5SC3u8ep5g==','1d54a6b8-ea73-4a84-83fa-708ee6e26333',NULL,0,0,NULL,0,0,'kburgess@peaker.com'),('77679696-d86f-4a4a-9472-fa21511c22cd','pwilliams@peaker.com',0,'AN1TMC6uqxbywOdbRUSKLCArDkfIYASm/swDoyeZOOIEj9R+eNXb6vnrvZTUuLvYLg==','c233a478-6e87-4f82-bc2d-3b640819ba06',NULL,0,0,NULL,0,0,'pwilliams@peaker.com'),('780326f8-c99f-4f27-aab4-96e89e2ee307','jgraham@peaker.com',0,'ACZSvrAbs4IalGUtRV4BvyQVrVJMiWTuhItt9pXEH/Ad5SUg1zUQL+1FhOchJjEy3w==','73a777e7-dd2d-41cf-b8e8-8f844f602e78',NULL,0,0,NULL,0,0,'jgraham@peaker.com'),('816b5bb2-8da2-40c4-8aff-f50bdc8ae9c6','dweaver@peaker.com',0,'AGO+4lPQg0NPD/ZZJQ1PlfK5kxIiy1BunmTP75PWwSPa5twSmDvnItGTipkJyndHrA==','279f85ad-cd07-489c-a684-853cb5cdfcd9',NULL,0,0,NULL,0,0,'dweaver@peaker.com'),('84a2f848-1625-4443-bc00-246ce0f741e1','dphilips@peaker.com',0,'AAT1qqPvlw2B4zQ19oEVgmi1GmBtaeS5qCUBVkvZMdK1rarAI8uskO7PvZqjjIEjhQ==','0a23e7c8-719b-4731-b3a0-b90383dec64f',NULL,0,0,NULL,0,0,'dphilips@peaker.com'),('86a7a485-a701-4d6c-94da-1441791315ac','cfuja@peaker.com',0,'AACwvYyCEDkwMxslEKxbkjSq5Jg6yECsSeBhcONAcw39r7ntnnJurHBS99snT79sQA==','5b355748-27b6-42e0-84cc-263f116dcecb',NULL,0,0,NULL,0,0,'cfuja@peaker.com'),('87bc6e16-fc9d-464f-972c-b957f77e54dd','hhurley@peaker.com',0,'ANUDM1eTN/hX+IvJzFZL/Y9mY4tuUavkLM4ZQIVs7++IxvZbhLm7ALFlFPKonD0ByQ==','5256e5b0-45dd-4630-b334-a4d92e72d547',NULL,0,0,NULL,0,0,'hhurley@peaker.com'),('88290803-c01d-4b01-b46d-37914c15a11c','tjhacker@peaker.com',0,'APSVDPXbB8CoD0GFr3TuQup6s9QMQeYLe7y4LmBYtTuLiz1Fqc9IkOBTaCOud2hR7w==','a49653f5-9866-440e-a9f5-30a2206d3e21',NULL,0,0,NULL,0,0,'tjhacker@peaker.com'),('88f8302c-c9f2-4189-ba9b-6e664b573c36','cwestphal@peaker.com',0,'AN38gyVAczPveKzSGvfqdxc/5JMEDgpAYB21y04JxJUxyueijLw3LYO+0CAiLj9ARg==','7df59baf-cc25-4baf-8e25-67c442949588',NULL,0,0,NULL,0,0,'cwestphal@peaker.com'),('8b1eb4c5-2e66-40ec-89a3-4ad1b79a8974','isb@peaker.com',0,'AFR5Ajx7rb9YogV2ruLIqAQAzYZsu63+f3leZgwfA84afEKfQoiuCdf1/pdoeV6sqA==','b429a72f-d668-4ad3-8a00-8b9635da3fc0',NULL,0,0,NULL,0,0,'isb@peaker.com'),('8d31ab82-cb84-4a28-a009-1ba2cb4c14ea','kstone@peaker.com',0,'APzx7U3jHkZz0jwYEeQ36YkDS+0l0M9hK0uqCIEdsf5pDRJK0ebye93J0er63ThSnQ==','ba567122-541e-4732-82d7-9ae5c468b01f',NULL,0,0,NULL,0,0,'kstone@peaker.com'),('8dc61856-9230-4d18-a26a-fa7caee8201a','rearl@peaker.com',0,'AC1psIGaMft301yAeoNI2WzqqU3lfJJONa0iY6YSj1X0Q5E0ftxO6s6JtYJa+yne5Q==','adf22012-1841-468c-b827-86c0d5ca7e76',NULL,0,0,NULL,0,0,'rearl@peaker.com'),('8e04283b-64fd-498c-b592-1894a5bd9be2','ksmith@peaker.com',0,'ABQkYcXeMqKUJXKgmzvm4Ki2WQH79fH/obg8XNKQOqen+1inZhkWSNTJpxXGNSUUoA==','8bdf5c0f-f12d-4921-a4d7-fd316e793ae4',NULL,0,0,NULL,0,0,'ksmith@peaker.com'),('8ea1160d-5701-4f6f-9a8b-07295de01f86','jlambert@peaker.com',0,'AFHnUDRuI5r9VEJGrTnWfMkC9N9mc54VYwQjjS4UiDDY2/mf47nFKyccxrEmAwSWOw==','7dc7fc63-05b7-4cd0-8f68-9207db6bbe27',NULL,0,0,NULL,0,0,'jlambert@peaker.com'),('944806af-597a-45f6-b895-ddc26f6bf83f','seinfeldt@peaker.com',0,'AJHsFx5n+c/7eFd0ctnMKr9K7TC/IwyQ5BiF3BvLuSxnlpSCGYUVYYKYfJ/EogR0FA==','27e1f9d9-f484-469a-b9ab-ecf19fdea32f',NULL,0,0,NULL,0,0,'seinfeldt@peaker.com'),('9550a98a-d316-4b07-a893-9a7ceb94585e','gthomas@peaker.com',0,'AL3ycEFiTGvYo2Xr6l1DBOjEZ9oq9R+jKegCb4qhF/pC+gAp9gggQ0Nd/Nrm49tNPA==','8a5b1e2f-3bc2-4d2d-b7c4-289c6db66ce2',NULL,0,0,NULL,0,0,'gthomas@peaker.com'),('9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750','dcooke@peaker.com',0,'AGgd2/zptxh1GnkvBgBjUQMOtizt3+aex7+MKSNHvbP4SeHgSaB15merIzGjHoyUMg==','ea45ce8e-04f7-4217-b4b4-0d5a90d0aa3a',NULL,0,0,NULL,0,0,'dcooke@peaker.com'),('a2afec06-eb55-4068-b5d2-3c3efb8dea28','alucas@peaker.com',0,'ALQ+gR8VRrwNQzlKBEjFi/gl7R52exgYZ3zYuhjHZBF0iBmp823J7Ipeseip1Skh+w==','a331aef9-1092-4a33-bc26-5b6934931db3',NULL,0,0,NULL,0,0,'alucas@peaker.com'),('a3ce17f3-153b-49ba-ae9b-1811f524ec30','nkraus@peaker.com',0,'ADoO/5MXFKIJnH/EFak/hRcN0KhqVRCgpfJjiRVvz5SfKDRKceh6Jmi2gyONw414GA==','f00ead7a-d3fe-4bf2-ab71-ade68b38c8c9',NULL,0,0,NULL,0,0,'nkraus@peaker.com'),('a4618a22-c3db-4feb-8ff4-ad3c49e4335b','kbezselich@peaker.com',0,'ADAsaa3Ixf2IbsD+2FE3fsksm/UWQrYQjqvspxJTQJqvhIKzoO7sT+bDBVeupPQyzw==','e959f46b-2d90-4899-8b1c-028e2c5eefa7',NULL,0,0,NULL,0,0,'kbezselich@peaker.com'),('a75a160e-c5af-491e-b5ef-4cc7531aacbb','pranville@peaker.com',0,'AAmQOJCCNidtXJJB6DSgJ8IbjkcYrrHeAeuZmUlASAIl32bdwYhDoZeCFpqqQReYxw==','3e387819-a7a3-43f8-ae85-369606eb17e0',NULL,0,0,NULL,0,0,'pranville@peaker.com'),('a7fb970d-c66e-4f07-8968-bae0eeaad8f9','mseaver@peaker.com',0,'AB1V2fWFOA0RYgAA9/ibzYUudqvRiNrw/7sKAFz2pUA7IW2xAS696BCDz35GM/xbaw==','f4da070c-e437-4505-b724-a7208db44c19',NULL,0,0,NULL,0,0,'mseaver@peaker.com'),('a9fc7c41-34ac-42fb-9408-8804d79d659d','dlorence@peaker.com',0,'AHjpyL0EHElsKQcOJINQIAdAlqiF9pqILro7uq5CNaO8MFpGBJdGcM5gHuH2pFZ/Rw==','a97d69c2-bd6f-4a3d-8d33-9e93dd274600',NULL,0,0,NULL,0,0,'dlorence@peaker.com'),('b18b0397-497f-4bff-90ab-82458470a776','rbrush@peaker.com',0,'APjpqyjRsDUlJRVjMhFikZxtWpr5Zpxbcqtv4OAUzhnbTK6Taf3paQWGqQwoxSjTXA==','779a5c4c-00cf-489d-9f73-0c6b106f40ce',NULL,0,0,NULL,0,0,'rbrush@peaker.com'),('bd670e5e-0697-42bc-bd7d-36f4e05dbcc2','test@test.com',0,'APXnSnao4Jk5m4JIKPNO6JzbbBUmS92UygPhjpElIOMmLc4HCF8xZ0WuDJKxjqMuyQ==','7a9a420a-8b67-45a1-b8a5-b4ff37dc90e6',NULL,0,0,NULL,0,0,'test@test.com'),('c0076742-5e78-4c24-883f-4e944ef01c30','dbanks@peaker.com',0,'AAu1Br2wwp7HyjzOZehM8hwG2IHLUZRO1MRQz1dVgA4NXvG24dXRYrcJopapGxf/Lw==','aaec7661-4d2b-4e99-a40c-55a1c9370803',NULL,0,0,NULL,0,0,'dbanks@peaker.com'),('c46ecf62-1e2d-491b-ab9f-1a3ee3584c6e','afuja@peaker.com',0,'ANobdh9FqdGEPDtmiN+J+axJYnE8svg4rNxyb/sIP8Am9skLSet3zHKyfukvkfXG1Q==','9851dc7f-a702-4300-b8bf-d5ac22345b72',NULL,0,0,NULL,0,0,'afuja@peaker.com'),('c966af5f-084c-4a0f-a40f-c6c742996d75','rwilson@peaker.com',0,'AKL7CXoVa+W/NJeUVxUbgczEkvhHzK77BckdQs0YqbQqFrYr6jXsd/uWW/XDTqSWIA==','5e820dde-e87f-428e-98d6-98f426ddfa74',NULL,0,0,NULL,0,0,'rwilson@peaker.com'),('d7c96aca-4fee-444d-af78-18e18a2256ad','kmellin@peaker.com',0,'AEgn4OpAVhnWEcKswj9MxG8ao5wNtkId6wTJ8X8cPTUaSFuTP3XmAV+sfZsE18+MUQ==','10295885-a252-4ee8-a803-1d0582acd34f',NULL,0,0,NULL,0,0,'kmellin@peaker.com'),('d9579257-89ee-4804-8e4a-8ca9f39b0174','ebudd@peaker.com',0,'AFgx6MsgA2PdKDYaBVm8vgppy4UvIxc3Y0bnoTsXLYsYN5oxIb6LvcmPDbPSp6U5LA==','cfa51f4d-70df-4700-837d-f86a18bd9a2d',NULL,0,0,NULL,0,0,'ebudd@peaker.com'),('db15f6ce-367e-4427-9e88-18da2f2dc66f','mshotwell@peaker.com',0,'AGE3GbXUUotaGy6F6oPc8S6nvAf0vrFNbIj+6uiP4M5h5JcPWXcefz8S2nNvl+eC3Q==','c5161f8c-9e7c-44b3-adcc-049cf35b8512',NULL,0,0,NULL,0,0,'mshotwell@peaker.com'),('e1eb233c-55d2-4dbc-8fe6-d5865112fe90','kgubert@peaker.com',0,'AAEk3nIH8oDtMeF4BwsNMT9mbxrtA1WZD4YrRTlA9jncoF37G1q72YV9rvgcYHG/yQ==','e1881ae1-3e6e-4337-9244-46bfd882551d',NULL,0,0,NULL,0,0,'kgubert@peaker.com'),('e764a125-5991-48dd-8ad8-7129a3e695ce','raho@peaker.com',0,'AEOECJX4Ny9yB8YfASYpYJ9qPbmhJKL2fwR0vgt6WNiDBJP5tAAVZIOpoXe7qANeJw==','149f0ccb-68a0-4ed7-a8e1-a46d83be6d1d',NULL,0,0,NULL,0,0,'raho@peaker.com'),('eacaa403-1d18-4b2c-b743-f29c9e1afe5f','jeaton@peaker.com',0,'AHA3fuRpy9CCO96B3m3WECDQ0+XQqZCRE9zDmfr6PN5DgDiCDSWH8AXg4FWAunB7Ug==','8e4f169e-5d27-4eae-8a83-f079704af501',NULL,0,0,NULL,0,0,'jeaton@peaker.com'),('ed516c64-c243-4f86-9e20-a83d3c5063cd','ccaplin@peaker.com',0,'AKd1c7/lksT9VMa/AuZo3nOOebGVBfk/vJqOsOVJT0wancXKfSg7lK1HZrNP0odz8Q==','113e6798-51e6-4e7f-be93-65b0ab59baf0',NULL,0,0,NULL,0,0,'ccaplin@peaker.com'),('f02c0cd6-62a4-4e15-ab33-70bb9e92ecf1','tenders@peaker.com',0,'AM8FUu8TLkaL9VKl6ePZwO+3wR3IEJphRMpmHAZea1aE2V6krVmI4sDaLjprq3p5nA==','635e650c-229e-4366-bedc-3b6334e2d9a0',NULL,0,0,NULL,0,0,'tenders@peaker.com'),('f4e984d4-e250-4488-9222-aaf56171d205','lstone@peaker.com',0,'AFjalU4IAuyP7D+u4XX663xs4v0PHUAc7YuxJGKZlkRRMVFBfvbLF1Relv6TsOFVmQ==','e575dac4-7b13-4d98-b023-93f48b8ab973',NULL,0,0,NULL,0,0,'lstone@peaker.com'),('fc276ed7-34ae-4d77-a4a5-2a620a832b64','sbird@peaker.com',0,'AORt06HVnWfhrzZzh1h/yDgydQK6yrDyL/gu2yqphTRoF63m8P+xosP2jQJsvI0iXg==','a5e86a19-ae03-4d37-aa39-7ed8b8012fd8',NULL,0,0,NULL,0,0,'sbird@peaker.com'),('fdc7b33a-83ac-4ca4-9d83-2a903a2680c2','dscicluna@peaker.com',0,'AMmiUfcpInxmUeb7Ip7YadkIVS0ATHnjJ70qt6eqxEMV/Hfz/rJySusDUUyp5X7Wrg==','00c5221a-b549-4a51-aa86-2d05422fc45f',NULL,0,0,NULL,0,0,'dscicluna@peaker.com');
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
) ENGINE=InnoDB AUTO_INCREMENT=9607 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peakerevents`
--


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
  `DateCreated` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_UserDetailId` (`UserDetailId`) USING HASH,
  CONSTRAINT `FK_TimeEntries_UserDetails_UserDetailId` FOREIGN KEY (`UserDetailId`) REFERENCES `userdetail` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10871 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


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
) ENGINE=InnoDB AUTO_INCREMENT=19110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;



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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetail`
--

LOCK TABLES `userdetail` WRITE;
/*!40000 ALTER TABLE `userdetail` DISABLE KEYS */;
INSERT INTO `userdetail` VALUES (1,'bd670e5e-0697-42bc-bd7d-36f4e05dbcc2','Test McTest',1,1),(16,'485e334f-3776-4b43-a8bc-2d9e19767e5e','WALTERJ',2,0),(17,'4a44defe-fab2-4c61-a5ea-3b64b8bdf271','WAGNERB',3,0),(18,'d9579257-89ee-4804-8e4a-8ca9f39b0174','BUDDE',1,0),(19,'a7fb970d-c66e-4f07-8968-bae0eeaad8f9','SEAVERM',3,0),(20,'a75a160e-c5af-491e-b5ef-4cc7531aacbb','RANVILLEP',3,0),(21,'816b5bb2-8da2-40c4-8aff-f50bdc8ae9c6','WEAVERD',3,0),(22,'2da78e76-9b08-4063-83a9-bd74ab33490d','BENNETTB',1,0),(23,'9f39d36f-5dc6-4f85-9ee7-6d4cfeb19750','COOKE',1,0),(24,'a4618a22-c3db-4feb-8ff4-ad3c49e4335b','BEZSELICHK',3,0),(25,'fc276ed7-34ae-4d77-a4a5-2a620a832b64','BIRDS',3,0),(26,'577f6412-be92-4365-95cd-059235138ef6','CENTERSK',3,0),(27,'44ba9c1e-59b9-4203-acca-1f71770a742f','BLACKD',1,0),(28,'4e6ba4de-a793-45ef-a30a-1bae65b8bb82','FISHERR',3,0),(29,'27b66804-6c90-4af8-ba8d-4d8e1851c863','FOSTERM',3,0),(30,'8ea1160d-5701-4f6f-9a8b-07295de01f86','LAMBERTJ',1,0),(31,'8e04283b-64fd-498c-b592-1894a5bd9be2','SMITHK',2,0),(32,'ed516c64-c243-4f86-9e20-a83d3c5063cd','CAPLINC',3,0),(33,'b18b0397-497f-4bff-90ab-82458470a776','BRUSHR',1,0),(34,'5248aa03-fa3b-4325-9e33-3553bb71c8e3','WHITEA',3,0),(35,'3fb8e362-2c2c-4a48-a93d-84b0e0b501f1','CARMACKJ',3,0),(36,'e1eb233c-55d2-4dbc-8fe6-d5865112fe90','GUBERTK',3,0),(37,'11f22b0e-9b49-448a-be12-6b12807ee7c5','HARRINGTONK',3,0),(38,'64fa9e33-8f13-4c57-92c0-4a753aace0b9','GERARDL',3,0),(39,'24f093e4-fa8a-4d00-80c4-a1df98ed227c','RONOWSKIR',3,0),(40,'fdc7b33a-83ac-4ca4-9d83-2a903a2680c2','SCICLUNAD',1,0),(41,'c46ecf62-1e2d-491b-ab9f-1a3ee3584c6e','FUJAA',3,0),(42,'a2afec06-eb55-4068-b5d2-3c3efb8dea28','LUCASA',3,0),(43,'2110b62c-fa87-4b3f-95d4-657321f27f4f','MAZZONNEA',3,0),(44,'69cf6000-ed5d-41fe-b9c2-69635b5a6579','BURKEB',3,0),(45,'01ddc265-36c7-47ae-a664-089fdd49c63f','NOBLITB',3,0),(46,'3fade1a2-d0db-4ffb-91c9-8bcfbde864de','VALENTEB',3,0),(47,'704ac8f8-bb8a-487e-bc7a-e93989509e20','CHINNC',3,0),(48,'86a7a485-a701-4d6c-94da-1441791315ac','FUJAC',3,0),(49,'14a027ee-75c6-4c8c-b60a-1aae6d0c2e1c','KNIGHTC',3,0),(50,'1ce091ee-abe3-4d86-833a-9cff9440a83b','SMITHC',3,0),(51,'1c124d9f-364e-4b7d-942b-a49c7ae5ae99','WAGNITZC',3,0),(52,'88f8302c-c9f2-4189-ba9b-6e664b573c36','WESTPHALC',3,0),(53,'c0076742-5e78-4c24-883f-4e944ef01c30','BANKSD',3,0),(54,'6aabe41e-0c14-487c-a165-5744c8e634fc','KILLIAND',3,0),(55,'a9fc7c41-34ac-42fb-9408-8804d79d659d','LORENCED',3,0),(56,'2eec56b3-c6fe-4589-947e-165f5947e5f4','MANND',3,0),(57,'84a2f848-1625-4443-bc00-246ce0f741e1','PHILIPSD',3,0),(58,'4d3d569f-0f90-4a7c-b98f-b7b0a3b3a3e3','RUFFD',3,0),(59,'0fbf5079-a669-4a69-82f9-e406927df00b','FEILERE',3,0),(60,'17c7be56-6296-4a76-a2b7-635eda3a78c8','REAMERE',3,0),(61,'733cc2f9-ff3d-42e2-8570-24794d735e53','SPICUZZAE',3,0),(62,'9550a98a-d316-4b07-a893-9a7ceb94585e','THOMASG',3,0),(63,'87bc6e16-fc9d-464f-972c-b957f77e54dd','HURLEYH',3,0),(64,'8b1eb4c5-2e66-40ec-89a3-4ad1b79a8974','BRADBURYI',3,0),(65,'28431458-c8e0-484d-aca9-83215a591b88','BRANTJ',3,0),(66,'eacaa403-1d18-4b2c-b743-f29c9e1afe5f','EATONJ',3,0),(67,'780326f8-c99f-4f27-aab4-96e89e2ee307','GRAHAMJ',3,0),(68,'499ba8f6-c5a4-4494-b015-f54612a1886b','JANDRYJ',3,0),(69,'06378758-7f36-4282-b521-4caf6a041f50','LOGUEJ',3,0),(70,'14078252-f5b6-4e7d-b4ac-743f584b7b4b','MORRISJ',3,0),(71,'308cfeda-4d3a-4d78-9e0e-9015b0dd026d','MURPHYJ',3,0),(72,'3136fd80-0567-4d05-bc04-13e02e8a0b40','POQUETTEJ',3,0),(73,'73ec3ff5-0af3-4563-9658-a9e4b5b2992b','BURGESSK',3,0),(74,'6f89449e-ca63-4b58-8ac9-f5b2caf3750d','HESSLERK',3,0),(75,'d7c96aca-4fee-444d-af78-18e18a2256ad','MELLINK',3,0),(76,'8d31ab82-cb84-4a28-a009-1ba2cb4c14ea','STONEK',3,0),(77,'5c4492ea-d19b-4446-ac8b-042c59bc2280','ULBICKK',3,0),(78,'f4e984d4-e250-4488-9222-aaf56171d205','STONEL',3,0),(79,'489438c5-0350-4acb-b748-1dcfb506a2bb','COLANTUONIM',3,0),(80,'2c796ae3-0fba-40ef-bccc-d45491ac84d2','KITKOM',3,0),(81,'3a5c08f3-b683-457e-aa21-13b807c74110','MALLORYM',3,0),(82,'db15f6ce-367e-4427-9e88-18da2f2dc66f','SHOTWELLM',3,0),(83,'646bfb7e-c1da-4425-a48d-fbd619472f79','CRAMPTONN',3,0),(84,'a3ce17f3-153b-49ba-ae9b-1811f524ec30','KRAUSN',3,0),(85,'77679696-d86f-4a4a-9472-fa21511c22cd','WILLIAMSP',3,0),(86,'e764a125-5991-48dd-8ad8-7129a3e695ce','AHOR',3,0),(87,'3385e700-18fa-4af2-ae7d-5cbfd432b041','DUFFEYR',3,0),(88,'55ead5ed-b0ca-41b4-b2ad-03f6fe458a0b','LANTISR',3,0),(89,'c966af5f-084c-4a0f-a40f-c6c742996d75','WILSONR',3,0),(90,'f02c0cd6-62a4-4e15-ab33-70bb9e92ecf1','ENDERST',3,0),(91,'88290803-c01d-4b01-b46d-37914c15a11c','HACKERT',3,0),(92,'5a099905-7963-4724-a2d0-c13c455decd2','MURRAYY',3,0),(93,'32500633-3428-4ef8-aad0-44d60a2006e5','BOLDTL',3,0),(94,'944806af-597a-45f6-b895-ddc26f6bf83f','EINFELDTS',3,0),(96,'8dc61856-9230-4d18-a26a-fa7caee8201a','EARLR',3,0);
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
INSERT INTO `userworkcode` VALUES (1,103),(1,104),(1,105),(1,106),(1,155),(18,107),(18,117),(18,124),(18,125),(18,126),(18,127),(18,144),(18,145),(18,146),(18,147),(18,148),(18,149),(18,159),(18,162),(18,163),(18,172),(18,182),(18,183),(18,184),(18,189),(18,196),(18,201),(18,202),(22,140),(22,141),(22,142),(22,143),(22,144),(22,145),(22,146),(22,147),(22,148),(22,149),(22,150),(22,151),(22,152),(22,153),(22,154),(22,155),(23,103),(23,104),(23,105),(23,120),(23,126),(23,131),(23,157),(23,185),(32,125),(32,126),(32,127),(32,132),(32,141),(32,144),(32,156),(32,172),(32,182),(32,183),(32,189),(32,196),(32,202),(33,150),(33,154),(33,202),(40,107),(40,159),(40,172),(40,182),(40,189),(40,196),(40,202),(73,162),(73,182);
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
INSERT INTO `workcode` VALUES (103,'ADL','AIRDUCT REPAIR LEFT','ENGINE','L',1,0,0,0,0,1,1),(104,'ADR','AIRDUCT REPAIR RIGHT','ENGINE','L',1,0,0,0,0,1,1),(105,'AXB','AUX DR BLOW REBUILD','COMPS','L',1,0,0,0,0,1,1),(106,'AXT','AUX DR TURBO REBUILD','COMPS','L',1,0,0,0,0,1,1),(107,'BER','BEREAVEMENT','TIME OFF','O',0,1,1,1,1,1,1),(108,'BMA','BORING MACH MILLNG','CASE & PAN','L',1,0,0,0,0,1,1),(109,'BMM','BORING MACH MAINT','CASE & PAN','L',0,0,0,0,0,1,1),(110,'CCP','CRANKCASE PRESSURE','COMPS','L',1,0,0,0,0,1,1),(111,'COM','COMMUTER GOV','GOV','L',1,0,0,1,0,0,1),(112,'CP1','TEARDOWN/CLEAN','CASE & PAN','L',1,0,0,0,0,1,1),(113,'CP2','INSPECT/ REPAIR','CASE & PAN','L',1,0,0,0,0,1,1),(114,'CP3','ASSEMBLE','CASE & PAN','L',1,0,0,0,0,1,1),(115,'CPM','MAGNAFLUX','CASE & PAN','L',1,0,0,0,0,1,1),(116,'CPW','WELDING','CASE & PAN','L',1,0,0,0,0,1,1),(117,'CRT','COURT','TIME OFF','O',0,1,1,1,1,1,1),(118,'CUT','PRODUCTION CUT','TIME OFF','O',0,0,0,1,0,1,1),(119,'EAV','AS BUILT/INSTALL DRAWG','ECS - 11. FINAL DOCUMENTATION','L',1,1,0,0,0,0,1),(120,'EAD','ASSY-DOCUMENTATION','ECS - 11. FINAL DOCUMENTATION','L',1,1,0,0,0,0,1),(121,'ECR','CONTRACT REVIEW','ECS - 01. PROJECT PLANNING','L',1,1,0,0,0,0,1),(122,'EDM','DESIGN-MECHANICAL','ECS - 02. DESIGN','L',1,1,0,0,0,0,1),(123,'EDR','DESIGN REVIEW MTGS.','ECS - 02. DESIGN','L',1,1,0,0,0,0,1),(124,'EDS','DESIGN-SYSTEM','ECS - 02. DESIGN','L',1,1,0,0,0,0,1),(125,'EFE','FAB-ELECTRICAL INTERF','ECS - 04. IN HOUSE FABRICATION','L',1,1,0,1,0,0,1),(126,'EFM','FAB-MECHANICAL INTEF','ECS - 04. IN HOUSE FABRICATION','L',1,1,0,0,0,0,1),(127,'EFP','FAB CONTROL PANEL','ECS - 04. IN HOUSE FABRICATION','L',1,1,0,0,0,0,1),(128,'EFS','FIELD SERVICE–SYSTEMS','ECS – 13. GENERAL','L',1,1,0,0,0,0,1),(129,'EGB','EGB GOV','GOV','L',1,0,0,1,0,0,1),(130,'EIC','INSTALLATION COMPONENTS','ECS - 07. INSTALLATION','L',1,1,0,0,0,0,1),(131,'EID','INST/DEMO','ECS - 07. INSTALLATION','L',1,1,0,0,0,0,1),(132,'EIT','IN HOUSE TESTING','ECS - 05. VALIDATION','L',1,1,0,0,0,0,1),(133,'ELT','LOST TIME','ECS - 10. ON-SITE NON PRODUCTIVE TIME','L',1,1,0,0,0,1,1),(134,'EN1','TEARDOWN/CLEAN','ENGINE','L',1,0,0,0,0,1,1),(135,'EN2','REPAIR/REBUILD','ENGINE','L',1,0,0,0,0,1,1),(136,'EN3','ASSEMBLE/TEST/SHIP','ENGINE','L',1,0,0,0,0,1,1),(137,'ENM','MAGNAFLUX','ENGINE','L',1,0,0,0,0,1,1),(138,'ENW','WELDING','ENGINE','L',1,0,0,0,0,1,1),(139,'EPC','PROGRAMMING & CONFIG','ECS - 04. IN HOUSE FABRICATION','L',1,1,0,0,0,0,1),(140,'EPJ','PREPARATION JOB SITE','ECS - 06. FIELD WORK PREPARATION','L',1,1,0,1,0,0,1),(141,'ECH','PREP-START/INSTALL/CK','ECS - 08. VERIFICATION','L',1,1,0,1,0,0,1),(142,'EPM','PROJECT MANAGEMENT','ECS - 01. PROJECT PLANNING','L',1,1,0,0,0,0,1),(143,'EPR','PROCUREMENT','ECS - 03. MATERIAL','L',1,1,0,1,0,1,1),(144,'EPS','SHIPPING ','ECS - 06. FIELD WORK PREPARATION','L',1,1,0,1,0,0,1),(145,'EPT','PREP TRAVEL','ECS - 06. FIELD WORK PREPARATION','L',0,1,0,1,0,1,1),(146,'EQT','QUOTE/PROPOSAL','ECS - 01. PROJECT PLANNING','L',0,1,0,1,0,1,1),(147,'ERE','ESG REDO','ECS - 12. POST PROJECT SUPPORT','L',1,1,0,1,0,0,1),(148,'ESC','STANDBY TIME-CUSTOMER','ECS - 10. ON-SITE NON PRODUCTIVE TIME','L',1,1,0,1,0,0,1),(149,'ESS','SITE SURVEY','ECS - 01. PROJECT PLANNING','L',1,1,0,1,0,0,1),(150,'EST','START UP TESTING','ECS - 08. VERIFICATION','L',1,1,0,1,0,0,1),(151,'ETC','TRAINING-CUSTOMER','ECS - 09. TRAINING','L',1,1,0,1,0,0,1),(152,'ETP','TEST PLAN DEVELOPMENT','ECS - 05. VALIDATION','L',1,1,0,0,0,0,1),(153,'ETS','TROUBLE SHOOTING','ECS - 12. POST PROJECT SUPPORT','L',1,1,0,1,0,0,1),(154,'ETW','TRAVEL-NOT BILLABLE','ECS - 13. GENERAL','O',1,1,0,1,0,0,1),(155,'ETV','TRAVEL-BILLABLE','ECS - 13. GENERAL','L',1,1,0,1,0,0,1),(156,'EWF','WIRING-FIELD','ECS - 07. INSTALLATION','L',1,1,0,1,0,0,1),(157,'EWT','WARRANTY/TROUBLE SHT','ECS - 12. POST PROJECT SUPPORT','L',1,1,0,0,0,0,1),(158,'EXE','EXPEDITING','ECS - 03. MATERIAL','L',1,1,0,0,0,0,1),(159,'FHL','FLOATING HOLIDAY','TIME OFF','O',0,1,1,1,1,1,1),(160,'FSG','MAGNAFLUX','FIELD SERVICE','L',1,0,0,0,0,0,1),(161,'FRB','FIELD SERVICE REBUILD','FIELD SERVICE','L',1,0,1,1,0,0,1),(162,'FS1','PEAKER & OIL RIGS','FIELD SERVICE','L',1,0,1,1,0,0,1),(163,'FS2','BOAT SERVICE','FIELD SERVICE','L',1,0,1,1,0,0,1),(164,'FS3','LOCO','FIELD SERVICE','L',1,0,1,1,0,0,1),(165,'FS4','GENERATOR SET','FIELD SERVICE','L',1,0,1,1,0,0,1),(166,'FSM','FIELD SERVICE MAINT','FIELD SERVICE','L',1,0,1,0,0,0,1),(167,'FSP','FIELD SERVICE JOB PREP','FIELD SERVICE','L',1,0,1,1,0,0,1),(168,'FSS','FIELD SERVICE SALES','FIELD SERVICE','O',0,0,1,0,0,0,1),(169,'FSW','WELDING','FIELD SERVICE','L',1,0,1,0,0,0,1),(170,'GDR','GOV DR REBUILD','COMPS','L',1,0,0,0,0,1,1),(171,'GOV','GOVERNOR','GOV','L',1,1,0,1,0,0,1),(172,'HOL','HOLIDAY','TIME OFF','O',0,1,1,1,1,1,1),(173,'HON','HONE LINERS','COMPS','L',1,0,0,0,0,1,1),(174,'INV','INVENTORY PROJECT','OVERHEAD','O',1,1,1,1,1,1,1),(175,'LO1','LOCO ENGINE REMOVAL','ENGINE','L',1,0,0,0,0,1,1),(176,'LO2','LOCO ENGINE INSTALL','ENGINE','L',1,0,0,0,0,1,1),(177,'LO3','LOCO TESTING','ENGINE','L',1,0,0,0,0,1,1),(178,'LOP','LUBE OIL PUMP','COMPS','L',1,0,0,0,0,1,1),(179,'LOS','LUBE OIL SCAVENGING','COMPS','L',1,0,0,0,0,1,1),(180,'','','','',0,0,0,0,0,0,1),(181,'MAI','MAINTENANCE','OVERHEAD','O',0,1,1,1,0,1,1),(182,'MIS','MISC','OVERHEAD','O',0,1,1,1,1,1,1),(183,'MTG','MEETING','OVERHEAD','O',0,1,1,1,1,1,1),(184,'OFF','OFF W/O PAY','TIME OFF','O',0,1,1,1,1,1,1),(185,'P2M','MAGNAFLUX','COMPS','L',1,0,0,0,0,1,1),(186,'PA1','TEARDOWN','COMPS','L',0,0,0,0,0,1,1),(187,'PA2','INSPECT & REPAIR','COMPS','L',1,0,0,0,0,1,1),(188,'PA3','ASSEMBLE','COMPS','L',1,0,0,0,0,1,1),(189,'PER','OFF WITH PAY','TIME OFF','O',0,1,1,1,1,1,1),(190,'PGA','PNUMATIC GOV','GOV','L',1,1,0,1,0,0,1),(191,'PGE','PGE GOV','GOV','L',1,0,0,1,0,0,1),(192,'PGV','VAN SERVO GOV','GOV','L',1,0,0,1,0,0,1),(193,'REB','MISC REBUILD','OTHER PRODUCTION','O',1,0,1,1,0,1,1),(194,'REW','REWORK','OTHER PRODUCTION','O',1,1,1,1,0,1,1),(195,'ROC','ROCKER ARMS','ENGINE','L',1,0,0,0,0,1,1),(196,'SIC','SICK WITH PAY','TIME OFF','O',0,1,1,1,1,1,1),(197,'SBM','SOAKBACK PUMP & MOTOR','COMPS','L',1,0,0,0,0,1,1),(198,'SRV','SHIPPING & RECEIVING','OVERHEAD','O',1,1,0,1,0,1,1),(199,'SSS','SALES & SERVICE SUPPT','ECS - 13. GENERAL','L',0,1,0,1,0,0,1),(200,'TCC','TEST CELL','OVERHEAD','O',1,1,0,0,0,1,1),(201,'TRG','TRAINING','OVERHEAD','O',0,1,1,0,1,1,1),(202,'VAC','VACATION','TIME OFF','O',0,1,1,1,1,1,1),(203,'WAD','WELDING','OTHER PRODUCTION','L',1,0,0,0,0,1,1),(204,'WKC','WORKERS COMP','TIME OFF','L',0,1,1,1,1,1,1),(205,'WPS','WATER PUMPS','COMPS','L',1,0,0,0,0,1,1);
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
CREATE  PROCEDURE `deletehoursfortimeentry`(
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
CREATE  PROCEDURE `deletetimeentry`(IN p_entryId int)
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
CREATE  PROCEDURE `deleteuserworkcode`(
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
CREATE  PROCEDURE `getallworkcodes`()
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
CREATE  PROCEDURE `getauserdetail`(
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
CREATE  PROCEDURE `gethoursfordate`(
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
CREATE  PROCEDURE `gethoursforentry`(
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
CREATE  PROCEDURE `getissecondshift`(
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
CREATE  PROCEDURE `getPayrollExportEntries`()
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
CREATE  PROCEDURE `getrestrictedjobnumbers`()
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
CREATE  PROCEDURE `gettargetworkcode`(
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
CREATE  PROCEDURE `getuserdetail`(
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
CREATE  PROCEDURE `getuserdetailidfromusername`(
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
CREATE  PROCEDURE `getuserworkcodelist`(
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
CREATE  PROCEDURE `getWorkCode`(
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
CREATE  PROCEDURE `getworkcodeidfrombasecode`(
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
CREATE  PROCEDURE `insertpeakerevent`(
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
CREATE PROCEDURE `inserttimeentry`(
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
        WorkCodeId,
        CreatedDate
	)
	VALUES
	(
		p_userDetailId,
		p_entryDate,
		p_jobnumber,
		p_comments,
        p_exportedToNavision,
        p_exportedToPayroll,
        p_workCodeId,
        CURRENT_TIMESTAMP
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
CREATE  PROCEDURE `inserttimeentryhours`(
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
CREATE  PROCEDURE `insertuserdetail`(
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
CREATE  PROCEDURE `insertuserworkcode`(
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
CREATE  PROCEDURE `insertworkcode`(
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
CREATE  PROCEDURE `setexportedtonavision`(
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
CREATE  PROCEDURE `setexportedtopayroll`(
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
CREATE  PROCEDURE `updatetimeentry`(
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
CREATE  PROCEDURE `UpdateTimeEntryClearNavisionExport`()
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
CREATE  PROCEDURE `UpdateTimeEntryClearPayrollExport`()
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
CREATE  PROCEDURE `updateuserdetail`(
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
CREATE  PROCEDURE `updateworkcode`(
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

-- Dump completed on 2017-02-21 13:54:18
