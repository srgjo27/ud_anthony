-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 12 Jun 2024 pada 03.52
-- Versi server: 8.0.30
-- Versi PHP: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ud_anthony`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `maincategory_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `maincategory_name`, `created_at`, `updated_at`) VALUES
(1, 'Skincare', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(2, 'Haircare', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(3, 'Bodycare', '2024-05-07 23:27:57', '2024-05-07 23:27:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_20_064242_create_categories_table', 1),
(6, '2024_02_20_064321_create_products_table', 1),
(7, '2024_02_20_064454_create_product_images_table', 1),
(8, '2024_02_20_064557_create_product_reviews_table', 1),
(9, '2024_02_20_064621_create_profiles_table', 1),
(10, '2024_05_21_062555_add_skin_type_to_products_table', 2),
(11, '2024_06_03_032426_add_foreign_key_to_profiles_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `subcategory_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `skin_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `name`, `brand`, `type`, `skin_type`, `description`, `price`, `created_at`, `updated_at`) VALUES
(4, 2, 10, 'Zinc Refreshing Cool - anti ketombe', 'Zinc', 'Sampo', 'Ketombe', '\"Zinc Refreshing Cool - anti ketombe\r\nZINC Refreshing Cool Shampoo merupakan Shampoo Anti Ketombe dengan Complex Zinc-PTO Serum untuk mengurangi ketombe. Dilengkapi dengan ekstrak Green Tea Mint membuat rambut bersih, mudah diatur dan lebih segar. How to use:Usapkan pada rambut yang basah, pijat shampoo di kulit kepala. Bilas hingga bersih, ulangi bila perlu. Gunakan secara teratur. Suitable for:Kulit berketombeIngredients:-\"', 30900.00, '2024-03-02 22:43:34', '2024-03-02 22:43:34'),
(5, 2, 10, 'Zinc clean active - anti ketombe', 'Zinc', 'Sampo', 'Ketombe', 'ZINC Clean Active Shampoo merupakan Shampoo Anti Ketombe dengan Complex Zinc-PTO Serum untuk mengurangi ketombe. Dilengkapi dengan Sea Salt membersihkan rambut dan di waktu yang sama melindungi dari kuman penyebab gatal serta melembutkan rambut yang kering dan kasar. How to use:Usapkan pada rambut yang basah, pijat shampoo di kulit kepala. Bilas hingga bersih, ulangi bila perlu. Gunakan secara teratur. Suitable for:Kulit berketombeIngredients:-', 23900.00, '2024-03-02 22:49:09', '2024-03-02 22:49:09'),
(6, 2, 10, 'Zinc  Active fresh - anti ketombe', 'Zinc', 'Sampo', 'Ketombe', 'ZINC Active Fresh Shampoo merupakan Shampoo Anti Ketombe dengan Complex Zinc-PTO Serum untuk mengurangi ketombe. Dilengkapi dengan Lemon dan Mint membersihkan minyak di kulit kepala dan menyegarkan secara menyeluruh, bebas khawatir bau kulit kepala.How to use:Usapkan pada rambut yang basah, pijat shampoo di kulit kepala. Bilas hingga bersih, ulangi bila perlu. Gunakan secara teratur.Suitable for:Kulit berketombeIngredients:-', 29900.00, '2024-03-02 22:49:52', '2024-03-02 22:49:52'),
(7, 2, 10, 'Wardah anti dandruff shampoo - anti ketombe', 'Wardah', 'Sampo', 'Ketombe', 'Wardah Shampoo Anti Dandruff dapat membersihkan, mengurangi ketombe dan memberi efek menyegarkan pada kulit kepala. Mengandung Tea Tree Oil dan Double Zinc Active yang dapat melindungi serta mengurangi ketombe, dan Peppermint Extract yang memberi sensasi dingin pada kulit kepala. How to Use:Tuangkan secukupnya pada tangan, kemudian pijat lembut ke seluruh area rambut yang sudah dibasahi. Bilas rambut hingga bersih. Suitable for:Rambut berketombeIngredients:-', 52000.00, '2024-03-02 22:50:42', '2024-03-02 22:50:42'),
(8, 2, 10, 'Wardah nutri shine - tampak sehat berkilau', 'Wardah', 'Sampo', 'Kering', '\"Wardah Nutri Shine Shampoo 170 ml Rambut tampak lebih sehat, halus, berkilau, dan mudah diatur. Untuk rambut yang rusak dan kusam akibat kurang nutrisi. Rambut tampak lebih sehat, halus, berkilau, dan mudah diatur.\r\nRambut terasa halus dan lebih segar.\r\nMenjaga kelembaban alami untuk menghindari rambut kering dan hasil akhir rambut yang terasa lembut, halus dan ringan\"', 24396.00, '2024-03-02 22:51:07', '2024-03-02 22:51:07'),
(9, 2, 10, 'Wardah hairfall treatment - perawatan rambut rontok', 'Wardah', 'Sampo', 'Rontok', '\"Wardah hairfall treatment - perawatan rambut rontok Membantu mengurangi rambut rontok karena patah dan menjaga kekuatan batang rambut. Mengandung ScentLock Fragance dengan wangi lebih tahan lama bahkan pemakaian berikutnya, jadikan rambut terasa lebih segar dan harum sepanjang hari. Dengan paduan bahan aktif natural yang bekerja dengan multiaksi. Gingseng Extract bantu kurangi rambut rontok, Rosemary Extract yang terkenal menutrisi kulit kepala serta Keratin bantu jaga kekuatan batang rambut agar tidak mudah patah.\"', 23300.00, '2024-03-02 22:52:22', '2024-03-02 22:52:22'),
(10, 2, 10, 'Wardah daily fresh - bebas lepek dan berminyak', 'Wardah', 'Sampo', 'Berminyak', '\"Wardah daily fresh - bebas lepek dan berminyak\r\nWardah Shampoo Daily Fresh adalah sampo yang menyegarkan dan membuat rambut terasa lebih lembut dengan paduan bahan aktif natural multiaksi. Aloevera dan Seaweed extract bantu menutrisi dan menyegarkan rambut dan kulit kepala. Kamu harus coba sendiri dan rasakan kesegaran Wardah Shampoo Daily Fresh!\"', 22700.00, '2024-03-02 22:52:52', '2024-03-02 22:52:52'),
(11, 2, 10, 'Metal Fortist - memanjangkan rambut', 'Metal', 'Sampo', 'Rontok', '\"Metal Fortis Hair Living Shampoo merupakan Regular Shampoo yang cocok digunakan untuk tipe rambut Normal. Sampo Metal Fortis ini memiliki tekstur Cair dan dilengkapi berbagai kandungan khusus yang mampu menangani masalah Dull Hair. Mau beli sampo ini? Dapatkan harga Metal Fortis Hair Living Shampoo yang terbaik mulai dari IDR31.480 melalui iPrice Indonesia. \"', 31480.00, '2024-03-02 22:54:58', '2024-03-02 22:54:58'),
(12, 2, 10, 'selsun blue shampoo - rambut berketombe', 'Selsun', 'Sampo', 'Ketombe\r\n', '\"selsun blue shampoo - rambut berketombe\r\nMengatasi ketombe tingkat sedang sampai berat.\r\nAnti ketombe Selenium Sulfida 1%.\r\nMengurangi gatal - gatal karena ketombe.\r\nGunakan 2 kali seminggu\"', 37500.00, '2024-03-02 22:55:37', '2024-03-02 22:55:37'),
(13, 2, 10, 'selsun yellow double impcat - rambut berketombe', 'Selsun', 'Sampo', 'Berminyak', '\"Selsun Yellow Double Impact \r\nMengandung kombinasi selenium Sulfide dan Zinc Pto yang bekerja sinergis sebagai anti ketombe. Membantu mengurangi ketombe dan membantu mengurangi gatal-gatal karena ketombe sehingga kulit kepala &rambut tetap sehat dan bersih. Kegunaan : Membantu mengurangi ketombe dan membantu mengurangi gatal-gatal karena ketombe. Cara pemakaian : Tuangkan Selsun Double Impact secukupnya , keramaskan pada rambut dan kulit kepala dengan merata. Biarkan 2-3 menit untuk mendapatkan hasil yang maksimal , kemudian bilas dengan air hingga bersih.\"', 37500.00, '2024-03-02 22:56:23', '2024-03-02 22:56:23'),
(14, 2, 10, 'lifebuoy shampoo biru - anti dandruff', 'lifebuoy', 'Sampo', 'Ketombe', '\"lifebuoy shampoo biru - anti dandruff\r\nLifebuoy Shampoo Anti Dandruff 170ml\r\nMerawat kesehatan kulit kepala dengan Germ Guard Milk Formula. Menghilangkan kuman penyebab ketombe.\r\n\"', 35000.00, '2024-03-02 22:56:56', '2024-03-02 22:56:56'),
(15, 2, 10, 'lifebuoy shampoo merah - anti rontok', 'lifebuoy', 'Sampo', 'Rontok', '\"lifebuoy shampoo merah - anti rontok\r\nLifebuoy Shampo Perawatan Rambut Rontok yang diformulasikan dengan MilkNutriStrong dan Aloe Vera, mengurangi kerontokan rambut^ dan membuat rambut lebih kuat dan lembut.\r\n\r\n^rontok karena patah\r\n•  Shampo Anti Rontok memberikan 5 tanda rambut sehat** (rusak^^ berkurang, rontok^ berkurang, wangi, lembut, kuat).\r\n\r\n**Berdasarkan tes konsumen\r\n^^Karena bahan kimia\r\n^Karena rontok\r\n•  Shampo Rambut Rontok / Shampo Anti Hairfall yang mengandung bahan alami dan cocok digunakan oleh keluarga. Beri Anda sekeluarga kepercayaan diri untuk melangkah maju!\r\n•  Anti Hair Fall Shampoo / Shampo Anti Rambut Rontok melindungi rambut dari panas matahari, debu, dan polusi. Menjadikan rambut sehat alami.\r\n•  Shampoo Anti Hair Fall diperkaya dengan kebaikan Susu dan Aloe Vera tang menutrisi rambut hingga keujungnya, menjadikannya lebih kuat dan tahan patah.\r\n•  Shampoo rambut rontok dengan manfaat 2 in 1; MilkNutriStrong berfungsi menjadikan rambut kuat dan Aloe Vera dikenal mencegah rambut rontok^ dan membantu pertumbuhan alami rambut\"', 35000.00, '2024-03-02 22:57:27', '2024-03-02 22:57:27'),
(16, 2, 10, 'serasoft dandruff treatment - anti ketombe', 'Serasoft', 'Sampo', 'Ketombe\r\n', '\"serasoft dandruff treatment - anti ketombe\r\nSERASOFT Shampoo Dandruff Treatment 340ml merupakan shampo persembahan Serasoft yang memiliki kandungan DGA serum dengan teknologi Jepang yang menutrisi dari dalam yang dapat merawat kekuatan helai rambut. Shampo ini sangat cocok untuk mengatasi ketombe. Shampo ini membuat rambut Anda jauh lebih kuat dan tebal dan bebas terhadap ketombe. Selain itu, shampo persembahan Serasoft ini tersedia dalam kemasan yang praktis dan mudah untuk digunakan. Shelf life 24 bulan, BPOM NA18191005273.\"', 17000.00, '2024-03-02 22:58:09', '2024-03-02 22:58:09'),
(17, 2, 10, 'serasoft shiny black - menghitamkan dan mengkilaukan', 'Serasoft', 'Sampo', 'Bercabang', '\" serasoft shiny black - menghitamkan dan mengkilaukan\r\nSerasoft Serum Shampoo Shiny And Black merupakan shampoo pertama yang mengandung serum dengan teknologi Jepang. Serum nya mampu bekerja 5x lebih cepat untuk menutrisi rambut dari akar, batang hingga ujung nya sehingga menjadikan rambut lembut dan lebih sehat, serta Kandungan Alami Black Sesame juga cocok untuk rambut kusam, sehingga rambut menjadi lebih hitam berkilau dari hari ke hari.How to use:Basahi seluruh rambut. Tuangkan produk pada tangan dan pijat perlahan pada kulit kepala. Bilas hingga bersih. Lanjutkan dengan Conditioner.Suitable for:Rambut kusamIngredients:DGA SERUM + BLACK SESAME\"', 29500.00, '2024-03-02 22:58:48', '2024-03-02 22:58:48'),
(18, 2, 10, 'Makarizo aloe & melon extract - rambut rontok', 'Makarizo', 'Sampo', 'Rontok', '\"Makarizo aloe & melon extract - rambut rontok\r\nMakarizo Hair Energy Fibertheraphy Conditioning Shampoo Aloe & Melon Extract Perawatan rambut / shampoo rambut / shampo / sampo / kondisioner / kondisioner rambut] 330 ml [ sampo untuk rambut rontok ]\r\n\r\nPengen rambutmu selalu sehat gak pake ribet? Cobain deh Makarizo Hair Energy Fibertheraphy Conditioning Shampoo (Shampo yang disertai Conditioner / Sampo plus Kondisioner / Shampo Aloe & Melon).\r\n\r\n• Gak perlu lagi ribet-ribet pake shampo plus conditioner, karena formulanya yang membersihkan sekaligus merawat setara dengan shampo plus conditioner lho. \r\n• Selain gak ribet, kamu juga bisa hemat karena gak perlu lagi beli kondisioner. Kamu tetep bisa hangout bareng temen-temen dengan rambut yang sehat dan terawat.\r\n\r\n• Kandungan Passiflora Plant Oil dan Asam Aminonya, mampu memperbaiki sekaligus merawat rambut. \r\n• Selain itu, diformulasikan dengan pH-Balanced sehingga bebas dari iritasi, karena kadar pH sesuai dengan kulit kepalamu, dan bisa digunakan setiap hari. \r\n• Kamu jadi lebih percaya diri buat beraktivitas sehari-hari!\r\n\r\nEitss jangan khawatir, Makarizo Hair Energy Fibertheraphy Conditioning Shampoo punya banyak varian yang bisa kamu bisa pilih sesuai dengan jenis dan masalah rambut kamu!\"', 37635.00, '2024-03-02 22:59:25', '2024-03-02 22:59:25'),
(19, 2, 10, 'makarizo ollive extgract - rambut lepek dan kusam', 'Makarizo', 'Sampo', 'Berminyak', '\"makarizo ollive extract - rambut Berminyak\r\nMakarizo Hair Energy Fibertheraphy Conditioning Shampoo Olive Extract Perawatan rambut / shampoo rambut / shampo / sampo / kondisioner / kondisioner rambut] 330 ml [ sampo untuk rambut Berminyak ]\r\n\r\nPengen rambutmu selalu sehat gak pake ribet? Cobain deh Makarizo Hair Energy Fibertheraphy Conditioning Shampoo (Shampo yang disertai Conditioner / Sampo plus Kondisioner / Shampo Olive).\r\n\r\n• Gak perlu lagi ribet-ribet pake shampo plus conditioner, karena formulanya yang membersihkan sekaligus merawat setara dengan shampo plus conditioner lho. \r\n• Selain gak ribet, kamu juga bisa hemat karena gak perlu lagi beli kondisioner. Kamu tetep bisa hangout bareng temen-temen dengan rambut yang sehat dan terawat.\r\n\r\n• Kandungan Passiflora Plant Oil dan Asam Aminonya, mampu memperbaiki sekaligus merawat rambut. \r\n• Selain itu, diformulasikan dengan pH-Balanced sehingga bebas dari iritasi, karena kadar pH sesuai dengan kulit kepalamu, dan bisa digunakan setiap hari. \r\n• Kamu jadi lebih percaya diri buat beraktivitas sehari-hari!\r\n\"', 37635.00, '2024-03-02 23:00:10', '2024-03-02 23:00:10'),
(20, 2, 10, 'makarizo royal jelly extract - rambut kering dan rusak', 'Makarizo', 'Sampo', 'Kering', '\"makarizo royal jelly extract - rambut kering dan rusak\r\nMakarizo Hair Energy Fibertheraphy Conditioning Shampoo Royal Jelly Extract [Perawatan rambut / shampoo rambut / shampo / sampo / kondisioner / kondisioner rambut] 330 ml [ sampo untuk rambut kering dan rusak ]\r\n\r\nPengen rambutmu selalu sehat gak pake ribet? Cobain deh Makarizo Hair Energy Fibertheraphy Conditioning Shampoo (Shampo yang disertai Conditioner / Sampo plus Kondisioner / Shampo Royal Jelly).\r\n\r\n• Gak perlu lagi ribet-ribet pake shampo plus conditioner, karena formulanya yang membersihkan sekaligus merawat setara dengan shampo plus conditioner lho. \r\n• Selain gak ribet, kamu juga bisa hemat karena gak perlu lagi beli kondisioner. Kamu tetep bisa hangout bareng temen-temen dengan rambut yang sehat dan terawat.\r\n\r\n• Kandungan Passiflora Plant Oil dan Asam Aminonya, mampu memperbaiki sekaligus merawat rambut. \r\n• Selain itu, diformulasikan dengan pH-Balanced sehingga bebas dari iritasi, karena kadar pH sesuai dengan kulit kepalamu, dan bisa digunakan setiap hari. \r\n• Kamu jadi lebih percaya diri buat beraktivitas sehari-hari!', 37635.00, '2024-03-02 23:00:47', '2024-03-02 23:00:47'),
(21, 2, 10, 'makarizo kiwi extract - rambut diproses kimia', 'Makarizo', 'Sampo', 'Bercabang', '\"makarizo kiwi extract - rambut diproses kimia\r\nMakarizo Hair Energy Fibertheraphy Conditioning Shampoo Kiwi Extract [Perawatan rambut / shampoo rambut / shampo / sampo / kondisioner / kondisioner rambut] 170 ml [ sampo untuk rambut diwarnai ]\r\n\r\nPengen rambutmu selalu sehat gak pake ribet?Cobain deh Makarizo Hair Energy Fibertheraphy Conditioning Shampoo (Shampoyang disertai Conditioner / Sampo plus Kondisioner / Shampo Kiwi).\r\n\r\n• Gak perlu lagi ribet-ribet pake shampo plus conditioner, karena formulanya yang membersihkan sekaligus merawat setara dengan shampo plus conditioner lho. \r\n• Selain gak ribet, kamu juga bisa hemat karena gak perlu lagi beli kondisioner. Kamu tetep bisa hangout bareng temen-temen dengan rambut yang sehat dan terawat.\r\n\r\n• Kandungan Passiflora Plant Oil dan Asam Aminonya, mampu memperbaiki sekaligus merawat rambut. \r\n• Selain itu, diformulasikan dengan pH-Balanced sehingga bebas dari iritasi, karena kadar pH sesuai dengan kulit kepalamu, dan bisa digunakan setiap hari. \r\n• Kamu jadi lebih percaya diri buat beraktivitas sehari-hari!\"', 37635.00, '2024-03-02 23:01:38', '2024-03-02 23:01:38'),
(22, 2, 10, 'sunsilk lidah buaya & tea tree - anti ketombe', 'Sunsilk', 'Sampo', 'Ketombe\r\n', '\"sunsilk lidah buaya & tea tree - anti ketombe\r\nSampo Anti Ketombe dengan 2 manfaat: \r\n1) Menghilangkan ketombe dengan efektif \r\n2) Menutrisi rambut agar 2X lebih kuat & tetap sehat\r\n\r\nKetombe Hempas + Rambut Sehat Totalitas\"', 26900.00, '2024-03-02 23:02:24', '2024-03-02 23:02:24'),
(23, 2, 10, 'Sunsilk Nourishing Soft & Smooth - rambut lembut', 'Sunsilk', 'Sampo', 'Kering', '\"Sunsilk Nourishing Soft & Smooth - rambut lembut\r\nTerdiri dari 2 buah produk Sunsilk Soft & Smooth Activ-Infusion Rambut 5X Lebih Lembut & Halus with Argan Oil 160 ml x2\r\n\r\nBerikanlah perawatan terbaik bagi rambut Anda dengan menggunakan Sunsilk Soft & Smooth! Hadir dengan Moisture-Lock Technology dan kandungan 5 Minyak Alami yang akan mempertahankan kelembapan rambutmu agar tampak sehat, senantiasa halus dan lembut.\"', 26900.00, '2024-03-02 23:02:52', '2024-03-02 23:02:52'),
(24, 2, 10, 'Sunsilk Shampoo Co-creations Black Shine - hitam, anti lepek', 'Sunsilk', 'Sampo', 'Berminyak', '\"Sunsilk Shampoo Co-creations Black Shine - hitam, anti berminyak\r\nSampo yang kombinasi 5 bahan alami yaitu urang Aring, jeruk nipis Camellia ESSENCE, MINT, dan Ginseng, meremanjakan & menghidupkan kembali rambut hitam, menjadikannya segar, harum dan bebas berminyak\r\n#sampohitamdanantiminyak\"', 26900.00, '2024-03-02 23:03:29', '2024-03-02 23:03:29'),
(25, 2, 10, 'Lifebuoy Shampoo Hijau - Kuat dan berkilau', 'lifebuoy', 'Sampo', 'Kering', '\"Lifebuoy Shampoo Hijau - Kuat dan berkilau\r\nPenampilan yang maksimal tak hanya dengan tubuh yang sehat tapi juga didukung dengan rambut yang sehat. Memiliki keluarga dengan rambut yang indah dan sehat tentu menjadi kebangaan tersendiri bagi ibu. Namun paparan debu, kotoran dan sinar matahari saat beraktivitas di luar membuat nutrisi dalam rambut hilang, membuatnya menjadi kusam bahkan rusak. Rambut yang kusam, kering, dan mudah patah bisa mengganggu penampilan. Kini Lifebuoy Shampoo Kuat & Berkilau hadir untuk membantu Anda merawat rambut keluarga tercinta agar selalu sehat, kuat, dan berkilau.\r\n\r\nDeskripsi :\r\nMembersihkan rambut hingga kulit kepala\r\nMembantu mengembalikan vitalitas dan kilau alami rambut\r\nRambut lebih lebat setiap kali keramas\r\nLifebuoy Shampoo Kuat & Berkilau 340ml merupakan salah satu varian dari Lifebuoy Shampoo yang diformulasi khusus untuk membersihkan rambut hingga kulit kepala dan membantu mengembalikan vitalitas rambut serta kilau alaminya. Dengan Milk Protein Lock Formula, menjaga rambut tetap kuat dan berkilau dengan 5 tanda rambut sehat kinclong. Tak hanya itu, setiap tetes Lifebuoy Shampoo memiliki kandungan seperti susu yang mampu menutrisi ke bagian dalam rambut, sehingga secara berkala menjadikannya senantiasa kuat dan lebih lebat setiap kali keramas.\r\n\r\nRawat rambut keluarga selalu sehat, kuat dan berkilau, serta lebih lebat setiap kali keramas dengan menggunakan Lifebuoy Shampoo Kuat & Berkilau 340ml. Gunakan secara teratur untuk hasil yang lebih baik.\"', 34999.00, '2024-03-02 23:06:10', '2024-03-02 23:06:10'),
(26, 2, 10, 'TRESemmé Total Salon Repair Shampoo macadamia oil - rambut rusak dan rontok', 'Tresemme', 'Sampo', 'Rontok', '\"TRESemmé Total Salon Repair Shampoo macadamia oil - rambut rusak dan rontok\r\nTRESemmé Total Salon Repair dengan Ionic Complex merawat dan memperbaiki dengan cepat rambut rusak akibat treatment salon seperti di bleaching, cat ombre, highlight, smoothing atau akibat styling rambut lainnya. Selain memperbaiki, kandungan Macademia Oil akan menjadikan rambut lebih lembut dan mengembalikan kilau rambut yang kusam. Selanjutnya, dengan Brazil Nut Oil dan Chia Seeds Oil, TRESemmé Total Salon Repair bukan hanya memperbaiki namun juga mencegah kerusakan rambut dan membuat rambut tampak lebih sehat. Untuk menutrisi dari akar, Tea Tree Oil membuat rambut tumbuh kuat dan mengurangi rambut rontok. Dapatkan rambut salon seperti idaman kamu tanpa khawatir rambut rusak!\"', 42000.00, '2024-03-02 23:06:43', '2024-03-02 23:06:43'),
(27, 2, 10, 'Emeron Nutritive Shampoo Black & Shine - anti ketombe dan gatal', 'Emeron', 'Sampo', 'Ketombe\r\n', '\"Emeron Nutritive Shampoo Black & Shine - anti ketombe dan gatal\r\nAtasi rambut mudah patah dan rontok dengan Emeron Nutritive Shampoo Hair Fall Control. Formula ACTIVE PROVIT AMINO yang diperkaya dengan nutrisi lidah buaya akan menstimulasi pertumbuhan rambut baru serta menguatkan rambut dari akar sampai ujung. Rambut kuat, tebal, dan halus kini bukan lagi impian.\"', 25599.00, '2024-03-02 23:07:25', '2024-03-02 23:07:25'),
(28, 2, 10, 'Emeron hairfall control hijau - anti rontok', 'emeron', 'Sampo', 'Rontok', 'Atasi rambut mudah patah dan rontok dengan Emeron Nutritive Shampoo Hair Fall Control. Formula ACTIVE PROVIT AMINO yang diperkaya dengan nutrisi lidah buaya akan menstimulasi pertumbuhan rambut baru serta menguatkan rambut dari akar sampai ujung. Rambut kuat, tebal, dan halus kini bukan lagi impian.', 25600.00, '2024-03-02 23:08:06', '2024-03-02 23:08:06'),
(29, 2, 10, 'Clear Shampoo Cool Sport Menthol Men - anti ketombe', 'Clear', 'Sampo', 'Ketombe\r\n', '\"Clear Shampoo Cool Sport Menthol Men - anti ketombe\r\nClear anti dandruff shampoo yang merupakan sampo anti ketombe nomer satu di Indonesia, memahami bahwa setiap kulit kepala pria berbeda dengan kulit kepala wanita. Melihat kebutuhan akan solusi khusus terutama untuk pria, Clear menciptakan sampo rambut anti ketombe dengan kebutuhan khusus pria. Clear Cool Sport Menthol, inovasi formula anti ketombe baru berbentuk gel cair yang segar & cepat meresap. Menyegarkan kulit kepala dan rambut dengan sensasi dingin menthol sepanjang hari. Dengan Triple Anti-Dandruff Technology + komponen protein & vitamin. Menghadirkan formulasi terbaik yang menggabungkan perawatan rambut dan perawatan kulit kepala, dengan Triple Action, menghilangkan, melawan, dan mencegah dari ketombe. Dengan pemakaian produk secara teratur, tak ada ketombe, 100% yakin.\"', 59000.00, '2024-03-02 23:08:44', '2024-03-02 23:08:44'),
(30, 2, 10, 'clear ice cool menthol - anti ketombe', 'Clear', 'Sampo', 'Ketombe\r\n', '\"\"\"Clear Shampoo Cool Sport Menthol Men - anti ketombe\r\nClear anti dandruff shampoo yang merupakan sampo anti ketombe nomer satu di Indonesia, memahami bahwa setiap kulit kepala pria berbeda dengan kulit kepala wanita. Melihat kebutuhan akan solusi khusus terutama untuk pria, Clear menciptakan sampo rambut anti ketombe dengan kebutuhan khusus pria. Clear Cool Sport Menthol, inovasi formula anti ketombe baru berbentuk gel cair yang segar & cepat meresap. Menyegarkan kulit kepala dan rambut dengan sensasi dingin menthol sepanjang hari. Dengan Triple Anti-Dandruff Technology + komponen protein & vitamin. Menghadirkan formulasi terbaik yang menggabungkan perawatan rambut dan perawatan kulit kepala, dengan Triple Action, menghilangkan, melawan, dan mencegah dari ketombe. Dengan pemakaian produk secara teratur, tak ada ketombe, 100% yakin.\"\"\"', 59000.00, '2024-03-02 23:09:17', '2024-03-02 23:09:17'),
(31, 2, 10, 'Head & Shoulder selembut sutra - Melembutkan untuk Rambut kering', 'Head&Shoulders', 'Sampo', 'Kering', '\"Head & Shoulder selembut sutra - melembutkan\r\nDengan formula kondisionernya yang membuat rambutmu terasa halus dan lembut-kamu pasti suka membelainya! \r\n\r\nHead & Shoulders, Shampo Anti-Ketombe No.1 Di Dunia Dapatkan kulit kepala sehat dan rambut indah dengan Head & Shoulders, shampo anti-ketombe no.1 di dunia! \r\n\r\nTerbukti dan teruji lebih dari 200 kali, Head & Shoulders adalah shampo anti-ketombe yang paling banyak diuji* dan paling dipercaya di dunia. \r\n*Berdasarkan penelitian yang diterbitkan; Perhitungan P&G berdasarkan data penjualan Nielsen Juli 2013 - Juni 2014. Membantu menghilangkan ketombe dan mencegahnya datang kembali** \r\n\r\n**hanya ketombe yang tampak, dengan pemakaian teratur.\r\n\r\nRambut terasa halus dan lembut\"', 25900.00, '2024-03-02 23:09:51', '2024-03-02 23:09:51'),
(32, 2, 10, 'Head & Shoulder cool menthol - anti dandruff', 'Head&Shoulders', 'Sampo', 'Ketombe\r\n', '\"Head & Shoulder cool menthol - anti dandruff\r\nDengan formula menthol jadikan rambut serta kulit kepala terasa dingin dan bersih menyegarkan.\r\nHead & Shoulders, Shampo Anti-Ketombe No.1 Di Dunia\r\nDapatkan kulit kepala sehat dan rambut indah dengan Head & Shoulders, shampo anti-ketombe no.1 di dunia! Terbukti dan teruji lebih dari 200 kali, Head & Shoulders adalah shampo anti-ketombe yang paling banyak diuji dan paling dipercaya di dunia. Membantu menghilangkan ketombe dan mencegahnya datang kembali (hanya ketombe yang tampak, dengan pemakaian teratur).\r\n*Berdasarkan penelitian yang diterbitkan; Perhitungan P&G berdasarkan data penjualan Nielsen Juli 2013 - Juni 2014.\"', 25899.00, '2024-03-02 23:11:08', '2024-03-02 23:11:08'),
(33, 2, 10, 'Head & Shoulder Lemon Segar - membersihkan minyak', 'Head&Shoulders', 'Sampo', 'Berminyak', '\"Head & Shoulder Lemon Segar - membersihkan minyak\r\nShampo anti ketombe dengan kandungan lemon yang membersihkan dan merawat kulit kepala. Terbukti mampu mengatasi ketombe karena sudah menjelajah di seluruh dunia untuk merawat rambut menjadi sehat dengan kandungan formula hydrazinc pada setiap botolnya. Selain bebas dari ketombe, rambut Anda pun akan lembut dan mudah diatur. Kandungan ekstrak lemon dalam shampoo anti dandruf ini memberikan sensasi bersih dan segar lebih lama bahkan wangi lemon tetap semerbak hingga 6 jam meskipun matahari begitu terik menyinari. Pancarkan terus rambut kemilau, sehat, mempesona dalam diri Anda dengan terus mencuci rambut menggunakan Head & Shoulders Shampoo Lemon Fresh. Rasa nyaman karena dinginnya lemon tidak hanya terasa di kulit kepala, tetapi terasa hingga seluruh tubuh Anda.\"', 25900.00, '2024-03-02 23:11:39', '2024-03-02 23:11:39'),
(34, 2, 10, 'Pantene Rambut Rusak', 'Pantene', 'Sampo', 'Kering', '\"Pantene Rambut Rusak\r\nPantene Perawatan Total Untuk Rambut Rusak:\r\n\r\nMelindungi rambut dari kerusakan karena patah\r\n\r\nMembantu menjaga struktur protein helai rambut alami dari pangkal hingga ujung\r\n\r\nSHAMPO RAMBUT TAMPAK SEHAT MELINDUNGI RAMBUT DARI KERUSAKAN^\r\n\r\n^karena rambut patah, dengan Pantene Kondisioner, vs shampo non-kondisioner P&G\"', 29900.00, '2024-03-02 23:12:08', '2024-03-02 23:12:08'),
(35, 2, 10, 'Pantene Rambut Rontok', 'Pantene', 'Sampo', 'Rontok', '\"Pantene Rambut Rontok\r\nPantene Shampo Perawatan Rambut Rontok merupakan shampo dengan formula yang memperkuat rambut dan mengatasi kerontokan akibat rambut patah. Diperkaya dengan Rice Oil Essence dari Jepang untuk keindahan rambut dan Pro-Vitamin serta pelembab micro yang membungkus helai rambut menjadi halus.How to use:Basuh rambut dengan air bersih. Tuang shampoo di telapak tangan kemudian gosok ringan pada rambut dan kulit kepala. Lakukan ulang apabila masih kurang bersih. Bilas dengan air sampai rambut tidak terasa licin.Suitable for:Rambut rontokIngredients:Water, Sodium Laureth Sulfate, Dimethicone, Cocamidopropyl Betaine, Sodium Citrate, Sodium Xylenesulfonate, Glycol Distearate, Sodium Chloride, Fragrance, Stearyl Alcohol, Cetyl Alcohol, Guar Hydroxypropyltrimonium Chloride, Citric Acid, Sodium Benzoate, Tetrasodium Edta, Polyouaternium-6, Histidine, Panthenol Panthenyl Ethyl Ether, Oryza Sativa (Rice) Bran Oil Methylchloroisothiazolinone, Methylisothiazolinone.\"', 29900.00, '2024-03-02 23:12:41', '2024-03-02 23:12:41'),
(36, 2, 10, 'Dove Perawatan Rambut Rusak (Biru Tua)', 'Dove', 'Sampo', 'Kering', '\"Dove Perawatan Rambut Rusak (Biru Tua)\r\nDove Kondisioner Perawatan Rambut Rusak dengan Nutri Serum dan Keratin Repair Actives, menutrisi rambut secara mendalam agar kuat dan tidak mudah patah\"', 18800.00, '2024-03-02 23:13:14', '2024-03-02 23:13:14'),
(37, 2, 10, 'Dove Perawatan Rambut Berkilau (Biru Muda)', 'Dove', 'Sampo', 'Kering', '\"Dove Perawatan Rambut Berkilau (Biru Muda)\r\nSampo dengan Nutri Serum dan MicroMoisture.\r\n• Menutrisi setiap helai rambut dan memberi lapisan pelindung pada rambut.\r\n• Menjaga kelembapan rambut dari pangkal hingga ujungnya agar tidak kering dan kusam.\r\n• Menjaga kelembutan dan kesehatan rambut.\r\n• Dengan wangi yang lembut dan menawan.\r\nTunjukkan kilaumu dengan perawatan rambut berkilau dari Dove! Dove sampo untuk rambut kering dengan Nutri Serum & MicroMoisture memberikan lapisan pelindung untuk menjaga kesehatan & kelembutan rambutmu.\"', 18800.00, '2024-03-02 23:13:53', '2024-03-02 23:13:53'),
(38, 2, 10, 'Dove Peraweatan Rambut Rontok (Hijau)', 'Dove', 'Sampo', 'Rontok', '\"Dove Perawatan Rambut Rontok (Hijau)\r\nKondisioner dengan Nutri Serum dan Dynazinc\r\n• Menutrisi rambut dari akarnya\r\n• Efektif mengurangi rambut rontok karena patah hingga 99%*\r\n• Formula ringan membuat rambut tidak lepek\r\n• Dengan wangi menawan yang tahan lama\r\n\r\n*rontok karena patah dengan penggunaan rangkaian Dove Perawatan Rambut Rontok secara teratur vs non conditioning shampoo.\r\nUcapkan selamat tinggal pada rambut rontok dan beralihlah pada sampo serum Dove untuk perawatan rambut rontok. Sampo rambut rontok ini tak hanya mengurangi kerontokan, tapi juga menutrisi rambut dari akarnya.\"', 18800.00, '2024-03-02 23:14:23', '2024-03-02 23:14:23'),
(39, 2, 11, 'Putri Hair Tonic Ginseng - rambut rontok', 'Putri', 'Hair Tonic', 'Rontok', 'Dengan wangi yang lembut dan menenangkan Putri Hair Tonic melembutkan rambut anda, merawat dan menyehatkan. - Ginseng (Coklat): merawat dan menguatkan akar rambut ( untuk rambut rontok)', 32000.00, '2024-03-02 23:18:49', '2024-03-02 23:18:49'),
(40, 2, 11, 'Putri Hair Tonic Hijau - rambut & Kulit normal dan berminyak', 'Putri', 'Hair Tonic', 'Berminyak', '\"PUTRI HAIR TONIC \r\nHair tonic merupakan salah satu jenis produk perawatan rambut yang sudah eksis sejak puluhan tahun lalu. Ada beberapa manfaat yang bisa dirasakan bila Anda rutin menggunakan hair tonic. Mulai dari mencegah kerontokan, hingga merangsang pertumbuhan rambut\r\n\r\nHair Tonik Putri adalah produk tonik rambut dan kulit kepala yg dilengkapi vitamin untuk merawat keindahan, kesegaran dan kekuatan rambut.\r\n\r\nHIJAU (Normal to oily) : untuk rambut normal dan berminyak menjadikan rambut dan kulit kepala segar.\"', 29900.00, '2024-03-02 23:19:29', '2024-03-02 23:19:29'),
(41, 2, 11, 'Putri Hair Tonic Kuning - rambut normal', 'Putri', 'Hair Tonic', 'Kering', 'PUTRI HAIR TONIC NORMAL (KUNING)Perawatan untuk rambut normal. Diperkaya dengan tumbuh-tumbuhan ekor kuda dan vitamin untuk perawatan rambut agar tetap sehat dan rapuh.', 19500.00, '2024-03-02 23:20:17', '2024-03-02 23:20:17'),
(42, 2, 11, 'Natur - Natural Extract - menebalkan rambut', 'Natur', 'Hair Tonic', 'Rontok', 'Natur Pencuci Rambut Alami Aloe Vera adalah pencuci Rambut yang dibuat dari ramuan bahan alami untuk perawatan rambut mengandung Ekstrak Aloe Vera. Shampoo ini berguna untuk membantu pertumbuhan rambut lebih sehat dan menyuburkan rambut. How to Use :Basahi rambut, gunakan secara merata hingga berbusa, bilas sampai bersihSuitable for :Semua jenis rambutIngredients :Panax Ginseng Radix Estrak, Eclipta Prostata Foilum Ekstrak, Thuja Orientalis Folium Ekstrak, Hibiscus Tiliaceus Folium Ekstrak, Aloe Viera Folium Esktrak, Apium Graviolens Ekstrak', 22000.00, '2024-03-02 23:22:17', '2024-03-02 23:22:17'),
(43, 2, 12, 'Wardah nutri shine - argan oil grape seed', 'Wardah', 'Kondisioner', 'Bercabang', 'Nutri Shine Shampoo Wardah membantu pancarkan cahaya rambut sehingga rambut tampak sehat. Dengan paduan bahan aktif yang sangat membantu menutrisi setiap helaian rambut dan melindunginya dari kerusakan. Manfaat : - Untuk rambut yang rusak dan kusam akibat kurang nutrisi, menjadikan rambut tampak lebih sehat, halus, berkilau dan mudah diatur. - Wangi yang lebih tahan lama bahkan hingga pemakaian berikutnya, jadikan rambut terasa lebih segar dan harum sepanjang hari. - Menutrisi setiap helaian rambut dan melindunginya dari kerusakan. - Bantu meningkatkan proses tumbuhnya rambut serta bantu kurangi tampilan rambut bercabang', 25700.00, '2024-03-02 23:27:53', '2024-03-02 23:27:53'),
(44, 2, 12, 'Putri Pure Clean Conditioner - fresh floral fragrance', 'Putri', 'Kondisioner', 'Kering', 'Putri Pure Clean Hair Conditioner Floral 200 ML Rangkaian produk perawatan rambut dengan aroma buah yang segar dan menenangkan. Diformulasikan dan dikembangkan secara khusus untuk memberikan nutrisi pada rambut, agar rambut kuat, halus, dan lembut. Sweet floral memberikan aroma yang menenangkan. Ekstrak floral pada conditioner dapat memperbaiki struktur rambut secara alami. BPOM: NA18141003641', 14725.00, '2024-03-02 23:28:28', '2024-03-02 23:28:28'),
(45, 2, 12, 'Putri Pure Clean Conditioner - fresh apple fragrance', 'Putri', 'Kondisioner', 'Kering', '\"Putri Pure Clean Hair Conditioner Apple 200 ML\r\nRangkaian produk perawatan rambut dengan aroma buah yang segar dan menenangkan. Diformulasikan dan dikembangkan secara khusus untuk memberikan nutrisi pada rambut, agar rambut kuat, halus, dan lembut.\r\n\r\nFresh Apple membersihkan dan mengembalikan kelembaban alami rambut\r\n\r\nBPOM: NA18141003639\"', 15500.00, '2024-03-02 23:29:04', '2024-03-02 23:29:04'),
(46, 1, 1, 'Face Tonic Lemon', 'Viva', 'Face Tonic', 'Berminyak', 'Penyegar untuk kulit berminyak dan berjerawat, berfungsi membersihkan sisa Milk Cleanser, menyegarkan kulit, meringkas pori, dan menjaga pH kulit. Mengandung Ekstrak Lemon untuk mengurangi kadar minyak sehingga membantu mencegah timbulnya jerawat.', 10000.00, '2024-03-02 23:41:22', '2024-05-20 23:33:53'),
(47, 1, 1, 'Face Tonic Bengkoang', 'Viva', 'Face Tonic', 'Sensitif', 'Viva face tonic bengkoang merupakan penyegar untuk kulit normal, berfungsi membersihkan sisa Milk Cleanser, menyegarkan kulit, meringkas pori, dan menjaga pH kulit.', 10000.00, '2024-03-02 23:42:00', '2024-03-02 23:42:00'),
(48, 1, 1, 'Face Tonic Spirulina', 'Viva', 'Face Tonic', 'Normal', 'Penyegar untuk kulit normal/ kering, berfungsi membersihkan sisa Milk Cleanser, menyegarkan kulit, meringkas pori, dan menjaga pH kulit.', 10000.00, '2024-03-02 23:42:35', '2024-03-02 23:42:35'),
(49, 1, 1, 'Face Tonic Green Tea', 'Viva', 'Face Tonic', 'Normal', 'Penyegar untuk kulit berjerawat, berfungsi membersihkan sisa Milk Cleanser, menyegarkan kulit, meringkas pori, dan menjaga pH kulit. Mengandung Ekstrak Green Tea sebagai Anti Oksidan dan Tea Tree Oil untuk membantu mencegah timbulnya jerawat.', 10000.00, '2024-03-02 23:43:21', '2024-03-02 23:43:21'),
(50, 1, 1, 'Face Tonic Cucumber', 'Viva', 'Face Tonic', 'Berminyak', 'Penyegar untuk kulit berminyak dan bernoda hitam berfungsi membersihkan sisa Milk Cleanser, menyegarkan kulit dan menjaga pH kulit. Mengandung Ekstrak Cucumber untuk mengurangi kadar minyak berlebih pada wajah dan Pore Tightening Agent untuk meringkas pori-pori.', 10000.00, '2024-03-02 23:44:09', '2024-03-02 23:44:09'),
(51, 1, 1, 'Air Mawar', 'Viva', 'Face Tonic', 'Kering', 'Viva Air Mawar merupakan pembersih wajah dengan sensasi kelembutan aroma mawar yang dapat menyejukkan dan menyegarkan kulit. Pembersih ini mengandung sari bunga mawar yang memiliki antioksidan tinggi sehingga dapat menangkal radikal bebas dan mencegah penuaan dini.', 7000.00, '2024-03-02 23:44:41', '2024-03-02 23:44:41'),
(52, 1, 1, 'Milk Cleanser Lemon', 'Viva', 'Milk Cleanser', 'Berminyak', 'Susu Pembersih untuk kulit berminyak dan berjerawat, mengandung Ekstrak Lemon untuk mengurangi kadar minyak sehingga membantu mencegah timbulnya jerawat.', 7986.00, '2024-03-02 23:45:16', '2024-03-02 23:45:16'),
(53, 1, 1, 'Milk Cleanser Spirulina', 'Viva', 'Milk Cleanser', 'Kering', 'Susu pembersih untuk kulit normal/ kering. Mengandung Ekstrak Spirulina (Ganggang Biru Laut) yang kaya protein, vitamin, dan asam amino terlengkap untuk menutrisi kulit dan membantu proses regenerasi sel serta menghindari proses penuaan dini.', 8000.00, '2024-03-02 23:45:49', '2024-03-02 23:45:49'),
(54, 1, 1, 'Milk Cleanser Cucumber', 'Viva', 'Milk Cleanser', 'Berminyak', 'Susu pembersih untuk kulit berminyak dan bernoda hitam, mengandung Ekstrak Cucumber untuk menyeimbangkan kadar minyak pada kulit dan Emollient untuk merawat kelembutan kulit.', 8000.00, '2024-03-02 23:46:30', '2024-03-02 23:46:30'),
(55, 1, 1, 'Milk Cleanser Green Tea', 'Viva', 'Milk Cleanser', 'Berminyak', 'Susu pembersih untuk kulit berjerawat, mengandung Ekstrak Green Tea sebagai Anti Oksidan dan Tea Tree Oil untuk membantu mencegah timbulnya jerawat.', 8000.00, '2024-03-02 23:47:12', '2024-03-02 23:47:12'),
(56, 1, 1, 'Milk Cleanser Bengkoang', 'Viva', 'Milk Cleanser', 'Normal', 'Susu Pembersih untuk kulit normal, mengandung bahan alami Ekstrak Bengkuang untuk kulit wajah tampak lebih cerah dan Ekstrak Sun Flower untuk merawat elastisitas atau kelenturan kulit wajah.', 8000.00, '2024-03-02 23:47:46', '2024-03-02 23:47:46'),
(57, 1, 1, 'Facial Lotion Bengkoang', 'Ovale', 'Facial Lotion', 'Kering', 'Ovale Facial Lotion Whitening Bengkoang mengandung Ekstrak Lidah Buaya, Ekstrak Bengkuang, dan Vitamin A & E yang berfungsi membantu merawat kelembutan dan mencerahkan kulit wajah. Indikasi Umum: Membantu mencerahkan kulit wajah.', 17000.00, '2024-03-02 23:48:21', '2024-03-02 23:48:21'),
(58, 1, 1, 'Micellar Water Salicylic BHA', 'Garnier', 'Micellar Water', 'Berminyak', '\"1. Vitamin C\r\nMencerahkan & menyamarkan noda hitam\r\n2. Salicylic BHA\r\nMengurangi 99% bakteri penyebab jerawat\r\n3. Micelles\r\nMengangkat tuntas makeup, kotoran, & debu\"', 33000.00, '2024-03-02 23:49:06', '2024-03-02 23:49:06'),
(59, 1, 3, 'Wardah Acnederm Day Moisturizer', 'Wardah', 'Day Cream', 'Normal', 'Pelembab khusus untuk perawatan kulit yang rentan berjerawat, untuk menjaga hidrasi kulit sekaligus melindunginya dari sinar UV.', 28000.00, '2024-03-03 00:38:07', '2024-03-03 00:38:07'),
(60, 1, 3, 'Crystal Secret Day Cream', 'Wardah', 'Day Cream', 'Kering', 'Wardah Crystal Secret Brightening Day Cream merupakan pelembab pagi dengan tekstur krim yang lembab untuk mencerahkan, melembapkan kulit, dan melindungi kulit dari UVA/UVB (dengan SPF 35 PA+++) untuk kulit cerah sebening kristalTersedia dalam ukuran:30g : Rp 99.50015ml : Rp 47.500How to use:Aplikasikan secukupnya pada wajah dan leher setiap pagi. Hindari penggunaan di area mata.Suitable for:Kulit normal, Kulit keringIngredients:Edelweiss Extract, Alpha Arbutin, SPF 35 PA+++, Niacinamide', 99491.00, '2024-03-03 00:38:35', '2024-03-03 00:38:35'),
(61, 1, 3, 'Hydra Rose Day Wardag', 'Wardah', 'Day Cream', 'Kering', 'Wardah Hydra Rose Dewy Aqua Day Gel, pelembap dengan tekstur gel ringan dan watery mengandung 72 Hours Hydrating Active dan Rose Oil yang menghidrasi serta menjaga kelembapan kulit. Diperkaya dengan Bio-Hyaluronic Acid yang melapisi permukaan kulit, bekerja ekstra menjaganya tetap terhidrasi sepanjang hari.', 110000.00, '2024-03-03 00:39:31', '2024-03-03 00:39:31'),
(62, 1, 9, 'Wardah Sleeping Mask C-defense', 'Wardah', 'Sleeping Mask', 'Normal', 'Wardah C-Defense Sleeping Mask dengan kandungan Hi-Grade Vitamin C untuk merawat kulit lelahmu di malam hari dari pengaruh buruk radikal bebas yang terakumulasi seharian. Butiran Vitamin C dengan tekstur gel nya yang ringan dan fresh menjadikan kulit tampak cerah dan segar keesokan harinya.', 48500.00, '2024-03-03 00:40:25', '2024-03-03 00:40:25'),
(63, 1, 9, 'Jelly Glow Sleeping Mask', 'Pigeon', 'Sleeping Mask', 'Berminyak', '\"✔ 8 Type Hyaluronic Acid, Ceramide, Panthenol [Provitamin B5] yang membantu menghidrasi kulit, meningkatkan kelembapan dan menjaga keseimbangan kadar air dalam kulit wajah.\r\n✔ 9 Natural Ingredients termasuk Jojoba & Chamomile yang membantu menutrisi kulit dengan kebaikan bahan dari alam sehingga kulit tampak lebih lembut dan sehat.\r\n✔ Kakadu Plum Extract yang membantu melindungi kulit dari radikal bebas dan meningkatkan produksi kolagen di kulit wajah.\"', 31600.00, '2024-03-03 00:40:54', '2024-03-03 00:40:54'),
(64, 1, 4, 'Night Treatment Moisturizer', 'Wardah', 'Night Cream', 'Berminyak', 'Malam hari adalah saat yang tepat untuk menutrisi kulit Anda. Lembapkan dan cerahkan kulit Anda dengan Wardah Acnederm Night Treatment Moisturizer.', 40000.00, '2024-03-03 00:41:52', '2024-03-03 00:41:52'),
(65, 1, 4, 'Night Glow Night moisturizer', 'Wardah', 'Night Cream', 'Normal', 'Inovasi terbaru dari Wardah, kini hadir moisturizer pencerah dengan kandungan 4X Bright Berries, ^kombinasi 4 berry pilihan yang cerahkan kulit, dilengkapi dengan Glow Boost Technology (Silvervine), dan Gentle PHA untuk membantu regenerasi kulit pada malam hari sehingga kulit ternutrisi,, halus, lembap, & kenyal pada paginya!', 30500.00, '2024-03-03 00:42:25', '2024-03-03 00:42:25'),
(66, 1, 4, 'Crystal Secret Night Cream', 'Wardah', 'Night Cream', 'Normal', 'Krim malam yang mengandung kombinasi Alpha Arbutin, Niacinamide, dan Brightening Peptide untuk menutrisi, mencerahkan, dan meratakan warna kulit untuk kulit tampak lebih cerah sebening kristal. Mengandung Alpha Arbutin yang mampu meratakan warna kulit & cerahkan noda hitam bekas jerawat, Brightening Peptide untuk menghambat produksi melanin, serta Edelweiss Extract yang membantu proses pencerahan kulit secara menyeluruh.', 108000.00, '2024-03-03 00:43:03', '2024-03-03 00:43:03'),
(67, 1, 4, 'Hydra Rose Night gel', 'Wardah', 'Night Cream', 'Kering', 'Paparan stres dari lingkungan selama aktivitas seharian dapat menyebabkan kerusakan lapisan kulit menjadikan kering dan lelah, pelembab dengan tekstur gel kaya nutrisi mengandung 72 hours hydrating active dan rose oil yang menghidrasi serta menjaga kelembaban kulit diformulasikan khusus dengan Stress Relief Agent untuk melawan efek stres dari lingkungan yang terakumulasi seharian dengan meningkatkan kemampuan lapisan kulit.Cara pakai oleskan merata pada wajah dan leher yang telah dibersihkan, setelah menggunakan serum', 107000.00, '2024-03-03 00:43:35', '2024-03-03 00:43:35'),
(68, 1, 4, 'Renew You', 'Wardah', 'Night Cream', 'Normal', 'Pelembab dengan tekstur krim yang ringan yang dilengkapi dengan SPF 35 PA+++ untuk melindungi kulit dari paparan berlebih sinar UVA/UVB penyebab tanda-tanda premature aging seperti munculnya flek hitam dan garis halus. Mengandung Niacinamide yang mencerahkan dan meratakan warna kulit. Diformulasikan dengan kombinasi Peptide MatrixylTM dan Bakuchiol yang menghaluskan tekstur kulit dan terbukti secara klinis mampu menjaga elastisitas dan kekencangan kulit dalam 4 minggu pemakaian*.', 110991.00, '2024-03-03 00:44:04', '2024-03-03 00:44:04'),
(69, 1, 5, 'Pixy Pollutional Off', 'Pixy', 'Moisturizer', 'Kering', 'PIXY Glowssentials Clay+ Scrub Face Mask 60 g Clay + Scrub Face Mask yang diformulasikan khusus untuk mengangkat sel-sel kulit mati dan partikel-partikel polusi*, serta membantu menyerap kelebihan minyak sehingga wajah tampak cerah, segar dan glowing. Diperkaya dengan 3 kandungan utama, yaitu: • Natural Vita Complex dari Ekstrak Kiwi, Vitamin E, dan Provitamin B5: Mengandung antioksidan, membantu menutrisi dan menjaga kelembapan kulit agar tetap cerah dan glowing. • Bentonite Clay: Membantu menyerap kelebihan minyak di pori-pori dan mengangkat sisa kotoran yang ada di kulit. • Natural Crushed Apricot Seed: Mengangkat sel-sel kulit mati untuk kulit wajah terasa lebih halus dan mulus. *debu, asap, dan kotoran  PIXY Glowssentials All In One Gel Moisturizer 100 g Gel Moisturizer Multifungsi yang mampu melindungi dari partikel-partikel polusi* seperti debu, asap, dan kotoran. Dapat digunakan pada wajah dan seluruh bagian tubuh sebagai pelembap atau dasar base makeup. Mengandung aloe vera yang menyejukkan dan melembapkan kulit. Diperkaya dengan 3 kandungan utama, yaitu: • Natural Vita Complex dari Ekstrak Kiwi, Vitamin E, dan Provitamin B5: Mengandung antioksidan, membantu menutrisi dan menjaga kelembapan kulit agar tetap cerah dan glowing. • Pollustop®: Diketahui dapat melindungi kulit dari partikel-partikel polusi seperti debu, asap, dan kotoran. • Antibacterial Agent: Melawan bakteri dan menjaga kulit tetap bersih.  PIXY Glowssentials Vitamin Infused Protecting Mist 60 ml Face Mist untuk melindungi wajah dari partikel-partikel polusi, seperti debu, asap, dan kotoran. Formulanya menjaga kelembapan kulit dan menyegarkan wajah seketika. Sesuai untuk semua jenis kulit. Dengan kandungan utama: • Ekstrak Kiwi, Vitamin E, dan Provitamin B5: Mengandung antioksidan, membantu menutrisi dan menjaga kelembapan kulit agar tetap cerah dan glowing. • Pollustop®: Diketahui mampu melindungi kulit dari partikel-partikel polusi* seperti debu, asap, dan kotoran. • Antibacterial Agen', 63700.00, '2024-03-03 00:46:00', '2024-03-03 00:46:00'),
(70, 1, 5, 'Pixy Tone & Bright Cream - Light Radiance', 'Pixy', 'Moisturizer', 'Kering', '\"Menjaga kelembaban kulit\r\nMencerahkan dan memutihkan kulit\r\nMelindungi dari sinar UV berlebih\r\nMemberi vitamin ke kulit tubuh\r\nPaduan Natural Whitening Powder dan derivat Vitamin C yang membuat kulit lebih putih.\r\nSunscreen-nya melindungi kulit dari pengaruh buruk sinar matahari.\r\nUntuk kulit tampak lebih cerah, lemba dan tidak kusam,\r\nPelembab dengan hasil tanpa kilap dan tidak lengket. Aman untuk kulit\"', 31374.00, '2024-03-03 00:46:46', '2024-03-03 00:46:46'),
(71, 1, 5, 'Pixy Radiant Finish Cream', 'Pixy', 'Moisturizer', 'Berminyak', '\"Pixy Radiant Finish Lightening Cream tersedia dalam 2 Pilihan Varian :\r\n- Pixy Radiant Finish Complete Barrier (Biru Muda)\r\nPelembab dengan Active Veil formula dengan fungsi pre base makeup. Mengandung bahan alami Shakuyaku, Natural Whitening Powder dan SPF 20 dan PA++ yang melembabkan, mencerahkan, dan melindungi kulit dari sinar UVA & UVB.\r\n\r\n- Pixy Radiant Finish Spotcare Beauty (Pink)\r\nPelembab dengan Active Veil Formula dengan fungsi pre base makeup. Mengandung bahan alami Botanpi, Natural Whitening Powder dan SPF 15 yang memudarkan noda hitam dan bekas jerawat, mencerahkan dan meratakan warna kulit.\r\nUntuk mengurangi resiko kerusakan yang timbul akibat pengiriman kurir, mohon tambahkan Extra Bubble Wrap yang ada di etalase kami ke dalam keranjang belanja\"', 36000.00, '2024-03-03 00:47:27', '2024-03-03 00:47:27'),
(72, 1, 5, 'Pixy Peach Glowing Cream', 'Pixy', 'Moisturizer', 'Kering', 'OMG Peach Glowing Cream merupakan pelembab wajah dengan kandungan peach extract dan SerumVit B3+C+E yang dapat memberikan efek wajah glowing yang cerah merona seperti peach, wajah tampak sehat dan lembab, serta dilengkapi dengan UVA/UVB filter untuk melindungi wajah dari paparan sinar UVA/UVB dan dapat mengontrol minyak berlebih.How to use:Gunakan Moisturizing Cream setelah mencuci muka, pijat di bagian wajah dengan lembut, gunakan 2 kali sehari saat pagi dan malamSuitable for:Semua jenis kulitIngredients:Peach Extract, SerumVit. B3,C, dan E', 17950.00, '2024-03-03 00:48:00', '2024-03-03 00:48:00'),
(73, 1, 5, 'Wardah Aloe Vera Hydramild', 'Wardah', 'Moisturizer', 'Kering', 'Wardah Hydramild Multifunction Gel adalah gel multifungsi dengan Triple Hydrating Complex dan Hydramild Aloe Vera Extract yang ringan, melembabkan dan menyegarkan kulit.How to use:Gunakan Wardah Aloe Hydramild Multifunction Gel pada wajah, kaki, tangan dan badan setelah mandi. Ulangi setelah terkena panas sinar matahari apabila diperlukan.Suitable for:Kulit keringIngredients:-', 30710.00, '2024-03-03 00:48:37', '2024-03-03 00:48:37'),
(74, 1, 5, 'Wardah Witch Hazel Purifying Moisturizer gel', 'Wardah', 'Moisturizer', 'Berminyak', 'Wardah Nature Daily Witch Hazel Purifying Moisturizer Gel merupakan pelembap wajah dengan tekstur gel yang ringan dan cepat menyerap ke kulit. Dilengkapi dengan ekstrak Witch Hazel yang dapat membuat pori-pori terlihat lebih kecil dan Pro Vit B5 dan Vit E yang akan memberi kelembapan ekstra.How to Use:Aplikasikan ke seluruh wajah secara merata. Tepuk-tepuk wajah secara lembut agar formula dapat meresap secara sempurna.Suitable for:Kulit berminyakIngredients:-', 20991.00, '2024-03-03 00:49:27', '2024-03-03 00:49:27'),
(75, 1, 5, 'Glow&Lovely Multi vitamin - perawatan untuk wajah vita glow', 'Glow & Lovely', 'Moisturizer', 'Berminyak', '•Mencerahkan wajah kusam •Melindungi wajah akibat sinar matahari •Mengurangi noda hitam pada wajah •Menghilangkan noda bekas jerawat •Meratakan warna wajah •Tanggal yang Tertera di Kemasan adalah Tanggal Produksi, Bukan Tanggal Expired Krim Pencerah Fair & Lovely dengan teknologi multi vitamin terkini mengatasi problema wajah bagaikan 5 perawatan pencerah wajah Fair & Lovely (kini Glow & Lovely) merupakan sebuah brand pelopor perawatan kulit wajah wanita di dunia yang telah berhasil menemukan dan mempatenkan kekuatan dari vitamin B3 di tahun 1975. Kandungan Vitamin B3 inilah yang dapat membatasi penyebaran melanin di dalam kulit sehingga mampu menghasilkan kulit yang lebih cerah merata.', 30993.00, '2024-03-03 00:50:10', '2024-03-03 00:50:10'),
(76, 1, 5, 'Hazeline Snow Moisturizing Cream', 'Hazeline Snow', 'Moisturizer', 'Berminyak', 'Hazeline Snow mampu mencegah datangnya jerawat dan sekaligusmemberantas jerawat, ekstrak aloe vera membuat wajah halus dan lembut serta whitening formula akan membuat wajah menjadi lebih putih secara alami sehingga terlihat lebih natural. Water basenya sangat ringan sehingga jarang sekali terjadi iritasi atau pengelupasan. Selain itu, Hazeline snow juga mampu menghilangkan flek dan bekas jerawat. Cream ini bisa digunakan oleh tua dan muda segala usia. Hazeline Snow Whitening mengandung collagen yang berguna untuk menghilangkan keriput dan garis penuaan, membuat regenerasi kulit lebih optimal dan proses peremajaan kulit tetap terjaga. Unilever Malaysia memproduksi Hazeline formula baru yang memiliki khasiat memutihkan kulit wajah dan leher secara alami. Bahan-bahan Yang Terkandung Dalam Hazeline Snow Pelembab Hazeline Snow memiliki formula pencerah kulit yang mengandung: Ekstrak Mulberi yang merupakan ramuan yang berkhasiat sebagai pencerah kulitPelindung UV membantu mempertahankan warna kulit agar tetap cerah dan membantu melindungi dari UV A dan UV B yang berbahaya.Mengandung hydromoisturisers yang menyuburkan dan melembutkan kulit', 54900.00, '2024-03-03 00:50:47', '2024-03-03 00:50:47'),
(77, 1, 5, 'Madam Gie Skin barier Moisturizer', 'Madam Gie', 'Moisturizer', 'Kering', 'Merek skincare dan makeup milik Gisella Anastasia ini menawarkan beragam produk dengan harga terjangkau dan berkualitas. Salah satu produknya adalah Madame Gie Skin Barrier Moisturizer.  Moisturizer ini diklaim dapat menenangkan kulit, menghidrasi kulit, meningkatkan produksi kolagen, memperkuat skin barrier, dan mengangkat sel kulit mati.  Formulanya dilengkapi dengan ceramide NP, glycerin, allantoin, betaine, bakuchi extract, serta caffeine.', 35000.00, '2024-03-03 00:51:22', '2024-03-03 00:51:22'),
(78, 1, 5, 'Skintific Barrie Moisturizer Gel', 'Skintific', 'Moisturizer', 'Kering', 'Skincare Powered by Science SKINTIFIC adalah brand skincare yang diformulasikan di Canada berdasarkan scientific research dengan teknologi paten TTE (Triangle Trilogy Effect) yang bekerja secara cepat dan barrier safe. SKINTIFIC 5X Ceramide Barrier Repair Moisture Gel Moisturizer yang menggabungkan 3 kandungan aktif Ceramide, Hyaluronic Acid, dan Centella Asiatica, untuk mengatasi permasalahan skin barrier yang rusak seperti jerawat, kemerahan, kulit bertekstur, dan juga kulit kering secara cepat namun tetap aman untuk skin barrier. Diperkaya dengan teknolog 5X Ceramide, yang merupakan gabungan 5 jenis Ceramide untuk melembabkan secara mendalam dan memperkuat lapisan kulit. 5X Ceramide ini membantu untuk memperbaiki dan melindungi skin barrier dengan menjaga kelembaban dan melindungi kulit dari faktor eksternal.', 138998.00, '2024-03-03 00:52:09', '2024-03-03 00:52:09');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `name`, `brand`, `type`, `skin_type`, `description`, `price`, `created_at`, `updated_at`) VALUES
(79, 1, 7, 'Nuface Cover me sun shield (SPF 30)', 'Nuface', 'SunScreen', 'Berminyak', 'Nuface Cover Me Sun Shield SPF 30 PA+++Nuface Cover Me Sun Shield adalah produk Sunscreen dari Nuface yang diperkaya dengan 5 ekstrak alami dan texture yang terasa ringan dan cepat meresap di wajah, dengan fungsi melindungi kulit dari paparan buruk sinar UV A, B dan blue light yang dihasilkan dari penggunaan gadget, melembapkan, menutrisisi kulit sehingga aman dan nyaman saat beraktifitas sehari-hari di dalam ataupun luar ruangan.Ingredient: INFUSED WITH 5 NATURAL EXTRACT, NIACINAMIDE & VIT E', 36000.00, '2024-03-03 00:55:32', '2024-03-03 00:55:32'),
(80, 1, 7, 'Nuface Cover me sun shield (SPF 50)', 'Nuface', 'SunScreen', 'Kering', 'Nuface Cover Me Sun Shield SPF 50 PA++++Nuface Cover Me Sun Shield adalah produk Sunscreen dari Nuface yang diperkaya dengan 5 ekstrak alami dan texture yang terasa ringan dan cepat meresap di wajah, dengan fungsi melindungi kulit dari paparan buruk sinar UV A, B dan blue light yang dihasilkan dari penggunaan gadget, melembapkan, menutrisisi kulit sehingga aman dan nyaman saat beraktifitas sehari-hari di dalam ataupun luar ruangan.Ingredient: INFUSED WITH 5 NATURAL EXTRACT, NIACINAMIDE & VIT E', 61000.00, '2024-03-03 00:56:09', '2024-03-03 00:56:09'),
(81, 1, 7, 'Azarine Sunscreen Gel (SPF 35)', 'Azarine', 'SunScreen', 'Kering', 'Azarine Sunscreen Moisturiser SPF 35+++ NEW Series. Tabir surya diformulasikan untuk melembabkan, merawat kulit berjerawat dan melindungi dari pengaruh buruk sinar matahari, blue light dan polusi. dengan kandungan Cica, Squalane dan 5 ceramide untuk merawat dan menutrisi skin barrier.', 33500.00, '2024-03-03 00:56:43', '2024-03-03 00:56:43'),
(82, 1, 7, 'Azarine Sunscreen Gel (SPF 45)', 'Azarine', 'SunScreen', 'Berminyak', 'DAILY SKIN PROTECTION FOR SUNSCREEN HATERSORGANIC SUNSCREEN GEL SPF45+++ FOR ALL SKIN TYPESTabir surya wajah dalam bentuk gel ( water base) yang sangat ringan, dingin dan mudah meresap untuk seluruh jenis kulit termasuk kulit berminyak dan acne prone skin. Di formulasikan dengan kandungan bahan alami Propolis, aloe Vera, green tea dan delima untuk melindungi kulit dari sinar UV A & UV B serta menutrisi kulit. KEUNGGULAN:- 0% alcohol ( bisa untuk kulit sensitif)- 0 % Oil ( bisa untuk kulit berminyak, kombinasi dan berjerawat)- 0% Silicone - Fungal acne Friendly- No Whitecast / efek dempul- Cepat meresap, ringan dan dingin dengan SPF tinggi- Mengandung ekstrak alami untuk kulit- Antioksidan & MelembabkanKEY INGREDIENTS:1.Aloe Vera: Menyegarkan & Menenangkan kulit2. Greentea: Antioksidan tinggi untuk menangkal radikal bebas & anti aging/ firming3. Propolis: Menutrisi & antiseptik alami4. Pomegranade: Antioksidan & moisturizer', 65000.00, '2024-03-03 00:57:11', '2024-03-03 00:57:11'),
(83, 1, 7, 'Wardah( SPF 50)', 'Wardah', 'SunScreen', 'Berminyak', 'DEFEND YOUR SKIN BARRIER, HINGGA DNA LEVEL! Wardah UV Shield Airy Smooth Sunscreen Serum SPF 50 PA++++ adalah sunscreen dengan hasil akhir powdery smooth matte, mudah meresap, nyaman dan ringan digunakan. Diformulasikan dengan SkinboostDNA(TM) melindungi dan memperbaiki skin barrier hingga level DNA dari kerusakan yang timbul akibat sinar matahari seperti kulit terbakar, kusam, bintik hitam, radang, hingga penuaan dini. Berdasarkan riset PT.Paragon technology and Innovation, UV Shield Airy Smooth Sunscreen Serum memberikan benefit: - Kecerahan kulit meningkat seketika - Kelembaban kulit meningkat - Tekstur kulit menjadi lembut Mengandung Centella dan Bera Mineral, kulit menjadi cerah dan halus.', 33750.00, '2024-03-03 00:57:46', '2024-03-03 00:57:46'),
(84, 1, 7, 'Wardah (SPF 30)', 'Wardah', 'SunScreen', 'Normal', '\"Filter UV A dan UV B (SPF 31,PA++) mencegah pengaruh buruk sinar\r\nmatahari serta Vit E sebagai antioksidan.Ektrak Aloe Vera dan Pro Vit B5 menjaga kelembaban\r\nkulit.Mudah meresap,nyaman dan tidak lengket di kulit.\r\n\r\nCara pemakaian:\r\n\r\nOleskan tipis merata pada wajah dan leher 15 menit sebelum melakukan aktivitas di luar ruangan.\"', 20000.00, '2024-03-03 00:58:39', '2024-03-03 00:58:39'),
(85, 1, 7, 'Emina Sun Battle (SPF 30)', 'Emina', 'SunScreen', 'Normal', 'Emina Sun Battle SPF 30 PA+++ merupakan sun protection dengan tekstur yang ringan dan siap melindungi dari paparan sinar UV. Diperkaya dengan Aloe Vera Extract yang memberikan kesegaran ekstra pada kulit, nyaman untuk penggunaan sehari-hari.', 22750.00, '2024-03-03 00:59:34', '2024-03-03 00:59:34'),
(86, 1, 7, 'Pigeon (SPF 35)', 'Pigeon', 'SunScreen', 'Normal', 'Pigeon Teens Everyday Sunscreen SPF 35/PA+++ merupakan sunscreen yang diformulasikan dengan Sun Protection Agent unruk melindungi kulit dari paparan sinar UVA & UVB juga kandungan aktif skincare, yaitu kandungan Antioksidan dari Double Action Agent Hydroxyacetophenone dan DL-alpha-Tocopheryl Acetate (Vit E) menjaga kulit dari polusi dan radikal bebas, Aloe vera extract membantu menjaga kelembapan kulit, serta Bisabolol, Jojoba Oil & Chamomile membantu menutrisi, melembapkan dan melindungi kulit dari iritasi ringan.How to use:Aplikasikan pada wajah di pagi hari sebelum melakukan aktivitasSuitable for:Semua jenis kulitIngredients:Double Action Agent Hydroxyacetophenone, DL-alpha-Tocopheryl Acetate (Vit E), Aloe vera extract, Bisabolol, Jojoba Oil, Chamomile, Macadamia Ternifolia Seed Oil, Glycine Soja (Soybean) Oil, Persea Gratissima (Avocado) Oil, Simmondsia Chinensis (Jojoba) Seed Oil, Triticum Vulgare (Wheat) Bran Extract, Calendula Officinalis Flower Extract, Chamomilla Recutita (Matricaria) Flower Extract, Fucus Vesiculosus Extract', 45000.00, '2024-03-03 01:00:05', '2024-03-03 01:00:05'),
(87, 1, 8, 'Acne Serum Scarlett', 'Scarlett', 'Serum', 'Berminyak', '\"Di dalam Acne Serum terdapat kandungan Tea Tree Leaf Water, Salicylic Acid, Jeju Centella Asiatica, Liquorice Extract dan Vitamin C yang dimana bermanfaat sebagai :\r\n-\r\n\r\nMerawat kulit yang berjerawat\r\n\r\nMeremajakan kulit wajah\r\n\r\nMerawat kulit yang berjerawat\r\n\r\nMencegah tanda tanda penuaan dini\"', 75000.00, '2024-03-03 01:34:12', '2024-03-03 01:34:12'),
(88, 1, 8, 'Brightly Ever After Serum Scarlett', 'Scarlett', 'Serum', 'Berminyak', '\"Di dalam Brightly Ever After terdapat kandungan Phyto Whitening, Glutathione, Vitamin C, Niacinamide, dan Lavender Water.\r\n\r\nDi dalam Brightly Ever After Serum terdapat kandungan Phyto Whitening, Glutathione, Vitamin C, Niacinamide dan Lavender Water yang dimana dapat membantu mencerahkan dan memudarkan noda hitam pada wajah.\"', 75000.00, '2024-03-03 01:34:54', '2024-03-03 01:34:54'),
(89, 1, 8, 'Smoothing Retinol Serum Scarlett', 'Scarlett', 'Serum', 'Berminyak', 'Scarlett Whitening Retinol Serum Size 15MLManfaat :RetinolMencegah tanda penuaan dan menyamarkan garis halus yang telah munculMeningkatkan proses regenerasi kulit sehingga sel kulit mati terangkat dan kulit terlihat lebih cerah serta halusMembantu menyamarkan tampilan pon-porbesarMembantu meningkatkan produksi Kolagen dan elastin sehingga kulit terasa lebih kenyalHexapeptide-8Membantu meremajakan kulit dan mengurangi tanda-tanda penuaan seperti garis halus dan keriputMembantu meningkatkan hidrasi kulitMembantu menenangkan iritasi pada kulitMembantu meningkatkan produksi natural hyaluronic acid dan kolagen pada kulitAllantoinMembantu menghidrasi kulitMempercepat penyembuhan lukaMenghaluskan tekstur kulitPomegranate Extract Kaya akan Vitamin C sebagai antioksidan sehingga mampu mencegah kerusakan kulit akibat efek negatif radikal bebas dan paparan sinar matahariMengurangi tanda-tanda penuaan pada kulitMeningkatkan proses regenerasi kulit sehingga kulit nampak lebih halus dan cerahBerfungsi sebagai anti-bacterial yang dapat mencegah pertumbuhan bakteri penyebab jerawatVit cMembantu mengurangi hiperpigmentasi sehingga dapat mencerahkan kulit dan memudarkan flek hitamMencegah penurunan produksi kolagen sehingga dapat mencegah terjadinya tanda-tanda penuaanVitamin C sebagai antioksidan mampu mencegah efek buruk radikal bebas pada kulitCara Pakai :1.Teteskan serum 2-3 tetes pada telapak tangan2.Oleskan secara perlahan dan merata ke seluruh kulit wajah3. Tunggu 1- 3 menit hingga serum meresap sepenuhnyaFrekuensi pemakaian:*Untuk pemula disarankan menggunakan Skin Smoothing Retinol Serum selama 3kali seminggu agar kulit lebih terbiasa.* JIka kulit sudah terbiasa,dapat digunakan setiap hari* Disarankan menggunakan pelembab setelah penggunaan retinol.* Wajib menggunakan sunscreen di pagi hari.PERHATIANUntuk penggunaan Retinol tidak disarankan digunAkan secara bersamaan dengan Acne SeriesPRODUK INI TIDAK DISARANKAN UNTUK IBU HAMIL', 67500.00, '2024-03-03 01:35:26', '2024-03-03 01:35:26'),
(90, 1, 8, 'C-power serum Scarlett', 'Scarlett', 'Serum', 'Kering', 'Scarlett Whitening C-Power Serum Kandungan : THD (Tetrahexyldecyl Ascorbate) - Vitamin C 50x lebih kuat dari asam askorbat standar · Membantu melindungi kulit dari efek buruk paparan sinar UV · Membantu mencerahkan kulit · Membantu menyamarkan tampilan kerutan dan garis halus · Menjaga kelembapan kulit 4D Hyaluronic Acid · Menjaga kelembapan kulit . Membantu merawat keremajaan kulit · Membantu menghidrasi kulit · Menyamarkan tampilan kerutan atau garis halus pada kulit · Membantu menyejukkan kulit yang teriritasi ringan Chamomilla Recutita (Matricaria) Flower Extract · Membantu menyejukkan kulit yang teriritasi ringan · Mencegah efek buruk paparan sinar matahari · Membantu menghidrasi kulit Lactobacillus/Hydrolyzed Collagen Ferment Filtrate Extract · Melembabkan kulit · Mencegah tanda tanda penuaan dini Camellia Sinensis Leaf Extract · Membantu mencegah efek buruk paparan sinar matahari · Membantu mencerahkan kulit · Membantu menyamarkan tampilan kerutan dan garis halus · Membantu menjaga kelembapan kulit Manfaat : Membantu mencerahkan kulit Menyamarkan bintik hitam pada wajah Membantu mencegah tanda-tanda penuaan dini Membantu menjaga kelembapan kulit Membantu melindungi kulit dari efek buruk paparan sinar UV', 75000.00, '2024-03-03 01:36:02', '2024-03-03 01:36:02'),
(91, 1, 8, 'Ceramide moisture boost oil Scarlett', 'Scarlett', 'Serum', 'Berminyak', 'Pelembap berbasis oil yang membantu memperbaiki skin barrier, menjaga elastisitas kulit serta dapat melembapkan dan menghidrasi kulit', 61900.00, '2024-03-03 01:36:34', '2024-03-03 01:36:34'),
(92, 1, 8, 'Lightening serum ampoule Wardah', 'Wardah', 'Serum', 'Kering', 'Wardah Lightening Serum Ampoule mengandung 10X Advanced Niacinamide lebih banyak di setiap tetesnya yang bekerja optimal untuk mencerahkan, menyamarkan bekas jerawat, sekaligus melindungi kulit dari paparan blue light. Dengan tekstur cair yang ringan & cepat meresap bekerja ke dalam lapisan epidermal kulit, membuat kulit terasa lembap dari pemakaian pertama, tampak cerah, dan noda hitam bekas jerawat tersamarkan.', 69500.00, '2024-03-03 01:38:08', '2024-03-03 01:38:08'),
(93, 1, 8, 'White Aqua Concentrated Brightening Serum Pixy', 'Pixy', 'Serum', 'Berminyak', 'PIXY White-Aqua Concentrated Brightening Serum merupakan serum dengan formula yang berbahan dasar air. Diperkaya dengan Skin Bright Activator yang mengandung lebih banyak Brightening Agent dibanding dengan pelembab biasa. Intensive Hydra Active yang membantu melembabkan kulit secara intensif pada malam hari. Diperkaya dengan Vitamin C and Vitamin E sebagai anti oksidan. How to use:Tuangkan produk ke telapak tangan. Aplikasikan perlahan ke kulit wajah dan leher hingga meresap. Suitable for:Semua jenis kulitIngredients:-', 85000.00, '2024-03-03 01:39:02', '2024-03-03 01:39:02'),
(94, 1, 8, 'Barrier Serum Skintific', 'Skintific', 'Serum', 'Kering', '\"Serum yang diformulasikan untuk mengoptimalkan perbaikan skin barrier yang rusak.\r\n\r\n \r\n\r\nHighlights :\r\n\r\nMengkombinasikan 5 Jenis Ceramide yang berbeda untuk menjaga dan mengembalikan kondisi skin barrier agar kembali sehat. Ditambah kandungan BFL probiotik yang dapat mencegah dan merawat inflamasi ataupun permasalahan kulit seperti kemerahan dan jerawat. Untuk kondisi skin barrier yang terganggu, kandungan Centella Asiatica pada serum ini juga dapat menenangkan dan mempercepat penyembuhan kulit\"', 143200.00, '2024-03-03 01:39:30', '2024-03-03 01:39:30'),
(95, 1, 8, 'Bakuchiol Skinpair Oil Serum Somethinc', 'Somethinc', 'Serum', 'Berminyak', 'Somethinc Bakuchiol Skinpair Oil Serum merupakan alternatif alami + vegan untuk Retinol yang memiliki sifat antioksidan yang kuat, anti-inflamasi, merawat jerawat, merangsang kolagen, memperbaiki tekstur kulit dengan minimal efek samping daripada penggunaan Retinol sehingga dapat digunakan oleh kulit sensitif, wanita hamil, dan remaja. How to use:Gunakan pipet untuk mengoleskan 5-10 tetes ke telapak tangan. Tepuk-tepuk pada wajah yang telah dibersihkan dan biarkan menyerap pada kulit selama 1-3 menitSuitable for:Kulit berjerawatIngredients:Bakuchiol Sunflower Seed Oil Tocopherol', 89000.00, '2024-03-03 01:40:09', '2024-03-03 01:40:09'),
(96, 1, 8, 'Anti Acne Serum Hanasui', 'Hanasui', 'Serum', 'Berminyak', 'Reformulation in July 2021Anti Acne Serum mengandung kombinasi bahan bakteriostatika dan bahan bakterisida yang efektif untuk mencegah dan mengurangi jerawat. Diformulasikan dengan bahan-bahan tambahan water soluble, sehingga tidak menimbulkan komedo, tidak lengket dan melembabkan kulit muka.KEGUNAAN-Mencegah dan mengurangi jerawat-Mencegah iritasi wajah (kemerahan) akibat timbulnya jerawat-Melembabkan kulit wajah yang kering akibat jerawatCARA PEMAKAIAN:Tetaskan 2-3 tetes serum pada telapak tangan, kemudian usapkan pada kulit wajah yang berjerawat. Untuk pencegahan serum dapat digunakan pada seluruh wajah secara tipis.', 10000.00, '2024-03-03 01:40:48', '2024-03-03 01:40:48'),
(97, 1, 8, 'Collagen Serum+ Hanasui', 'Hanasui', 'Serum', 'Normal', '\"HANASUI Serum Vitamin C + Collagen 20ml Renew (Biru)\r\n\r\n\r\n\r\nMengandung Vitamin C dan Collagen yang membuat kulit wajah cerah dan mengembalikan kemilau sehat alami kulit. Membuat Anda lebih percaya diri dengan kulit wajah yang bersih, sehat, dan bersinar.\r\n \r\nKandungan Utama :\r\n\r\n1. Vitamin C (Sodium Ascorbyl Phosphate)\r\n2. Collagen - Phyto Collagen\r\n\r\nKeunggulan :\r\n\r\n- Membantu mencerahkan kulit\r\n- Sebagai Anti Oksidan\r\n- Menjaga elastisitas kulit\r\n- Meningkatkan kekenyalan kulit\r\n- Asam dari vitamin C dapat mengurangi noda hitam di wajah\"', 20000.00, '2024-03-03 01:41:21', '2024-03-03 01:41:21'),
(98, 1, 8, 'Whitening Gold Serum Hanasui', 'Hanasui', 'Serum', 'Kering', 'Reformulation in July 2021Hanasui Whitening Gold Serum ini merupakan solusi untuk permasalahan kulit wajah hiperpigmentasi, kusam, kering, dan kasar. Dengan kandungan Niacinamide 4% yang di lengkapi dengan Stay C50 2% dan Phyto Collagen dapat membantu menutrisi kulit hingga membuat kulit tampak lebih muda dan bercahaya.', 10000.00, '2024-03-03 01:41:51', '2024-03-03 01:41:51'),
(99, 1, 8, 'Vitamin C serum Hanasui', 'Hanasui', 'Serum', 'Normal', 'Reformulation in July 2021Hanasui Face Serum Vit C dengan zat aktif pencerah ganda yang membantu mencerahkan kulit wajah secara alami, memperbaiki tekstur kulit dan melindunginya dari radikal bebas yang membuat kulit tampak lebih cerah natural dalam 14 hari.', 11000.00, '2024-03-03 01:42:27', '2024-03-03 01:42:27'),
(100, 1, 8, 'Brighten & Supple Skin Serum Nuface', 'Nuface', 'Serum', 'Sensitif', 'Nuface Nu Glow Liquid Brighten & Supple Skin Serum Serum wajah dengan 3 bahan aktif pencerah utama: -Niacinamide, Licorice Extract dan Vitamin C, serta mengandung Sodium Hyaluronate sebagai pelembab Fungsi: • Mencerahkan kulit wajah • Menyamarkan noda hitam bekas jerawat • Mengurangi peradangan & kemerahan pada wajah • Melembabkan kulit • Formula mudah meresap kedalam kulit Cocok digunakan untuk kulit: Normal dan Kering Ingredients: Aqua, Niacinamide, Butylene Glycol, Glycerin, Phenoxyethanol, PEG-40 Hydrogenated Castor Oil, Glycyrrhiza glabra (Licorice) root extract, Ethyl Ascorbic Acid, Hydroxyethyl-cellulose, Allantoin, Disodium EDTA, Perfume, Sodium Metabisulfite, Tocopheryl Acetate, Sodium Hyaluronate, 1,2-Hexanediol, Disodium Phosphate, Polysorbate 60, Sodium Phosphate.', 25700.00, '2024-03-03 01:43:00', '2024-03-03 01:43:00'),
(101, 1, 8, 'Hydra Lock & Youthful Skin Serum', 'Nuface', 'Serum', 'Kering', 'Serum wajah dengan kandungan Bakuchiol, Peptide, Advanced Hyaluronate, Niacinamide, & Vitamin C. Membantu menyamarkan garis - garis halus dan hiperpigmentasi, menghidrasi, menjaga elastisitas kulit, serta mencerahkan kulit. Wajah menjadi lebih lembab dan tampak lebih muda.Key Ingredients : ● Bakuchiol● Peptide● Advanced Hyaluronate● Niacinamide● Vitamin CManfaat : ● Mencerahkan kulit wajah ● Menyamarkan noda hitam bekas jerawat ● Mengurangi peradangan & kemerahan pada wajah ● Melembabkan kulit ● Formula mudah meresap kedalam kulit Cocok digunakan untuk kulit : Normal dan Kering Full Ingredients : Aqua , Niacinamide , Exthoxydiglycol , butylene glycol , PEG-40 Hydrogenated castor oil , Hydroxyethylcellulose , DMDM Hydantoin , Allantoin , Bis-Peg 15 Methyl Ether Dimethicone , ethyl ascorbic acid , disodium EDTA , bakuchiol , sodium metabisulfite , perfume , 1,2-hexanediol , menthol , sodium hyaluronate , hyaluronic acid ,caprylyl glycol , hydrolyzed hyaluronic acid , acetyl hexpeptide-8 , hydroxypropyltrimonium hyaluronate , potassium hyaluronate , PEG-9 diglycidyl ether / sodium hyaluronate crosspolymer , sodium acetylated hyaluronate .BPOM NA/18212000377Cara penggunaan : Oleskan 2 - 3 tetes serum ke seluruh wajah dan leher, pijat lembut hingga merata, hindari area mata. Gunakan secara teratur tiga kali sehari untuk hasil yang optimal. Dapat digunakan untuk usia di atas 15 tahun ( Untuk Kulit Tampak Lebih Muda )', 45300.00, '2024-03-03 01:44:28', '2024-03-03 01:44:28'),
(102, 1, 8, 'Acne Prone Care Serum Nuface', 'Nuface', 'Serum', 'Berminyak', '\"Untuk semua jenis kulit\r\nMembersihkan & mengeringkan wajah dari jerawat aktif\r\nMenenangkan peradangan wajah yang disebabkan dari jerawat aktif\r\nMencerahkan & mengurangi jerawat aktif\r\nMelembabkan wajah\r\nExpiry Date 11/24\"', 24700.00, '2024-03-03 01:44:54', '2024-03-03 01:44:54'),
(103, 1, 8, 'Acnover Serum for Men Nuface', 'Nuface', 'Serum', 'Normal', 'Nuface Nu Glow Men Acnover Serum merupakan skincare untuk pria juga tak kalah pentingnya dengan wanita, karna perawatan tidak menegnal jenis kelamin Kulit pria dan wanita sama-sama harus dirawat agar tak rusak dan kehilangan fungsinya. Kulit pria lebih sensitive & 20% lebih tebal daripada kulit wanita. Selain itu kulit pria lebih rentan berjerawat & terpapar sinar UVA & UVB. Maka dari itu, pria juga membutuhkan dan wajib menggunakan Nuface Nu Glow Serum Men yang terdiri dari 2 varian!How to use:1.Bersihkan wajah dengan menggunakan Nuface Nu Glow Facial Wash2.Gunakan Nuface Nu Glow Toner dengan menggunakan kapas atau tepuk - tepuk perlahan di wajah3.Gunakan Nuface Nu Glow Men Acnover Serum atau Nuface Nu Glow Men Bright Up Serum sesuai kebutuhan kulit wajah secara merata ke wajah dan leher sebanyak 2-3 tetes4.Pijat secara perlahan agar serum menyerap lebih maksimal Suitable for:Semua jenis kulit dan khusus pria', 35000.00, '2024-03-03 01:45:22', '2024-03-03 01:45:22'),
(104, 1, 8, 'Nu Glow AHA BHA PHA Nuface', 'Nuface', 'Serum', 'Berminyak', '\"Nuface Nu Glow AHA-BHA-PHA Serum⚡\r\n\r\nMerupakan Peeling Serum atau serum eksfoliasi dengan kandungan aktif AHA, BHA, PHA & watery texture serta quick absorbing formula. Nuface Nu Glow AHA-BHA-PHA serum berfungsi untuk mengangkat kotoran & sel kulit mati, serta membantu proses regenerasi kulit, sehingga proses perawatan kulit wajah dapat bekerja lebih maksimal, halus & cerah berseri\r\n✨Star Ingredients :\r\n\r\nAHA : Mengurangi garis - garis halus, kerutam, atau keriput pada kulit\r\n\r\nBHA : Mengatasi kulit berjerawat akibat paparan sinar matahari\r\n\r\nPHA : Meregenerasikan kulit & merawat kulit dengan minim iritasi\r\n🌈Manfaat Nuface Nu Glow AHA-BHA-PHA Serum :\r\n\r\n1.Mengangkat sisa kotoran & sel kulit mati\r\n\r\n2.Membantu proses regenerasi sel kulit wajah\r\n\r\n3.Melembutkan kulit wajah', 33900.00, '2024-03-03 01:46:00', '2024-03-03 01:46:00'),
(105, 1, 8, 'Retinol+ Serum Nuface', 'Nuface', 'Serum', 'Normal', 'Nuface Nu Glow Retinol+ Serum sangat di butuhkan oleh wajah untuk merangsang produksi kolagen dalam lapisan kulit. Kolagen merupakan salah satu protein yang banyak di temukan dalam tubuh, salah satunya terdapat pada kulit. Pada kulit, Kolagen berfungsi sebagai pembentuk lapisan kulit tengah , yang memberikan struktur kekuatan, & elastisitas.Nuface Nu Glow Retinol+ Serum terdapat kandungan Encapsulated Retinol yang memiliki banyak manfaat seperti, daya serap yang lebih baik, lebih stabil, penetrasi yang lebih dalam ke lapisan kulit, sehingga membantu menjaga elastisitas kulit dan menyamarkan garis halus.How to use:1.Cuci wajah dengan bersih menggunakan Nuface Nu Glow Facial Wash2.Oleskan 2-3 tetes Nuface Nu Glow Retinol+ Serum ke area wajah dan leher yang sudah bersih, hindari pemakaian di area mata. Kemudian pijat lembut agar serum menyerap maksimal3.Gunakan Nuface Nu Glow Night Cream sebagai moisturizer setelah Nuface Nu Glow Retinol+ Serum menyerap maksimal4.Untuk pemula disarankan untuk menggunakan 1 sampai 2 kali dalam seminggu5.Nuface Nu Glow Retinol+ Serum hanya digunakan pada malam hariSuitable for:Semua jenis kulitIngredients:1. Encapsulated Retinol 2. Advanced Hyaluronate3. Chamomile Extract', 41900.00, '2024-03-03 01:46:26', '2024-03-03 01:46:26'),
(106, 1, 8, 'Brighnest Skin Nourish Serum Implora', 'Implora', 'Serum', 'Sensitif', 'Merupakan bentuk retinol yang lebih mild sehingga lebih ramah untuk kulitmu yang sensitif1% liporetinolekstrak bunga calendulaekatrak licorice', 35000.00, '2024-03-03 01:47:01', '2024-03-03 01:47:01'),
(107, 1, 8, 'Hydrating Serum Implora', 'Implora', 'Serum', 'Normal', '\"HYDRATING SERUM\r\nMembantu proses regenerasi kulit, miningkatkan fungsi skin barrier, dan mencegah tanda-tanda penuaan.  Gunakan secara teratur\r\n- Direkomendasikan untuk semua jenis kulit\r\n- Penggunaan pagi dan malam hari\r\n- Mengandung: Hyaluronic Acid, Aloe Vera Extract, Chenopodium Quinoa Seed Extract\"', 35000.00, '2024-03-03 01:47:59', '2024-03-03 01:47:59'),
(108, 1, 8, 'Bakuchol Serum Implora', 'Implora', 'Serum', 'Kering', '\"Dengan bahan alami bakuchiol yang akan meningkatkan elastisitas kulitmuBakuchiolEkstrak 7 berryEkstrak buah psorale corylifolia\r\n\r\nImplora Bakuchiol Serum dengan kandungan bakuchiol yang dapat membantu meningkatkan elastisitas kulit wajah dan 7 berries yang kaya akan antioksidan sehingga membuat kulit wajah tampak halus merata dan glowing.\"', 35000.00, '2024-03-03 01:48:35', '2024-03-03 01:48:35'),
(109, 1, 8, 'Liporetinol Serum Implora', 'Implora', 'Serum', 'Sensitif', 'Merupakan bentuk retinol yang lebih mild sehingga lebih ramah untuk kulitmu yang sensitif1% liporetinolekstrak bunga calendulaekatrak licorice', 34999.00, '2024-03-03 01:49:03', '2024-03-03 01:49:03'),
(110, 1, 8, 'Midnight Serum Implora', 'Implora', 'Serum', 'Normal', 'Implora Midnight Serum mengurangi beberapa tanda penuaan diri pada wajah. Membantu menutrisi kulit, melembabkan serta menyamarkan noda hitam di wajah. Maksimalkan tampilan kulit yang terlihat lebih cerah, sehat dan kencang dengan penggunaan secara teratur.- Direkomendasikan untuk semua jenis kulit- Penggunaan malam hari- Mengandung : Galactomyces, Pea Protein Hamamelis Virginiana Coriandrum Sativum', 34999.00, '2024-03-03 01:49:35', '2024-03-03 01:49:35'),
(111, 1, 8, 'Acne Serum Implora', 'Implora', 'Serum', 'Berminyak', 'Implora Acne Serum membantu untuk meminimalkan munculnya jerawat, menyamarkan pori-pori wajah, mengurangi ruam, serta membantu memperbaiki kulit rusak akibat jerawat dengan penggunaan secara teratur.- Direkomendasikan untuk kulit berminyak dan berjerawat- Penggunaan pada pagi dan malam hari- Mengandung : Salicylic Acid, Agaricon Jeju Centella Asiatica Aloe Vera Extract', 35000.00, '2024-03-03 01:50:14', '2024-03-03 01:50:14'),
(112, 1, 8, 'Luminous Brightening Serum Implora', 'Implora', 'Serum', 'Normal', '\"Implora Luminous Brightening Serum mengandung Niacinamide 10% dan Kakadu Plum yang kandungan vitamin C nya 70 kali lebih banyak dari buah jeruk, yang dapat membantu mencerahkan, melembabkan, menyamarkan noda hitam serta menutrisi kulit. Dapatkan tampilan kulit yang sehat dan bersinar dengan menggunakan secara rutin.- Direkomendasikan untuk semua jenis kulit- Penggunaan pagi dan malam hari- Mengandung : Niacinamide 10%, Caviar Collagen, Black pearl, Vitamin C', 35000.00, '2024-03-03 01:50:46', '2024-03-03 01:50:46'),
(113, 1, 8, 'Hydra Glow Natural Hydrating Active AHA & Niacinamide 5% Sariayu', 'Sariayu', 'Serum', 'Normal', 'Serum wajah yang mengandung Natural AHA, Niacinamide 5%, Pentavitin 1%, Vitamin E, 0% Alcohol, Rose Extract dan Aloe Vera Extract. Diformulasikan khusus untuk efektif mengangkat sel kulit mati, sekaligus melembapkan dan mencerahkan warna kulit kamu. Dengan Natural Hydrating Active dan Hyaluronic Acid untuk melembapkan kulit hingga 72 jam. Kulit kamu jadi lebih sehat dengan glowing natural.', 66200.00, '2024-03-03 01:51:29', '2024-03-03 01:51:29'),
(114, 3, 16, 'Gatsby Durable Deo Shield', 'Gatsby', 'Sabun Mandi Cair', 'Kering', 'Sabun mandi pria dengan Extra Cooling Agent yang memberikan rasa segar. Membersihkan secara menyeluruh dan membantu mewujudkan kondisi kulit tetap ideal. Perlindungan yang melawan bakteri penyebab bau badan dengan Anti-Bacterial Agent + Deo Agent.', 31000.00, '2024-03-03 17:05:27', '2024-03-03 17:05:27'),
(115, 3, 16, 'Gatsby Quick 3in1 All Body', 'Gatsby', 'Sabun Mandi Cair', 'Normal', 'Sabun mandi pria dengan Extra Cooling Agent yang memberikan rasa segar. Membersihkan secara menyeluruh dan membantu mewujudkan kondisi kulit tetap ideal. Membersihkan secara menyeluruh untuk rambut, wajah, dan tubuh yang diperkaya dengan kandungan ekstrak Aloe Vera.', 29000.00, '2024-03-03 17:06:11', '2024-03-03 17:06:11'),
(116, 3, 16, 'Gatsby Shoking Ice Wave', 'Gatsby', 'Sabun Mandi Cair', 'Normal', 'Sabun mandi pria dengan Extra Cooling Agent yang memberikan rasa segar. Membersihkan secara menyeluruh dan membantu mewujudkan kondisi kulit tetap ideal. Sensasi dingin 2X lebih kuat dengan Active Cooling Agent dari Menthol yang memberikan kesegaran tahan lama.', 31000.00, '2024-03-03 17:07:11', '2024-03-03 17:07:11'),
(117, 3, 16, 'ProGuard Daily Purifying with Sea Minerals', 'ProGuard', 'Sabun Mandi Cair', 'berminyak', 'ProGuard Daily Purifying adalah sabun kesehatan yang memberikan perlindungan seimbang dengan teknologi antibacterial modern yang efektif melawan 99% kuman namun lembut di kulit sehingga dapat digunakan setiap hari. Mengandung Sea Mineral yang dapat membantu mengangkat kotoran dan minyak berlebih.', 14000.00, '2024-03-03 17:08:18', '2024-03-03 17:08:18'),
(118, 3, 16, 'ProGuard Daily Refreshing with Lemongrass', 'ProGuard', 'Sabun Mandi Cair', 'Normal', 'ProGuard Daily Refreshing adalah sabun kesehatan yang memberikan perlindungan seimbang dengan teknologi antibacterial modern yang efektif melawan 99% kuman penyebab bau badan namun lembut di kulit sehingga dapat digunakan setiap hari. Mengandung Lemongrass Scent yang menyegarkan.', 14000.00, '2024-03-03 17:10:34', '2024-03-03 17:10:34'),
(119, 3, 16, 'ProGuard Daily Cleansing with Eucalyptus', 'ProGuard', 'Sabun Mandi Cair', 'Berminyak', 'ProGuard Daily Cleansing adalah sabun kesehatan yang memberikan perlindungan seimbang dengan teknologi antibacterial modern yang efektif melawan 99% kuman namun lembut di kulit sehingga dapat digunakan setiap hari. Mengandung Eucalyptus yang dikenal sebagai antibakterial alami.', 15000.00, '2024-03-03 17:11:18', '2024-03-03 17:11:18'),
(120, 3, 16, 'Shinzui Body Cleanser Myori', 'Shinzui', 'Sabun Mandi Cair', 'Normal', 'Shinzui Myori Body Cleanser merupakan sabun mandi yang dapat membantu melembabkan dan mencerahkan kulit yang kusam dengan Herba Matsu-Oil yang bisa membantu mengubah pigmen melamin penyebab warna kulit gelap, menjadi leuko-melamin yang lebih cerah.', 28000.00, '2024-03-03 17:12:09', '2024-03-03 17:12:09'),
(121, 3, 16, 'Shinzui Body Cleanser Sakura', 'Shinzui', 'Sabun Mandi Cair', 'Kering', 'Shinzui Sakura Body Cleanser merupakan sabun mandi yang dapat membantu melembabkan dan mencerahkan kulit yang kusam dengan Herba Matsu-Oil yang bisa membantu mengubah pigmen melamin penyebab warna kulit gelap, menjadi leuko-melamin yang lebih cerah.', 28000.00, '2024-03-03 17:13:15', '2024-03-03 17:13:15'),
(122, 3, 16, 'Shinzui Body Cleanser Matsu', 'Shinzui', 'Sabun Mandi Cair', 'Berminyak', 'SHINZU\'I Body Cleanser Sabun Mandi Cair Matsu adalah sabun mandi cair yang dapat membersihkan dan mencerahkan kulit secara alami dan lebih efektif. Sabun cair dari Jepang ini diperkaya dengan herba matsu oil, bahan pemutih yang mencerahkan kulit dengan membentuk leuko-melanin tak berwarna tanpa merusak melanosit dan menghambat kinerja enzim tirosinase. Estrak bunga Sakura khas Jepang akan membuat hari-hari Anda menjadi lebih wangi. Dengan manfaat tersebut, sabun cair Shinzui ini akan menjadikan kulit Anda menjadi lebih bersih dan cerah sepanjang hari. Perawatan untuk pencerah kulit, diformulasikan dari bahan alami Herba Matsu Oil Jepang, minyak essensial dari jamur Matsutake. Kandungan alami Shinzu\'i terbukti dapat memudarkan pigmentasi dan melembabkan kulit. Kulit tampak lebih bening dan kenyal.', 28000.00, '2024-03-03 17:14:44', '2024-03-03 17:14:44'),
(123, 3, 16, 'Scarlett Brightening Shower - Pomegrante', 'Scarlett', 'Sabun Mandi Cair', 'Kering', 'Mengandung Gluthatione untuk Mencerahkan dan meratakan warna kulit, Menjaga kelembapan dan kulit, Merawat kulit agar tetap halus, lembut dan tidak kering.\r\nMengandung Vitamin E untuk Merawat kekencangan dan elastisitas kulit, Membantu menjaga kelembapan kulit.\r\nDan mengandung HYDROLIZED COLLAGEN untuk Merawat kekencangan kulit, Meningkatkan kelembapan dan elastisitas kulit, Mencegah kerusakan kulit.', 0.00, '2024-03-03 17:15:33', '2024-03-03 17:15:33'),
(124, 3, 16, 'Scarlett Brightening Shower - Cucumber', 'Scarlett', 'Sabun Mandi Cair', 'Berminyak', 'Mengandung Gluthatione untuk Mencerahkan dan meratakan warna kulit, Menjaga kelembapan dan kulit, Merawat kulit agar tetap halus, lembut dan tidak kering.\r\nMengandung Vitamin E untuk Merawat kekencangan dan elastisitas kulit, Membantu menjaga kelembapan kulit.\r\nDan mengandung HYDROLIZED COLLAGEN untuk Merawat kekencangan kulit, Meningkatkan kelembapan dan elastisitas kulit, Mencegah kerusakan kulit.', 66000.00, '2024-03-03 17:16:16', '2024-03-03 17:16:16'),
(125, 3, 16, 'Nuvo Family Nature Protect', 'Nuvo', 'Sabun Mandi Batangan', 'Normal', 'NUVO Family Antibacterial Bar Soap Natural Protect merupakan sabun mandi batang pilihan keluarga untuk bunuh kuman penyakit, bantu cegah kemerahan, dan gatal pada kulit, dengan formula TCC, dan Tea Tree Oil. Membunuh 99,9% kuman dan virus. Dilengkapi dengan high farnesol yang menjaga kelembaban dan kelembutan kulit.', 3000.00, '2024-03-03 17:17:08', '2024-03-03 17:17:08'),
(126, 3, 16, 'Nuvo Family Care Protect', 'Nuvo', 'Sabun Mandi Batangan', 'Normal', 'NUVO Care Protect Bar Soap adalah sabun anti bakterial dengan bahan aktif TCC dan Vitamin E. Vitamin E berfungsi untuk menutrisi dan merawat kulit.', 3000.00, '2024-03-03 17:18:25', '2024-03-03 17:18:25'),
(127, 3, 16, 'Nuvo Family Sakinah', 'Nuvo', 'Sabun Mandi Batangan', 'Kering', 'NUVO Family Sakinah adalah sabun antibakterial dengan TCC yang efektif melawan kuman dan minyak zaitun yang membantu melembutkan kulit. Sabun ini mampu membunuh kuman, mengurangi bau badan dan rasa gatal pada kulit dan memberikan kesegaran lebih lama.', 3000.00, '2024-03-03 17:19:40', '2024-03-03 17:19:40'),
(128, 3, 16, 'Nuvo Family Fresh Protect', 'Nuvo', 'Sabun Mandi Batangan', 'Berminyak', 'NUVO FAMILY Sabun Mandi Batang Fresh Protect adalah sabun anti bakterial dengan bahan aktif TCC dan Lemon. Lemon membersihkan secara alami dan membantu mengurangi kadar minyak berlebih pada kulit.', 3000.00, '2024-03-03 17:21:04', '2024-03-03 17:21:04'),
(129, 3, 16, 'Nuvo Family Mild Protect', 'Nuvo', 'Sabun Mandi Batangan', 'Kering', 'NUVO Family Sabun Mandi Batang Mild Portect adalah sabun antibakterial dengan bahan aktif TCC dan Milk Moisturizer. Milk moisturizer merupakan pelembab dari bahan susu.', 3000.00, '2024-03-03 17:21:47', '2024-03-03 17:21:47'),
(130, 3, 16, 'Zen Antibacterial Body Soap - Shiso & Sulphur', 'Zen', 'Sabun Mandi Batangan', 'Kombinasi', 'Zen Antibacterial Body Soap - Shiso & Sulphur merupakan sabun mandi yang mengandung anti bakteri dan dapat membersihkan serta melindungi kulit secara alami. Sabun mandi ZEN membuat kulit sehat dan bugar, mengurangi gatal dan kemerahan, sangat cocok untuk kulit sensitif, serta lembut di kulit. Ingredients : Palm (Elaeis Guineensis) Oil, Elaeis Guineensis Kernel Oil, Sodium Hydroxide, Aqua, Parfum, Sodium Chloride, Sodium PCA, Glycerin, Phosporic Acid, Cocamidopropyl Betaine, Perilla Ocymoides (Red Shiso) Leaf Extract, Sulfur, Thymol, Tetrasodium EDTA, Titanium Dioxide, Tetrasodium Etidronate, Sodium Hydrosulfite, Disodium Distyrylbiphenyl Disulfonate, BHT.', 4000.00, '2024-03-03 17:22:34', '2024-03-03 17:22:34'),
(131, 3, 16, 'K Natural White - Sparkling Magnolia', 'K Natural White', 'Sabun Mandi Batangan', 'Kering', 'K Natural White, bodywash with skincare goodness. Terinspirasi dari kecantikan kulit wanita Korea. Di formulasikan dengan Korean rice milk dan vitamin C yang berfungsi untuk mecerahkan dan menutrisi kulit sehingga kulitmu glowing merata. Diformulasikan dengan Korean ricemilk yang dipercaya turun-temurun dapat mencerahkan kulit, dipadukan dengan vitamin B dan vitamin C yang dapat melembabkan dan menutrisi kulit sehingga tidak kusam. Terinspirasi dari wewangian khas Korea yaitu Cotton flower, Magnolia dan Aloe vera.', 4000.00, '2024-03-03 17:23:23', '2024-03-03 17:23:23'),
(132, 3, 16, 'K Natural White - Cotton Flowers', 'K Natural White', 'Sabun Mandi Batangan', 'Normal', 'Terinspirasi dari kecantikan kulit wanita Korea. Di formulasikan dengan Korean Rice Milk dan Vitamin C yang berfungsi untuk mecerahkan dan menutrisi kulit sehingga kulitmu glowing merata. Diformulasikan dengan Korean ricemilk yang dipercaya turun-temurun dapat mencerahkan kulit, dipadukan dengan vitamin B dan vitamin C yang dapat melembabkan dan menutrisi kulit sehingga tidak kusam.', 4000.00, '2024-03-03 17:24:05', '2024-03-03 17:24:05'),
(133, 3, 16, 'K Natural White - Aloe Vera', 'K Natural White', 'Sabun Mandi Batangan', 'Kering', 'K Natural White, bodywash with skincare goodness. Terinspirasi dari kecantikan kulit wanita Korea. Di formulasikan dengan Korean rice milk dan vitamin C yang berfungsi untuk mecerahkan dan menutrisi kulit sehingga kulitmu glowing merata. Diformulasikan dengan Korean ricemilk yang dipercaya turun-temurun dapat mencerahkan kulit, dipadukan dengan vitamin B dan vitamin C yang dapat melembabkan dan menutrisi kulit sehingga tidak kusam. Terinspirasi dari wewangian khas Korea yaitu Cotton flower, Magnolia dan Aloe vera.', 4000.00, '2024-03-03 17:24:36', '2024-03-03 17:24:36'),
(134, 3, 16, 'Zen Antibacterial Japanese Red Shiso with Echinacea Flower', 'Zen', 'Sabun Mandi Cair', 'Berminyak', 'Echinacea dipadu kekuatan Japanese Red Shiso  sebagai antibakteri alami. Echinacea berfungsi untuk energizing karena sensasi wangi yang penuh semangat, cocok untuk outdoor activity. Tidak membuat kulit kering, bagus untuk melembabkan kulit. Ingredients : Aqua, Lauric Acid, Cocamidopropyl Betaine, Potassium Hydroxide, Lauryl Hydroxysultaine, Parfum, Glycerin, Sodium Chloride, Glycol Distearate, PEG-40 Hydrogenated Castor Oil, Acrylates Copolymer, Propylene Glycol , Tetrasodium EDTA, Hydroxypropyl Methylcellulose, Hexamidine Diisethionate, Perilla Ocymoides (Red Shiso) Leaf Extract, Sulfur, Pentaerythrityl Tetra-di-t-butyl Hydroxyhydrocinnamate, Thymol, Benzotriazolyl Dodecyl P-cresol, Disodium Distyrylbiphenyl Disulfonate.', 32000.00, '2024-03-03 17:25:26', '2024-03-03 17:25:26'),
(135, 3, 16, 'Zen Antibacterial Japanese Red Shiso with SandalWood', 'Zen', 'Sabun Mandi Cair', 'Kering', 'Sandalwood dipadu kekuatan Japanese Red Shiso sebagai antibakteri alami. Berfungsi sebagai anti-aging alami. Membantu mengurangi kerutan dan meningkatkan kelembaban alami kulit. Ingredients : Aqua, Lauric Acid, Cocamidopropyl Betaine, Potassium Hydroxide, Lauryl Hydroxysultaine, Parfum, Glycerin, Sodium Chloride, Glycol Distearate, PEG-40 Hydrogenated Castor Oil, Acrylates Copolymer, Propylene Glycol, Tetrasodium EDTA, Hydroxypropyl Methylcellulose, Hexamidine Diisethionate, Perilla Ocymoides (Red Shiso) Leaf Extract, Santalum Album (Sandalwood) Wood Oil, Pentaerythrityl Tetra-di-t-butyl Hydroxyhydrocinnamate, Thymol, Benzotriazolyl Dodecyl P-cresol, Disodium Distyrylbiphenyl Disulfonate, CI 16255.', 32000.00, '2024-03-03 17:26:09', '2024-03-03 17:26:09'),
(136, 3, 16, 'Zen Antibacterial Japanese Red Shiso with Pure Tea Tree', 'Zen', 'Sabun Mandi Cair', 'Normal', 'Tea Tree dipadu kekuatan Japanese Red Shiso  sebagai antibakteri alami. Tea Tree memberikan sensasi segar menyeluruh seperti mandi menyatu dengan alam.\r\nIngredients :\r\nAqua, Lauric Acid, Cocamidopropyl Betaine, Potassium Hydroxide, Lauryl Hydroxysultaine, Parfum, Glycerin, Sodium Chloride, Glycol Distearate, PEG-40 Hydrogenated Castor Oil, Acrylates Copolymer, Propylene Glycol , Tetrasodium EDTA, Hydroxypropyl Methylcellulose, Hexamidine Diisethionate, Perilla Ocymoides (Red Shiso) Leaf Extract, Sulfur, Pentaerythrityl Tetra-di-t-butyl Hydroxyhydrocinnamate, Thymol, Benzotriazolyl Dodecyl P-cresol, Disodium Distyrylbiphenyl Disulfonate.', 32000.00, '2024-03-03 17:26:55', '2024-03-03 17:26:55'),
(137, 3, 16, 'Zen Antibacterial Japanese Red Shiso with Sea Salt', 'Zen', 'Sabun Mandi Cair', 'Kering', 'Sea Salt dipadu kekuatan Japanese Red Shiso sebagai antibakteri alami. Sea Salt (sodium, magnesium, mineral) membantu mengangkat sel kulit mati, debu, dan polusi. Ingredients: Aqua, Lauric Acid, Cocamidopropyl Betaine, Potassium Hydroxide, Lauryl Hydroxysultaine, Parfum, Glycerin, Sea Salt, Glycol Distearate, PEG-40 Hydrogenated Castor Oil, Acrylates Copolymer, Propylene Glycol , Tetrasodium EDTA, Hydroxypropyl Methylcellulose, Hexamidine Diisethionate, Perilla Ocymoides (Red Shiso) Leaf Extract, Pentaerythrityl Tetra-di-t-butyl Hydroxyhydrocinnamate, Thymol, Benzotriazolyl Dodecyl P-cresol, Disodium Distyrylbiphenyl Disulfonate, CI 42090, CI 16255.', 32000.00, '2024-03-03 17:27:55', '2024-03-03 17:27:55'),
(138, 3, 16, 'Zen Antibacterial Japanese Red Shiso with Sulphur', 'Zen', 'Sabun Mandi Cair', 'Kombinasi', 'Sulphur dipadu kekuatan Japanese Red Shiso  sebagai antibakteri alami. Sulfur dapat mengurangi gatal dan kemerahan, sangat cocok untuk kulit sensitif, serta lembut di kulit. Ingredients : Aqua, Lauric Acid, Cocamidopropyl Betaine, Potassium Hydroxide, Lauryl Hydroxysultaine, Parfum, Glycerin, Sodium Chloride, Glycol Distearate, PEG-40 Hydrogenated Castor Oil, Acrylates Copolymer, Propylene Glycol , Tetrasodium EDTA, Hydroxypropyl Methylcellulose, Hexamidine Diisethionate, Perilla Ocymoides (Red Shiso) Leaf Extract, Sulfur, Pentaerythrityl Tetra-di-t-butyl Hydroxyhydrocinnamate, Thymol, Benzotriazolyl Dodecyl P-cresol, Disodium Distyrylbiphenyl Disulfonate.', 32000.00, '2024-03-03 17:28:41', '2024-03-03 17:28:41'),
(139, 3, 16, 'K Natural White - Cotton Flowers', 'K Natural White', 'Sabun Mandi Cair', 'Kering', 'Terinspirasi dari kecantikan kulit wanita Korea. Di formulasikan dengan Korean Rice Milk dan Vitamin C yang berfungsi untuk mecerahkan dan menutrisi kulit sehingga kulitmu glowing merata. Diformulasikan dengan Korean ricemilk yang dipercaya turun-temurun dapat mencerahkan kulit, dipadukan dengan vitamin B dan vitamin C yang dapat melembabkan dan menutrisi kulit sehingga tidak kusam.', 30000.00, '2024-03-03 17:29:23', '2024-03-03 17:29:23'),
(140, 3, 16, 'Dettol - Cool Icy Mint & Bergamot', 'Dettol', 'Sabun Mandi Cair', 'Normal', 'Sabun antibakteri Dettol Profresh menggabungkan perlindungan terpercaya dengan khasiat Icy Mint & Bergamot untuk perlindungan dari bau badan, kulit terasa sehat dan segar. Untuk perlindungan 12 jam dari kuman penyebab bau.', 20000.00, '2024-03-03 17:32:08', '2024-03-03 17:32:08'),
(141, 3, 16, 'Dettol - Fresh Yuzu Citrus', 'Dettol', 'Sabun Mandi Cair', 'Normal', 'Sabun antibakteri Dettol Profresh menggabungkan perlindungan terpercaya dengan keharuman jeruk Yuzu untuk perlindungan dari bau badan, kulit terasa sehat dan segar. Untuk perlindungan 12 jam dari kuman penyebab bau.', 20000.00, '2024-03-03 17:32:47', '2024-03-03 17:32:47'),
(142, 3, 16, 'Nuvo Family Nature Protect', 'Nuvo', 'Sabun Mandi Cair', 'Kering', 'NUVO Nature Protect adalah sabun anti bakterial dengan bahan aktif TCC dan Tea Tree Oil. Tea tree oil sebagai anti bakterial alami yang juga membantu membersihkan kulit. KEUNGGULAN: \r\n- Formula antibakterial TCC yang efektif melawan kuman\r\n- Moisturizer yang melembutkan dan melembabkan kulit\r\n- Perfume yang cocok untuk keluarga', 13000.00, '2024-03-03 17:34:48', '2024-03-03 17:34:48'),
(143, 3, 16, 'Citra Natural Glow - Bengkoang', 'Citra', 'Sabun Mandi Cair', 'Normal', '• 100% Ekstrak Bengkoangnya akan membuat kulitmu bersih, cerah dan bercahaya secara alami di setiap bilasannya.\r\n • Mengandung Beras yang dikenal secara alami bisa mengangkat sel kulit mati dan mencerahkan kulit kusam.\r\n • Mengandung Kunyit yang dapat mencerahkan warna asli kulitmu.\r\n \r\n \r\n Citra Lulur Natural Glow Bengkoang. Dengan 100% Ekstrak Bengkoang yang akan membuat kulitmu bersih, cerah dan bercahaya secara alami di setiap bilasannya. Dipadukan dengan Beras yang dikenal secara alami bisa mengangkat sel kulit mati dan mencerahkan kulit kusam dan juga Kunyit dapat mencerahkan warna asli kulitmu. \r\n \r\n Citra Sabun Lulur Natural Glow\r\n  Kulit tampak cerah bersinar alami bahai dilulur di setiap mandi.\r\n Juga efektif sebagai sabun cuci tangan', 20000.00, '2024-03-03 17:35:36', '2024-03-03 17:35:36'),
(144, 3, 16, 'GIV Hijab Perfumed Beauty Soap - Tin & Zaitun', 'GIV', 'Sabun Mandi Cair', 'Kering', 'Rasakan kesegeraan dengan keharuman istimewa, dari perpaduan Tin dan Zaitun, di keseharian walau dalam balutan hijab sepanjang hari. Rasakan cantikmu sekarang dengan busakan lalu usapkan ke seluruh tubuh. Bilas hingga bersih. Gunakan dua kali sehari untuk kesempurnaan cantikmu.', 20000.00, '2024-03-03 17:36:33', '2024-03-03 17:36:33'),
(145, 3, 16, 'GIV Hijab Perfumed Beauty Wash - Rose Water & Argan Oil', 'GIV', 'Sabun Mandi Cair', 'Kering', 'GIV Hijab Rose Water & Argan Oil merupakan sabun mandi yang dapat digunakan sehari-hari. Perpaduan keharuman Rose Water & Argan Oil membuat sensasi lebih segar sehabis mandi & wangi sepanjang hari. Rose Water & Argan Oil juga dapat membantu menjaga kelembutan kulitmu.', 20000.00, '2024-03-03 17:37:31', '2024-03-03 17:37:31'),
(146, 3, 16, 'Lifebuoy Antibacterial Bodywash - Mild Care', 'Lifebuoy', 'Sabun Mandi Cair', 'Kering', 'Lifebuoy Body Wash Mild Care merupakan produk sabun cair untuk badan dengan kandungan antibakteri persembahan Lifebuoy yang memiliki kandungan dari kebaikan krim susu dan oat yang mampu menjaga kelembutan kulit, terutama mereka yang memiliki kulit sensitif. Selain itu juga bermanfaat merawat kulit sehingga menjadikan kulit lebih halus dan lembut. Diperkaya dengan ActivSilver+ Formula yang memiliki kandungan anti-bakteri yang bekerja dengan imunitas kulit dan melawan kuman penyebab penyakit, dengan kebaikan susu pada Lifebuoy Mild Care yang melembabkan kulit dan menjaga kelembaban natural kulit.', 25000.00, '2024-03-03 17:38:24', '2024-03-03 17:38:24'),
(147, 3, 16, 'Lifebuoy Antibacterial Bodywash - Total 10', 'Lifebuoy', 'Sabun Mandi Cair', 'Normal', 'Lifebuoy Sabun Mandi Cair Total 10 Antibakteri kini dengan Multivitamin, berikan Anda dan keluarga keamanan total dengan Body Wash yang 100% lebih kuat lawan kuman berbahaya. Dilengkapi dengan Multivitamin dan 2 Booster perlindungan kulit, sabun ini menawarkan perlindungan maksimal terhadap kuman penyebab penyakit, menjadikannya pilihan terbaik untuk seluruh anggota keluarga, baik anak-anak maupun dewasa.', 25000.00, '2024-03-03 17:39:05', '2024-03-03 17:39:05'),
(148, 3, 16, 'Dettol Anti Bacterial - Original Soap', 'Dettol', 'Sabun Mandi Batangan', 'Kering', 'Sabun mandi anti bakteri bertekstur batang yang mampu memberi perlindungan terhadap kuman penyebab bau badan. Dan juga sekaligus membersihkan dan melindungi kulit Anda agar terasa higienis, bersih, dan segar setiap hari.', 4000.00, '2024-03-03 17:39:45', '2024-03-03 17:39:45'),
(149, 3, 16, 'Dettol - Cool with Crispy Menthol', 'Dettol', 'Sabun Mandi Batangan', 'Kering', 'Merupakan produk sabun anti bakteri dengan kesegaran mentol yang melindungi dan menyegarkan kulit setelah memakai, yang berfungsi untuk membersihkan dan menyejukan kulit.', 4000.00, '2024-03-03 17:40:36', '2024-03-03 17:40:36'),
(150, 3, 16, 'Dettol - Skincare', 'Dettol', 'Sabun Mandi Batangan', 'Kering', 'Lindungi keluarga Anda dari berbagai jenis kuman yang tak terlihat dengan Dettol Bar Soap. Dettol Bar Soap merupakan sabun mandi anti bakteri dengan tekstur batangan. Tidak hanya melindungi dari kuman, Dettol Bar Soap dengan dengan aroma khusus ini dapat melembapkan kulit Anda secara maksimal. Sehingga kulit sehat dan segar sepanjang hari.\r\n\r\nMelindungi Diri dari Kuman\r\nMandi setiap hari merupakan hal penting yang harus dilakukan agar kebersihan dan kesehatan terjaga. Sabun batang Dettol merupakan paket lengkap sabun mandi dengan aroma khusus yang efektif untuk membersihkan diri dari kotoran dan kuman. Sehingga kulit anda bersih dan higienis setiap hari.\r\n\r\nMenjaga Kelembapan Kulit\r\nSabun Dettol anti kuman melembapkan dan membersihkan kulit sehingga membuat kulit terasa halus dan lembut sepanjang hari.\r\nSkincare: Dengan ekstra pelembab dapat membuat kulit Anda terasa halus', 4000.00, '2024-03-03 17:41:19', '2024-03-03 17:41:19'),
(151, 3, 16, 'Dettol Anti Bacterial - Lasting Fresh', 'Dettol', 'Sabun Mandi Batangan', 'Kering', 'Lindungi keluarga Anda dari berbagai jenis kuman yang tak terlihat dengan Dettol Bar Soap. Dettol Bar Soap merupakan sabun mandi anti bakteri dengan tekstur batangan. Tidak hanya melindungi dari kuman, Dettol Bar Soap dengan dengan aroma khusus ini dapat melembapkan kulit Anda secara maksimal. Sehingga kulit sehat dan segar sepanjang hari.\r\n\r\nMelindungi Diri dari Kuman\r\nMandi setiap hari merupakan hal penting yang harus dilakukan agar kebersihan dan kesehatan terjaga. Sabun batang Dettol merupakan paket lengkap sabun mandi dengan aroma khusus yang efektif untuk membersihkan diri dari kotoran dan kuman. Sehingga kulit anda bersih dan higienis setiap hari.\r\n\r\nMenjaga Kelembapan Kulit\r\nSabun Dettol anti kuman melembapkan dan membersihkan kulit sehingga membuat kulit terasa halus dan lembut sepanjang hari.\r\n\r\nLasting Fresh: Diperkaya dengan ekstrak ketimun', 4000.00, '2024-03-03 17:41:58', '2024-03-03 17:41:58'),
(152, 3, 16, 'Dettol Anti Bacterial - Active', 'Dettol', 'Sabun Mandi Batangan', 'Normal', 'Lindungi keluarga Anda dari berbagai jenis kuman yang tak terlihat dengan Dettol Bar Soap. Dettol Bar Soap merupakan sabun mandi anti bakteri dengan tekstur batangan. Tidak hanya melindungi dari kuman, Dettol Bar Soap dengan dengan aroma khusus ini dapat melembapkan kulit Anda secara maksimal. Sehingga kulit sehat dan segar sepanjang hari.\r\n\r\nMelindungi Diri dari Kuman\r\nMandi setiap hari merupakan hal penting yang harus dilakukan agar kebersihan dan kesehatan terjaga. Sabun batang Dettol merupakan paket lengkap sabun mandi dengan aroma khusus yang efektif untuk membersihkan diri dari kotoran dan kuman. Sehingga kulit anda bersih dan higienis setiap hari.\r\n\r\nMenjaga Kelembapan Kulit\r\nSabun Dettol anti kuman melembapkan dan membersihkan kulit sehingga membuat kulit terasa halus dan lembut sepanjang hari.\r\n\r\nActive: Dengan aroma yang menyegarkan', 4000.00, '2024-03-03 17:42:31', '2024-03-03 17:42:31'),
(153, 3, 16, 'Dettol Anti Bacterial - Re-energize', 'Dettol', 'Sabun Mandi Batangan', 'Kering', 'Lindungi keluarga Anda dari berbagai jenis kuman yang tak terlihat dengan Dettol Bar Soap. Dettol Bar Soap merupakan sabun mandi anti bakteri dengan tekstur batangan. Tidak hanya melindungi dari kuman, Dettol Bar Soap dengan dengan aroma khusus ini dapat melembapkan kulit Anda secara maksimal. Sehingga kulit sehat dan segar sepanjang hari.\r\n\r\nMelindungi Diri dari Kuman\r\nMandi setiap hari merupakan hal penting yang harus dilakukan agar kebersihan dan kesehatan terjaga. Sabun batang Dettol merupakan paket lengkap sabun mandi dengan aroma khusus yang efektif untuk membersihkan diri dari kotoran dan kuman. Sehingga kulit anda bersih dan higienis setiap hari.\r\n\r\nMenjaga Kelembapan Kulit\r\nSabun Dettol anti kuman melembapkan dan membersihkan kulit sehingga membuat kulit terasa halus dan lembut sepanjang hari.\r\n\r\nRe-energize: Kesegaran jeruk mandarin dan perlindungan terpecaya', 4000.00, '2024-03-03 17:43:11', '2024-03-03 17:43:11');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `name`, `brand`, `type`, `skin_type`, `description`, `price`, `created_at`, `updated_at`) VALUES
(154, 3, 16, 'Dettol Anti Bacterial - Fresh', 'Dettol', 'Sabun Mandi Batangan', 'Normal', 'Lindungi keluarga Anda dari berbagai jenis kuman yang tak terlihat dengan Dettol Bar Soap. Dettol Bar Soap merupakan sabun mandi anti bakteri dengan tekstur batangan. Tidak hanya melindungi dari kuman, Dettol Bar Soap dengan dengan aroma khusus ini dapat melembapkan kulit Anda secara maksimal. Sehingga kulit sehat dan segar sepanjang hari.\r\n\r\nMelindungi Diri dari Kuman\r\nMandi setiap hari merupakan hal penting yang harus dilakukan agar kebersihan dan kesehatan terjaga. Sabun batang Dettol merupakan paket lengkap sabun mandi dengan aroma khusus yang efektif untuk membersihkan diri dari kotoran dan kuman. Sehingga kulit anda bersih dan higienis setiap hari.\r\n\r\nMenjaga Kelembapan Kulit\r\nSabun Dettol anti kuman melembapkan dan membersihkan kulit sehingga membuat kulit terasa halus dan lembut sepanjang hari.\r\n\r\nFresh : Kesegaran citrus dan dilengkapi ekstra pelembab', 4000.00, '2024-03-03 17:48:45', '2024-03-03 17:48:45'),
(155, 3, 16, 'Lux Botanicals - Soft Rose', 'Lux', 'Sabun Mandi Batangan', 'Kering', 'Sabun batang yang diformulasikan secara khusus dengan bahan-bahan alami untuk menghadirkan pengalaman mandi yang memanjakan kulit dan dirimu. Diperkaya dengan Vitamin C Essence dan ekstrak bunga Mawar Perancis, hadir dalam formulasi yang dapat melembabkan dan melembutkan kulitmu dengan keharuman alami.', 4000.00, '2024-03-03 17:50:13', '2024-03-03 17:50:13'),
(156, 3, 16, 'Lux Botanicals - Magical Orchid', 'Lux', 'Sabun Mandi Batangan', 'Berminyak', 'Sabun Batang yang diformulasikan secara khusus dengan bahan-bahan alami untuk menghadirkan pengalaman mandi yang memukau dengan keharuman mewah tahan lama. Diperkaya dengan Vitamin C Essence dan ekstrak bunga Magical Orchid, hadir dalam formulasi yang dapat memberikan keharuman menggoda tahan lama.', 4000.00, '2024-03-03 17:51:02', '2024-03-03 17:51:02'),
(157, 3, 16, 'Lux Botanicals - Lily Fresh', 'Lux', 'Sabun Mandi Batangan', 'Kering', 'Memberikan keharuman dan kesegaran\r\nSabun lux varian lily fresh ini Manjakan dirimu dengan pengalaman mandi mewah me sabun lux dengan varian soft rose ini memberikan kesegaran yang membuat tubuh kita menjadi lebih segar dan fresh sepanjang hari. sabun lux ini selain menyegarkan tetapi juga bisa membuat tubuh kita lebih bersih dan fresh sepanjang hari.\r\nmanfaatnya :\r\n1.        membuat kulit kita menjadi harum dan segar\r\n2.        melembutkan kulit \r\n3.        mengangkat kulit dari sel sel mati.', 4000.00, '2024-03-03 17:51:49', '2024-03-03 17:51:49'),
(158, 3, 16, 'Lux Botanicals - Yuzu Blossom', 'Lux', 'Sabun Mandi Batangan', 'Normal', 'Sabun Batang yang diformulasikan secara khusus dengan bahan-bahan alami untuk menghadirkan sensasi pengalaman mandi yang memanjakan kulit dan dirimu. Diperkaya dengan Vitamin C Essence, hadir dalam formulasi yang dapat memberikanmu kulit cerah dan bersih secara menyeluruh dibalut dengan keharuman bunga yang menawan.', 4000.00, '2024-03-03 17:52:29', '2024-03-03 17:52:29'),
(159, 3, 16, 'Fres & Natural Soap woth Yogurt & Real Fruits Extract', 'Fresh', 'Sabun Mandi Batangan', 'Kering', 'Sabun Fres & Natural merupakan sabun mandi yang mengandung 2 bahan utama, yaitu Yoghurt untuk memberikan nutrisi pada kulit sekaligus melembabkan dan Real fruit extract (sari buah alami) yang mengandung vitamin C untuk menghaluskan dan melembutkan kulit.', 4000.00, '2024-03-03 17:53:26', '2024-03-03 17:53:26'),
(160, 3, 16, 'Lifebuoy - Care', 'Lifebuoy', 'Sabun Mandi Batangan', 'Berminyak', 'Lifebuoy Anti Bacterial Mild Care mengandung kebaikan susu dan oat, membuat kulit terasa halus dan lembut. Formula yang di desain untuk lembut di kulit dan melindungi kulit dari kuman penyebab penyakit, bahkan yang kuat sekalipun.', 4000.00, '2024-03-03 17:53:59', '2024-03-03 17:53:59'),
(161, 3, 16, 'Lifebuoy - Lemon Fresh', 'Lifebuoy', 'Sabun Mandi Batangan', 'Kering', 'Lifebuoy Body Wash Lemon Fresh merupakan sabun cair yang diformulasi khusus dengan kebaikan alami ekstrak lemon yang mampu membersihkan secara mendalam, merevitalisasi kulit, dan membuat tubuh segar sepanjang hari. Lemon sebagai salah satu sumber asam sitrun dari alam yang baik untuk memberi kesegaran.', 4000.00, '2024-03-03 17:54:34', '2024-03-03 17:54:34'),
(162, 3, 16, 'Lifebuoy - Cool Fresh', 'Lifebuoy', 'Sabun Mandi Batangan', 'Normal', 'Lifebuoy Anti Bacterial Bar Soap Cool Fresh mengandung kristal mentol organik dari minyak daun pepermint. Formulanya dapat menghaluskan kulit dan dirancang untuk membersihkan kulit secara mendalam hingga ke pori-pori.', 4000.00, '2024-03-03 17:55:23', '2024-03-03 17:55:23'),
(163, 3, 19, 'Herborist Body Serum - Mixed Berries & Taro', 'Herborist', 'Body Serum', 'Normal', 'Dengan SPF 30 PA+++ yang menjadikan kulitmu tidak hanya glowing dan juicy, tapi juga terproteksi dari paparan sinar UVA & UVB. Dapatkan kulit cerah sejak hari ke-7 dengan kebaikan ekstrak buah dan sayur serta Whitebooster Formula dengan kandungan Glutathione yang disempurnakan oleh Hydrolized Collagen dan Vitamin E. UV Protection yang sempurna, adalah kombinasi dari UVA & UVB Protection. Bagi kita yang sering terpapar sinar matahari (banyak aktivitas outdoor), gunakan JUICE FOR SKIN GLUTA BOOSTER Body Serum dengan SPF 30 dan PA +++ untuk perlindungan optimal.\r\n\r\n MIXED BERRIES & TARO\r\n(Blueberry, Blackcurrant, Taro extracts)\r\nRevitalize & Glow : kulit kering, mencegah penuaan dini dan menjaga elastisitas kulit.', 45000.00, '2024-03-03 17:56:43', '2024-03-03 17:56:43'),
(164, 3, 19, 'Herborist Body Serum - Orange & Carrot', 'Herborist', 'Body Serum', 'Kering', 'Deskripsi. Herborist Juice for Skin Body Serum Orange Carrot adalah body serum yang mengandung Orange & Carrot Extracts untuk melembabkan kulit dan mencerahkan kulit, membuat wajah glowing dan sehat. Teksturnya mudah menyerap dan tidak lengket, ditambah aromanya fresh dan tahan lama.', 45000.00, '2024-03-03 17:57:14', '2024-03-03 17:57:14'),
(165, 3, 19, 'Herborist Body Serum - Apple & Broccoli', 'Herborist', 'Body Serum', 'Kering', '- Mengandung Apple & Broccoli Extracts, White Booster Formula, dan 5X Vitamin E\r\n- Membantu Melembabkan Kulit\r\n- Membantu Mencerahkan Kulit\r\n- Membantu Meremajakan Kulit\r\n- Membantu Mengatasi Masalah Kulit Kering dan Dehidrasi, Kusam, Kemerahan dan Sensitif', 45000.00, '2024-03-03 17:57:51', '2024-03-03 17:57:51'),
(166, 3, 19, 'Vaseline Super Food Cranberry Bright Glow Skin', 'Vaseline', 'Body Serum', 'Berminyak', 'Vaseline Superfood Skin Serum Cranberry mengandung bahan alami superfood untuk menutrisi kulit dan membuatnya glowing. Jaga dan kembalikan kelembapan kulit dengan skin serum cepat serap ini. Ekstrak cranberry membantu untuk membuat kulit glowing cerah!\r\n\r\n3X Reparing*\r\nMengembalikan kelembapan kulit, mempertahankan kelembapan kulit, mengeluarkan kilau kulit yang tersembunyi\r\n\r\nCepat meresap dan tidak lengket di kulit\r\nskin serum ini bersifat cepat menyerap di kulit sehingga tidak akan meninggalkan rasa lengket\r\n\r\nKekuatan Memperbaiki dari Vaseline\r\nKandungan micro droplets Vaseline Jelly mampu membantu memperbaiki kelembapan kulitmu', 48000.00, '2024-03-03 17:58:38', '2024-03-03 17:58:38'),
(167, 3, 19, 'Vaseline Body Yogurt with Prebiotics', 'Vaseline', 'Body Serum', 'Normal', 'Vaseline Body Yoghurt pertama yang menggabungkan Prebiotics dan Vaseline Jelly untuk memperkuat pertahanan kulit dan memperbaiki kelembaban kulit, jadikan kulit lebih cerah hingga 2x & tetap sehat.', 35000.00, '2024-03-03 18:00:46', '2024-03-03 18:00:46'),
(168, 3, 20, 'Sariayu Olive Oil', 'Sariayu', 'Body Oil', 'Kering', 'Sariayu Olive Essence Oil mengandung minyak zaitun murni yang dapat melembapkan kulit yang ekstra kering dan kasar. Minyak zaitun mengandung beberapa senyawa yang membuatnya memiliki banyak manfaat diantaranya adalah melembapkan dan melembutkan kulit.', 26000.00, '2024-03-03 18:01:45', '2024-03-03 18:01:45'),
(169, 3, 20, 'Purbasari Olive Oil with Jasmine Essential Oil', 'Purbasari', 'Body Oil', 'Kering', 'Purbasari Minyak Zaitun mengandung esensial Jasmine Oil yang dapat memberikan efek relaksasi, dipadu dengan biji mojokeling dan multivitamin mampu menjaga agar kulit tetap halus, lembut dan tampak sehat. Dapat digunakan sebagai minyak pijat dan sebagai pelembab untuk melembutkan kulit yang sangat kering dan bersisik.', 25000.00, '2024-03-03 18:02:15', '2024-03-03 18:02:15'),
(170, 3, 20, 'Herborist Olive Oil', 'Herborist', 'Body Oil', 'Berminyak', 'Minyak Zaitun membantu proses pemijatan utk melenturkan otot yg kaku. Mengandung parfum aromatherapy untuk efek relaksasi pada saat pemijatan, mengandung moisturizer untuk melembutkan kulit dan terbuat dari white oil yg umumnya dipakai untuk baby oil sehingga lebih lembut di kulit.', 23000.00, '2024-03-03 18:02:55', '2024-03-03 18:02:55'),
(171, 1, 2, 'Facial Wash bright white Gatsby', 'Gatsby', 'Facial Wash', 'Kering', '\"Produk pembersih wajah dengan sensasi menyegarkan yang diformulasi khusus untuk pria. Mengandung ekstrak buah pepaya dan butiran scrub halus yang dapat mencerahkan dan menjaga agar kulit wajah tetap cerah.\r\n\r\nFITUR KHUSUS\r\n\r\n• EXFOLIATE SCRUB: Membersihkan kulit wajah dari sel kulit mati, kotoran, debu dan minyak berlebih.\r\n\r\n• PAPAYA EXTRACT + YAM BEAM: Melembapkan dan menjadikan kulit wajah tampak lebih cerah.\"', 20500.00, '2024-03-04 00:22:14', '2024-03-04 00:22:14'),
(172, 1, 2, 'Facial Wash Perfect Clean Gatsby', 'Gatsby', 'Facial Wash', 'Berminyak', '\"COOLING FACE WASH OIL CLEAR SOLUTION (PERFECT CLEAN)\r\nProduk pencuci wajah dengan kombinasi Charcoal + Lemon untuk bersihkan polusi dan minyak berlebih. Dapatkan kulit bersih maksimal.\"', 21900.00, '2024-03-04 00:22:49', '2024-03-04 00:22:49'),
(173, 1, 2, 'Facial Wash Oil Control Gatsby', 'Gatsby', 'Facial Wash', 'Berminyak', '\"COOLING FACE WASH – OIL CLEAR SOLUTION (OIL CONTROL)\r\nProduk pencuci wajah dengan kombinasi Mineral Clay + Lemon untuk melawan minyak berlebih di wajah. Jadikan kulit terbebas dari kusam dan mengkilap.\"', 23499.00, '2024-03-04 00:24:03', '2024-03-04 00:24:03'),
(174, 1, 2, 'Facial Wash Triple Porefection Gatsby', 'Gatsby', 'Facial Wash', 'Berminyak', '\"COOLING FACE WASH OIL CLEAR SOLUTION (TRIPLE POREFECTION)\r\nProduk pencuci wajah dengan kombinasi Witch Hazel + Lemon + Scrub serta dilengkapi Triple Action Treatment (Wash, Scrub, Foam Mask). Dapatkan fungsi maksimal mencuci wajah dalam satu produk. Bersihkan kulit, komedo, dan membatu kecilkan pori\"', 23500.00, '2024-03-04 00:24:30', '2024-03-04 00:24:30'),
(175, 1, 2, 'Nivea Men Acne Attack', 'Nivea', 'Facial Wash', 'Berminyak', 'Nivea Men Oil Control Facial Scrub - 100 mL adalah formulasi khusus yang mengandung Whitinat untuk mencerahkan wajah 10 kali lebih cerah, ginseng yang mengembalikan kesehatan kulit dan butiran scrub yang mengangkat sel kulit mati di wajah Anda. Mengontrol produksi minyak di wajah hingga 12 jam. Kini, kulit wajah Anda akan tetap terlihat halus dan terawat tanpa minyak berlebih.\r\n\r\nIndikasi Umum:\r\nMembersihkan kulit dan memberikan efek purifikasi, mengangkat kotoran dan minyak berlebih secara menyeluruh.\r\n\r\nKomposisi:\r\nAqua, Stearic Acid, Myristic Acid, Propylene Glycol, Potassium Hydroxide, Glycerin, Lauric Acid, PEG-150, PEG-8, Polyethylene, Glyceryl Stearate, Cera Alba, Sodium Methyl Cocoyl Taurate, BHT, Trisodium EDTA, Tocopheryl Acetate, Benzophenone-3, Parfum.', 37900.00, '2024-03-04 00:25:18', '2024-03-04 00:25:18'),
(176, 1, 2, 'Nivea Men Extra bright C&HYA', 'Nivea', 'Facial Wash', 'Kering', '\"NIVEA MEN Vitamin Scrub Extra Bright C&HYA 100ml\r\n\r\nMenghaluskan, menyegarkan, melawan tanda penuaan\r\n\r\nVitamin Scrub Wajah Tampak Extra Cerah, Halus & Segar!\r\n\r\n\r\n\r\nFace scrub dengan butiran mild scrub yang mengandung 100x Concentrated Vitamin C & 95% Purity Hyaluron. Membantu kulit wajah tampak extra cerah, halus & segar dalam waktu 2 minggu. Mengangkat sel kulit mati penyebab wajah kusam & melawan noda hitam. Aman digunakan setiap hari tanpa menyebabkan iritasi pada wajah.\r\n\r\n\r\n\r\nKandungan:\r\n\r\n- Vitamin C\r\n\r\n- Hyaluronic Acid\"', 31600.00, '2024-03-04 00:26:12', '2024-03-04 00:26:12'),
(177, 1, 2, 'Nivea Men BH Oil Clear', 'Nivea', 'Facial Wash', 'Berminyak', 'Mencerahkan kulit wajah, bebas minyak seharian. Serta membantu proses detox wajah dari kotoran & memberikan sensasi extra segar. Formula NIVEA MEN tidak membuat kulit wajah kering.', 31600.00, '2024-03-04 00:26:41', '2024-03-04 00:26:41'),
(178, 1, 2, 'Ponds Men Bright Boost', 'Ponds', 'Facial Wash', 'Kering', '\"Formulasi Khusus\r\n\r\nBright Ginseng Extract dikenal dapat membantu regenerasi sel kulit. Deep Scrub Bead membantu mengangkat sel kulit mati dan membersihkan secara menyeluruh. Perlindungan agar kulit bersih dan tampak cerah, Anda siap tampil percaya diri.\r\n\r\nLihat semua bahan-bahan\r\n\r\nWater, Stearic Acid, Niacinamide, Glycerin, Isopropyl Myristate, Ethylhexyl Methoxycinnamate, Titanium Dioxide, Butyl Methoxydibenzoylmethane, Zinc Oxide, Panax Ginseng Root Extract, SodiumAscorbyl Phosphate,Tocopheryl Acetate, Allantoin, Pyridoxine HCl, Cetyl Alcohol, Dimethicone, Potassium Hydroxide, Perfume, Propylene Glycol, Aluminum Hydroxide, Ethylhexylglycerin, Disodium EDTA, Phenoxyethanol, Methylparaben,Propylparaben,BHT, Sorbitol. \"', 34000.00, '2024-03-04 00:27:11', '2024-03-04 00:27:11'),
(179, 1, 2, 'Biore Men Cool Oil Clear', 'Biore', 'Facial Wash', 'Berminyak', 'Cool Oil Clear - 150%* Angkat Minyak & Kotoran Hingga ke Pori.\r\n\r\nDilengkapi dengan Micro Power Scrub, 150%* kuat angkat minyak berlebih & kotoran sampai ke pori yang sulit dibersihkan. Kandungan Black Tea-nya, dikenal mengandung antioksidan untuk kulit tetap sehat. Serta mengandung Icy Menthol, memberikan sensasi dingin menyegarkan, hilangkan rasa lengket dikulit wajahmu.', 28900.00, '2024-03-04 00:27:47', '2024-03-04 00:27:47'),
(180, 1, 2, 'Biore Men Acne Skincare', 'Biore', 'Facial Wash', 'Berminyak', '\"Acne Skincare - Rawat Kulit Berjerawat & Jaga Tidak Kering\r\n\r\nMengandung Tea Tree Oil + Antibacterial Agent untuk rawat kulit berjerawat dan Aqua Hydration yang mampu jaga kulit tidak terasa kering dengan format gentle foam yang lembut dikulit.\"', 25700.00, '2024-03-04 00:28:21', '2024-03-04 00:28:21'),
(181, 1, 2, 'Biore Men Oil Balance', 'Biore', 'Facial Wash', 'Berminyak', 'Oil Balance - 94% Setuju Lawan Minyak* & Kulit Tidak Terasa Kering\r\n\r\nMengandung Japanese Clay yang mampu angkat minyak berlebih dan Aqua Hydration untuk jaga kulit terhidrasi, sehingga kulit tidak terasa kering dengan format gentle foam yang lembut dikulit.', 30000.00, '2024-03-04 00:28:58', '2024-03-04 00:28:58'),
(182, 1, 2, 'Biore Bright Expert', 'Biore', 'Facial Wash', 'Berminyak', 'BAMBOO CHARCOAL\r\nFormulanya dapat angkat minyak dengan baik.\r\n\r\nBRIGHT WHITE SCRUB\r\nKuat angkat kotoran dan sel kulit mati penyebab kulit kusam sampai ke pori yang sulit dibersihkan.', 25700.00, '2024-03-04 00:29:36', '2024-03-04 00:29:36'),
(183, 1, 2, 'Pixy Anti Acne', 'Pixy', 'Facial Foam', 'Kering', 'Pembersih sekaligus penyegar bebas alkohol, lembut mengangkat seluruh kotoran dan sisa makeup pada wajah tanpa meninggalkan rasa lengket. Diperkaya dengan Salicylic Acid sebagai anti bakteri dan ekstrak kanzo yang membantu menyejukkan kulit berjerawat. Teruji klinis tidak memicu timbulnya komedo (non-comedogenic) dan jerawat (non-acnegenic)', 24000.00, '2024-03-04 00:38:04', '2024-03-04 00:38:04'),
(184, 1, 2, 'Biore Deep Pore Clean', 'Biore', 'Facial Foam', 'Berminyak', 'Dilengkapi dengan Micro Power Scrub, kuat angkat minyak & kotoran 1.5x* lebih bersih sampai ke pori yang sulit dibersihkan. Dengan kandungan Mineral Clay, formulanya mampu serap minyak berlebih dan cegah kulit kusam.', 25700.00, '2024-03-04 00:39:07', '2024-03-04 00:39:07'),
(185, 1, 2, 'Pixy Brightening', 'Pixy', 'Facial Foam', 'Kering', 'Pembersih sekaligus penyegar bebas alkohol yang lembut dengan 2-Way Bright dari Natural Whitening Extract serta Soya Bean Lecithin, dan Derivat Vitamin C, yang membersihkan kulit dari sisa makeup, kotoran, dan minyak berlebih pada wajah tanpa membuatnya terasa kering. Kulit bersih, lembut dan terasa lembab.', 26500.00, '2024-03-04 00:39:33', '2024-03-04 00:39:33'),
(186, 1, 2, 'Biore Acne Bacterior', 'Biore', 'Facial Foam', 'Berminyak', '\"Acne Bacterior - Lawan Masalah Jerawat* Mulai Dari Pori.\r\n\r\nDilengkapi dengan Micro Natural Scrub yang lembut diformulasikan dengan Anti Bacterial Agent, kuat angkat minyak berlebih & kotoran penyebab jerawat sampai ke pori yang sulit dibersihkan. Tea Tree Oil-nya, dikenal mengandung antimicrobial untuk rawat kulit mudah berjerawat.\"', 30700.00, '2024-03-04 00:40:06', '2024-03-04 00:40:06'),
(187, 1, 2, 'Pixy Soft & Bright', 'Pixy', 'Whip Foam', 'Kering', 'Sabun pembersih wajah dengan busa lembut dan halus yang mampu membersihkan sisa makeup, kotoran, dan minyak berlebih, sehingga kulit wajah terasa halus, cerah, dan glowing. Diperkaya dengan 2 kandungan utama, yaitu: • Natural Vita Complex dari Ekstrak Mulberry, Vitamin B3, dan Provitamin B5: Mencerahkan dan menjaga kelembapan kulit. • Soft Whip Foam: Membersihkan wajah dengan busa lembut dan halus.', 20000.00, '2024-03-04 00:40:21', '2024-03-04 00:40:21'),
(188, 1, 2, 'Garnier Men Acno Fight', 'Garnier', 'Facial Wash', 'berminyak', 'Garnier Men memperkenalkan generasi skincare baru yang dibuat khusus untuk pria. Super serum gel dengan tekstur yang ringan mudah menyerap dan mampu mengurangi tanda jerawat sejak penggunaan pertama.', 30900.00, '2024-03-04 00:40:38', '2024-03-04 00:40:38'),
(189, 1, 2, 'Pixy Deep Cleansing', 'Pixy', 'Facial Wash', 'Normal', 'Sabun pembersih wajah yang diformulasikan khusus untuk dapat membersihkan partikel-partikel polusi* hingga ke pori-pori wajah untuk kulit terasa halus, cerah, dan glowing. Diperkaya dengan 3 kandungan utama, yaitu: • Natural Vita Complex dari Ekstrak Kiwi, Vitamin E, dan Provitamin B5: Mengandung antioksidan, membantu menutrisi dan menjaga kelembapan kulit agar tetap cerah dan glowing. • Activated Charcoal: Membantu menyerap kotoran hingga ke pori-pori wajah. • Antibacterial Agent: Melawan bakteri dan menjaga kulit tetap bersih.', 20000.00, '2024-03-04 00:41:11', '2024-03-04 00:41:11'),
(190, 1, 2, 'Garnier Men Oil Control Super Duo Foam', 'Garnier', 'Facial Wash', 'Berminyak', 'Foam pembersih wajah yang mencerahkan dan mengurangi pori-pori besar.Duo Foam pertama dari Garnier Men dengan Icy Mineralite Complex dan White Clay yang mampu membersihkan secara menyeluruh./nMembantu menyerap minyak berlebih dan mengangkat/menghilangkan kotoran, sekaligus membersihkan pori-pori wajah. Kulit wajah terlihat lebih cerah dan pori-pori tampak kecil sejak pemakaian pertama.CARA PENGGUNAANGunakan pada kulit yang basah, pijat/urut secara lembut dengan jari. Hindari area/kawasan sekitar mata. Bilas hingga bersih.', 31000.00, '2024-03-04 00:41:14', '2024-03-04 00:41:14'),
(191, 1, 2, 'Garnier Men Oil Control 3in1', 'Garnier', 'Facial Wash', 'Berminyak', '\"Garnier Men Turbolight Oil Control 3 in 1 Charcoal Foam.\r\n\r\nSabun pembersih wajah dua warna yang bekerja ganda untuk kulit tampak cerah & samarkan noda hitam\r\n\r\nFoam pembersih wajah pria dengan 3 Fungsi dalam 1 produk. Komedo berkurang, bersih tak berminyak hingga 12 jam. Pembersih wajah 3 in 1 pertama untuk kulit berminyak dengan kombinasi kekuatan charcoal, beads dan clay. Praktis digunakan sebagai sabun pembersih wajah, scrub dan masker\"', 36600.00, '2024-03-04 00:41:44', '2024-03-04 00:41:44'),
(192, 1, 2, 'Pixy Deep Cleansing', 'Pixy', 'Facial Wash', 'Kering', 'PIXY White-Aqua Gentle Facial Wash merupakan sabun pembersih wajah berbahan dasar air yang segar, ringan, serta membuat kulit terasa halus dan lembut. Mengurangi tanda-tanda kulit lelah seperti kusam, kering, dan berminyak. Mengandung Hydra Active yang melembabkan kulit dan Natural Whitening Extract yang membantu mencerahkan kulit.How to use:Tuangkan produk ke telapak tangan. Aplikasikan perlahan ke kulit wajah yang telah dibasahkan. Bilas dengan air.Suitable for:Semua jenis kulitIngredients:-', 30000.00, '2024-03-04 00:42:05', '2024-03-04 00:42:05'),
(193, 1, 2, 'Garnier Men Turbo Bright', 'Garnier', 'Facial Wash', 'Kering', '\"GARNIER MEN TURBO BRIGHT / POWER WHITE SUPER DUO FOAM \r\n\r\n\r\n\r\nKEMASAN BARU, isi sama ampuhnya!\r\n\r\nPOWER WHITE -> TURBO BRIGHT\r\n\r\nDalam masa transisi, kamu bisa saja mendapat kemasan manapun di atas. Jangan khawatir, selama berbelanja di Official Store produk 100% asli\r\n\r\n\r\n\r\nDuo Foam pertama dari Garnier Men dengan arang Charcoal dan Icy Clay Complex yang mampu membersihkan secara menyeluruh. Membantu mengurangi kekusaman pada wajah. Menampilkan kulit bersih dan cerah sejak pemakaian pertama.\"', 36600.00, '2024-03-04 00:42:19', '2024-03-04 00:42:19'),
(194, 1, 2, 'Nuface Hydra lock & youthfull skin', 'Nuface', 'Facial Wash', 'Kering', 'Serum wajah dengan kandungan Bakuchiol, Peptide, Advanced Hyaluronate, Niacinamide, & Vitamin C. Membantu menyamarkan garis - garis halus dan hiperpigmentasi, menghidrasi, menjaga elastisitas kulit, serta mencerahkan kulit. Wajah menjadi lebih lembab dan tampak lebih muda.Key Ingredients : ● Bakuchiol● Peptide● Advanced Hyaluronate● Niacinamide● Vitamin CManfaat : ● Mencerahkan kulit wajah ● Menyamarkan noda hitam bekas jerawat ● Mengurangi peradangan & kemerahan pada wajah ● Melembabkan kulit ● Formula mudah meresap kedalam kulit Cocok digunakan untuk kulit : Normal dan Kering Full Ingredients : Aqua , Niacinamide , Exthoxydiglycol , butylene glycol , PEG-40 Hydrogenated castor oil , Hydroxyethylcellulose , DMDM Hydantoin , Allantoin , Bis-Peg 15 Methyl Ether Dimethicone , ethyl ascorbic acid , disodium EDTA , bakuchiol , sodium metabisulfite , perfume , 1,2-hexanediol , menthol , sodium hyaluronate , hyaluronic acid ,caprylyl glycol , hydrolyzed hyaluronic acid , acetyl hexpeptide-8 , hydroxypropyltrimonium hyaluronate , potassium hyaluronate , PEG-9 diglycidyl ether / sodium hyaluronate crosspolymer , sodium acetylated hyaluronate .BPOM NA/18212000377Cara penggunaan : Oleskan 2 - 3 tetes serum ke seluruh wajah dan leher, pijat lembut hingga merata, hindari area mata. Gunakan secara teratur tiga kali sehari untuk hasil yang optimal. Dapat digunakan untuk usia di atas 15 tahun ( Untuk Kulit Tampak Lebih Muda )', 45300.00, '2024-03-04 00:42:54', '2024-03-04 00:42:54'),
(195, 1, 2, 'Biore Mild Smoot', 'Biore', 'Facial Foam', 'Kering', 'Dengan Skin Purifying Technology dari Jepang, angkat bersih kotoran, keringat dan minyak berlebih tanpa mengganggu kelembapan alami kulit. Dengan busa creamy yang lembut dan dilengkapi dengan Natural Moisturizer, bantu melembutkan dan melembapkan kulit. Kulit cantik, halus, lembut dan terjaga kelembapannya.', 13700.00, '2024-03-04 00:43:08', '2024-03-04 00:43:08'),
(196, 1, 2, 'Nuface Brighten & Supple Skin', 'Nuface', 'Facial Wash', 'Berminyak', 'Garnier Men Oil Control Super Duo Foam adalah pembersih wajah khusus pria untuk melawan minyak dan kusam.', 22100.00, '2024-03-04 00:43:26', '2024-03-04 00:43:26'),
(197, 1, 2, 'Biore Bright & Oil clear', 'Biore', 'Facial Foam', 'Berminyak', 'Dengan Skin Purifying Technology dari Jepang, angkat bersih kotoran, keringat dan minyak berlebih tanpa mengganggu kelembapan alami kulit. Dengan busa creamy yang lembut dan dilengkapi dengan Natural Scrub, bantu cerahkan kulit kusam akibat minyak berlebih dan penumpukan sel kulit mati. Kulit lembut, halus bercahaya, bebas kilap.', 26000.00, '2024-03-04 00:44:05', '2024-03-04 00:44:05'),
(198, 1, 2, 'Marina Bright Booster', 'Marina', 'Facial Foam', 'Normal', 'Marina Expert White & Glow Perfecting Glow Face Cream - Bright Booster merupakan pelembap wajah dengan SPF 20 PA++ dan tekstur ringan yang memberikan efek kulit wajah cerah seketika, menutupi kemerahan dan meratakan warna kulit untuk hasil tampilan kulit lebih cerah natural. How to use:Aplikasikan pada wajah setelah menggunakan serum pada pagi/siang hari.Suitable for:Semua jenis kulitIngredients:Water (Aqua), Ethylhexyl Methoxycinnamate, Ethylhexyl Salicylate, Dicaprylyl Ether, Glycerin, Methyl Gluceth-20, Potassium Cetyl Phosphate, Stearic Acid, Chamomilla Recutita (Chamomile) Extract, Nylon-12, Titanium Dioxide, Glyceryl Stearate, PEG-100 Stearate, Butylene Glycol, Niacinamide (Vitamin B3), Butyl Methoxydibenzoylmethane, Phenylbenzimidazole Sulfonic Acid, Cetearyl Alcohol, Ceramide 2, Alpha Arbutin, Tranexamic Acid, Pseudoalteromonas Ferment Extract, Glycyrrhiza Glabra (Licorice) Root Extract , Dimethylmethoxy Chromanol, Avena Sativa (Oat) Kernel Extract, Hydrolyzed Wheat Protein, Hydrolyzed Soy Protein, Allantoin, Cyclopentasiloxane, C13-14 Isoparaffin, Diisopropyl Adipate, Dimethicone/Vinyl Dimethicone Crosspolymer, Glyceryl Caprylate, Propylene Glycol, PEG-8, Caprylyl Glycol, Lecithin, Tripeptide-10 Citrulline, Tripeptide-1, Aluminum Hydroxide, Polymethylsilsesquioxane, Mica, Sorbitan Stearate, PEG-60 Hydrogenated Castor Oil, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Bisabolol, Methyl Methacrylate Crosspolymer, Polyacrylamide, Triethoxycaprylylsilane, Laureth-7, Acrylic Acid/Acrylamidomethyl Propane Sulfonic Acid Copolymer, Triethanolamine, Propanediol, Xanthan Gum, Carbomer, Sodium Hydroxide, Potassium Hydroxide, Disodium EDTA, Perfume, Phenoxyethanol, Chlorphenesin, Potassium Sorbate, Sorbic Acid, Sodium Benzoate, BHT, CI 14700', 22700.00, '2024-03-04 00:44:42', '2024-03-04 00:44:42'),
(199, 1, 2, 'Clean & Clear Foaming', 'Clean & Clear', 'Facial Wash', 'Normal', 'Clean & Clear Essentials Foaming Facial Wash adalah sabun pembersih wajah dengan formula bebas minyak yang dapat membersihkan kulit secara menyeluruh. Mengandung bahan aktif anti-bacterial yang membantu mencegah / menghindari timbulnya jerawat dan komedo. Busa lembutnya bekerja membersihkan minyak dan kotoran tanpa membuat kulit menjadi kering. Sabun pembersih ini dapat membuat kulit terasa bersih dan halus.How To Use:Tuangkan secukupnya pada telapak tangan yang basah dan gosok hingga berbusa. Usapkan pada wajah dan pijat perlahan-lahan, hindari area mata. Bilas dengan air hingga bersih.Suitable For:Wajah berjerawat, berkomedo, dan berminyakIngredients:Inactive IngredientsWater Triethanolamine Myristic Acid C9-15 Alkyl Phosphate Lauric Acid Glycerin Hydroxypropyl Methylcellulose Cocamidopropyl Betaine Phenoxyethanol Fragrance Methylparaben BHT Propylparaben Ethylparaben Red 4 Yellow 10', 16000.00, '2024-03-04 00:44:55', '2024-03-04 00:44:55'),
(200, 1, 2, 'Marina Acne Clear', 'Marina', 'Facial Foam', 'Kering', 'Gel Facial Foam dengan busa lembut, membersihkan wajah menyeluruh dari kotoran dan minyak hingga ke pori dan tetap menjaga kelembapan alami kulit. Dengan Advanced Clearing Formula membantu mengontrol minyak berlebih juga mengurangi timbulnya jerawat, menenangkan kulit, dan merawat kulit tetap glowing. Dan dilengkapi dengan: - Duo-Expert Nia-Ceramide (Niacinamide & Ceramide) yang menjaga fungsi barrier kulit, cerah & lembab- Mugwort Extract membantu melawan bakteri penyebab jerawat dan menenangkan kulit.- Antibacterial formula yang teruji 99,9% efektif melawan bakteri penyebab jerawat dan mengurangi timbulnya jerawat- No Tightness membersihkan tanpa menghilangkan kelembapan alami kulit. pH balance.- 0% Alkohol & Paraben', 14877.00, '2024-03-04 00:45:20', '2024-03-04 00:45:20'),
(201, 1, 2, 'Clean & Clear Natural bright', 'Clean & Clear', 'Facial Wash', 'Normal', 'Remaja dan dewasa muda, yang ingin kulit mereka terlihat cantik dan cerah alami. CLEAN & CLEAR® Natural Bright memiliki efek kerja ganda pada kulit Anda yang membantu membersihkan masalah kulit. Air mawar dalam sabun cuci muka ini membantu membersihkan kulit kusam yang disebabkan oleh kotoran pada kulit dan madu alami dengan gliserin membantu menutrisi kulit Anda dan membantunya mendapatkan kilau alami yang akan Anda sukai.', 21000.00, '2024-03-04 00:45:45', '2024-03-04 00:45:45'),
(202, 1, 2, 'Himalaya Purifying', 'Himalaya', 'Neem Scrub', 'Berminyak', 'Himalaya Purifying Neem Mask adalah masker yang dapat membantu mengatur kelebihan sekresi minyak di wajah, membersihkan pori-pori tersumbat dan mencegah timbulnya kembali jerawat. Produk ini mengandung Neem yang merupakan bahan dengan manfaat untuk menjernihkan kulit, kandungannya antibakterinya membantu mencegah timbulnya jerawat. Produk ini juga mengandung Turmeric yang membantu menghilangkan jerawat akibat bakteri, Fuller\'s Earth (Multani Mitti) berfungsi memberikan sensasi dingin dan menenangkan kulit, memperbaiki tekstur kulit, dan membuat wajah bersih dan bebas dari masalah kulit.How To Use:Aplikasikan pada wajah dan leher, hindari daerah mata. Biarkan mengering selama 10-15 menit, bilas dengan air dingin. Gunakan 2 kali dalam seminggu. Jangan digunakan pada wajah yang sedang meradang.Suitable For:Kulit berminyakKey Ingredients:Fuller\'s Earth, Neem, Turmeric', 24999.00, '2024-03-04 00:46:09', '2024-03-04 00:46:09'),
(203, 1, 2, 'Clean & Clear Daily pore cleanser', 'Clean & Clear', 'Facial Foam', 'Berminyak', 'Clean & Clear Daily Pore Cleanser adalah sabun pembersih wajah dengan formula unik yang bekerja hingga ke dalam pori-pori untuk membersihkan komedo, serta membantu mengecilkan pori-pori untuk kulit tampil lebih bersih, lembut dan terasa halus. Micro Scrubbing Beads-nya efektif membersihkan minyak, kotoran, dan sel kulit mati. Kandungan Extrak Apel pada sabun pembersih ini bekerja ke dalam pori-pori untuk melembutkan komedo didalam lapisan kulit dan membantu menghindari timbulnya komedo baru.How To Use:Tuangkan secukupnya pada telapak tangan yang basah dan gosok hingga berbusa. Usapkan pada wajah dan pijat perlahan-lahan, hindari area mata. Bilas dengan air hingga bersih. Gunakan dua kali sehari.Suitable For:Wajah berkomedo, berminyak, dan berpori besarIngredients:Inactive Ingredients:Water Propylene Glycol Sodium Laureth Sulfate Cocamidopropyl Betaine Polyethylene Disodium Lauroamphodiacetate Lauryl Methyl Gluceth-10 Hydroxypropyldimonium Chloride Polysorbate 20 Sodium Carbomer Glycol Distearate PEG-120 Methyl Glucose Dioleate Laureth-2 Lactic Acid Fragrance Tetrasodium EDTA Methylisothiatzolinone Methylchloroisothiazolinone', 20000.00, '2024-03-04 00:46:34', '2024-03-04 00:46:34'),
(204, 1, 2, 'Himalaya Moisturizing Aloe vera', 'Himalaya', 'Facial Wash', 'Kering', '\"**Mohon perhatiannya pengisian alamat yang tidak lengkap dan No HP yang tidak aktif = Resiko Paket akan GAGAL dikirim.\r\nHimalaya\'s Moisturizing Aloe Vera Face Wash adalah formulasi bebas sabun yang mengisi kembali kelembaban yang hilang dari kulit Anda setelah setiap mencuci, membasmi kulit kering dan teregang. Hal ini diperkaya dengan Ketimun yang mendinginkan dan menenangkan sementara Aloe Vera dan melembutkan kulit Anda. Moisturizing Aloe Vera Face Wash kami menggabungkan bahan-bahan alami untuk membersihkan kulit Anda, membuatnya terasa segar dan bersinar.\r\n\r\nBahan utama:\r\nMentimun membuat toner yang sangat baik karena segera mengencangkan pori-pori terbuka. Kandungan antioksidan yang melimpah di Ketimun meremajakan kulit dan membuatnya terasa lembut dan halus.\r\n\r\nAloe Vera, yang dikenal karena banyak sifat penyembuhannya, kaya akan enzim, polisakarida dan nutrisi yang menunjukkan aksi antibakteri dan antijamur. Sifat melembabkan, melembutkan, dan melembapkan kulit akan menyehatkan kulit.', 19000.00, '2024-03-04 00:46:50', '2024-03-04 00:46:50'),
(205, 1, 2, 'Clean & Clear Acne clearing cleanser', 'Clean & Clear', 'Facial Foam', 'Sensitif', 'Sabun cuci muka atau pembersih wajah ini dengan formula Active Botanical Extract dan Salicylic Acid untuk membersihkan kulit yang berjerawat.Clean & Clear Acne Clearing Cleanser memiliki formula unik, di mana kombinasi Active Botanical Extract serta bahan aktif Salicylic Acid-nya dapat bekerja hingga ke dalam pori, untuk bantu melawan bakteri penyebab jerawat dan minyak berlebih, agar kulitmu senantiasa jauh dari jerawat serta terasa lebih bersih, halus dan lembut.Direkomendasikan untuk kamu yang memiliki masalah kulit berjerawat.Saat ini Clean & Clear Acne Clearing Cleanser tersedia dalam ukuran 50gr & 100gr.', 29600.00, '2024-03-04 00:47:19', '2024-03-04 00:47:19'),
(206, 1, 2, 'Himalaya Purifying', 'Himalaya', 'Neem Face wash', 'Berminyak', 'Himalaya Purifying Neem Mask adalah masker yang dapat membantu mengatur kelebihan sekresi minyak di wajah, membersihkan pori-pori tersumbat dan mencegah timbulnya kembali jerawat. Produk ini mengandung Neem yang merupakan bahan dengan manfaat untuk menjernihkan kulit, kandungannya antibakterinya membantu mencegah timbulnya jerawat. Produk ini juga mengandung Turmeric yang membantu menghilangkan jerawat akibat bakteri, Fuller\'s Earth (Multani Mitti) berfungsi memberikan sensasi dingin dan menenangkan kulit, memperbaiki tekstur kulit, dan membuat wajah bersih dan bebas dari masalah kulit.How To Use:Aplikasikan pada wajah dan leher, hindari daerah mata. Biarkan mengering selama 10-15 menit, bilas dengan air dingin. Gunakan 2 kali dalam seminggu. Jangan digunakan pada wajah yang sedang meradang.Suitable For:Kulit berminyakKey Ingredients:Fuller\'s Earth, Neem, Turmeric', 25000.00, '2024-03-04 00:47:49', '2024-03-04 00:47:49'),
(207, 1, 2, 'Clean & Clear deep action cleanser', 'Clean & Clear', 'Facial Foam', 'Berminyak', 'Clean & Clear Deep Action Cleanser merupakan pembersih wajah yang membersihkan kotoran, minyak, dan sisa make up hingga ke pori. Formula dengan ekstrak beras berfungsi untuk mengurangi minyak berlebih di wajah.How to use:Tuangkan produk secukupnya pada telapak tangan yang basah dan gosok hingga berbusa. Usapkan pada wajah dan pijat perlahan-lahan dengan menghindari area mata. Bilas dengan air hingga bersih.Suitable for:Kulit berminyak.Ingredients:Water (eau), Cetyl Alcohol, PPG-15 Stearyl Ether, Polysorbate 60, Salicylic Acid, Steareth-21, Potassium Cetyl Phosphate, Xanthan Gum, Parfum, Menthol, Disodium EDTA.', 20000.00, '2024-03-04 00:47:56', '2024-03-04 00:47:56'),
(208, 1, 2, 'Himalaya Brightening', 'Himalaya', 'Facial Wash', 'Normal', 'Himalaya Clear Complexion Whitening Face Wash adalah pembersih wajah harian yang bebas sabun. Produk ini memiliki formula yang dapat membersihkan dan menjernihkan wajah sekaligus membuat wajah tampak bersih bercahaya. Digunakan pada pagi dan malam hari untuk membuat wajah menjadi lebih bersih, cerah, dan bercahaya secara alami.How To Use:Basahi wajah, usapkan sabun ke seluruh wajah sambil melakukan pijatan ringan. Bilas dengan air bersih.Suitable For:Semua jenis kulit, kulit kusamKey Ingredients:Licorice, White Dammer, Saffron, Cucumber, Pomegranate', 15000.00, '2024-03-04 00:48:24', '2024-03-04 00:48:24'),
(209, 1, 2, 'Hada Labo Whitening', 'Hada labo', 'Facial wash', 'Normal', 'Hada Labo Shirojyun Ultimate Whitening Lotion adalah lotion yang dapat menghidrasi sekaligus mencerahkan kulit secara sekejap, dan mencegah timbulnya noda hitam dari dalam kulit. Diperkaya dengan combine power dari natural Arbutin dan Vitamin C untuk mencerahkan dan membuat kulit terasa lembut. Kandungan Hyaluronic Acids menghidrasi ke dalam kulit untuk memelihara kulit, melawan noda hitam, dan mengembalikan cahaya alami kulit. Arbutin adalah kandungan alami ekstak dari bearberry, untuk mencegah tirosinase, enzim yang dapat membuat noda hitam. Vitamin C berfungsi untuk mencerahkan kulit dan komponen spesial untuk memproduksi kolagen dan sebagai antioksidan.How To Use:Aplikasikan lotion secara merata ke seluruh wajah dalam keadaan wajah bersihSuitable For:Kulit normal, kulit kusamIngredients:-', 59000.00, '2024-03-04 00:48:39', '2024-03-04 00:48:39'),
(210, 1, 2, 'Himalaya Daily', 'Himalaya', 'Facial Wash', 'Berminyak', 'Himalaya Gentle Exfoliating Daily Face Wash adalah pembersih wajah yang tidak mengandung sabun, bekerja efektif membersihkan kulit sekaligus mengeksfoliasi kulit dengan mengangkat sel kulit mati pada wajah. Produk ini diperkaya oleh Apricot yang membantu mengangkat sel kulit mati, membantu menstimulasi pertumbuhan sel kulit yang baru dan mencegah timbulnya komedo. Produk ini juga mengandung Neem dan Lemon yang dapat membersihkan dan menghilangkan minyak berlebih di wajah, serta kandungan Aloe Vera membantu menenangkan kulit dan menjaga keseimbangan alami kulit. Kulit diremajakan kembali, segar, dan berkilau sepanjang hari.How To Use:Aplikasikan ke seluruh wajah, lalu bilas dengan air bersihSuitable For:Semua jenis kulitKey Ingredients:Apricot, Aloe Vera, Neem, Lemon, Red Lentil', 18000.00, '2024-03-04 00:48:54', '2024-03-04 00:48:54'),
(211, 1, 2, 'Hada Labo Moisturizing', 'Hada labo', 'Facial wash', 'Berminyak', 'Hada Labo Gokujyun Ultimate Moisturizing Lotion adalah lotion pelembab yang mengandung 3 jenis Hyaluronic Acid untuk membantu meningkatkan kelembaban pada kulit dan mempertahankan keseimbangan serta kelembaban kulit. Lotion ini dapat mengunci kelembaban di dalam kulit sehingga kulit terhidrasi dengan baik. Kulit akan terasa lebih halus, lembut dan tetap elastis. Mengandung alkohol sebagai astringent yang mengurangi produksi minyak berlebih dan membuat kulit senantiasa terasa lebih segar.How To Use:Tuangkan lotion secukupnya pada telapak tangan, usapkan ke seluruh wajah dalam keadaan bersih secara merata. Tepuk-tepuk kulit wajah dengan lembut, lalu biarkan hingga meresap.Suitable For:Kulit berminyakIngredients:-', 29000.00, '2024-03-04 00:49:22', '2024-03-04 00:49:22'),
(212, 1, 2, 'Azarine Acne gentle', 'Azarine', 'Facial Wash', 'Berminyak', 'Azarine Acne Gentle Cleansing Foam adalah pembersih wajah untuk membersihkan jerawat dan mengontrol sebum. Diformulasikan dengan bahan alami purslane, madu dan asam salisilat membantu mencegah pertumbuhan bakteri penyebab jerawat, mengangkat kelebihan minyak pada wajah dan mengecilkan pori- pori. How to use:Tuangkan secukupnya pada telapak tangan , basahi dengan air , gosok dan usapkan diwajah. Pijat dengan lembut dan bilas hingga bersih . Untuk hasil yang maksimal gunakan rangkain Azarine Acne Series. Suitable for:Kulit berjerawatIngredients :Aqua*, Disodium Laureth Sulfosuccinate*, Cocoamidopropyl Betaine*, Propanediol*, Glycerin*, Aloe Barbadensis Leaf Extract*, Hamamelis Virginia Leaf Extract*, Polyacrylate Crosspolymer-6, Alcohol, Citrus Limon (lemon) fruit extract*, Chlorphenesin, Salicylic Acid, Rheum Palmatum Root Extract*, Allantoin, Honey (Mel)*, Portulaca Oleracea Extract*, Fragrance, Citric Acid.(Note: *Ingredients From Natural Resources)', 35000.00, '2024-03-04 00:49:27', '2024-03-04 00:49:27'),
(213, 1, 2, 'JF Acne spot care', 'JF', 'Facial Foam', 'Berminyak', 'JF Acne Spot Care Gel merupakan gel untuk membantu merawat kulit wajah yang berjerawat, mengurangi kulit kemerahan akibat jerawat, melembutkan kulit yang kasar karena jerawat. Mudah meresap, tidak mengkilap di kulit.How to use:Oleskan pada kulit yang berjerawatSuitable for:Kulit berjerawatIngredients:-', 24000.00, '2024-03-04 00:50:01', '2024-03-04 00:50:01'),
(214, 1, 2, 'Y.O.U Hy! Amino Glo-Win', 'Y.O.U', 'Facial Wash', 'Normal', '\"YOU Beauty Hy! Amino Glo-Win Brightening Facial Wash\r\n\r\nFacial Wash untuk mencegah radikal bebas dan mengangkat sel kulit mati.\r\n\r\nHighlights :\r\n\r\nDiformulasikan dengan Brightening Complex, mengandung Niacinamide, Vitamin C, ekstrak bunga Camellia, dan Citric Acid\"', 38000.00, '2024-03-04 00:50:28', '2024-03-04 00:50:28'),
(215, 1, 2, 'Acnes complete white', 'Acnes', 'Facial wash', 'Kombinasi', 'Acnes Natural Care Complete White Face Fresh adalah sabun pembersih muka untuk kulit tampak lebih cerah dan tetap bersih. Dengan triple whitening action dari Bearberry extract, Arbutin, dan Vitamin C untuk membantu mencerahkan kulit serta menyamarkan flek hitam bekas jerawat. Formulanya membantu melawan bakteri penyebab jerawat dan menjaga kelembaban serta kelembutan alami kulit.How To Use:Basahi wajah dengan air, aplikasikan sabun pembersih pada wajah. Usap sabun hingga berbusa, lalu bilas dengan air bersih.Suitable For:Kulit kusam, kulit cenderung berjerawat, kulit dengan bekas jerawatIngredients:-', 27000.00, '2024-03-04 00:50:43', '2024-03-04 00:50:43'),
(216, 1, 2, 'Wardah bright, smooth and glow', 'Wardah', 'Facial Wash', 'Kering', 'Wardah Perfect Bright Bright + Smooth Glow Creamy Foam merupakan pembersih wajah mengandung Pore Cleansing Agent dan Doubl Lightening Active yang mengangkat debu dan kotoran secara intensif, kurangi minyak berlebih pada wajah dan halal. Angkat debu dan kotoran secara mendalam/intensif sehingga kulit normal cenderung kering terlihat lebih cerah dan terjaga kelembapannya.How to use:Basahi dengan air dan busakan di wajah. Pijat lembut. Bilas hingga bersih.Suitable for:Kulit kering, kulit normalIngredients:-', 19700.00, '2024-03-04 00:51:00', '2024-03-04 00:51:00'),
(217, 1, 2, 'Acnes yogurt touch', 'Acnes', 'Facial wash', 'Normal', 'Acnes Acnes Natural Care Yogurt Touch Facewash adalah sabun pembersih wajah untuk membuat kulit halus ternutrisi. Dilengkapi dengan formula unik yogurt extract yang kaya akan nutrisi untuk membantu menjaga tekstur dan kelembutan kulit. Diperkaya dengan Vitamin C dan B3 untuk menutrisi kulit agar tampak lebih cerah, dan aloe extract untuk menjaga kelembaban dan kelembutan alami kulit.How To Use:Basahi wajah dengan air, lalu usapkan sabun pada wajah. Bilas dengan air bersih.Suitable For:Kulit normalIngredients:-', 22000.00, '2024-03-04 00:51:25', '2024-03-04 00:51:25'),
(218, 1, 2, 'Wardah Renew You', 'Wardah', 'Facial Wash', 'Normal', 'Pelembab dengan tekstur krim yang ringan yang dilengkapi dengan SPF 35 PA+++ untuk melindungi kulit dari paparan berlebih sinar UVA/UVB penyebab tanda-tanda premature aging seperti munculnya flek hitam dan garis halus. Mengandung Niacinamide yang mencerahkan dan meratakan warna kulit. Diformulasikan dengan kombinasi Peptide MatrixylTM dan Bakuchiol yang menghaluskan tekstur kulit dan terbukti secara klinis mampu menjaga elastisitas dan kekencangan kulit dalam 4 minggu pemakaian*.', 111000.00, '2024-03-04 00:51:32', '2024-03-04 00:51:32'),
(219, 1, 2, 'Acnes deep pore cleanser', 'Acnes', 'Facial wash', 'Kombinasi', 'Acnes Natural Care Deep Pore Cleanser Facewash adalah sabun pembersih muka untuk kulit bersih tanpa komedo. Mengandung natural double microbeads yang unik, kulit bersih lebih optimal hingga ke pori, membantu mengangkat sel kulit mati sehingga membantu mencegah komedo. Formulanya juga dapat membantu melawan bakteri penyebab jerawat, menjaga kelembaban dan kelembutan alami kulit.How To Use:Basahi wajah dengan air, usapkan sabun. Bilas dengan air bersih.Suitable For:Kulit dengan pori-pori besar, kulit berjerawatIngredients:-', 22000.00, '2024-03-04 00:52:10', '2024-03-04 00:52:10'),
(220, 1, 2, 'Wardah C-Defense Energizing whip foam', 'Wardah', 'Facial Foam', 'Normal', 'Wardah C-Defense Energizing Whip Foam merupakan pembersih wajah dengan Dense Whip Particles menghasilkan busa 3x lebih padat, terasa kenyal dan lembut membersihkan kulit wajah hingga ke pori dari polusi, make-up, serta minyak berlebih. Dengan kandungan Hi-Grade Vitamin C yang berperan sebagai antioksidan dan menjadikan kulit tampak lebih cerah.', 25500.00, '2024-03-04 00:52:14', '2024-03-04 00:52:14'),
(221, 1, 2, 'Wardah Micellar Gentle Wash', 'Wardah', 'Facial Wash', 'Kombinasi', 'Wardah Lightening Micellar Gentle Wash, inovasi baru pembersih wajah dengan Non Soap Formula, bersihkan wajah dengan lembut sekaligus jaga kelembaban kulit tanpa meninggalkan kesan kesat. Dengan Teknologi Micellar, angkat minyak dan kotoran pada wajah dengan bersih. Dengan formula pH Balance sehingga menjaga pH alami kulit. Dikombinasikan dengan Advanced Niacinamide, kulit tampak lebih lembut, cerah bercahaya dan terjaga kelembabannya.', 22499.00, '2024-03-04 00:52:46', '2024-03-04 00:52:46'),
(222, 1, 2, 'Hanasui Acne Treatment Gentle Cleanser', 'Hanasui', 'Facial wash', 'Berminyak', 'Hanasui Acne Treatment Hadir untuk menjadi solusi para wanita yang sedang berjuang menuntaskan jerawat diwajah. Diformulasikan khusus untuk kulit wajah berjerawat, Hanasui Acne Treatment memiliki 5 rangkaian lengkap yang terdiri dari Facial Wash, Essence, Day Cream, Night Cream dan Acne Spot Gel. Dengan pemakaian rutin selama 4 minggu, jerawat akan hilang dan wajah wajahpun menjadi bersinar. Selain membantu menghilangkan jerawat Hanasui Acne Treatment juga mencegah jerawat datang kembali. Kandungan bahan alami dan bahan aktif yang terdapat pada Hanasui Acne Treatment antara lain Salicylic Acid, AC.NET yang berfungsi sebagai anti bacteria, Niacinamide, Blue Oleoactif® yang berfungsi sebagai Anti Pollutan dan Anti Blue light serta Vitex Castus Extract yang merupakan anti acne dan anti microba untuk mencegah jerawat datang kembali.Kandungan utama :- Mild Eco Friendly Cleansing Agent : mengangkat kotoran penyumbat pori-pori- Salicylic Acid : Anti Inflamasi & membuka pori-pori yang tersumbat- Niacinamide : Mencerahkan & mengurangi produksi sebum (Sebum Reducer)- Tea Tree Oil : Anti bacteria & Anti mikroba alamiBenefit :- pH Balance & Alcohol Free- Mengangkat kotoran dan minyak berlebih- Membersihkan pori-pori sampai ke bagian dalam- Melembapkan kulit wajah tanpa membuat wajah kering- Mencerahkan serta menjadikan kulit lembut dan halusCara Pakai : Basahi kulit dan pijat di wajah dan mata, lalu bilas. Gunakan setiap hari pagi dan malamNetto : 60 GrBPOM NA : 18201202015', 24000.00, '2024-03-04 00:52:52', '2024-03-04 00:52:52'),
(223, 1, 2, 'Wardah Whip facial foam', 'Wardah', 'Facial Foam', 'Berminyak', 'Wardah Lightening Whip Facial Foam adalah pembersih wajah dengan creamy whip technology yang menghasilkan busa lembut whip creamy dan 5x lebih halus, bantu bersihkan kulit hingga ke pori-pori secara deep cleansing. Mengandung advanced niacinamide yang membantu kulit tampak lebih segar, lembut, cerah bercahaya dalam satu kali pemakaian. Cocok untuk kulit normal berminyak.', 34300.00, '2024-03-04 00:53:18', '2024-03-04 00:53:18'),
(224, 1, 2, 'Hanasui Flawless Glow 10', 'Hanasui', 'Facial Foam', 'Kering', '\"Hanasui Flawless Glow 10 Hadir untuk menjadi solusi para wanita yang ingin melakukan perawatan wajah namun dengan biaya yang tidak banyak. Memiliki 4 rangkaian yakni Facial Wash, Essence, Day Cream dan Night Cream. Dengan 1 rangkaian tersebut, konsumen dapat merasakan 10 manfaat sekaligus.Dengan kandungan bahan alami dan bahan aktif antara lain Niacinamide, Blue Oleoactif® yang berfungsi sebagai Anti Pollutan dan Anti Blue light serta Pentavitin yang dapat menghidrasi kulit wajah hingga 72 jam.\r\n\r\n\r\nNiacinamide : Mencerahkan & Sebum Reducer\r\nSodium Hyaluronate : Anti bacteria, Menghidrasi & Menjaga Kelembapan\r\nBetain : Menghaluskan & Melembutkan kulit\r\nMc Glucan : Anti Iritasi, Boost Collagen\r\n\r\nBenefit :\r\nMenutrisi dan menghidrasi kulit\r\nMemaksimalkan produk Skincare yang akan digunakan selajutnya\r\nMeningkatkan sintesis kolagen dan menjadikan kulit lebih lembut & halus\r\nMenjaga kelembapan kulit wajah\r\nMencerahkan dan melembapkan kulit wajah\"', 25000.00, '2024-03-04 00:53:31', '2024-03-04 00:53:31'),
(225, 1, 2, 'Wardah Gentle Exfoliator Scrub', 'Wardah', 'Scrub', 'Kombinasi', 'Wardah Lightening Gentle Exfoliator, pembersih wajah pH balance dengan scrub yang lembut di kulit (gentle microfoliant). Bantu bersihkan pori-pori sekaligus mengangkat sebum dan sel kulit mati untuk kulit yang terasa lebih halus. Mengandung Advanced Niacinamide yang bantu kulit tampak lebih cerah dengan pemakaian teratur. Cocok untuk semua jenis kulit.', 20500.00, '2024-03-04 00:54:08', '2024-03-04 00:54:08'),
(226, 1, 2, 'Ponds Bright Beauty', 'Ponds', 'Facial Foam', 'Kombinasi', '\"DESCRIPTION\r\nDiperkaya dengan 50% krim pencerah untuk mengurangi kekusaman, sehingga kulit terasa lembut, bersih serta tampak bening merona. Pro-Vitamin B3 meresap ke dalam lapisan epidermis kulit unutk mencerahkan noda hitam bahkan yang sudah berbulan-bulan untuk kulit tampak putih merona noda tersamarkan dan tanpa kilap.Dengan kandungan Pearl Nutrients, Vitamin B3, dan AHA Formula toner menyegarkan Pori-pori tampak lebih kecil Mengangkat minyak berlebih Mencerahkan wajahProduk cocok digunakan untuk kulit berminyak, kering, dan kusamCara penggunaan:Basahi wajah dengan air. Tuangkan Pond’s White Beauty Facial Foam pada telapak tangan anda lalu buat busa pada tangan anda. Usapkan Pond’s White Beauty Facial Foam ini pada wajah anda, dan pijat lembut wajah dan leher anda. Kemudian bilas hingga bersih. Untuk hasil terbaik, cuci muka anda setiap pagi dan setelah beraktivitas.Formulasi:Myristic Acid, Glycerin, Water, Propylene Glycol, Potassium Hydroxide, Stearic Acid, Glycol Stearate, Lauric Acid, Decyl Glucoside, Glyceryl Stearate, Perfume, DMDM Hydantoin, Polyquaternium-7, Disodium EDTA, Butylene Glycol, Niacinamide, Iodopropynyl ButylcarbamateBPOM : NA18191205823\"', 33800.00, '2024-03-04 00:54:10', '2024-03-04 00:54:10'),
(227, 1, 2, 'Wardah clarifying facial foam', 'Wardah', 'Facial Foam', 'Berminyak', 'Mengandung CarboActiv dan Clarifying Mineral+ yang bersihkan debu, polusi, dan minyak berlebih secara tuntas, yang sesuai dengan kegiatan outdoormu yang terpapar sinar matahari dan poulsi udara', 21000.00, '2024-03-04 00:54:52', '2024-03-04 00:54:52'),
(228, 1, 2, 'Ponds Pure Bright', 'Ponds', 'Facial Foam', 'Berminyak', '\"Diformulasikan dengan Vitamin B3 dan Activated Carbon yang dikenal dapat menyerap dan mengangkat kotoran dari permukaan sampai kedalam pori-pori kulit wajahmu. POND\'S Pure White dengan 3x Purify Power untuk wajah 3x lebih bersih bercahaya.\r\n\r\nDiformulasikan dengan Activated Charcoal dan ekstrak Japanese Green Tea, facial foam ini dapat mengangkat kotoran dan polusi^ dari permukaan sampai kedalam pori-pori kulit wajahmu.\r\nD-TOXX* polusi untuk wajah bersih dan glowing!\r\n^Asap, kotoran *Deep Taking Out exposed external pollution\"', 29900.00, '2024-03-04 00:54:55', '2024-03-04 00:54:55');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `name`, `brand`, `type`, `skin_type`, `description`, `price`, `created_at`, `updated_at`) VALUES
(229, 1, 2, 'Ponds Clear solutions', 'Ponds', 'Facial Foam', 'Berminyak', 'Pond’s Clear Solutions Shake & Clean merupakan pembersih unik yang terdiri dari dua lapisan: lapisan pembersih dan lapisan penyegar dalam satu kemasan. Formulanya tidak mengandung kadar alcohol yang tinggi. Mengandung Triclosan untuk melawan bakteri penyebab jerawat dan membuat wajah menjadi segar dan bersih berseri.How To Use :Kocok dahulu sebelum digunakan. Tuangkan isi sedikit pada kapas lalu usapkan dengan lembut pada seluruh wajah dan tepuk-tepuk perlahan hingga mengering.Suitable For :Kulit berjerawat.Ingredients :Water, Cyclopentasiloxane, Isohexadecane, Alcohol Denat, Decyl Glucoside, Sodium Chloride, Phenoxyethanol, Benzyl Alcohol, Perfume, Benzophenone-4, Benzalkonium Chloride, Triclosan, Citric Acid, Methyl Lactate, Menthol, CI 42090, CI 19140.', 30000.00, '2024-03-04 00:55:31', '2024-03-04 00:55:31'),
(230, 1, 2, 'Glow spa Cica', 'Shinzui', 'Exfoliating Gel', 'Kering', 'Gel eksfoliasi dengan shooting cica membantu mengangkat sel kulit mati dan mengencangkan kulit agar lebih halus dan glowing. Hadir dengan kandungan AHA yang dapat membantu mengangkat sel kulit mati sehingga tampak glowing. Ada juga kandungan collagen yang dapat melembapkan dan membantu meningkatkan elastisitas kulit. Kandungan Herba Matsu Oilnya dapat  membantu mencerahkan dan menutrisi kulit .', 9900.00, '2024-03-04 00:55:31', '2024-03-04 00:55:31'),
(231, 1, 2, 'Glow spa Honey', 'Shinzui', 'Exfoliating gel', 'Kering', '\"Gel eksfoliasi dengan hydrating honey membantu mengangkat sel kulit mati dan mengencangkan kulit agar lebih halus dan glowing.\r\n\r\nKandungan :\r\n\r\nAHA, membantu mengangkat sel kulit mati sehingga tampak glowing\r\n\r\nCOLLAGEN, melembapkan dan membantu meningkatkan elastisitas kulit\r\n\r\nHERBA MATSU OIL, membantu mencerahkan dan menutrisi kulit\"', 10000.00, '2024-03-04 00:56:07', '2024-03-04 00:56:07'),
(232, 1, 2, 'Emina Bright stuff', 'Emina', 'Facial wash', 'Kering', 'Emina Bright Stuff Tone Up Cream dengan kandungan ekstrak summer plum, dapat mencerahkan kulit seketika dan membuat kulit terasa halus. Mampu membantu menyamarkan noda hitam yang disebabkan oleh sinar matahari atau bekas jerawat.', 26000.00, '2024-03-04 00:56:21', '2024-03-04 00:56:21'),
(233, 1, 2, 'Hanasui Body Spa Blueberry', 'Hanasui', 'Exfoliating Gel', 'Kombinasi', '\" HANASUI BODY EXFOLIATING GEL BLUEBERY WITH COLLAGEN \r\n\r\nGel pembersih berfungsi mengangkat sel-sel kulit mati dengan kandungan collagen menjaga kelembapan kulit serta meningkatkan kekenyalan kulit senantiasa kulit lebih halus, lembut dan berseri-seri.\r\n\r\nKegunaan :\r\nTexture yang ringan dan water based\r\nMengangkat sel kulit mati dalam sekejap\r\nTidak membuat kulit kering\r\nMenjadikan kulit halus dan lembut\r\nCocok untuk semua jenis kulit\r\n\r\nKandungan Utama :\r\nNatural Extract\r\nCollagen  Phyto Collagen\r\nAllantoin\r\nLactic Acid  bagian dari AHA\r\nGlycerin', 31460.00, '2024-03-04 00:56:42', '2024-03-04 00:56:42'),
(234, 1, 2, 'Emina bright stuff acne prone skin', 'Emina', 'Facial wash', 'Berminyak', '1. Mengandung ekstrak summer plum dan double brightening power untuk mencerahkan kulit dan menyamarkan noda hitam 2. Mengandung ekstrak cinnamon bark yang dikenal sebagai sebum regulator (mengontrol minyak berlebih pada wajah) dan soothing agent (mengurangi kemerahan dan iritasi pada wajah) yang baik untuk kulit rentan berjerawat', 28500.00, '2024-03-04 00:56:57', '2024-03-04 00:56:57'),
(235, 1, 2, 'Pixy Dull-Off poush', 'Pixy', 'Scrub', 'Berminyak', 'Gunakan PIXY FACIAL SCRUB DULL-OFF POLISH, mengatasi kulit kusam dengan cara mengurangi kelebihan minyak, mengangkat sel kulit mati, dan membuat wajah tampak lebih cerah.Formula diperkaya dengan:• White Clay untuk menyerap kelebihan minyak yang dapat menyebabkan komedo.• Micro Scrub yang secara lembut mengangkat sel kulit mati yang menumpuk.Sakura Extract dan Natural Whitening Extract yang membuat wajah tampak lebih cerah.Kulit lembut, tidak mengkilap dan tampak lebih cerah.Ingredients:Water, glycerin, palmitic acid, myristic acid, stearic acid, potassium hydroxide, propylene glycol, lauric acid, PEG-8, polyethylene, sorbitol, glyceryl stearate, lauramidopropyl betaine, pachyrrhizus erosus root extract, fragrance, bentonite, methylparaben, sodium chloride, tetrasodium edta, dextrin, prunus lannesiana flower extract, ascorbic acid, malic acid, CI 16035', 12000.00, '2024-03-04 00:57:13', '2024-03-04 00:57:13'),
(236, 1, 2, 'Safi Acne clarifying cleanser', 'Safi', 'Facial Wash', 'Berminyak', '\"Safi Acne Expert Clarifying 2in1 Cleanser adalah pembersih wajah yang dapat membersihkan kulit wajah secara mendalam. Dengan formulasi Anti acne, untuk membantu mengurangi sebum dan minyak berlebih yang terperangkap di dalam pori-pori. Membuat kulit wajah terasa lembut, bersih, dan tetap sehat. Diformulasikan dengan Rapid Action Technology dan kandungan AHA, BHA, dan Neem yang dapat membantu merawat kulit berjerawat, kulit terasa lebih halus dan noda pada wajah tampak tersamarkan.How to use:Aplikasikan pada wajah lalu pijat area wajah dan leher menggunakan ujung jari, setelah itu bilas menggunakan air bersih dan keringkan dengan handuk bersih.Suitable for:Kulit berjerawatIngredients:-', 58900.00, '2024-03-04 00:58:10', '2024-03-04 00:58:10'),
(237, 1, 2, 'Safi brightening cleanser Mangosteen extract', 'Safi', 'Facial Wash', 'Kering', 'Safi White Natural Brightening Cleanser Mangosteen Extract, pembersih wajah yang lembut dan mudah dibilas membersihkan debu dan kotoran di wajah, sehingga wajah terasa bersih dan segar. Busanya lembut dan mengandung moisturizer alami sehingga tidak menimbulkan rasa kering pada wajah. Mengandung Ekstrak Kulit Manggis alami yang membantu melindungi kulit dari paparan radikal bebas, serta membantu menjadikan kulit wajah tampak lebih cerah bercahaya, lembut, serta terjaga kelembaban alaminya', 16000.00, '2024-03-04 00:58:49', '2024-03-04 00:58:49'),
(238, 1, 2, 'Safi brightening cleanser Orange extract', 'Safi', 'Facial Wash', 'Kering', '\"Safi White Natural Brightening Cleanser merupakan pembersih wajah yang mudah dibilas dan membersihkan kotoran sehingga wajah menjadi bersih dan segar. Mengandung Vitamin B3 dan Ekstrak Grapefruit yang kaya dengan vitamin C membantu melindungi kulit dari paparan sinar matahari, membuat kulit terasa halus dan lembut.How to use:Ambil produk secukupnya, letakan di telapak tangan dan busakan dengan air. Pijat wajah dengan gerakan memutar lalu bilas dengan air. Gunakan sebelum Safi White Natural Brightening Cream Grapefruit Extract untuk hasil optimal.Suitable for:-Ingredients:Water, Palmitic Acid, Myristic Acid, Glycerin, Potassium Hydroxide, Stearic Acid, Propylene Glycol, Lauric Acid, PEG-150 Distearate, Cetearyl Alcohol, Polyquaternium-10, Octadecyl Di-t-butyl-4-hydroxyhydrocinnamate, Tetrasodium EDTA, Niacinamide, Methylene Bis-Benzotriazolyl Tetramethylbutylphenol, Ethylhexyl Methoxycinnamate, Calcium Pantothenate, Sodium Ascorbyl Phosphate, Citric Acid, Lactic Acid, Citrus Grandis (Grapefruit) Fruit Extract, Tocopheryl Acetate, Pyridoxine HCL, Fragrance, Methylisothiazolinone, Sodium Benzoate, Potassium Sorbate.\r\n\r\nSPOTTED ON FD MEMBERS', 30000.00, '2024-03-04 00:59:34', '2024-03-04 00:59:34'),
(239, 1, 2, 'Sari Ayu Acne care', 'Sari Ayu', 'Facial Wash', 'Berminyak', 'Sariayu Acne Care Facial Foam merupakan pembersih wajah yang mengandung ekstra pegagan dan bahan lainnya untuk membantu mengurangi jerawat serta diperkaya dengan minyak kenanga sebagai aromaterapi yang memberikan ketenangan.How to Use:Aplikasikan pada seluruh wajah dengan menggosok secara perlahan dan basuh dengan air.Suitable for:Kulit berjerawat, kulit berminyak.Ingredients:Water, Lauric Acid, Myristic Acid, Lauryl Glucoside, Potassium Hydroxide, Stearic Acid, Glycol Stearate, PEG-160 Sorbitan Triisostearate, Glycol Distearate, Sodium Laureth Sulfate, Cocamide MEA, Laureth-10, Propylene Glycol, PEG-80 Glyceryl Cocoate, Styrene, Acrylates, Glyceryl Stearate,PEG-100 Stearate, Phenoxyethanol, Methylparaben, Ethylparaben, Propylparaben, Butylparaben, Matricaria Flower Water, PEG-40 Hydrogenated Castor Oil, Tricedeth-9, Bisabolol, PEG-45 Palm Kernel Glycerides, PEG-6 Caprylic, Centella Asiatica, Methylchlorothiazolinone, Methylisothiazolinone, Fragrance, Hydroxypropyl Methylcellulose, Triclosan, Cananga Odorata Flower Oil.', 15000.00, '2024-03-04 01:00:19', '2024-03-04 01:00:19'),
(240, 1, 2, 'Sari Ayu bright skin', 'Sari Ayu', 'Facial Wash', 'Kombinasi', 'Sariayu Bright Skin Putih Langsat Face Serum merupakan serum dengan kandungan 20x Vit C Concentrate lebih cepat mencerahkan & memudarkan flek hitam.How to use:Tuang 3-5 tetes serum pada wajah yang telah dibersihkanSuitable for:Semua jenis kulitIngredients:Lansium Extract Complex, Niacinamide 5%, Natural AHA, 20x Vitamin C Concentrate.', 60900.00, '2024-03-04 01:01:06', '2024-03-04 01:01:06'),
(241, 1, 2, 'Sari Ayu Hydra glow', 'Sari Ayu', 'Facial Wash', 'Kering', '\"Sariayu Hydra Glow Gel Facial Foam merupakan facial foam dalam bentuk gel yang berfungsi untuk membersihkan, menghidrasi dan melembutkan kulit. Mengandung Rose Water dan Aloe vera Extract untuk melembapkan dan menenenangkan kulit yang kering, kasar, kusam dan iritasi, serta mengandung 3 x Anti Oxidant (Vit E, Gardenia Extract dan Meniran extract) yang melindungi kulit dari radikal bebas.How to use:Keluarkan secukupnya ke telapak tangan, basahi dengan air hingga berbusa. Usapkan pada wajah dan pijat perlahan. Bilas hingga bersih. Suitable for:Semua jenis kulitIngredients:-', 25400.00, '2024-03-04 01:01:45', '2024-03-04 01:01:45'),
(242, 1, 2, 'Pigeon Daily Mild cleansing', 'Pigeon', 'Facial Foam', 'Kering', '\"PIGEON Teens Facial Foam - Daily Mild Cleansing 40 Ml (For Normal to Dry Skin)\r\n\r\nPigeon Teens Facial Foam Daily Mild Cleansing diformulasikan khusus untuk kulit remaja yang normal ataupun kulit kering. Membersihkan wajah dari debu, kotoran dan sisa make up.\r\n\r\nDiperkaya dengan :\r\n\r\n• Esktrak Jojoba membantu menjaga kelembapan kulit.\r\n\r\n• Esktrak Chamomile membantu melindungi kulit dari iritasi ringan.\r\n\r\nHighlight :\r\n\r\n• Non-comedogenic & Non-acnegenic\r\n\r\n• 0% coloring agent\r\n\r\n• pH balance', 15000.00, '2024-03-04 01:02:28', '2024-03-04 01:02:28'),
(243, 1, 2, 'Pigeon Acne care', 'Pigeon', 'Facial Foam', 'Berminyak', '\"PIGEON Teens Facial Foam - Acne Care 100Gr (For Acne Prone Skin)\r\n\r\nPigeon Teens Facial Foam Acne Care diformulasikan khusus untuk kulit remaja yang berjerawat. Membersihkan wajah dari debu, kotoran dan sisa make up.\r\n\r\nDiperkaya dengan :\r\n\r\n• Esktrak Jojoba membantu menjaga kelembapan kulit.\r\n\r\n• Esktrak Chamomile membantu melindungi kulit dari iritasi ringan.\r\n\r\n• Isopropylmethylphenol membantu melawan bakteri penyebab jerawat.\r\n\r\nHighlight :\r\n\r\n• Non-comedogenic & Non-acnegenic\r\n\r\n• 0% coloring agent\r\n\r\n• pH balance', 30000.00, '2024-03-04 01:03:21', '2024-03-04 01:03:21'),
(244, 1, 2, 'Pigeon Deep cleansing and oil control', 'Pigeon', 'Facial Foam', 'Berminyak', '\"PIGEON Teens Facial Foam - Deep Cleansing and Oil Control 100Gr (For Oily Skin)\r\n\r\nPigeon Teens Facial Foam Deep Cleansing and Oil Control diformulasikan khusus untuk kulit remaja yang cenderung berminyak. Membersihkan wajah hingga ke dalam pori-pori, dapat mengangkat debu, kotoran dan sisa make up.\r\n\r\nDiperkaya dengan :\r\n\r\n• Esktrak Jojoba membantu menjaga kelembapan kulit.\r\n\r\n• Esktrak Chamomile membantu melindungi kulit dari iritasi ringan.\r\n\r\n• Charcoal membantu menyerap minyak dan membersihkan hingga ke pori-pori.\r\n\r\nHighlight :\r\n\r\n• Non-comedogenic & Non-acnegenic\r\n\r\n• 0% coloring agent\r\n\r\n• pH balance', 30000.00, '2024-03-04 01:04:09', '2024-03-04 01:04:09'),
(245, 1, 2, 'Pigeon for all skin types', 'Pigeon', 'Facial Foam', 'Kombinasi', '\"Pigeon Facial Foam adalah sabun pembersih wajah yang bermanfaat untuk membersihkan wajah dalam mengangkat kotoran dan tata rias dengan menyeluruh. Dengan kandungan ekstrak jojoba dan chamomile yang alami pada produk ini dapat menyehatkan kulit membuatnya terlihat lebih cerah.How to use :Aplikasikan pada wajah, bilas hingga bersihSuitable for :Semua jenis kulitIngredients :Purfied water, sodium laureth sulfate,cocamidopropyl betaine, sodium stearate, glycerine, phenoxyethanol, methylparaben, ethylparaben, propylparaben, butylparaben, citric acid, glycol distearate, chamomilla recutita (matricaria) flower water, PEG-40 hydrogenated castor oil, trideceth-9, bisabolol,propylene glycol, fragrance,tetrasodium EDTA,ethoxydiglycol, PEG-26 jojoba acid, PEG-26 jojoba Ethanol, butylene glycol, simmondsia chinensis', 18000.00, '2024-03-04 01:04:49', '2024-03-04 01:04:49'),
(246, 1, 2, 'Nivea sparkling bright', 'Nivea', 'Facial Foam', 'Normal', 'NIVEA Sparkling Bright Facial Foam adalah sabun pembersih wajah yang dapat membersihkan wajah secara menyeluruh, sekaligus mencerahkan dan menghaluskan kulit secara efektif. Kombinasi Rucinol, Licorice, dan Vitamin C mencegah terbentuknya melanin penyebab kulit kusam dan mengurangi spot hitam sehingga wajah tampak 10X lebih cerah. Telah teruji secara dermatologis. How To Use:Gunakan setiap pagi dan malam sebagai bagian dari rutinitas pembersihan wajah. Usapkan pada bagian wajah dan leher yang telah dibasahi, pijat lembut dengan gerakan kecil melingkar ke atas. Hindari area sekitar mata. Bilas hingga bersih. Suitable For:Kulit normalIngredients:Rucinol, Licorice, & Vitamin C, Aqua, Myristic Acid, Propylene Glycol, Palmitic Acid, Stearic Acid, Potassium Hydroxide, Glycerin, Lauric Acid, PEG-150, PEG-8, Glyceryl Stearate, Cera Alba, Sodium Methyl Cocoyl Taurate, Arachidic Acid, Trisodium EDTA, Oleic Acid, Panthenol, Tocopheryl Acetate, Hydrolyzed Pearl, Caprylic/ Capric Triglyceride, Magnesium Chloride, Sodium Ascorbyl Phosphate, Alcohol Denat, Glyceryl Glucoside, Glycyrrhiza Glabra (Licorice) Root Extract, 4-Butylresorcinol, Polysorbate 20, Fucus Vesiculosus Extract, Glucose, PEG-40 Hydrogenated Castor Oil, Trideceth-9, Nelumbium Speciosum Flower Extract, Panax Ginseng, Root Extract, Parfum', 20000.00, '2024-03-04 01:05:30', '2024-03-04 01:05:30'),
(247, 1, 2, 'Fair & Lovely multi vitamin', 'Fair & Lovely', 'Facial Foam', 'Kering', 'Fair & Lovely Krim Pencerah Multi Vitamin merupakan cream pelembap wajah degan kandungan multi vitamin yang dapat mencerahkan warna kulit wajah.How to Use:Gunakan secara teratur pada wajah yang telah dibersihkanSuitable for:Kulit kusamIngredients:-', 12000.00, '2024-03-04 01:06:14', '2024-03-04 01:06:14'),
(248, 1, 2, 'Fair & Lovely Vitamin c', 'Fair & Lovely', 'Facial Foam', 'Kombinasi', 'Fair & Lovely mempersembahkan Bright C Glow Facial Foam yang mengandung 5x Vitamin C Essence Complex* yang mencerahkan dan menutrisi hingga ke dalam 20 lapisan kulit^. Diperkaya dengan kekuatan 100% natural ekstrak lemon untuk wajah glowing dan terasa kenyal. Facial Foam ini juga mengandung 100x Anti-Oksidan* untuk membersihkan wajah secara menyeluruh dari kotoran, debu dan kuman. - Wajah Glowing- Bersih Cerah Seketika- Menutrisi dari dalam^- Menjaga Kesehatan Kulit- Mengurangi Noda HitamDiformulasikan secara khusus untuk dapat digunakan oleh semua jenis kulit. Untuk hasil terbaik, gunakan Fair & Lovely Bright C Glow Facial Foam 2x sehari dan menggunakan Fair & Lovely Multivitamin Cream sesudahnya untuk melembapkan untuk wajah Glowing yang Sehat.^lapisan epidermis*dibandingkan dengan facial foam Unilever lainnya', 22000.00, '2024-03-04 01:06:54', '2024-03-04 01:06:54'),
(249, 1, 2, 'Garnier Sakura white', 'Garnier', 'Facial Foam', 'Sensitif', 'Garnier Sakura White Serum Day Cream SPF21 / PA+++Tampak cantik sempurna dengan kulit mulus, cerah merona. Dengan ekstrak alami sakura dan Pore Smoothing Serum di dalamnya efektif mampu mencerahkan wajah kusam, sekaligus membuat pori-pori di permukaan tampak halus.Teknologi Talc Touch, melembabkan tanpa membuat wajah mengkilap akibat minyak berlebih, sedangkan SPF21/PA+++nya melindungi dari sinar UV agar kulit tak kembali gelap. Cocok untuk tipe kulit normal-kering dan sensitif karena sudah teruji klinis. Cara Penggunaan :Oleskan krim secara merata ke wajah dan leher yang bersih.Hindari daerah sekitar mata.', 61300.00, '2024-03-04 01:07:40', '2024-03-04 01:07:40'),
(250, 1, 2, 'Garnier vitamin hyaluron', 'Garnier', 'Facial Foam', 'Kombinasi', 'Garnier Sakura White Booster Serum merupakan serum yang diperkaya dengan Ekstrak Sakura Jepang yang mampu membuat kulit tampak lebih cerah, lembut, dan halus.How to use:Tuang 3 - 5 tetes pada telapak tangan. Usapkan ke seluruh wajah secara merataSuitable for:Semua jenis kulitIngredients:-', 110000.00, '2024-03-04 01:08:21', '2024-03-04 01:08:21'),
(251, 1, 2, 'Garnier vitamin c', 'Garnier', 'Facial Foam', 'Kombinasi', 'Garnier Bright Complete Vitamin C 30x Booster Serum merupakan inovasi Booster Serum terbaru untuk aksi cepat cerahkan noda hitam dengan kandungan 30x Vitamin C murni dari Lemon Yuzu Jepang. How to use:Gunakan sebelum day cream dan night cream. Teteskan 3 kali setiap pemakaian. Aplikasikan pada wajah dan leher yang telah dibersihkan. Suitable for:Semua jenis kulitIngredients:-', 130000.00, '2024-03-04 01:09:02', '2024-03-04 01:09:02'),
(252, 1, 2, 'Garnier Dirt and oil control', 'Garnier', 'Facial Foam', 'Berminyak', 'Garnier Men Oil Control Matcha Deep Clean Foaming Gel adalah sabun wajah pria dalam bentuk gel dengan ekstrak matcha yang mengandung 100X antioksidan. Sabun wajah ini mampu membersihkan wajah secara menyeluruh hingga ke pori-pori, mengangkat sisa debu, kotoran, dan polusi, tanpa membuat kulit terasa kering. Cocok untuk kulit yang berminyak dan terpapar debu polusi.', 22600.00, '2024-03-04 01:09:42', '2024-03-04 01:09:42'),
(253, 1, 2, 'Herborist orange & carrot', 'Herborist', 'Facial Scrub', 'Sensitif', '\"Herborist Juice for Skin Body Serum Orange Carrot - 180 mL adalah body serum yang mengandung Orange & Carrot Extracts untuk melembabkan kulit dan mencerahkan kulit, membuat wajah glowing dan sehat. Teksturnya mudah menyerap dan tidak lengket, ditambah aromanya fresh dan tahan lama. Selain itu, juga dapat membantu mengatasi masalah kulit kering dan dehidrasi, kusam, kemerahan dan sensitif. No whitecast: TANPA efek abu-abu pada kulit. Cocok untuk semua jenis kulit, termasuk kulit sensitif.\r\n\r\nInstant Bright untuk memberikan efek kulit cerah seketika dalam sekali pemakaian produk.\r\nWhite Booster Formula untuk mencerahkan kulit setelah pemakaian produk selama 21 hari.\r\n5X Vitamin E yang kaya akan antioksidan untuk meremajakan kulit.\"\"Herborist Juice for Skin Body Serum Orange Carrot - 180 mL adalah body serum yang mengandung Orange & Carrot Extracts untuk melembabkan kulit dan mencerahkan kulit, membuat wajah glowing dan sehat. Teksturnya mudah menyerap dan tidak lengket, ditambah aromanya fresh dan tahan lama. Selain itu, juga dapat membantu mengatasi masalah kulit kering dan dehidrasi, kusam, kemerahan dan sensitif. No whitecast: TANPA efek abu-abu pada kulit. Cocok untuk semua jenis kulit, termasuk kulit sensitif.\r\n\r\nInstant Bright untuk memberikan efek kulit cerah seketika dalam sekali pemakaian produk.\r\nWhite Booster Formula untuk mencerahkan kulit setelah pemakaian produk selama 21 hari.\r\n5X Vitamin E yang kaya akan antioksidan untuk meremajakan kulit.', 27200.00, '2024-03-04 01:10:24', '2024-03-04 01:10:24'),
(254, 1, 2, 'Herborist apple & broccoli', 'Herborist', 'Facial Scrub', 'Kombinasi', '\"Herborist Juice for Skin Body Serum Apple Broccoli - 180 mL adalah body serum yang mengandung Apple & Broccoli Extracts untuk melembabkan kulit dan mencerahkan kulit, membuat wajah glowing dan sehat. Teksturnya mudah menyerap dan tidak lengket, ditambah aromanya fresh dan tahan lama. Selain itu, juga dapat membantu mengatasi masalah kulit kering dan dehidrasi, kusam, kemerahan dan sensitif. No whitecast: TANPA efek abu-abu pada kulit. Cocok untuk semua jenis kulit, termasuk kulit sensitif.\r\n\r\nInstant Bright untuk memberikan efek kulit cerah seketika dalam sekali pemakaian produk.\r\nWhite Booster Formula untuk mencerahkan kulit setelah pemakaian produk selama 21 hari.\r\n5X Vitamin E yang kaya akan antioksidan untuk meremajakan kulit.\"', 27200.00, '2024-03-04 01:11:06', '2024-03-04 01:11:06'),
(255, 1, 2, 'Herborist Raspberry & tomato', 'Herborist', 'Facial Scrub', 'Kombinasi', '\"Herborist Juice for Skin Body Serum Raspberry Tomato - 180 mL adalah body serum yang mengandung Raspberry & Tomato Extracts untuk melembabkan kulit dan mencerahkan kulit, membuat wajah glowing dan sehat. Teksturnya mudah menyerap dan tidak lengket, ditambah aromanya fresh dan tahan lama. Selain itu, juga dapat membantu mengatasi masalah kulit kering dan dehidrasi, kusam, kemerahan dan sensitif. No whitecast: TANPA efek abu-abu pada kulit. Cocok untuk semua jenis kulit, termasuk kulit sensitif.\r\n\r\nInstant Bright untuk memberikan efek kulit cerah seketika dalam sekali pemakaian produk.\r\nWhite Booster Formula untuk mencerahkan kulit setelah pemakaian produk selama 21 hari.\r\n5X Vitamin E yang kaya akan antioksidan untuk meremajakan kulit.\"', 27200.00, '2024-03-04 01:11:52', '2024-03-04 01:11:52'),
(256, 1, 2, 'Herborist facial wash tea tree', 'Herborist', 'Facial wash', 'Berminyak', '\"Mengandung Tea Tree yang berfungsi sebagai:\r\n\r\n- Anti Acne\r\n- Mengontrol minyak berlebih pada wajah (mencegah jerawat dan merawat kulit wajah berjerawat)\r\n- Busa yang lembut dengan fragrance alami khas tea tree, baik dan nyaman digunakan untuk merawat kulit wajah berjerawat\r\n- Diperkaya Brightening Extract untuk membuat kulit tampak lebih cerah\r\n- Tidak membuat kulit kering', 21615.00, '2024-03-04 01:12:41', '2024-03-04 01:12:41'),
(257, 1, 2, 'herborist facial wash rose', 'Herborist', 'Facial wash', 'Sensitif', 'Herborist Rose Facial Wash Gel adalah sabun wajah dengan ekstrak Bunga Mawar yang berfungsi untuk membersihkan, menjaga elastisitas dan kelembapan kulit wajah, sehingga membantu memperlambat tanda-tanda penuaan dini. Mengandung ekstrak Brightening yang membuat wajah tampak lebih cerah. Sesuai untuk semua jenis kulit, termasuk kulit sensitif. Untuk hasil yang maksimal, gunakan rangkaian Herborist Rose Series: Rose Cleansing Milk, Rose Water dan Rose Sleeping Mask.BPOM NA18201201942Ingredients:Aqua, Sodium Laureth Sulfate, Glycerin, Diglycerin, Acrylates/c10-30 Alkyl Acrylate Crosspolymer, Lauryl Betaine, Phenoxyethanol, Sodium Hydroxide, Sodium Chloride, Perfume, Sorbitan Caprylate, Propylene Glycol, Cystoseira tamariscifolia Extract, Benzotriazolyl Dodecyl p-Cresol, Rosa alba Flower Extract, DMDM Hydantoin', 21800.00, '2024-03-04 01:13:20', '2024-03-04 01:13:20'),
(258, 1, 2, 'herborist facial wash zaitun', 'Herborist', 'Facial wash', 'Kombinasi', 'Herborist Facial Foam merupakan sabun untuk wajah dengan fungsi menutrisi dan melemababkan kulit wajah. Produk ini mampu mengangkat semua sisa kotoran yang menempel pada wajah seperti sisa tata rias. Produk ini mengandung Vitamin E dan Anti Oxidant, membantu melembabkan kulit serta melindungi dari radikal bebas. How to Use:Tuang produk ke telapak tangan, berikan air sambil digosok hingga berbusa. Aplikasikan ke seluruh permukaan wajah dan gosok dengan perlahan. Setelah itu, bilas dengan air hingga bersih.Suitable for:Kulit kering, kulit kombinasi.Ingredients:-', 33800.00, '2024-03-04 01:13:57', '2024-03-04 01:13:57'),
(259, 1, 2, 'herborist facial wash aloe vera', 'Herborist', 'Facial wash', 'Kering', 'Memanfaatkan salah satu fungsi utama aloe vera yaitu menyejukkan, kini Herborist mengemasnya dalam facial wash gel. Rasakan sensasi sejuk Aloe Vera dan keharuman alami yang menyegarkan di setiap penggunaan. Dengan tekstur gel yang lembut, membantu membersihkan kulit wajah dari debu dan kotoran secara mendalam.', 18000.00, '2024-03-04 01:14:40', '2024-03-04 01:14:40'),
(260, 3, 21, 'Herborist Lulur Tradisional Bali - Coconut', 'Herborist', 'Body Scrub', 'Kering', 'Herborist Lulur Coconut dibuat khusus untuk merawat kondisi kulit sangat kering, karena kulit lembap adalah kunci untuk kulit tampak bercahaya alami.Rasakan manfaat coconut dengan aroma lembut yang membuat luluran lebih menyenangkan.', 18000.00, '2024-03-04 11:40:57', '2024-03-04 11:40:57'),
(261, 3, 21, 'Herborist Lulur Tradisional Bali - Rose', 'Herborist', 'Body Scrub', 'Normal', 'Lulur Tradisional Bali dengan ekstrak bunga mawar alami dan diperkaya dengan\r\nwhitening, berfungsi membersihkan kulit kusam, membuat kulit tampak lebih cerah, dan memberikan kesegaran wangi bunga mawar. \r\n- Mengandung Vitamin E yang berfungsi sebagai anti-oksidan alami yang memperlambat penuaan dini pada kulit\r\n- Diperkaya Brightening Extract, membuat kulit tampak lebih cerah, serta UV Filter yang melindungi kulit dari paparan sinar matahari\r\n- Tekstur yang ringan dan lembut, sehingga cepat meresap di kulit, dan tidak lengket\r\n- Dengan keharuman alami bunga mawar', 18000.00, '2024-03-04 11:42:02', '2024-03-04 11:42:02'),
(262, 3, 21, 'Herborist Lulur Tradisional Bali - Beras', 'Herborist', 'Body Scrub', 'Kering', '• Herborist Lulur Bali terbuat dari bahan-bahan alami, wangi khas Bali yg tahan lama, bahan aktif whitening untuk membuat kulit lebih cerah.\r\n• Efektif dan cepat mengangkat sel kulit mati dan tidak menyebabkan kulit menjadi kering.\r\n• Herborist Rice membantu memperbarui pigmen melanin kulit & melindungi kulit dari paparan sinar matahari, mencegah keriput, membuat kulit lebih kencang & lembut.', 18000.00, '2024-03-04 11:42:38', '2024-03-04 11:42:38'),
(263, 3, 21, 'Herborist Lulur Tradisional Bali - Zaitun', 'Herborist', 'Body Scrub', 'Kering', 'HERBORIST Lulur Tradisional Bali Zaitun merupakan lulur yang mengandung minyak zaitun yang diperkaya dengan whitening, membantu meningkatkan kelembabkan ekstra serta menyamarkan kerutan halus dan berfungsi untuk menjaga meningkatkan elastisitas kulit, dan membuat kulit tampak lebih segar.', 18000.00, '2024-03-04 11:43:22', '2024-03-04 11:43:22'),
(264, 3, 21, 'Herborist Lulur Tradisional Bali - Avocado', 'Herborist', 'Body Scrub', 'Kering', 'Lulur Tradisional Bali dengan ekstrak alpukat alami dan diperkaya dengan whitening, melembapkan kulit kering, merawat kekenyalan kulit dan membuat kulit tampak lebih cerah.', 18000.00, '2024-03-04 11:43:56', '2024-03-04 11:43:56'),
(265, 3, 21, 'Sumber Ayu Body Scrub Bengkoang (kemasan putih)', 'Sumber Ayu', 'Body Scrub', 'Kering', 'Dengan formula baru Extra Cleansing dan Extra Fragrance untuk wangi yang lebih tahan lama. Kandungan ekstrak bengkoang membantu mencerahkan dan menyamarkan noda hitam. Dilengkapi juga dengan kandungan vitamin C sebagai antioksidan untuk melindungi kulit. Butiran Eco Friendly Scrub yang ramah lingkungan juga membantu mengangkat kotoran dan sel kulit mati agar kulit terasa lebih halus.', 18000.00, '2024-03-04 11:44:43', '2024-03-04 11:44:43'),
(266, 3, 21, 'Sumber Ayu Body Scrub Bunga (kemasan putih)', 'Sumber Ayu', 'Body Scrub', 'Kering', 'Dengan formula baru Extra Cleansing dan Extra Fragrance untuk wangi yang lebih tahan lama. Kandungan ekstrak bunga mawarnya memiliki banyak manfaat untuk kulit tampak cerah dan segar. Dilengkapi dengan kandungan vitamin C sebagai antioksidan untuk melindungi kulit. Butiran Eco Friendly Scrub yang ramah lingkungan juga membantu mengangkat kotoran dan sel kulit mati agar kulit terasa lebih halus.', 18000.00, '2024-03-04 11:45:20', '2024-03-04 11:45:20'),
(267, 3, 21, 'Sumber Ayu Body Scrub Bengkoang', 'Sumber Ayu', 'Body Scrub', 'Kering', 'Dengan formula baru Extra Cleansing dan Extra Fragrance untuk wangi yang lebih tahan lama. Kandungan ekstrak bengkoang membantu mencerahkan dan menyamarkan noda hitam. Dilengkapi juga dengan kandungan vitamin C sebagai antioksidan untuk melindungi kulit. Butiran Eco Friendly Scrub yang ramah lingkungan juga membantu mengangkat kotoran dan sel kulit mati agar kulit terasa lebih halus.', 18000.00, '2024-03-04 11:46:09', '2024-03-04 11:46:09'),
(268, 3, 21, 'Sumber Ayu Body Scrub Bunga', 'Sumber Ayu', 'Body Scrub', 'Kering', 'Dengan formula baru Extra Cleansing dan Extra Fragrance untuk wangi yang lebih tahan lama. Kandungan ekstrak bunga mawarnya memiliki banyak manfaat untuk kulit tampak cerah dan segar. Dilengkapi dengan kandungan vitamin C sebagai antioksidan untuk melindungi kulit. Butiran Eco Friendly Scrub yang ramah lingkungan juga membantu mengangkat kotoran dan sel kulit mati agar kulit terasa lebih halus.', 18000.00, '2024-03-04 11:46:48', '2024-03-04 11:46:48'),
(269, 3, 21, 'Sumber Ayu Body Scrub Susu', 'Sumber Ayu', 'Body Scrub', 'Kering', 'Dengan formula baru Extra Cleansing da Extra Fragrance untuk wangi yang lebih tahan lama. Kandungan ekstrak susu membantu mencerahkan dan melembutkan kulit. Dilengkapi juga dengan kandungan vitamin C sebagai antioksidan untuk melindungi kulit.\r\nButiran Eco Friendly Scrub yang ramah lingkungan juga membantu mengangkat kotoran dan sel kulit mati agar kulit terasa lebih halus.', 18000.00, '2024-03-04 11:47:24', '2024-03-04 11:47:24'),
(270, 3, 21, 'Sumber Ayu Body Scrub Pepaya', 'Sumber Ayu', 'Body Scrub', 'Kering', 'Dengan formula baru Extra Cleansing dan Extra Fragrance untuk wangi yang lebih tahan lama. Kandungan ekstrak pepaya dan vitamin C berfungsi sebagai antioksidan unuk melindungi dan melembutkan kulit. Butiran Eco Friendly Scrub yang ramah lingkungan juga membantu mengangkat kotoran dan sel kulit mati agar kulit terasa lebih halus.', 18000.00, '2024-03-04 11:47:58', '2024-03-04 11:47:58'),
(271, 3, 21, 'Viva Lulur Mandi Avocado', 'Viva', 'Body Scrub', 'KEring', 'Lulur Mandi mengandung Avocado Oil untuk merawat kehalusan kulit. Diperkaya denganSqualane dan Moisturizer untuk menjaga kelembaban kulit. Dengan butiran scrub yang lembut untuk membantu mengangkat kotoran dan sel-sel kulit mati. Dapat digunakan pada tubuh dalam keadaan basah maupun kering.', 15000.00, '2024-03-04 11:49:00', '2024-03-04 11:49:00'),
(272, 3, 21, 'Viva Lulur Mandi Soybean', 'Viva', 'Body Scrub', 'Kering', 'Lulur Mandi Soybean Oil yang kaya protein dan nutrisi untuk merawat kulit kering. Diperkaya dengan Squalane dan Moisturizer untuk menjaga kelembaban kulit. Dengan butiran scrub yang lembut untuk membantu mengangkat kotoran dan sel-sel kulit mati. Dapat digunakan pada tubuh dalam keadaan basah maupun kering.', 15000.00, '2024-03-04 11:49:36', '2024-03-04 11:49:36'),
(273, 3, 21, 'Purbasari Lulur Mandi Susu & Bengkoang', 'Purbasari', 'Body Scrub', 'Kering', 'Mengandung Ekstrak Susu yang melembabkan dan menghaluskan kulit. Dikombinasikan dengan Ekstrak Bengkoang yang telah dipercaya dapat mencerahkan kulit. Scrubnya lembut, mengangkat kotoran dan sel kulit mati, menjadikan kulit tampak lebih cerah dan segar.', 18000.00, '2024-03-04 11:50:12', '2024-03-04 11:50:12'),
(274, 3, 17, 'Citra Sakura Glow UV', 'Citra', 'Body Lotion', 'Kering', 'Citra Sakura Glow UV. Kulit lebih dari cerah, namun juga merona. Diperkaya dengan 100% natural essence bunga Sakura Jepang yang kaya antioksidan dan peach yang melembabkan dan kaya vitamin C. Citra memberikan nutrisi dan kelembaban keseharian untuk kulitmu.', 22500.00, '2024-03-04 12:04:54', '2024-03-04 12:04:54'),
(275, 3, 17, 'Citra Pearly Glow UV', 'Citra', 'Body Lotion', 'Kering', 'Citra Pearly Glow UV Hand Body Lotion adalah losion pelembab tubuh yang mengandung formula natural essence mutiara Korea yang kaya dengan mineral mencerahkan pencerah alami dan mulberry yang kaya dengan vitamin C dan E. Membantu membuat kulit tampak lebih dari cerah, namun juga halus dan bening berkilau.', 22500.00, '2024-03-04 12:05:38', '2024-03-04 12:05:38'),
(276, 3, 17, 'Citra Fresh Glow UV Gel', 'Citra', 'Body Lotion', 'Kering', 'Citra Fresh Glow UV Gel. Kulit lebih dari cerah namun juga segar. Formula baru dengan 100% natural essence Fresh Aloe Vera yang kaya dengan multivitamin dan kebaikan wangi mawar, Citra memberikan nutrisi dan kelembaban yang tahan lama untukmu. Usapkan setiap hari dengan lembut ke seluruh tubuh.', 22500.00, '2024-03-04 12:06:15', '2024-03-04 12:06:15'),
(277, 3, 17, 'Citra Night Collagen Glow', 'Citra', 'Body Lotion', 'Normal', 'Citra Night Collagen Glow. Kulit lebih dari cerah, namun juga berenergi, dan halus. Diperkaya dengan 100% natural essence minyak biji anggur kaya dengan Vitamin E dan Yoghurt yang kaya akan AHA alami untuk kulit bercahaya alami dan menyejukan. Citra memberikan kelembaban yang menyejukan serta menutrisi kulitmu.', 25000.00, '2024-03-04 12:07:20', '2024-03-04 12:07:20'),
(278, 3, 17, 'Citra Bengkoang Natural Glow UV', 'Citra', 'Body Lotion', 'Normal', 'Citra Bengkoang Natural Glowing White UV merupakan hand & body lotion yang dapat membantu membuat kulit lebih cerah. Diformulasikan dengan 100% natural essence bengkoang dan Japanese green tea dan diperkaya dengan Vitamin C.', 20000.00, '2024-03-04 12:08:02', '2024-03-04 12:08:02'),
(279, 3, 17, 'Citra Nourishing Glow UV', 'Citra', 'Body Lotion', 'Kering', 'Citra Nourishing Glow UV. Kulit lebih dari cerah, namun juga ternutrisi. Diperkaya dengan 100% natural essence alpukat yang kaya pelembab alami dan madu murni yang menutrisi hingga ke bagian kulit yang paling kasar, bahkan siku dan lutut. Citra memberikan nutrisi yang penting untuk kulitmu serta kelembapan yang dalam.', 20000.00, '2024-03-04 12:08:51', '2024-03-04 12:08:51'),
(280, 3, 17, 'Shinzui Hana', 'Shinzui', 'Body Lotion', 'Kering', 'Shinzui Hana Body Lotion merupakan body lotion dengan kandungan sakura flower extract dan herba matsu oil yang dapat membantu melembabkan & mencerahkan kulit yang kusam, membantu mengubah pigmen melamin penyebab warna kulit gelap, dan membantu proses regenerasi sel kulit sehingga kulit tidak kusam.', 27000.00, '2024-03-04 12:09:42', '2024-03-04 12:09:42'),
(281, 3, 17, 'Shinzui Matsu', 'Shinzui', 'Body Lotion', 'Normal', 'Shinzui Matsu Body Lotion adalah salah satu produk pelembab kulit yang dapat merawat kulit Anda dari paparan sinar matahari. Shinzui Matsu Body Lotion mengandung Herba Matsu-Oil yang bisa membantu mengubah pigmen melamin penyabab warna kulit gelap, menjadi leuko-melamin yang lebih cerah.', 27000.00, '2024-03-04 12:10:17', '2024-03-04 12:10:17'),
(282, 3, 17, 'Herborist Skin Mosturizer Aloe Vera Gel', 'Herborist', 'Body Lotion', 'Normal', 'Herborist Skin Moisturizer Aloe Vera 98% 100ml Mengandung 98% Aloe Vera yang berfungsi melembapkan dan memberi sensasi sejuk. Mengandung Vit E yang berfungsi sebagai anti-oksidan alami dan menghaluskan kulit.', 31000.00, '2024-03-04 12:11:12', '2024-03-04 12:11:12'),
(283, 3, 17, 'Marina Natural Rich Moisturizing Avocado & Olive Oil', 'Marina', 'Body Lotion', 'Normal', 'Lotion dengan nutrisi aktif ganda yang dapat merawat kulit tetap sehat. Hand & Body Lotion dengan kandungan Natural Complex dari Avocado, Olive Oil dan Vitamin E. Dilengkapi dengan 24H Moisturizing yang menjaga kelembapan alami kulit hingga lapisan terdalam selama 24 jam.', 19000.00, '2024-03-04 12:12:03', '2024-03-04 12:12:03'),
(284, 3, 17, 'Marina Natural Smooth and Glow Honey & Macadamia', 'Marina', 'Body Lotion', 'Normal', 'Hand & Body Lotion dengan kandungan Natural Complex dari Pure Honey (Madu Murni) dan Vitamin E, serta dilengkapi dengan 24H Moisturizing yang menjaga kelembapan alami kulit hingga lapisan terdalam selama 24 jam.', 19000.00, '2024-03-04 12:12:55', '2024-03-04 12:12:55'),
(285, 3, 17, 'Marina Natural Nourished and Healthy Sweet Almond & Chia Seed', 'Marina', 'Body Lotion', 'Kering', 'Marina Natural Nourish & Healthy Hand & Body Lotion merupakan body lotion dengan kandungan nutrient complex dari almond dan vitamin E yang diformulasikan untuk menutrisi dan menjaga kelembaban alami kulit.  Dengan formula khusus 24h* Moisturizing yang menutrisi dan menjaga kelembaban alami kulit hingga lapisan terdalam selama 24 jam.', 19000.00, '2024-03-04 12:15:35', '2024-03-04 12:15:35'),
(286, 3, 17, 'Marina Natural Healty and Glow Milk Protein & Pearl Nutrients', 'Marina', 'Body Lotion', 'Kombinasi', 'Hand & body lotion dengan 3X Active White yaitu Biowhitening Complex paduan Milk Protein, Pearl Nutrient, Vitamin B3 & E yang teruji klinis membuat kulit tampak cerah merata, Mineral Essence yang memancarkan cahaya kulit dan Triple UV Protection yang melindungi kulit dari UVA & UVB. Teruji klinis oleh Dermatologist. Cocok untuk semua jenis kulit.', 19000.00, '2024-03-04 12:16:45', '2024-03-04 12:16:45'),
(287, 3, 17, 'Marina Natural Nourish and Bright Bulgarian Rose & Acelora Cherry', 'Marina', 'Body Lotion', 'Kombinasi', 'Hand & body lotion dengan formula 170X VIT.C Acerola Cherry, untuk kulit tampak lebih cerah merata dan ternutrisi alami. Paduan 3 zat aktif Biowhitening Complex yaitu Acerola Cherry, Bulgarian Rose, dan Niacinamide sebagai bahan pencerah alami dan vitamin. Dilengkapi dengan Triple UV Protection yang melindungi kulit dari paparan sinar UVA & UVB. Teruji Klinis oleh Dermatologist.\r\n\r\nMembantu kulit tampak lebih cerah merata, Kaya akan Vitamin & Antioxidant sebagai nutrisi alami kulit, Nutrisi Pencerah kulit, Melindungi kulit dari paparan sinar UVA & UVB. Cocok untuk semua jenis kulit.', 19000.00, '2024-03-04 12:18:36', '2024-03-04 12:18:36'),
(288, 3, 17, 'Aulia Body Lotion - Calming', 'Aulia', 'Body Lotion', 'Kering', 'Aulia Perfume Body Lotion diperkaya dengan whitening dan Vitamin E dan aroma kesegaran parfum disetiap varian nya, membuat kulit terasa lebih lembut dan tampak lebih cerah alami, serta membantu menjaga keremajaan dan kelembaban kulit. Varian calming: awali harimu dengan sensasi wangi menenangkan dan rasakan kelembutan kulitmu sepanjang hari.', 20000.00, '2024-03-04 12:19:39', '2024-03-04 12:19:39'),
(289, 3, 17, 'Aulia Body Lotion - Bengkoang', 'Aulia', 'Body Lotion', 'Kering', 'Aulia Perfume Body Lotion diperkaya dengan whitening dan Vitamin E dan aroma kesegaran parfum disetiap varian nya, membuat kulit terasa lebih lembut dan tampak lebih cerah alami, serta membantu menjaga keremajaan dan kelembaban kulit. Varian bengkoang: mengandung ekstra bengkoang yang telah lama dipercaya membantu mencerahkan kulit', 20000.00, '2024-03-04 12:20:21', '2024-03-04 12:20:21'),
(290, 3, 17, 'Aulia Body Lotion - Lovely', 'Aulia', 'Body Lotion', 'Kering', 'Aulia Perfume Body Lotion diperkaya dengan whitening dan Vitamin E dan aroma kesegaran parfum disetiap varian nya, membuat kulit terasa lebih lembut dan tampak lebih cerah alami, serta membantu menjaga keremajaan dan kelembaban kulit. Varian lovely: keharumannya membantumu tampil lebih percaya diri dan menawan sepnjang harimu', 20000.00, '2024-03-04 12:21:25', '2024-03-04 12:21:25'),
(291, 3, 17, 'Aulia Body Lotion - Goat Milk', 'Aulia', 'Body Lotion', 'Kering', 'Aulia Perfume Body Lotion diperkaya dengan whitening dan Vitamin E dan aroma kesegaran parfum disetiap varian nya, membuat kulit terasa lebih lembut dan tampak lebih cerah alami, serta membantu menjaga keremajaan dan kelembaban kulit. Varian goatmilk: diperkaya dengan ekstra susu kambing yang membantu merawat kelembutan dan kehalusan kulit', 20000.00, '2024-03-04 12:22:07', '2024-03-04 12:22:07'),
(292, 3, 17, 'Aulia Body Lotion - Musky', 'Aulia', 'Body Lotion', 'Kering', 'Aulia Perfume Body Lotion diperkaya dengan whitening dan Vitamin E dan aroma kesegaran parfum disetiap varian nya, membuat kulit terasa lebih lembut dan tampak lebih cerah alami, serta membantu menjaga keremajaan dan kelembaban kulit. Varian musky: rasakan sensasi keharuman yang menggugah disetiap sentuhan', 20000.00, '2024-03-04 12:22:50', '2024-03-04 12:22:50'),
(293, 3, 17, 'Aulia Body Lotion - Milky', 'Aulia', 'Body Lotion', 'Kering', 'Aulia Perfume Body Lotion diperkaya dengan whitening dan Vitamin E dan aroma kesegaran parfum disetiap varian nya, membuat kulit terasa lebih lembut dan tampak lebih cerah alami, serta membantu menjaga keremajaan dan kelembaban kulit. Varian milky: mengandung ekstra susu yang menutrisi kulit dan membantu menjaga agar tetap lembut dan halus', 20000.00, '2024-03-04 12:23:23', '2024-03-04 12:23:23'),
(294, 3, 17, 'Vaseline Aloe Soothe', 'Vaseline', 'Body Lotion', 'Kering', 'Vaseline Intensive Care Aloe Soothe dengan pure aloe extract diperkaya formula yang menyegarkan, cepat meresap, dan tidak lengket. Hasilnya adalah lotion yang mengurangi ketidaknyamanan akibat kulit kering dan iritasi, dan membuat kulit terasa lembab dari dalam dan tetap sehat.', 29000.00, '2024-03-04 12:24:11', '2024-03-04 12:24:11'),
(295, 3, 17, 'Victoria Fragrance Body Serum - Sweet Fruity', 'Victoria', 'Body Lotion', 'Kering', '1. Double Brightening Power\r\nKandungan Niacinamide + Vitamin C\r\n2x lebih efektif mencerahkan & meratakan warna kulit\r\n\r\n2. Extra Hydrating Power\r\nKombinasi active ingredients 8 jenis Hyaluronate meningkatkan hidrasi & kelembapan kulit lebih maksimal\r\n\r\n3. UVA + UVB Protection\r\nMelindungi dari potensi kerusakan kulit seperti kusam, bintik hitam, penuaan dini akibat paparan sinar matahari\r\n\r\n4. Sweet Fruit Fragrance\r\nTerinspirasi dari keharuman mewah BBW in the Stars.\r\nWanginya dapat bertahan lebih dari 8 jam di kulit', 29000.00, '2024-03-04 12:24:50', '2024-03-04 12:24:50'),
(296, 3, 17, 'Victoria Fragrance Body Serum - Elegant Woody', 'Victoria', 'Body Lotion', 'Kering', '1. Double Brightening Power\r\nKandungan Niacinamide + Vitamin C\r\n2x lebih efektif mencerahkan & meratakan warna kulit\r\n\r\n2. Extra Hydrating Power\r\nKombinasi active ingredients 8 jenis Hyaluronate meningkatkan hidrasi & kelembapan kulit lebih maksimal\r\n\r\n3. UVA + UVB Protection\r\nMelindungi dari potensi kerusakan kulit seperti kusam, bintik hitam, penuaan dini akibat paparan sinar matahari\r\n\r\n4. Elegant Woody Fragrance\r\nTerinspirasi dari keharuman mewah Baccarat Rouge 540\r\nWanginya dapat bertahan lebih dari 8 jam di kulit', 29000.00, '2024-03-04 12:26:16', '2024-03-04 12:26:16'),
(297, 3, 17, 'Victoria Fragrance Body Serum - Romantic Floral', 'Victoria', 'Body Lotion', 'Kering', '1. Double Brightening Power\r\nKandungan Niacinamide + Vitamin C\r\n2x lebih efektif mencerahkan & meratakan warna kulit\r\n\r\n2. Extra Hydrating Power\r\nKombinasi active ingredients 8 jenis Hyaluronate meningkatkan hidrasi & kelembapan kulit lebih maksimal\r\n\r\n3. UVA + UVB Protection\r\nMelindungi dari potensi kerusakan kulit seperti kusam, bintik hitam, penuaan dini akibat paparan sinar matahari\r\n\r\n4.Romantic Floral Fragrance\r\nTerinspirasi dari keharuman mewah Miss Dior Perfume\r\nWanginya dapat bertahan lebih dari 8 jam di kulit', 29000.00, '2024-03-04 12:28:22', '2024-03-04 12:28:22'),
(298, 3, 17, 'Victoria Fragrance Body Serum - Favorable Fresh', 'Victoria', 'Body Lotion', 'Kering', '1. Double Brightening Power\r\nKandungan Niacinamide + Vitamin C\r\n2x lebih efektif mencerahkan & meratakan warna kulit\r\n\r\n2. Extra Hydrating Power\r\nKombinasi active ingredients 8 jenis Hyaluronate meningkatkan hidrasi & kelembapan kulit lebih maksimal\r\n\r\n3. UVA + UVB Protection\r\nMelindungi dari potensi kerusakan kulit seperti kusam, bintik hitam, penuaan dini akibat paparan sinar matahari\r\n\r\n4.Favorable Fresh Fragrance\r\nTerinspirasi dari keharuman mewah Jo Malone Pear & Freesia\r\nWanginya dapat bertahan lebih dari 8 jam di kulit', 29000.00, '2024-03-04 12:29:50', '2024-03-04 12:29:50'),
(299, 3, 17, 'Nature-E Moisturizing with Pomegranate Seed Oil & Vitamin E Beads', 'Nature-E', 'Body Lotion', 'Kering', 'Natur-E Skin Start Moistrurizing Hand Body Lotion hadir dengan manfaat:\r\n\r\n- Memberikan perawatan kulit dari luar\r\n\r\n- Menjaga kelembapan lebih lama\r\n\r\n- Dilengkapi juga dengan tabir surya yang efektif melindungi kulit dari efek buruk sinar matahari.\r\n\r\n\r\nNatur-E Skin Start Moistrurizing Hand Body Lotion memberikan perawatan kulit dari luar dengan butiran E-beads yang dapat meresap sempurna hingga ke lapisan kulit yang lebih dalam untuk menjaga kelembapan lebih lama. Dilengkapi juga dengan tabir surya yang efektif melindungi kulit dari efek buruk sinar matahari', 23000.00, '2024-03-04 12:30:48', '2024-03-04 12:30:48'),
(300, 3, 17, 'Nature-E Protect & Glow with Pink Pomelo Extract & Vitamin E Beads', 'Nature-E', 'Body Lotion', 'Kering', 'Natur e Hand & Body Lotion Revitalizing memberikan perawatan dari luar dengan kandungan ekstrak pink pomelo yang efektif mengembalikan warna cerah merata pada kulit yang sering terpapar radikal bebas. Dilengkapi dengan butiran e-beads untuk kelembapan yang lebih lama dan tabir surya untuk melindungi kulit dari efek buruk sinar matahari.\r\n\r\nBody lotion ini juga melembapkan dan mengembalikan warna kulit jadi cerah merata serta melindungi kulit dari sinar UVA dan UVB tanpa menimbulkan rasa lengket di kulit.', 27000.00, '2024-03-04 12:31:50', '2024-03-04 12:31:50'),
(301, 3, 17, 'Marina UV White E Collagen Asta', 'Marina', 'Body Lotion', 'Normal', 'Marina E Collagen Asta Hand & Body Lotion\r\n\r\ndengan Biowhitening Complex paduan Vitamin B3 & E, Collagen, serta Red Algae sebagai sumber Astaxanthin, yaitu antioksidan yang 6000x lebih efektif dari Vitamin C, menjadikan kulit tampak putih cerah merata dan kenyal. Dilengkapi butiran Vitamin E yang menutrisi kulit dan Triple UV Protection yang melindungi kulit dari UVA & UVB. Teruji klinis oleh Dermatologist.\r\n\r\nKandungan:\r\nVit. E Beads Astaxanthin Collagen Triple UV Protection', 19000.00, '2024-03-04 12:34:03', '2024-03-04 12:34:03'),
(302, 3, 17, 'Marina Natural Nutri Serum', 'Marina', 'Body Lotion', 'Kering', 'Serum Multivitamin Untuk Melindungi, Merawat dan Menutrisi Kulit Sehat.\r\nDengan formula SUPERFOOD ANTIOXIDANT yang dilengkapi nutrisi 3X ADVANCED VITAMIN + NATURAL ANTIBACTERIAL\r\n\r\nPanduan Multivitamin dan Natural Nutri Active Benefit, bahan alami yang mengandung antioxidant tinggi.\r\n\r\nVitamin C & Pro-Vitamin D3\r\nVitamin aktif untuk melindungi dan menutrisi kulit.\r\n\r\nVitamin E Beads\r\nSebagai sumber Antioksidan membantu melindungi kulit dari kerusakan sel akibat radikal bebas seperti asap dan polusi\r\n\r\nOat\r\nSebagai superfood antioxidant yang dapat membantu merawat kulit dari kerusakan dan menjaga kelembaban alami kulit\r\n\r\nTea Tree Oil\r\nSebagai Natural Antibacterial, terbukti memberikan perlindungan terhadap kulit dan bakteri.\r\n\r\nFormula khusus Nutri Serum dengan kekuatan 3X Advanced Vitamin dan Natural Antibacterial yang melindungi kulit dari bakteri serta menutrisi aktif dan merawat kulit', 27000.00, '2024-03-04 12:34:42', '2024-03-04 12:34:42'),
(303, 3, 17, 'Marina Natural Protects & Cares', 'Marina', 'Body Lotion', 'Normal', 'Aktif sepanjang hari di luar ruangan gak perlu takut kulit jadi rusak. Kandungan Apple, Hibiscus, dan Vitamin E-nya mampu melindungi kulit dari pengaruh buruk lingkungan serta dilengkapi Sunscreen yang melindungi kulit dari paparan sinar matahari dan memberikan kelembaban ekstra selama 24 jam', 27000.00, '2024-03-04 12:35:26', '2024-03-04 12:35:26'),
(304, 3, 17, 'Marina Healthy Booster Bright Serum', 'Marina', 'Body Lotion', 'Normal', 'Healthy Booster Bright Serum edisi special yang diformulasikan khusus dengan 3X Antioxidant dari  Vit. C, PRO-VIT. D3 dan Mineral Zinc dengan Triple Skin Protection sebagai Skin Brightening, Skin Energy, Skin Immunity dengan varian Maqui-Antioxi yang mengandung Maqui Berry: 600% Antioxidant dari Blueberry.\r\n\r\nDiformulasikan khusus dengan 3X Antioxidant dari Vit.C, PRO-VIT, D3 dan Mineral Zinc dengan Triple Skin Protection sebagai Nourish Glowing Skin, Skin Energy, Skin Immunity dengan Maqui Berry 600% Antioxidant dari Blueberry.\r\n\r\nIngredients : Maqui, Vit C, Pro - Vit, D3, Zinc, UV Protection', 27000.00, '2024-03-04 12:36:21', '2024-03-04 12:36:21'),
(305, 3, 17, 'Lovely White UV Smooth & Bright - Jeju Orange', 'Lovely', 'Body Lotion', 'Normal', 'Emeron Lovely White UV Smooth & Bright Jeju Orange\r\n- Diproses dengan teknologi Jepang sehingga dapat menjaga kulit tetap sehat dan terlihat lebih putih\r\n- Dengan UVA/UVB Protection melindungi kulit dari paparan sinar matahari agar kulit tampak cerah alami\r\n- Mengandung Vitamin B3 dan Vitamin C', 13000.00, '2024-03-04 12:37:12', '2024-03-04 12:37:12'),
(306, 3, 17, 'Lovely Naturals - Nourishing', 'Lovely', 'Body Lotion', 'Kering', 'Emeron Lovely Naturals dengan ekstrak Bunga Sakura dan Vit E + B5 mengembalikan kelembaban dan menjaga kulit tetap sehat ternutrisi. Formula Khusus dari teknologi Lion Jepang, lotion cepat meresap ke dalam kulit dan melembabkan selama 48 jam. Double UV Protection melindungi kulit dari efek buruk sinar matahari. Dilengkapi denga perfume yan segar dan tahan lama seharian. Teruji klinis melembabkan kulit hingga 48 jam', 13000.00, '2024-03-04 12:37:47', '2024-03-04 12:37:47'),
(307, 3, 17, 'Lovely Naturals - Intense Moisturizing', 'Lovely', 'Body Lotion', 'Normal', 'Emeron Lovely Naturals dengan kandungan Manuka Honey & Avocado Oil mengandung antioxidan tinggi, sangat baik untuk menghidrasi kulit yang sangat kering agar tetap lembap & tampak sehat. Vit E + B5 menjaga kulit lebih halus dan lembut. Formula Khusus dari teknologi Lion Jepang, lotion cepat meresap ke dalam kulit dan melembapkan selama 48 jam.\r\n\r\n Double UV Protection melindungi kulit dari efek buruk sinar matahari. Dilengkapi dengan perfume yang segar dan tahan lama seharian.', 13000.00, '2024-03-04 12:38:34', '2024-03-04 12:38:34'),
(308, 3, 17, 'Lovely Naturals - Deep Caring', 'Lovely', 'Body Lotion', 'Kering', 'Emeron Lovely Naturals dengan ekstrak Green Tea dan Vit E + B5 sangat baik untuk merawat dan mempertahankan elastisitas kulit. Formula Khusus dari teknologi Lion Jepang, lotion cepat meresap ke dalam kulit dan melembapkan selama 48 jam. Double UV Protection melindungi kulit dari efek buruk sinar matahari. Dilengkapi denga perfume yan segar dan tahan lama seharian. Teruji klinis melembabkan kulit hingga 48 jam', 13000.00, '2024-03-04 12:39:30', '2024-03-04 12:39:30');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `name`, `brand`, `type`, `skin_type`, `description`, `price`, `created_at`, `updated_at`) VALUES
(309, 3, 17, 'Nivea Extra White - Instant Glow', 'Nivea', 'Body Lotion', 'Kering', 'Dapat mencerahkan dalam satu kali pemakaian, sekaligus melindungi dari matahari, melembabkan dan menghaluskan. Diformulasi untuk memberi kelembaban ekstra pada kulit Anda menjadikan kulit Anda kembali sehat, halus dan lembut\r\nDengan formula khusus hand body ini menutrisi dan menjaga kelembaban alami kulit hingga lapisan terdalam selama 24 jam', 28000.00, '2024-03-04 12:40:13', '2024-03-04 12:40:13'),
(310, 3, 17, 'Nivea Extra White - Firm & Smooth', 'Nivea', 'Body Lotion', 'Normal', '- Melembabkan kulit tubuh dan mencerahkan kulit secara merata\r\n- Tidak lengket dan cepat meresap ke dalam kulit\r\n- Memberikan perlindungan optimal bagi kulit dari sinar UVA dan UVB dengan kandungan SPF 15\r\n- Terbukti aman untuk kulit tubuh dan teruji secara dermatologi', 28000.00, '2024-03-04 12:40:59', '2024-03-04 12:40:59'),
(311, 3, 17, 'Nivea Intensive Moisture', 'Nivea', 'Body Lotion', 'Normal', '- Terbuat dari bahan Grape Seed & Avocado Oil, serta terdapat kandungan Vitamin E yang tinggi\r\n- Dapat merawat secara intensif kulit Anda selam 24 jam\r\n- Memiliki tekstur yang lembut dan creamy\r\n- Nyaman dan tidak lengket saat Anda aplikasikan pada kulit Anda\r\n- Memiliki teknologi Hydra IQ yang membantu pembentukan saluran hidrasi alami kulit', 28000.00, '2024-03-04 12:41:36', '2024-03-04 12:41:36'),
(312, 3, 17, 'Lovely White UV Nourish & Bright - Bengkoang', 'Lovely', 'Body Lotion', 'Kombinasi', 'Emeron Lovely White UV mengandung Vitacinamide Advance yang memiliki antioksidan 100x lebih banyak dari vitamin C buah jeruk biasa, sehingga dapat membuat kulit tampak lebih cerah mulai dari 2 minggu. Ekstrak Bengkoang kaya akan kandungan vitamin dan mineral telah lama dipercaya wanita Indonesia untuk membuat kulit tampak leih cerah dan tetap sehat. UV A/ UV B Protection melindungi kulit dari paparan sinar matahari yang dapat kulit menjadi kusam. Long Lasting Perfume mempertahankan wangi segar di kulit selama beraktivitas.', 13000.00, '2024-03-04 12:43:57', '2024-03-04 12:43:57'),
(313, 3, 17, 'Lovely White UV Glow & Bright - Red Pomegranate', 'Lovely', 'Body Lotion', 'Kombinasi', 'Emeron Lovely dengan formula whitening Vitacinamide (Vit B3 dan Vit C) dan bahan-bahan alami terpilih , untuk kulitmu lebih cerah alami , lembab dan sehat. Formulanya juga telah disempurnakan dengan UV Protection untuk menangkal efek buruk dari sinar matahari, jadi sangat cocok untuk dipakai sehari-hari.', 13000.00, '2024-03-04 12:44:26', '2024-03-04 12:44:26'),
(314, 3, 18, 'Shinzui Glow Spa Ichigo', 'Shinzui', 'Exfoliating Gel', 'Kombinasi', 'Gel eksfoliasi dengan ichigo strawberry membantu mengangkat sel kulit mati dan mengencangkan kulit agar lebih halus dan glowing. Kandungan AHA dapat membantu mengangkat sel kulit mati sehingga tampak glowing. Kandungan collagennya dapat melembapkan dan membantu meningkatkan elastisitas kulit. Ada juga herba matsu oil yang dapat membantu mencerahkan dan menutrisi kulit\r\nGel eksfoliasi dengan shooting cica membantu mengangkat sel kulit mati dan mengencangkan kulit agar lebih halus dan glowing. Hadir dengan kandungan AHA yang dapat membantu mengangkat sel kulit mati sehingga tampak glowing. Ada juga kandungan collagen yang dapat melembapkan dan membantu meningkatkan elastisitas kulit. Kandungan Herba Matsu Oilnya dapat  membantu mencerahkan dan menutrisi kulit', 16000.00, '2024-03-04 12:45:50', '2024-03-04 12:45:50'),
(315, 3, 18, 'Shinzui Glow Spa Cica', 'Shinzui', 'Exfoliating Gel', 'Kombinasi', 'Gel eksfoliasi dengan shooting cica membantu mengangkat sel kulit mati dan mengencangkan kulit agar lebih halus dan glowing.\r\n\r\n\r\nKandungan :\r\n\r\nAHA, membantu mengangkat sel kulit mati sehingga tampak glowing\r\n\r\nCOLLAGEN, melembapkan dan membantu meningkatkan elastisitas kulit\r\n\r\nHERBA MATSU OIL, membantu mencerahkan dan menutrisi kulit', 16000.00, '2024-03-04 12:46:20', '2024-03-04 12:46:20'),
(316, 3, 18, 'Shinzui Glow Spa Honey', 'Shinzui', 'Exfoliating Gel', 'Kombinasi', 'Gel eksfoliasi dengan hydrating honey membantu mengangkat sel kulit mati dan mengencangkan kulit agar lebih halus dan glowing.\r\n\r\nKandungan :\r\n\r\nAHA, membantu mengangkat sel kulit mati sehingga tampak glowing\r\n\r\nCOLLAGEN, melembapkan dan membantu meningkatkan elastisitas kulit\r\n\r\nHERBA MATSU OIL, membantu mencerahkan dan menutrisi kulit', 16000.00, '2024-03-04 12:47:06', '2024-03-04 12:47:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(4, 4, '/storage/images/VuJkiwwlVIMbDNnFDbQ2LKgQM.jpg', '2024-03-02 22:43:34', '2024-03-02 22:43:34'),
(5, 5, '/storage/images/ffbDqpIq2msTszAhQNt3Rwqlp.jpg', '2024-03-02 22:49:09', '2024-03-02 22:49:09'),
(6, 6, '/storage/images/Wg79b0zmWoaUlhcIxxt7HzQhP.jpg', '2024-03-02 22:49:52', '2024-03-02 22:49:52'),
(7, 7, '/storage/images/T7MuwICdeu1vfLGnRuq2YeGsA.jpg', '2024-03-02 22:50:42', '2024-03-02 22:50:42'),
(8, 8, '/storage/images/EAR08YLjmW.jpg', '2024-03-02 22:51:27', '2024-03-02 22:51:27'),
(9, 9, '/storage/images/XUSpv3klwHitPApJgruRAFsfD.jpg', '2024-03-02 22:52:22', '2024-03-02 22:52:22'),
(10, 10, '/storage/images/9zoT6rKs7Am5qXd399VpskqSu.png', '2024-03-02 22:52:52', '2024-03-02 22:52:52'),
(11, 11, '/storage/images/rbUdwdC7bM7wogqzohi9Wvo9f.jpg', '2024-03-02 22:54:58', '2024-03-02 22:54:58'),
(12, 12, '/storage/images/lTMH92RtxK8X6kWU1w7NgViwZ.png', '2024-03-02 22:55:37', '2024-03-02 22:55:37'),
(13, 13, '/storage/images/aq8GNylw6yzqzn5DEhN3H1GJZ.jpg', '2024-03-02 22:56:23', '2024-03-02 22:56:23'),
(14, 14, '/storage/images/oMi8eKh97rUgWMkB0SuOYov3H.jpg', '2024-03-02 22:56:56', '2024-03-02 22:56:56'),
(15, 15, '/storage/images/O4Zw27LRu4bWrlF63Dv8tUBVS.jpg', '2024-03-02 22:57:27', '2024-03-02 22:57:27'),
(16, 16, '/storage/images/UA6n1jxWbvWHpcKkzm1bFQnmR.jpg', '2024-03-02 22:58:09', '2024-03-02 22:58:09'),
(17, 17, '/storage/images/wclc0glCYSNdJCq2ceSplpHAE.jpg', '2024-03-02 22:58:48', '2024-03-02 22:58:48'),
(18, 18, '/storage/images/eCKTvclSkZvVVJbDYkXHl5Lje.jpg', '2024-03-02 22:59:25', '2024-03-02 22:59:25'),
(19, 19, '/storage/images/JdOrsGG6uFug4XHVpMHcM08xK.jpg', '2024-03-02 23:00:10', '2024-03-02 23:00:10'),
(20, 20, '/storage/images/hTWFNJUhEP4r1maUYlyOCKrpr.jpg', '2024-03-02 23:00:47', '2024-03-02 23:00:47'),
(21, 21, '/storage/images/OncasZ4GhTsUXXZHbJzimgPLB.jpg', '2024-03-02 23:01:38', '2024-03-02 23:01:38'),
(22, 22, '/storage/images/4M4f4qkLKipsr2467nYyltc5S.jpg', '2024-03-02 23:02:24', '2024-03-02 23:02:24'),
(23, 23, '/storage/images/JVW44H02DAmf2lLRNcBC0pdY0.jpg', '2024-03-02 23:02:52', '2024-03-02 23:02:52'),
(24, 24, '/storage/images/BFKoy8JEb0M3Cjqg3Zt85PVFn.jpg', '2024-03-02 23:03:29', '2024-03-02 23:03:29'),
(25, 25, '/storage/images/eQ5Fx9lZNSgjwELQw4doIsSs0.jpg', '2024-03-02 23:06:10', '2024-03-02 23:06:10'),
(26, 26, '/storage/images/G6yhaum73oI7hlf8FUzciV1e4.jpg', '2024-03-02 23:06:43', '2024-03-02 23:06:43'),
(27, 27, '/storage/images/oUdl4i1ezlrmM0hLldUWYjsBH.jpg', '2024-03-02 23:07:25', '2024-03-02 23:07:25'),
(28, 28, '/storage/images/3wJuEmglRVXX0yIaTNYRvFxzb.jpg', '2024-03-02 23:08:06', '2024-03-02 23:08:06'),
(29, 29, '/storage/images/taOcxYpeajoW4Bqjj9quUXqRw.jpg', '2024-03-02 23:08:44', '2024-03-02 23:08:44'),
(30, 30, '/storage/images/WLxFAXdKQRhSscXqJpnCmwljD.jpg', '2024-03-02 23:09:17', '2024-03-02 23:09:17'),
(31, 31, '/storage/images/G4t7x9Txb6cLPFR4Qx3cw8xzn.jpg', '2024-03-02 23:09:51', '2024-03-02 23:09:51'),
(32, 32, '/storage/images/WFq0D3MW136bfGLLcyovbwhUV.jpg', '2024-03-02 23:11:08', '2024-03-02 23:11:08'),
(33, 33, '/storage/images/2NK5s4M52mZoXSM4qUObihHWF.jpg', '2024-03-02 23:11:39', '2024-03-02 23:11:39'),
(34, 34, '/storage/images/ofhQD1EqCEry0Lu32aE4sytYn.jpg', '2024-03-02 23:12:08', '2024-03-02 23:12:08'),
(35, 35, '/storage/images/4je1kMuzcUkf3LObP1CPiGBEs.jpg', '2024-03-02 23:12:41', '2024-03-02 23:12:41'),
(36, 36, '/storage/images/0SF9CObUoHGxdqsGxSOO9AWDy.jpg', '2024-03-02 23:13:14', '2024-03-02 23:13:14'),
(37, 37, '/storage/images/fuPCAHEsOIrUedcnHnfiyDcCw.png', '2024-03-02 23:13:53', '2024-03-02 23:13:53'),
(38, 38, '/storage/images/xeqDQEUtMypkydZOnyNkWKYeO.jpg', '2024-03-02 23:14:23', '2024-03-02 23:14:23'),
(39, 39, '/storage/images/5HEi5XEE62NDYSXtZ4khKl0tS.jpg', '2024-03-02 23:18:49', '2024-03-02 23:18:49'),
(40, 40, '/storage/images/KvAVURc2wY0HmtvKgGAPyCADO.jpeg', '2024-03-02 23:19:29', '2024-03-02 23:19:29'),
(41, 41, '/storage/images/dwSYXd5xt98jGDFuGrvQeaU8L.jpeg', '2024-03-02 23:20:17', '2024-03-02 23:20:17'),
(42, 42, '/storage/images/hoDmtWVrPb4ZvcK2P6UktdgPB.jpeg', '2024-03-02 23:22:17', '2024-03-02 23:22:17'),
(43, 43, '/storage/images/7l8vJorJriyTDGyib1r3iU6qL.jpeg', '2024-03-02 23:27:53', '2024-03-02 23:27:53'),
(44, 44, '/storage/images/YsgzQJIEgcLssnkGPCK2lj6kd.jpeg', '2024-03-02 23:28:28', '2024-03-02 23:28:28'),
(45, 45, '/storage/images/6HBVeZ2FKup2OqNMJpi8JqGss.jpeg', '2024-03-02 23:29:04', '2024-03-02 23:29:04'),
(46, 46, '/storage/images/xrfV8fHgxgbOtEAnmw5AyhWVI.jpeg', '2024-03-02 23:41:22', '2024-03-02 23:41:22'),
(47, 47, '/storage/images/dELnZEWP542Ji7hQNZz6J7eQr.jpeg', '2024-03-02 23:42:00', '2024-03-02 23:42:00'),
(48, 48, '/storage/images/f1rhdPTEWMK4MMiY8e4yCX70E.jpg', '2024-03-02 23:42:35', '2024-03-02 23:42:35'),
(49, 49, '/storage/images/Fb6sB4WN2encGWG9aUic7o1y2.jpeg', '2024-03-02 23:43:21', '2024-03-02 23:43:21'),
(50, 50, '/storage/images/k3laWmjrKnJSQyuzeqLExbqXo.jpeg', '2024-03-02 23:44:09', '2024-03-02 23:44:09'),
(51, 51, '/storage/images/RKX6lNbOpNBeEjXnjwQWYcLdk.jpeg', '2024-03-02 23:44:41', '2024-03-02 23:44:41'),
(52, 52, '/storage/images/C6TqovVxOEJ0QYKXtihvTX3nO.jpeg', '2024-03-02 23:45:16', '2024-03-02 23:45:16'),
(53, 53, '/storage/images/PV9sC4PXx68MzCxjvI0XJlVU9.jpeg', '2024-03-02 23:45:49', '2024-03-02 23:45:49'),
(54, 54, '/storage/images/ICszm7yq2oITqVh6AUNHJqeZO.jpeg', '2024-03-02 23:46:30', '2024-03-02 23:46:30'),
(55, 55, '/storage/images/bcJxyQFMopu0EdinQjig5zVhP.jpeg', '2024-03-02 23:47:13', '2024-03-02 23:47:13'),
(56, 56, '/storage/images/K7TdhMP8aGGAPGglcVhmF3m7G.jpeg', '2024-03-02 23:47:46', '2024-03-02 23:47:46'),
(57, 57, '/storage/images/u1MCUby8mroycLyVA8FQKhAbw.jpeg', '2024-03-02 23:48:21', '2024-03-02 23:48:21'),
(58, 58, '/storage/images/5sqQGBLqBwl8ZOe67N45YEXry.jpeg', '2024-03-02 23:49:06', '2024-03-02 23:49:06'),
(59, 59, '/storage/images/fKUPhXEURK0EcXJEInKKCAeoV.jpeg', '2024-03-03 00:38:07', '2024-03-03 00:38:07'),
(60, 60, '/storage/images/LtW3r8zNQq7Y4JRgqvjfibvT0.jpeg', '2024-03-03 00:38:35', '2024-03-03 00:38:35'),
(61, 61, '/storage/images/iaGHD29DwgOOwLyNCy23ej9wx.jpeg', '2024-03-03 00:39:31', '2024-03-03 00:39:31'),
(62, 62, '/storage/images/APdASnzgYLIT4YQv4PlEpUEDd.jpeg', '2024-03-03 00:40:25', '2024-03-03 00:40:25'),
(63, 63, '/storage/images/myjv5XS8eynbUA270P3iigMF0.jpeg', '2024-03-03 00:40:54', '2024-03-03 00:40:54'),
(64, 64, '/storage/images/DbcF5gdxuHxBKMH1BaIVUhFEs.jpeg', '2024-03-03 00:41:52', '2024-03-03 00:41:52'),
(65, 65, '/storage/images/XSehugM4DJZQhri5kCku9l98u.png', '2024-03-03 00:42:25', '2024-03-03 00:42:25'),
(66, 66, '/storage/images/02VVzIfF9UQa0ST3P8OoPHU8G.jpeg', '2024-03-03 00:43:03', '2024-03-03 00:43:03'),
(67, 67, '/storage/images/jFTN2JCtOd8LVKiJXxE0Vk7hc.jpeg', '2024-03-03 00:43:35', '2024-03-03 00:43:35'),
(68, 68, '/storage/images/kZ8WfYXz3UdSpFOU9o3RwpBAh.jpeg', '2024-03-03 00:44:04', '2024-03-03 00:44:04'),
(69, 69, '/storage/images/JTHILTphaQat5NOKxDD2IThX5.jpeg', '2024-03-03 00:46:00', '2024-03-03 00:46:00'),
(70, 70, '/storage/images/XQKUSCDjV1u6oiDrk32z0yfzS.jpeg', '2024-03-03 00:46:46', '2024-03-03 00:46:46'),
(71, 71, '/storage/images/roFiFqKJhVRX01VfMbgPAoY8A.jpeg', '2024-03-03 00:47:27', '2024-03-03 00:47:27'),
(72, 72, '/storage/images/WeuxEgFkHJU670as5NPKPvNvh.jpeg', '2024-03-03 00:48:00', '2024-03-03 00:48:00'),
(73, 73, '/storage/images/xDuZlqXsyMk10itMU1jkkJ0GI.jpeg', '2024-03-03 00:48:37', '2024-03-03 00:48:37'),
(74, 74, '/storage/images/60oZmPmM7gS4JcLb585nOOGm2.jpeg', '2024-03-03 00:49:27', '2024-03-03 00:49:27'),
(75, 75, '/storage/images/3pT88Q1Y6XOnnIF4YB5GcGDz6.jpeg', '2024-03-03 00:50:10', '2024-03-03 00:50:10'),
(76, 76, '/storage/images/KzVgrvensmNw5oFcXoInqSUXs.jpeg', '2024-03-03 00:50:47', '2024-03-03 00:50:47'),
(77, 77, '/storage/images/fabdKYBmlPMNtGWUWSOZ2bcVO.jpeg', '2024-03-03 00:51:22', '2024-03-03 00:51:22'),
(78, 78, '/storage/images/NPzf2dHWY6o4B9bjM9jrYGnkK.jpeg', '2024-03-03 00:52:09', '2024-03-03 00:52:09'),
(79, 79, '/storage/images/6I23edSLHAdicXopjvxQOMA3s.jpeg', '2024-03-03 00:55:32', '2024-03-03 00:55:32'),
(80, 80, '/storage/images/wkrTfA43ZjipGmU7ndP7Bap1x.jpeg', '2024-03-03 00:56:09', '2024-03-03 00:56:09'),
(81, 81, '/storage/images/rcLU4IBrcURQSGfKxRbUBYfJU.jpeg', '2024-03-03 00:56:43', '2024-03-03 00:56:43'),
(82, 82, '/storage/images/Cc7AY5bakRAgYnrS48wPv4GQh.jpeg', '2024-03-03 00:57:11', '2024-03-03 00:57:11'),
(83, 83, '/storage/images/t1wnCvMkAUlmWcndYM9YQ4zMy.jpeg', '2024-03-03 00:57:46', '2024-03-03 00:57:46'),
(84, 84, '/storage/images/88yCByQ5tS.jpeg', '2024-03-03 00:59:03', '2024-03-03 00:59:03'),
(85, 85, '/storage/images/OQ4EOLuPQsD0ncoTAzgnFMFv6.jpeg', '2024-03-03 00:59:34', '2024-03-03 00:59:34'),
(86, 86, '/storage/images/XUn680BElaL2ztAbDzWt97hKS.jpeg', '2024-03-03 01:00:05', '2024-03-03 01:00:05'),
(87, 87, '/storage/images/cGyLdyUz4OPkU4GOECTEps1vK.jpeg', '2024-03-03 01:34:12', '2024-03-03 01:34:12'),
(88, 88, '/storage/images/ZJQymUa4vKmk0ERHzT6KTs3JR.jpeg', '2024-03-03 01:34:54', '2024-03-03 01:34:54'),
(89, 89, '/storage/images/ve102sSdHywuLMUlgf3eBmzch.jpeg', '2024-03-03 01:35:26', '2024-03-03 01:35:26'),
(90, 90, '/storage/images/aLy0wrrygVD9YluoKCr2FVhYv.jpeg', '2024-03-03 01:36:02', '2024-03-03 01:36:02'),
(91, 91, '/storage/images/s8GoiYDtNyeuKrWmOwNaXWwIX.jpeg', '2024-03-03 01:36:34', '2024-03-03 01:36:34'),
(92, 92, '/storage/images/n6tl0xKM3eplrURDV5GxnT2rK.jpeg', '2024-03-03 01:38:08', '2024-03-03 01:38:08'),
(93, 93, '/storage/images/MUcKxAuKWA7NnzYXByJmtmdpm.jpeg', '2024-03-03 01:39:02', '2024-03-03 01:39:02'),
(94, 94, '/storage/images/qjtsmXPeh9zLtMvaZWNOZnN7U.jpeg', '2024-03-03 01:39:30', '2024-03-03 01:39:30'),
(95, 95, '/storage/images/1fEG7u1dGZAO9hVPKMjuuytih.jpeg', '2024-03-03 01:40:09', '2024-03-03 01:40:09'),
(96, 96, '/storage/images/OUtchwwr4HjKTbEq5VbIyOFtr.jpeg', '2024-03-03 01:40:49', '2024-03-03 01:40:49'),
(97, 97, '/storage/images/O0XokVir5pj79rRYPNSGTXRDa.jpeg', '2024-03-03 01:41:21', '2024-03-03 01:41:21'),
(98, 98, '/storage/images/Y6s6eyDaOP9nIgXTMe1bCudJ3.jpeg', '2024-03-03 01:41:51', '2024-03-03 01:41:51'),
(99, 99, '/storage/images/dbrpZLgfPaG4r1fWzxtJjMynI.jpeg', '2024-03-03 01:42:27', '2024-03-03 01:42:27'),
(100, 100, '/storage/images/P0txdMBuYdEjF7B3BRabi2KqA.jpeg', '2024-03-03 01:43:00', '2024-03-03 01:43:00'),
(101, 101, '/storage/images/r5xVjSdyHgaUBPAmywmhcj6rN.jpeg', '2024-03-03 01:44:28', '2024-03-03 01:44:28'),
(102, 102, '/storage/images/jjzyVNPMHe8P6NXox4SF4pCD8.jpeg', '2024-03-03 01:44:54', '2024-03-03 01:44:54'),
(103, 103, '/storage/images/ljaD9y6KyeUZL0cs8iZRyW77F.jpeg', '2024-03-03 01:45:22', '2024-03-03 01:45:22'),
(104, 104, '/storage/images/TmBV5hxVsPF6PHEk6vRlT2bsJ.jpeg', '2024-03-03 01:46:00', '2024-03-03 01:46:00'),
(105, 105, '/storage/images/thVH8jYpQezhoCBYgdHsKXlxi.jpeg', '2024-03-03 01:46:26', '2024-03-03 01:46:26'),
(106, 106, '/storage/images/d6EGd3jF9nKjdm5dCtvCq2vXw.jpeg', '2024-03-03 01:47:01', '2024-03-03 01:47:01'),
(107, 107, '/storage/images/bK4qaiorvdRC31bbtC9PAoLyO.jpeg', '2024-03-03 01:47:59', '2024-03-03 01:47:59'),
(108, 108, '/storage/images/BN0BZKMLVUj9eQuNkhN3z8Reh.jpeg', '2024-03-03 01:48:35', '2024-03-03 01:48:35'),
(109, 109, '/storage/images/76wB8PGNkMipKOWhhrCeSEfJr.jpeg', '2024-03-03 01:49:03', '2024-03-03 01:49:03'),
(110, 110, '/storage/images/JmAB2L64ySvmTbYLEzxg27LXx.jpeg', '2024-03-03 01:49:35', '2024-03-03 01:49:35'),
(111, 111, '/storage/images/4STGtyrYWMq0HD6bqgCl4M7QO.jpeg', '2024-03-03 01:50:14', '2024-03-03 01:50:14'),
(112, 112, '/storage/images/gRtD1B4iCzOAyRQG0F9Iz1Va0.jpeg', '2024-03-03 01:50:46', '2024-03-03 01:50:46'),
(113, 113, '/storage/images/ryhVy11FMx6IqY8AT0kTckeSD.jpeg', '2024-03-03 01:51:29', '2024-03-03 01:51:29'),
(114, 114, '/storage/images/YUSJjN5wq78hsBLQr9jHjVFiL.png', '2024-03-03 17:05:28', '2024-03-03 17:05:28'),
(115, 115, '/storage/images/LkrpirX1Eii3vcsELhdP72b5y.png', '2024-03-03 17:06:11', '2024-03-03 17:06:11'),
(116, 116, '/storage/images/t02Znja7a2vkNj0YjDHyIMTYK.png', '2024-03-03 17:07:11', '2024-03-03 17:07:11'),
(117, 117, '/storage/images/no26shDIDcleWwD4jMBc0OMOS.png', '2024-03-03 17:08:18', '2024-03-03 17:08:18'),
(118, 118, '/storage/images/I5Kphv6ggeO5uskOywgmFghzW.png', '2024-03-03 17:10:34', '2024-03-03 17:10:34'),
(119, 119, '/storage/images/5CzQDdUdmQqjyvbWYdHw79jPO.png', '2024-03-03 17:11:18', '2024-03-03 17:11:18'),
(120, 120, '/storage/images/ZCx770VxD1M7s7V9UL8kGFZXy.png', '2024-03-03 17:12:09', '2024-03-03 17:12:09'),
(121, 121, '/storage/images/epnd9TM2vpRASxWfsRvNcVxtg.png', '2024-03-03 17:13:15', '2024-03-03 17:13:15'),
(122, 122, '/storage/images/kJQ5YHx2HbiFZUJVggQzE5p6Y.png', '2024-03-03 17:14:44', '2024-03-03 17:14:44'),
(123, 123, '/storage/images/ImVkUZe1wSotGxHZ4OaACOFXQ.png', '2024-03-03 17:15:33', '2024-03-03 17:15:33'),
(124, 124, '/storage/images/tbXZ7WR8pHG0oOonYlC9cMJlV.png', '2024-03-03 17:16:16', '2024-03-03 17:16:16'),
(125, 125, '/storage/images/5ZupFNEy1bMyTSOTA9JgtJPZw.png', '2024-03-03 17:17:08', '2024-03-03 17:17:08'),
(126, 126, '/storage/images/QlPJvhtvCAarxSTLbeStOAIUr.png', '2024-03-03 17:18:25', '2024-03-03 17:18:25'),
(127, 127, '/storage/images/LeVjyGt1kUPcJQrZ2jxXy9S2X.png', '2024-03-03 17:19:40', '2024-03-03 17:19:40'),
(128, 128, '/storage/images/UwpquNqoENA9qlHRc12ux4tTH.png', '2024-03-03 17:21:04', '2024-03-03 17:21:04'),
(129, 129, '/storage/images/qHjdUeLXrCZqEBUiwwqoa7Utj.png', '2024-03-03 17:21:47', '2024-03-03 17:21:47'),
(130, 130, '/storage/images/Ql8iPPX4xsBHJQhW6gbkcwjJK.png', '2024-03-03 17:22:34', '2024-03-03 17:22:34'),
(131, 131, '/storage/images/JU9O9YFL6N83dQZKhC8FaYo9q.png', '2024-03-03 17:23:23', '2024-03-03 17:23:23'),
(132, 132, '/storage/images/aAUPiBKzG7x4ZFfX2OlRnaWkI.png', '2024-03-03 17:24:05', '2024-03-03 17:24:05'),
(133, 133, '/storage/images/RQwjYk04EOiF7QbSPrsSFUZGe.png', '2024-03-03 17:24:36', '2024-03-03 17:24:36'),
(134, 134, '/storage/images/z7poafHb5u30BHRC7Puv9Ng3i.png', '2024-03-03 17:25:26', '2024-03-03 17:25:26'),
(135, 135, '/storage/images/tRxfATxVeYXMcWqEjViw2zMZE.png', '2024-03-03 17:26:09', '2024-03-03 17:26:09'),
(136, 136, '/storage/images/5MWRDK7QrObshPkUSeVDPisSk.png', '2024-03-03 17:26:55', '2024-03-03 17:26:55'),
(137, 137, '/storage/images/qhlyTEUXC5ixzvrQ2WPXbW9B8.png', '2024-03-03 17:27:55', '2024-03-03 17:27:55'),
(138, 138, '/storage/images/vVCaURF5MokMAC1Jx3V3fZCIX.png', '2024-03-03 17:28:41', '2024-03-03 17:28:41'),
(139, 139, '/storage/images/t1SfjHxJ7iClFIEkAKWx4L43w.png', '2024-03-03 17:29:23', '2024-03-03 17:29:23'),
(140, 140, '/storage/images/ZCZ2FzRKIexvhe4Cldiy9Zw9g.png', '2024-03-03 17:32:08', '2024-03-03 17:32:08'),
(141, 141, '/storage/images/IJkAnJvToAWCss64WFZCLbxir.png', '2024-03-03 17:32:47', '2024-03-03 17:32:47'),
(142, 142, '/storage/images/KQMtxIRvufKZDwQ2l0B759E39.png', '2024-03-03 17:34:48', '2024-03-03 17:34:48'),
(143, 143, '/storage/images/BLIx2enINlw2M93NHET9v647g.png', '2024-03-03 17:35:36', '2024-03-03 17:35:36'),
(144, 144, '/storage/images/UbOBzkFraN3QtMbN8F1zc4Yg8.png', '2024-03-03 17:36:33', '2024-03-03 17:36:33'),
(145, 145, '/storage/images/Or3aECLTt3Had6Rc1oGRiqHBE.png', '2024-03-03 17:37:31', '2024-03-03 17:37:31'),
(146, 146, '/storage/images/GIc08Sa74T8EF9YxAP2vCVZSi.png', '2024-03-03 17:38:24', '2024-03-03 17:38:24'),
(147, 147, '/storage/images/P3vneEJ7GByUw5fJCTc6QRrJA.png', '2024-03-03 17:39:05', '2024-03-03 17:39:05'),
(148, 148, '/storage/images/0zvdl8bI678hIV1bid5vsTzns.png', '2024-03-03 17:39:45', '2024-03-03 17:39:45'),
(149, 149, '/storage/images/8IG0VtkRXhzkt4WwQbV7zdDeg.png', '2024-03-03 17:40:36', '2024-03-03 17:40:36'),
(150, 150, '/storage/images/6Xne4uv6QZs9dr1o9CyGlxgeW.png', '2024-03-03 17:41:19', '2024-03-03 17:41:19'),
(151, 151, '/storage/images/dFk4zukzHzSa7P0WbEQJ2vYuO.png', '2024-03-03 17:41:58', '2024-03-03 17:41:58'),
(152, 152, '/storage/images/HpBZASDZ8BMseL1Js8k2cBwav.png', '2024-03-03 17:42:31', '2024-03-03 17:42:31'),
(153, 153, '/storage/images/iuRISXaVMtLjiaLQ6H7HVvYst.png', '2024-03-03 17:43:11', '2024-03-03 17:43:11'),
(154, 154, '/storage/images/TSY7UGUQVDtrWRYqKy3k9AQ0W.png', '2024-03-03 17:48:45', '2024-03-03 17:48:45'),
(155, 155, '/storage/images/rEuPtrUiikqpBMOEeoQ8Zu7F4.png', '2024-03-03 17:50:13', '2024-03-03 17:50:13'),
(156, 156, '/storage/images/A6oSKaqDJs44lJ3v2fiIuesef.png', '2024-03-03 17:51:02', '2024-03-03 17:51:02'),
(157, 157, '/storage/images/ffheQqlk7Zic0hGzdKtbJYDak.png', '2024-03-03 17:51:49', '2024-03-03 17:51:49'),
(158, 158, '/storage/images/Taw6IDcrTcaR06zoC69G8Fs2s.png', '2024-03-03 17:52:29', '2024-03-03 17:52:29'),
(159, 159, '/storage/images/5yZUcixpCsxi9U3JPKg0t005T.png', '2024-03-03 17:53:26', '2024-03-03 17:53:26'),
(160, 160, '/storage/images/Unr0jD1lcaD25LTLbvF1tzsul.png', '2024-03-03 17:53:59', '2024-03-03 17:53:59'),
(161, 161, '/storage/images/RzZfk2sROBFoSYeUVYxM8y81Q.png', '2024-03-03 17:54:34', '2024-03-03 17:54:34'),
(162, 162, '/storage/images/sMZd00X5s3YotCosLrjfTb8Tc.png', '2024-03-03 17:55:23', '2024-03-03 17:55:23'),
(163, 163, '/storage/images/bUtkjPw3lhk7HKZec15621kfr.png', '2024-03-03 17:56:43', '2024-03-03 17:56:43'),
(164, 164, '/storage/images/t1CdCrUVD0oDsr55dL9zJrOFx.png', '2024-03-03 17:57:14', '2024-03-03 17:57:14'),
(165, 165, '/storage/images/1qSjzje8nHjmnLIxMGWz7GhTq.png', '2024-03-03 17:57:51', '2024-03-03 17:57:51'),
(166, 166, '/storage/images/KCBbIWAmClN1do0EknhDcP1fL.png', '2024-03-03 17:58:38', '2024-03-03 17:58:38'),
(167, 167, '/storage/images/22U8yP2rs2mhCqjGYKutNhNUo.png', '2024-03-03 18:00:46', '2024-03-03 18:00:46'),
(168, 168, '/storage/images/vCYF71Sgv7kl7hPhD9eE6Fn22.png', '2024-03-03 18:01:45', '2024-03-03 18:01:45'),
(169, 169, '/storage/images/y2FMRdOAA5aH4EURRpbnxOxp3.png', '2024-03-03 18:02:15', '2024-03-03 18:02:15'),
(170, 170, '/storage/images/BFRveybrAUWBDO4F2jNZqqH62.png', '2024-03-03 18:02:55', '2024-03-03 18:02:55'),
(171, 171, '/storage/images/dERZAqsqBQYxOZedUPhN1u7V7.jpeg', '2024-03-04 00:22:15', '2024-03-04 00:22:15'),
(172, 172, '/storage/images/S91dVLPrNw6zRlU09pVAw9GOA.jpeg', '2024-03-04 00:22:49', '2024-03-04 00:22:49'),
(173, 173, '/storage/images/xea9AMjMMEtR8zGVCaF5AJVML.jpeg', '2024-03-04 00:24:03', '2024-03-04 00:24:03'),
(174, 174, '/storage/images/pC5jJlb8blw35RrbaNQHXZXNw.jpeg', '2024-03-04 00:24:30', '2024-03-04 00:24:30'),
(175, 175, '/storage/images/jZKLDEvtdGK96M3f3eMrcLqxs.jpeg', '2024-03-04 00:25:18', '2024-03-04 00:25:18'),
(176, 176, '/storage/images/lkmnmIouxtkPUZ7EhtL22cWV7.jpeg', '2024-03-04 00:26:12', '2024-03-04 00:26:12'),
(177, 177, '/storage/images/vjnXuEH9itgrUMFWlmdy3oH41.jpeg', '2024-03-04 00:26:41', '2024-03-04 00:26:41'),
(178, 178, '/storage/images/0XoiNjzLiegTQEIC3LktulvIJ.jpeg', '2024-03-04 00:27:11', '2024-03-04 00:27:11'),
(179, 179, '/storage/images/aUlkrynITF5Ia5xLoq6dZn5uf.jpeg', '2024-03-04 00:27:47', '2024-03-04 00:27:47'),
(180, 180, '/storage/images/NiHq62QNRs9kxGwenBJT8ZGRn.jpeg', '2024-03-04 00:28:21', '2024-03-04 00:28:21'),
(181, 181, '/storage/images/I0n875nuLtibZiRbAKcBAcSt1.jpeg', '2024-03-04 00:28:58', '2024-03-04 00:28:58'),
(182, 182, '/storage/images/3kDA539hAk44HDpsStfwGvvjN.jpeg', '2024-03-04 00:29:36', '2024-03-04 00:29:36'),
(183, 183, '/storage/images/KP0mh2e8p61rUH9FRhTJDiHEf.jpeg', '2024-03-04 00:38:04', '2024-03-04 00:38:04'),
(184, 184, '/storage/images/djCr0VwYWac499roXqyA6kCGe.jpeg', '2024-03-04 00:39:07', '2024-03-04 00:39:07'),
(185, 185, '/storage/images/j4GWHvdrQ9ficUTdxzBpT7UOH.jpeg', '2024-03-04 00:39:33', '2024-03-04 00:39:33'),
(186, 186, '/storage/images/sHJh7HuCwXSSz5CrSO76AVKdo.jpeg', '2024-03-04 00:40:06', '2024-03-04 00:40:06'),
(187, 187, '/storage/images/zACd9MoPzBVh0maUgWZ7387O5.jpeg', '2024-03-04 00:40:21', '2024-03-04 00:40:21'),
(188, 188, '/storage/images/9dmCHLvUyVx0Y1WO8JzIxCwUC.jpeg', '2024-03-04 00:40:38', '2024-03-04 00:40:38'),
(189, 189, '/storage/images/6lRCA4BdVdUkHPxX5giU4JT9k.jpeg', '2024-03-04 00:41:11', '2024-03-04 00:41:11'),
(190, 190, '/storage/images/BwzSmXgMe7hLx5bhd2xFICMzR.jpeg', '2024-03-04 00:41:14', '2024-03-04 00:41:14'),
(191, 191, '/storage/images/bF3TqnRGgkzoz3dHHaGq8o7Ir.jpeg', '2024-03-04 00:41:44', '2024-03-04 00:41:44'),
(192, 192, '/storage/images/7xc3bkvD7tpfMwEb5w703V54n.jpeg', '2024-03-04 00:42:05', '2024-03-04 00:42:05'),
(193, 193, '/storage/images/H4P9uVNXGQ2BmCTT6YGJ5nPw8.jpeg', '2024-03-04 00:42:19', '2024-03-04 00:42:19'),
(194, 194, '/storage/images/cv5VlC9PZgpOiSJuIcNoj00jd.jpeg', '2024-03-04 00:42:54', '2024-03-04 00:42:54'),
(195, 195, '/storage/images/TCX7iplwzqqnrMi4JRGBbhqJS.jpeg', '2024-03-04 00:43:08', '2024-03-04 00:43:08'),
(196, 196, '/storage/images/8Od7GGx7f7ytT9SjyE1NsR3ai.jpeg', '2024-03-04 00:43:26', '2024-03-04 00:43:26'),
(197, 197, '/storage/images/7bjnyxB2qujBdIwnZr8qdtiKr.jpeg', '2024-03-04 00:44:05', '2024-03-04 00:44:05'),
(198, 198, '/storage/images/0moBpT01MlU86dwwAcIYW4nme.jpeg', '2024-03-04 00:44:43', '2024-03-04 00:44:43'),
(199, 199, '/storage/images/nkeFCfViQTF8FTwgYCWrjTa6S.jpeg', '2024-03-04 00:44:55', '2024-03-04 00:44:55'),
(200, 200, '/storage/images/gW4BbqdN1imv1yUO2TVZVvYYf.jpeg', '2024-03-04 00:45:20', '2024-03-04 00:45:20'),
(201, 201, '/storage/images/SGitFlXwBaRM9vDEpjHTm6uXH.jpeg', '2024-03-04 00:45:45', '2024-03-04 00:45:45'),
(202, 202, '/storage/images/qO2iKMbGorCFVsPYBIqaMnJQK.jpeg', '2024-03-04 00:46:09', '2024-03-04 00:46:09'),
(203, 203, '/storage/images/o4RRI6FPf2LkFphpMycpyLSqP.jpeg', '2024-03-04 00:46:34', '2024-03-04 00:46:34'),
(204, 204, '/storage/images/FJTBasC60KbicOwR5MqzZgi2r.jpeg', '2024-03-04 00:46:50', '2024-03-04 00:46:50'),
(205, 205, '/storage/images/whUrcZ9oT471Io9qF6UdobCOk.jpeg', '2024-03-04 00:47:19', '2024-03-04 00:47:19'),
(206, 206, '/storage/images/0zgTwc1rYP0EdZcaT8LltUYkh.jpeg', '2024-03-04 00:47:49', '2024-03-04 00:47:49'),
(207, 207, '/storage/images/Wm3SD1Scqf9lXoLlbK0XnbLfq.jpeg', '2024-03-04 00:47:56', '2024-03-04 00:47:56'),
(208, 208, '/storage/images/M36jhavT5uvYXlSj34fbdBwlf.jpeg', '2024-03-04 00:48:24', '2024-03-04 00:48:24'),
(209, 209, '/storage/images/oVrH9nQxp6O4SmzxUCbJiutUi.jpeg', '2024-03-04 00:48:39', '2024-03-04 00:48:39'),
(210, 210, '/storage/images/rxNVdRZEKQlj3meENlViJCuIn.jpeg', '2024-03-04 00:48:54', '2024-03-04 00:48:54'),
(211, 211, '/storage/images/zZYtbhjdWGWhKxyURz6zXVIgT.jpeg', '2024-03-04 00:49:22', '2024-03-04 00:49:22'),
(212, 212, '/storage/images/UyeD4ZAH5xWtlLC1lS6e0cckX.jpeg', '2024-03-04 00:49:27', '2024-03-04 00:49:27'),
(213, 213, '/storage/images/4P8HVryD19Xsc2CX1FH34Jvbl.jpeg', '2024-03-04 00:50:01', '2024-03-04 00:50:01'),
(214, 214, '/storage/images/AlO8O6c2KPViOMqlSXPhiU529.jpeg', '2024-03-04 00:50:28', '2024-03-04 00:50:28'),
(215, 215, '/storage/images/UV6vMg87DvK0V91BK9uDRFgMG.jpeg', '2024-03-04 00:50:43', '2024-03-04 00:50:43'),
(216, 216, '/storage/images/Sdh6LbNb6POjlSvtmakPwdD9D.jpeg', '2024-03-04 00:51:00', '2024-03-04 00:51:00'),
(217, 217, '/storage/images/0KhzcdemENvb9YbSCuztyMPsg.jpeg', '2024-03-04 00:51:25', '2024-03-04 00:51:25'),
(218, 218, '/storage/images/PPHI61YBVlDgDSSv5PhG36HDV.jpeg', '2024-03-04 00:51:32', '2024-03-04 00:51:32'),
(219, 219, '/storage/images/4673uVpJWJMgXJqABN1XFc0Nw.jpeg', '2024-03-04 00:52:10', '2024-03-04 00:52:10'),
(220, 220, '/storage/images/nsqhB1MWUI6ZI2dQVZGCpMvJX.jpeg', '2024-03-04 00:52:14', '2024-03-04 00:52:14'),
(221, 221, '/storage/images/7lEJplTFVoZ8n1hSCVlNpkSzu.jpeg', '2024-03-04 00:52:46', '2024-03-04 00:52:46'),
(222, 222, '/storage/images/59h8n7Q2VX7BFsao4KQAKc92o.jpeg', '2024-03-04 00:52:52', '2024-03-04 00:52:52'),
(223, 223, '/storage/images/4erOBdvVLdnJDqtRZRiIs3C9C.jpeg', '2024-03-04 00:53:18', '2024-03-04 00:53:18'),
(224, 224, '/storage/images/ukMqnGrxFvuD22vFFZAWmKgxJ.jpeg', '2024-03-04 00:53:31', '2024-03-04 00:53:31'),
(225, 225, '/storage/images/csIY8NdnRM2oGf1ZCJx1TI0Px.jpeg', '2024-03-04 00:54:08', '2024-03-04 00:54:08'),
(226, 226, '/storage/images/oC3e0oCdbGMvkpUrtSIgyHfct.jpeg', '2024-03-04 00:54:10', '2024-03-04 00:54:10'),
(227, 227, '/storage/images/Dj7oDisXAJQ8veCz4pHUP6OUT.jpeg', '2024-03-04 00:54:52', '2024-03-04 00:54:52'),
(228, 228, '/storage/images/PuH9I8Ap5uQMW1tcZBNmADUal.jpeg', '2024-03-04 00:54:55', '2024-03-04 00:54:55'),
(229, 229, '/storage/images/hdXuz9gzGLd8B9kpwpogGE62s.jpeg', '2024-03-04 00:55:31', '2024-03-04 00:55:31'),
(230, 230, '/storage/images/lZPzejQsCQ0sdI2sJqYoXD0lj.jpeg', '2024-03-04 00:55:31', '2024-03-04 00:55:31'),
(231, 231, '/storage/images/6L2U4jBLXioY2u86mERPXrbZ3.jpeg', '2024-03-04 00:56:07', '2024-03-04 00:56:07'),
(232, 232, '/storage/images/CHsDOxWqhIW5pEl3f4OgwmdA5.jpeg', '2024-03-04 00:56:21', '2024-03-04 00:56:21'),
(233, 233, '/storage/images/9qvTpg57WpVOAbIM5gB7gGfET.jpeg', '2024-03-04 00:56:42', '2024-03-04 00:56:42'),
(234, 234, '/storage/images/xMzhUO3bldgLl7VKNBTDVd2aH.jpeg', '2024-03-04 00:56:58', '2024-03-04 00:56:58'),
(235, 235, '/storage/images/I4StC6dlMWs0sEeU5hdOmfvCQ.jpeg', '2024-03-04 00:57:13', '2024-03-04 00:57:13'),
(236, 236, '/storage/images/BzmRH4FUtX4q1n2EFyXHtn5BJ.jpg', '2024-03-04 00:58:10', '2024-03-04 00:58:10'),
(237, 237, '/storage/images/fOWcj7vvS8C7ZWekEcDCJF26B.jpg', '2024-03-04 00:58:49', '2024-03-04 00:58:49'),
(238, 238, '/storage/images/5OaZXjJ9AHtuFm85Rs0akqA7P.jpg', '2024-03-04 00:59:34', '2024-03-04 00:59:34'),
(239, 239, '/storage/images/wHCMhaVsZKyApyGE6csCMxcHN.jpg', '2024-03-04 01:00:19', '2024-03-04 01:00:19'),
(240, 240, '/storage/images/6qIfyy384dQ2uzJyxgm0mITDf.jpg', '2024-03-04 01:01:06', '2024-03-04 01:01:06'),
(241, 241, '/storage/images/0g3FMJztEvzDInIHzc8vjBh7X.jpg', '2024-03-04 01:01:45', '2024-03-04 01:01:45'),
(242, 242, '/storage/images/n5GRdj5q32fQtFdB1XDR4LgkL.jpeg', '2024-03-04 01:02:28', '2024-03-04 01:02:28'),
(243, 243, '/storage/images/lc7ZbePYr3bPDWprOvlPqe9sl.jpg', '2024-03-04 01:03:21', '2024-03-04 01:03:21'),
(244, 244, '/storage/images/coJdTU5eZSUYQSvHcbrqn8aXH.jpg', '2024-03-04 01:04:09', '2024-03-04 01:04:09'),
(245, 245, '/storage/images/Ro65tj8y5QJOXgBkR8uii4dgV.jpg', '2024-03-04 01:04:49', '2024-03-04 01:04:49'),
(246, 246, '/storage/images/N9tTevpthbaR3HZRBh4rQ8Lnx.jpg', '2024-03-04 01:05:30', '2024-03-04 01:05:30'),
(247, 247, '/storage/images/8qLWV3Wua6XFn2CTtrgFxbtQe.jpg', '2024-03-04 01:06:14', '2024-03-04 01:06:14'),
(248, 248, '/storage/images/wlfyNJPDL3xrTRjjnjHHyFpjj.jpg', '2024-03-04 01:06:54', '2024-03-04 01:06:54'),
(249, 249, '/storage/images/P2ZOlgRUNUzM1Wu9bhZipM2z2.png', '2024-03-04 01:07:40', '2024-03-04 01:07:40'),
(250, 250, '/storage/images/r4dXvcaf8f4idlVY8OAxGqIgg.jpg', '2024-03-04 01:08:21', '2024-03-04 01:08:21'),
(251, 251, '/storage/images/uXM5KE86MEKTXZVNnQUyfYLL8.jpg', '2024-03-04 01:09:03', '2024-03-04 01:09:03'),
(252, 252, '/storage/images/cWQNqKwQLNKhZDz95AgCLh2X6.jpg', '2024-03-04 01:09:42', '2024-03-04 01:09:42'),
(253, 253, '/storage/images/9UtwK6wIqXIqossKFZ5hJkSxo.jpg', '2024-03-04 01:10:24', '2024-03-04 01:10:24'),
(254, 254, '/storage/images/MhHCTVsSAHyCzyMOng3w9A4jE.jpg', '2024-03-04 01:11:06', '2024-03-04 01:11:06'),
(255, 255, '/storage/images/2Bh03MlOMVMq76IjO1DCFpC5P.jpg', '2024-03-04 01:11:52', '2024-03-04 01:11:52'),
(256, 256, '/storage/images/Zr7PzEFSeXUjmBLfA3HhMqrjx.jpeg', '2024-03-04 01:12:41', '2024-03-04 01:12:41'),
(257, 257, '/storage/images/1R7kbmlZ2zGVyMGLrxqhiCbkQ.jpg', '2024-03-04 01:13:20', '2024-03-04 01:13:20'),
(258, 258, '/storage/images/3a9c9axRUiWcZxWBSjQD8cO3C.jpg', '2024-03-04 01:13:57', '2024-03-04 01:13:57'),
(259, 259, '/storage/images/iPj2o4dwj3lwylO75YkAvCzO6.jpg', '2024-03-04 01:14:40', '2024-03-04 01:14:40'),
(260, 260, '/storage/images/GdZsPQcrqbu7BA4LqLF8Jo3BO.png', '2024-03-04 11:40:57', '2024-03-04 11:40:57'),
(261, 261, '/storage/images/iBIiB7srrlURgsrV3WuUsxgvm.png', '2024-03-04 11:42:02', '2024-03-04 11:42:02'),
(262, 262, '/storage/images/1wDr2pi02tniJW0YoCnZJdtT3.png', '2024-03-04 11:42:38', '2024-03-04 11:42:38'),
(263, 263, '/storage/images/4blXU66E6Mk50yQ3CNReuScLN.png', '2024-03-04 11:43:22', '2024-03-04 11:43:22'),
(264, 264, '/storage/images/9RqeuDPfViV1eCmMCChkqAiAP.png', '2024-03-04 11:43:56', '2024-03-04 11:43:56'),
(265, 265, '/storage/images/JnChq95XgxkMq9LiGdynzKII2.png', '2024-03-04 11:44:43', '2024-03-04 11:44:43'),
(266, 266, '/storage/images/rebfU8hAJWl8d1Q2z4RzcRAxK.png', '2024-03-04 11:45:20', '2024-03-04 11:45:20'),
(267, 267, '/storage/images/vX2pnNpdfkaVKEEK2vTzQ7SPZ.png', '2024-03-04 11:46:09', '2024-03-04 11:46:09'),
(268, 268, '/storage/images/ojNH7mTanD9wNr3gWGBQheOQx.png', '2024-03-04 11:46:48', '2024-03-04 11:46:48'),
(269, 269, '/storage/images/bHw7G1jvaZTwgkHA1a3C3wJag.png', '2024-03-04 11:47:24', '2024-03-04 11:47:24'),
(270, 270, '/storage/images/VYVc3kj9bJ9QSQEg2q2mAvVV6.png', '2024-03-04 11:47:58', '2024-03-04 11:47:58'),
(271, 271, '/storage/images/ErfOo7jeBTifFLEpsJ4BShHYm.png', '2024-03-04 11:49:00', '2024-03-04 11:49:00'),
(272, 272, '/storage/images/C2lTCTL50Fpaa2RpxIVESk2ru.png', '2024-03-04 11:49:36', '2024-03-04 11:49:36'),
(273, 273, '/storage/images/Ls8KMoPO9zzwcYM3wCJNojGdP.png', '2024-03-04 11:50:12', '2024-03-04 11:50:12'),
(274, 274, '/storage/images/Gda6heToQlgIm8SpyHXzkMoIZ.png', '2024-03-04 12:04:54', '2024-03-04 12:04:54'),
(275, 275, '/storage/images/Wm51UAxKzlIXQQwGkpBpL412U.png', '2024-03-04 12:05:38', '2024-03-04 12:05:38'),
(276, 276, '/storage/images/rtaLrfomUJykSKznnlDwRcEcM.png', '2024-03-04 12:06:15', '2024-03-04 12:06:15'),
(277, 277, '/storage/images/QVDoahx2TpCMDeqVM1HfttUhe.png', '2024-03-04 12:07:20', '2024-03-04 12:07:20'),
(278, 278, '/storage/images/PDPKxKtMO5iVtc2hapyCQVCfa.png', '2024-03-04 12:08:02', '2024-03-04 12:08:02'),
(279, 279, '/storage/images/N6iMM83N28B1a98OvCF28ZXdw.png', '2024-03-04 12:08:51', '2024-03-04 12:08:51'),
(280, 280, '/storage/images/jw0C1qpAptMMNwuFM4baoWshi.png', '2024-03-04 12:09:42', '2024-03-04 12:09:42'),
(281, 281, '/storage/images/8KMDPeNQzayLAJYre9sFokIcB.png', '2024-03-04 12:10:17', '2024-03-04 12:10:17'),
(282, 282, '/storage/images/lOBdUT74sXDxYBdCvqJBlk0oU.png', '2024-03-04 12:11:12', '2024-03-04 12:11:12'),
(283, 283, '/storage/images/0abiUIKoqrwToFK0TnaLLjmu1.png', '2024-03-04 12:12:03', '2024-03-04 12:12:03'),
(284, 284, '/storage/images/pmcIFnLGVweJ33PeY0hA0vsu9.png', '2024-03-04 12:12:55', '2024-03-04 12:12:55'),
(285, 285, '/storage/images/zt2cyZGzlnjX6hKnY1ppHAvZK.png', '2024-03-04 12:15:35', '2024-03-04 12:15:35'),
(286, 286, '/storage/images/eTxbOIWXN4sz8HTAm6bVDBCpM.png', '2024-03-04 12:16:45', '2024-03-04 12:16:45'),
(287, 287, '/storage/images/cwuPRYEyzAhQh1wdbq1tbWa4a.png', '2024-03-04 12:18:36', '2024-03-04 12:18:36'),
(288, 288, '/storage/images/F2CwEahfRnia0GAyrTaXJ96SV.png', '2024-03-04 12:19:39', '2024-03-04 12:19:39'),
(289, 289, '/storage/images/nfcPlUoB78arKHt8cvQreUq8t.png', '2024-03-04 12:20:21', '2024-03-04 12:20:21'),
(290, 290, '/storage/images/vcmwDOFRIA9ibVuseUndNRu0w.png', '2024-03-04 12:21:25', '2024-03-04 12:21:25'),
(291, 291, '/storage/images/CbH5iDfN9VPdzWxdrGpWffDnv.png', '2024-03-04 12:22:07', '2024-03-04 12:22:07'),
(292, 292, '/storage/images/0c5QN5Syup8JubkVS1za88H4e.png', '2024-03-04 12:22:50', '2024-03-04 12:22:50'),
(293, 293, '/storage/images/ly0v5Z8ehRsyfcvz9VJYmKkeh.png', '2024-03-04 12:23:23', '2024-03-04 12:23:23'),
(294, 294, '/storage/images/OB84RmlClFi29qI6CDSahlnnj.png', '2024-03-04 12:24:11', '2024-03-04 12:24:11'),
(295, 295, '/storage/images/RTFV8har35kQFDykxwSRLWfLH.png', '2024-03-04 12:24:50', '2024-03-04 12:24:50'),
(296, 296, '/storage/images/p53kKWpL5wg9vMBidkZutmgPk.png', '2024-03-04 12:26:16', '2024-03-04 12:26:16'),
(297, 297, '/storage/images/13JJVkmxJYAWVMNY0dCmRrmpn.png', '2024-03-04 12:28:22', '2024-03-04 12:28:22'),
(298, 298, '/storage/images/bRQJep0SKBlQUGTdEqDoYCpeG.png', '2024-03-04 12:29:50', '2024-03-04 12:29:50'),
(299, 299, '/storage/images/e53OGCLGRKwvIHOeV6JZuJRkZ.png', '2024-03-04 12:30:48', '2024-03-04 12:30:48'),
(300, 300, '/storage/images/suvwf2Wdrm8vtXUkFQosNs1Pd.png', '2024-03-04 12:31:50', '2024-03-04 12:31:50'),
(301, 301, '/storage/images/6F20ETsasdofS09YMQmia4pBs.png', '2024-03-04 12:34:03', '2024-03-04 12:34:03'),
(302, 302, '/storage/images/6WORcdCxm3qKEJGWEUWJ699eh.png', '2024-03-04 12:34:42', '2024-03-04 12:34:42'),
(303, 303, '/storage/images/8stxhM3LNnOssYKfP84GxLvaQ.png', '2024-03-04 12:35:26', '2024-03-04 12:35:26'),
(304, 304, '/storage/images/GE7SujP9dccCju2VQxU9DxTqx.png', '2024-03-04 12:36:21', '2024-03-04 12:36:21'),
(305, 305, '/storage/images/BNaXO8VQPq12m52tjcbNLnHJU.png', '2024-03-04 12:37:12', '2024-03-04 12:37:12'),
(306, 306, '/storage/images/JrYGzX2oUUsD7CPAPTmT8HaBB.png', '2024-03-04 12:37:47', '2024-03-04 12:37:47'),
(307, 307, '/storage/images/a7PI1tPgb3whhpHewNk1o0U5L.png', '2024-03-04 12:38:34', '2024-03-04 12:38:34'),
(308, 308, '/storage/images/HQ9AO1xkHTByZylz8UIsdkYaw.png', '2024-03-04 12:39:30', '2024-03-04 12:39:30'),
(309, 309, '/storage/images/boH4Ho2zN0TKx9OS2TROjg5fq.png', '2024-03-04 12:40:13', '2024-03-04 12:40:13'),
(310, 310, '/storage/images/0QLSM4O4vPOZ47iN3sVkp6hWK.png', '2024-03-04 12:40:59', '2024-03-04 12:40:59'),
(311, 311, '/storage/images/rQEksu7XhiDuONVYs9z3kCwCv.png', '2024-03-04 12:41:36', '2024-03-04 12:41:36'),
(312, 312, '/storage/images/4ylCCSW7LPm0ayEhc4IVa8eBC.png', '2024-03-04 12:43:57', '2024-03-04 12:43:57'),
(313, 313, '/storage/images/ppQfI2P1BLfWLFNZOSksxeDEi.png', '2024-03-04 12:44:26', '2024-03-04 12:44:26'),
(314, 314, '/storage/images/oIpEOGS7uHnL1Dble66wn01RD.png', '2024-03-04 12:45:50', '2024-03-04 12:45:50'),
(315, 315, '/storage/images/7sXbwltiKUAhVdeaeKFS7zl27.png', '2024-03-04 12:46:20', '2024-03-04 12:46:20'),
(316, 316, '/storage/images/sSJb9c642VpA7hvki9c268D4n.png', '2024-03-04 12:47:06', '2024-03-04 12:47:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `user_id`, `rating`, `created_at`, `updated_at`) VALUES
(2, 44, 3, 5.0, '2024-03-02 23:33:01', '2024-03-02 23:33:01'),
(3, 215, 7, 5.0, '2024-03-04 17:44:23', '2024-03-04 17:44:23'),
(4, 22, 7, 5.0, '2024-03-04 17:45:57', '2024-03-04 17:45:57'),
(5, 316, 3, 5.0, '2024-03-04 17:48:26', '2024-03-04 17:48:26'),
(6, 58, 8, 4.0, '2024-03-04 17:50:36', '2024-03-04 17:50:36'),
(7, 311, 7, 5.0, '2024-03-04 17:51:05', '2024-03-04 17:51:05'),
(8, 286, 7, 5.0, '2024-03-04 17:51:45', '2024-03-04 17:51:45'),
(9, 82, 7, 4.0, '2024-03-04 17:52:29', '2024-03-04 17:52:29'),
(10, 140, 7, 4.0, '2024-03-04 17:53:08', '2024-03-04 17:53:08'),
(11, 112, 7, 5.0, '2024-03-04 17:53:38', '2024-03-04 17:53:38'),
(12, 63, 7, 3.0, '2024-03-04 17:54:18', '2024-03-04 17:54:18'),
(13, 51, 7, 3.0, '2024-03-04 17:54:54', '2024-03-04 17:54:54'),
(14, 60, 3, 5.0, '2024-03-04 17:56:17', '2024-03-04 17:56:17'),
(15, 315, 11, 3.0, '2024-03-04 17:58:23', '2024-03-04 17:58:23'),
(16, 315, 11, 3.0, '2024-03-04 17:58:24', '2024-03-04 17:58:24'),
(17, 21, 7, 5.0, '2024-03-04 17:59:32', '2024-03-04 17:59:32'),
(18, 18, 7, 5.0, '2024-03-04 17:59:58', '2024-03-04 17:59:58'),
(19, 5, 7, 1.0, '2024-03-04 18:00:30', '2024-03-04 18:00:30'),
(20, 8, 7, 3.0, '2024-03-04 18:01:07', '2024-03-04 18:01:07'),
(21, 8, 7, 3.0, '2024-03-04 18:01:08', '2024-03-04 18:01:08'),
(22, 68, 7, 4.0, '2024-03-04 18:01:34', '2024-03-04 18:01:34'),
(23, 68, 7, 4.0, '2024-03-04 18:01:48', '2024-03-04 18:01:48'),
(24, 68, 7, 4.0, '2024-03-04 18:01:49', '2024-03-04 18:01:49'),
(25, 92, 7, 5.0, '2024-03-04 18:02:18', '2024-03-04 18:02:18'),
(26, 85, 7, 1.0, '2024-03-04 18:02:34', '2024-03-04 18:02:34'),
(27, 216, 7, 4.0, '2024-03-04 18:02:58', '2024-03-04 18:02:58'),
(28, 307, 7, 3.0, '2024-03-04 18:03:37', '2024-03-04 18:03:37'),
(29, 280, 7, 4.0, '2024-03-04 18:04:12', '2024-03-04 18:04:12'),
(30, 276, 7, 2.0, '2024-03-04 18:04:36', '2024-03-04 18:04:36'),
(31, 236, 7, 5.0, '2024-03-04 18:04:58', '2024-03-04 18:04:58'),
(32, 58, 13, 5.0, '2024-03-04 18:09:30', '2024-03-04 18:09:30'),
(33, 199, 13, 5.0, '2024-03-04 18:10:43', '2024-03-04 18:10:43'),
(34, 199, 13, 5.0, '2024-03-04 18:10:43', '2024-03-04 18:10:43'),
(35, 199, 13, 5.0, '2024-03-04 18:10:45', '2024-03-04 18:10:45'),
(36, 84, 13, 4.0, '2024-03-04 18:11:26', '2024-03-04 18:11:26'),
(37, 283, 13, 5.0, '2024-03-04 18:11:57', '2024-03-04 18:11:57'),
(38, 16, 13, 5.0, '2024-03-04 18:13:46', '2024-03-04 18:13:46'),
(39, 7, 11, 5.0, '2024-03-04 18:15:35', '2024-03-04 18:15:35'),
(40, 294, 12, 4.0, '2024-03-04 18:20:47', '2024-03-04 18:20:47'),
(41, 18, 12, 4.0, '2024-03-04 18:23:30', '2024-03-04 18:23:30'),
(42, 309, 14, 5.0, '2024-03-04 18:26:54', '2024-03-04 18:26:54'),
(43, 134, 12, 4.0, '2024-03-04 18:27:29', '2024-03-04 18:27:29'),
(44, 47, 14, 3.0, '2024-03-04 18:27:29', '2024-03-04 18:27:29'),
(45, 82, 14, 5.0, '2024-03-04 18:28:08', '2024-03-04 18:28:08'),
(46, 20, 14, 5.0, '2024-03-04 18:28:50', '2024-03-04 18:28:50'),
(47, 140, 14, 4.0, '2024-03-04 18:29:37', '2024-03-04 18:29:37'),
(48, 263, 14, 5.0, '2024-03-04 18:30:06', '2024-03-04 18:30:06'),
(49, 215, 15, 5.0, '2024-03-04 18:33:46', '2024-03-04 18:33:46'),
(50, 314, 17, 5.0, '2024-03-04 18:38:55', '2024-03-04 18:38:55'),
(51, 46, 17, 5.0, '2024-03-04 18:39:33', '2024-03-04 18:39:33'),
(52, 191, 16, 5.0, '2024-03-04 18:39:39', '2024-03-04 18:39:39'),
(53, 82, 16, 4.0, '2024-03-04 18:40:14', '2024-03-04 18:40:14'),
(54, 312, 17, 5.0, '2024-03-04 18:40:34', '2024-03-04 18:40:34'),
(55, 306, 17, 3.0, '2024-03-04 18:41:24', '2024-03-04 18:41:24'),
(56, 6, 16, 4.0, '2024-03-04 18:41:36', '2024-03-04 18:41:36'),
(57, 59, 17, 3.0, '2024-03-04 18:42:30', '2024-03-04 18:42:30'),
(58, 295, 16, 4.0, '2024-03-04 18:42:36', '2024-03-04 18:42:36'),
(59, 167, 17, 4.0, '2024-03-04 18:42:53', '2024-03-04 18:42:53'),
(60, 122, 16, 4.0, '2024-03-04 18:43:14', '2024-03-04 18:43:14'),
(61, 215, 18, 5.0, '2024-03-04 18:46:07', '2024-03-04 18:46:07'),
(62, 24, 8, 5.0, '2024-03-04 18:49:25', '2024-03-04 18:49:25'),
(63, 35, 15, 5.0, '2024-03-04 18:50:08', '2024-03-04 18:50:08'),
(64, 42, 12, 4.0, '2024-03-04 18:50:45', '2024-03-04 18:50:45'),
(65, 135, 15, 5.0, '2024-03-04 18:50:48', '2024-03-04 18:50:48'),
(66, 43, 12, 4.0, '2024-03-04 18:51:33', '2024-03-04 18:51:33'),
(67, 123, 12, 4.0, '2024-03-04 18:52:56', '2024-03-04 18:52:56'),
(68, 300, 12, 4.0, '2024-03-04 18:53:42', '2024-03-04 18:53:42'),
(69, 315, 12, 3.0, '2024-03-04 18:54:01', '2024-03-04 18:54:01'),
(70, 300, 8, 4.0, '2024-03-04 18:54:28', '2024-03-04 18:54:28'),
(71, 167, 12, 4.0, '2024-03-04 18:55:00', '2024-03-04 18:55:00'),
(72, 168, 12, 4.0, '2024-03-04 18:55:38', '2024-03-04 18:55:38'),
(73, 82, 12, 4.0, '2024-03-04 18:56:42', '2024-03-04 18:56:42'),
(74, 236, 12, 4.0, '2024-03-04 18:57:48', '2024-03-04 18:57:48'),
(75, 188, 19, 4.0, '2024-03-04 19:10:17', '2024-03-04 19:10:17'),
(76, 36, 19, 5.0, '2024-03-04 19:12:15', '2024-03-04 19:12:15'),
(77, 58, 21, 5.0, '2024-03-04 19:13:07', '2024-03-04 19:13:07'),
(78, 138, 19, 5.0, '2024-03-04 19:13:30', '2024-03-04 19:13:30'),
(79, 81, 21, 5.0, '2024-03-04 19:13:55', '2024-03-04 19:13:55'),
(80, 298, 19, 5.0, '2024-03-04 19:14:40', '2024-03-04 19:14:40'),
(81, 316, 20, 5.0, '2024-03-04 19:14:45', '2024-03-04 19:14:45'),
(82, 16, 21, 5.0, '2024-03-04 19:14:54', '2024-03-04 19:14:54'),
(83, 82, 19, 5.0, '2024-03-04 19:15:22', '2024-03-04 19:15:22'),
(84, 135, 21, 5.0, '2024-03-04 19:15:44', '2024-03-04 19:15:44'),
(85, 309, 21, 5.0, '2024-03-04 19:16:30', '2024-03-04 19:16:30'),
(86, 166, 21, 1.0, '2024-03-04 19:17:26', '2024-03-04 19:17:26'),
(87, 310, 22, 4.0, '2024-03-04 19:28:04', '2024-03-04 19:28:04'),
(88, 47, 22, 2.0, '2024-03-04 19:28:40', '2024-03-04 19:28:40'),
(89, 56, 22, 3.0, '2024-03-04 19:29:04', '2024-03-04 19:29:04'),
(90, 215, 22, 4.0, '2024-03-04 19:30:17', '2024-03-04 19:30:17'),
(91, 286, 23, 3.0, '2024-03-04 19:31:18', '2024-03-04 19:31:18'),
(92, 88, 25, 5.0, '2024-03-04 19:33:06', '2024-03-04 19:33:06'),
(93, 207, 24, 5.0, '2024-03-04 19:34:15', '2024-03-04 19:34:15'),
(94, 23, 23, 4.0, '2024-03-04 19:34:58', '2024-03-04 19:34:58'),
(95, 24, 24, 4.0, '2024-03-04 19:35:10', '2024-03-04 19:35:10'),
(96, 58, 23, 4.0, '2024-03-04 19:35:38', '2024-03-04 19:35:38'),
(97, 252, 24, 3.0, '2024-03-04 19:36:33', '2024-03-04 19:36:33'),
(98, 84, 22, 3.0, '2024-03-04 19:38:15', '2024-03-04 19:38:15'),
(99, 82, 22, 4.0, '2024-03-04 19:38:39', '2024-03-04 19:38:39'),
(100, 16, 22, 3.0, '2024-03-04 19:39:19', '2024-03-04 19:39:19'),
(101, 135, 22, 4.0, '2024-03-04 19:42:26', '2024-03-04 19:42:26'),
(102, 161, 23, 4.0, '2024-03-04 19:43:44', '2024-03-04 19:43:44'),
(103, 82, 23, 5.0, '2024-03-04 19:48:12', '2024-03-04 19:48:12'),
(104, 42, 23, 3.0, '2024-03-04 19:48:59', '2024-03-04 19:48:59'),
(105, 46, 28, 5.0, '2024-03-04 19:55:09', '2024-03-04 19:55:09'),
(106, 120, 28, 5.0, '2024-03-04 19:55:52', '2024-03-04 19:55:52'),
(107, 32, 25, 5.0, '2024-03-04 20:07:05', '2024-03-04 20:07:05'),
(108, 142, 25, 4.0, '2024-03-04 20:07:53', '2024-03-04 20:07:53'),
(109, 58, 29, 5.0, '2024-03-04 20:08:08', '2024-03-04 20:08:08'),
(110, 208, 29, 5.0, '2024-03-04 20:09:01', '2024-03-04 20:09:01'),
(111, 82, 29, 5.0, '2024-03-04 20:10:21', '2024-03-04 20:10:21'),
(112, 94, 29, 5.0, '2024-03-04 20:10:58', '2024-03-04 20:10:58'),
(113, 20, 29, 5.0, '2024-03-04 20:11:34', '2024-03-04 20:11:34'),
(114, 42, 29, 2.0, '2024-03-04 20:11:54', '2024-03-04 20:11:54'),
(115, 134, 29, 5.0, '2024-03-04 20:12:48', '2024-03-04 20:12:48'),
(116, 302, 29, 5.0, '2024-03-04 20:13:49', '2024-03-04 20:13:49'),
(117, 163, 29, 5.0, '2024-03-04 20:14:19', '2024-03-04 20:14:19'),
(118, 58, 33, 5.0, '2024-03-04 21:45:18', '2024-03-04 21:45:18'),
(119, 215, 33, 5.0, '2024-03-04 21:48:59', '2024-03-04 21:48:59'),
(120, 58, 34, 5.0, '2024-03-04 22:18:53', '2024-03-04 22:18:53'),
(121, 160, 35, 4.0, '2024-03-04 22:30:56', '2024-03-04 22:30:56'),
(122, 228, 30, 4.0, '2024-03-04 22:37:19', '2024-03-04 22:37:19'),
(123, 193, 30, 4.0, '2024-03-04 22:38:39', '2024-03-04 22:38:39'),
(124, 147, 30, 5.0, '2024-03-04 22:40:46', '2024-03-04 22:40:46'),
(125, 141, 30, 5.0, '2024-03-04 22:41:16', '2024-03-04 22:41:16'),
(126, 140, 30, 5.0, '2024-03-04 22:41:51', '2024-03-04 22:41:51'),
(127, 82, 36, 5.0, '2024-03-04 22:42:50', '2024-03-04 22:42:50'),
(128, 32, 30, 5.0, '2024-03-04 22:43:57', '2024-03-04 22:43:57'),
(129, 20, 36, 4.0, '2024-03-04 22:48:45', '2024-03-04 22:48:45'),
(130, 122, 36, 4.0, '2024-03-04 22:49:57', '2024-03-04 22:49:57'),
(131, 78, 37, 5.0, '2024-03-04 22:52:05', '2024-03-04 22:52:05'),
(132, 9, 37, 3.0, '2024-03-04 22:53:24', '2024-03-04 22:53:24'),
(133, 304, 39, 4.0, '2024-03-04 23:17:14', '2024-03-04 23:17:14'),
(134, 234, 39, 3.0, '2024-03-04 23:18:00', '2024-03-04 23:18:00'),
(135, 114, 37, 5.0, '2024-03-04 23:18:09', '2024-03-04 23:18:09'),
(136, 46, 40, 5.0, '2024-03-04 23:26:08', '2024-03-04 23:26:08'),
(137, 218, 41, 4.0, '2024-03-04 23:31:47', '2024-03-04 23:31:47'),
(138, 285, 41, 3.0, '2024-03-04 23:34:27', '2024-03-04 23:34:27'),
(139, 299, 41, 5.0, '2024-03-04 23:35:04', '2024-03-04 23:35:04'),
(140, 300, 41, 5.0, '2024-03-04 23:35:32', '2024-03-04 23:35:32'),
(141, 309, 41, 5.0, '2024-03-04 23:36:00', '2024-03-04 23:36:00'),
(142, 310, 41, 5.0, '2024-03-04 23:36:39', '2024-03-04 23:36:39'),
(143, 14, 41, 1.0, '2024-03-04 23:38:11', '2024-03-04 23:38:11'),
(144, 15, 41, 4.0, '2024-03-04 23:38:56', '2024-03-04 23:38:56'),
(145, 24, 41, 5.0, '2024-03-04 23:41:16', '2024-03-04 23:41:16'),
(146, 37, 41, 5.0, '2024-03-04 23:41:56', '2024-03-04 23:41:56'),
(147, 25, 41, 5.0, '2024-03-04 23:42:25', '2024-03-04 23:42:25'),
(148, 23, 41, 4.0, '2024-03-04 23:42:57', '2024-03-04 23:42:57'),
(149, 42, 41, 4.0, '2024-03-04 23:46:02', '2024-03-04 23:46:02'),
(150, 81, 41, 5.0, '2024-03-04 23:46:36', '2024-03-04 23:46:36'),
(151, 82, 41, 5.0, '2024-03-04 23:47:04', '2024-03-04 23:47:04'),
(152, 83, 41, 5.0, '2024-03-04 23:47:23', '2024-03-04 23:47:23'),
(153, 84, 41, 5.0, '2024-03-04 23:47:56', '2024-03-04 23:47:56'),
(154, 92, 41, 5.0, '2024-03-04 23:48:20', '2024-03-04 23:48:20'),
(155, 121, 41, 4.0, '2024-03-04 23:50:01', '2024-03-04 23:50:01'),
(156, 123, 41, 4.0, '2024-03-04 23:50:19', '2024-03-04 23:50:19'),
(157, 135, 41, 5.0, '2024-03-04 23:51:14', '2024-03-04 23:51:14'),
(158, 147, 41, 5.0, '2024-03-04 23:52:02', '2024-03-04 23:52:02'),
(159, 141, 41, 4.0, '2024-03-04 23:52:23', '2024-03-04 23:52:23'),
(160, 140, 41, 5.0, '2024-03-04 23:52:55', '2024-03-04 23:52:55'),
(161, 4, 32, 5.0, '2024-03-04 23:53:16', '2024-03-04 23:53:16'),
(162, 156, 41, 5.0, '2024-03-04 23:53:37', '2024-03-04 23:53:37'),
(163, 161, 41, 4.0, '2024-03-04 23:54:27', '2024-03-04 23:54:27'),
(164, 159, 41, 3.0, '2024-03-04 23:54:53', '2024-03-04 23:54:53'),
(165, 66, 41, 5.0, '2024-03-04 23:55:14', '2024-03-04 23:55:14'),
(166, 60, 41, 5.0, '2024-03-04 23:56:09', '2024-03-04 23:56:09'),
(167, 164, 41, 4.0, '2024-03-04 23:57:18', '2024-03-04 23:57:18'),
(168, 165, 41, 5.0, '2024-03-04 23:58:25', '2024-03-04 23:58:25'),
(169, 58, 41, 5.0, '2024-03-05 00:03:27', '2024-03-05 00:03:27'),
(170, 316, 42, 5.0, '2024-03-05 00:09:28', '2024-03-05 00:09:28'),
(171, 82, 43, 5.0, '2024-03-05 00:19:02', '2024-03-05 00:19:02'),
(172, 42, 43, 4.0, '2024-03-05 00:21:05', '2024-03-05 00:21:05'),
(173, 309, 43, 5.0, '2024-03-05 00:34:56', '2024-03-05 00:34:56'),
(174, 58, 44, 5.0, '2024-03-05 00:36:52', '2024-03-05 00:36:52'),
(175, 211, 44, 5.0, '2024-03-05 00:38:21', '2024-03-05 00:38:21'),
(176, 13, 44, 5.0, '2024-03-05 00:38:42', '2024-03-05 00:38:42'),
(177, 305, 44, 5.0, '2024-03-05 00:40:09', '2024-03-05 00:40:09'),
(178, 57, 42, 5.0, '2024-03-05 01:07:49', '2024-03-05 01:07:49'),
(179, 168, 42, 5.0, '2024-03-05 01:10:13', '2024-03-05 01:10:13'),
(180, 314, 42, 5.0, '2024-03-05 01:10:42', '2024-03-05 01:10:42'),
(181, 63, 42, 5.0, '2024-03-05 01:11:24', '2024-03-05 01:11:24'),
(182, 13, 45, 5.0, '2024-03-05 02:17:32', '2024-03-05 02:17:32'),
(183, 311, 46, 5.0, '2024-03-05 04:06:07', '2024-03-05 04:06:07'),
(184, 149, 46, 5.0, '2024-03-05 04:08:44', '2024-03-05 04:08:44'),
(185, 84, 46, 5.0, '2024-03-05 04:09:48', '2024-03-05 04:09:48'),
(186, 33, 46, 5.0, '2024-03-05 04:10:39', '2024-03-05 04:10:39'),
(187, 21, 46, 5.0, '2024-03-05 04:11:10', '2024-03-05 04:11:10'),
(188, 159, 46, 2.0, '2024-03-05 04:11:57', '2024-03-05 04:11:57'),
(189, 12, 47, 5.0, '2024-03-05 11:34:14', '2024-03-05 11:34:14'),
(190, 46, 48, 4.0, '2024-03-05 11:42:46', '2024-03-05 11:42:46'),
(191, 58, 47, 5.0, '2024-03-05 11:52:50', '2024-03-05 11:52:50'),
(192, 175, 47, 4.0, '2024-03-05 11:54:58', '2024-03-05 11:54:58'),
(193, 60, 47, 5.0, '2024-03-05 11:55:30', '2024-03-05 11:55:30'),
(194, 68, 47, 4.0, '2024-03-05 11:55:54', '2024-03-05 11:55:54'),
(195, 78, 47, 5.0, '2024-03-05 11:56:33', '2024-03-05 11:56:33'),
(196, 85, 47, 4.0, '2024-03-05 11:57:02', '2024-03-05 11:57:02'),
(197, 92, 47, 5.0, '2024-03-05 11:57:57', '2024-03-05 11:57:57'),
(198, 63, 47, 4.0, '2024-03-05 11:58:22', '2024-03-05 11:58:22'),
(199, 316, 49, 5.0, '2024-03-05 12:19:57', '2024-03-05 12:19:57'),
(200, 315, 49, 4.0, '2024-03-05 12:20:23', '2024-03-05 12:20:23'),
(201, 314, 49, 5.0, '2024-03-05 12:20:38', '2024-03-05 12:20:38'),
(202, 42, 47, 4.0, '2024-03-05 12:23:20', '2024-03-05 12:23:20'),
(203, 44, 47, 4.0, '2024-03-05 12:23:42', '2024-03-05 12:23:42'),
(204, 33, 49, 5.0, '2024-03-05 12:24:25', '2024-03-05 12:24:25'),
(205, 130, 47, 5.0, '2024-03-05 12:29:17', '2024-03-05 12:29:17'),
(206, 294, 47, 5.0, '2024-03-05 12:30:41', '2024-03-05 12:30:41'),
(207, 316, 47, 5.0, '2024-03-05 12:31:08', '2024-03-05 12:31:08'),
(208, 168, 47, 5.0, '2024-03-05 12:31:28', '2024-03-05 12:31:28'),
(209, 273, 47, 4.0, '2024-03-05 12:31:59', '2024-03-05 12:31:59'),
(210, 304, 50, 5.0, '2024-03-05 17:39:04', '2024-03-05 17:39:04'),
(211, 48, 50, 4.0, '2024-03-05 17:47:17', '2024-03-05 17:47:17'),
(212, 4, 50, 4.0, '2024-03-05 17:47:47', '2024-03-05 17:47:47'),
(213, 315, 50, 5.0, '2024-03-05 17:48:12', '2024-03-05 17:48:12'),
(214, 50, 45, 5.0, '2024-03-05 18:27:25', '2024-03-05 18:27:25'),
(215, 116, 45, 5.0, '2024-03-05 18:28:07', '2024-03-05 18:28:07'),
(216, 302, 51, 4.0, '2024-03-05 22:32:48', '2024-03-05 22:32:48'),
(217, 35, 51, 5.0, '2024-03-05 22:34:12', '2024-03-05 22:34:12'),
(218, 82, 51, 5.0, '2024-03-05 22:36:57', '2024-03-05 22:36:57'),
(219, 82, 52, 5.0, '2024-03-05 23:36:49', '2024-03-05 23:36:49'),
(220, 316, 32, 5.0, '2024-03-10 01:31:32', '2024-03-10 01:31:32'),
(221, 46, 32, 5.0, '2024-03-10 01:31:59', '2024-03-10 01:31:59'),
(222, 171, 32, 5.0, '2024-03-10 01:32:15', '2024-03-10 01:32:15'),
(223, 59, 32, 5.0, '2024-03-10 01:32:28', '2024-03-10 01:32:28'),
(224, 69, 32, 5.0, '2024-03-10 01:32:43', '2024-03-10 01:32:43'),
(225, 79, 32, 5.0, '2024-03-10 01:33:04', '2024-03-10 01:33:04'),
(226, 87, 32, 5.0, '2024-03-10 01:34:14', '2024-03-10 01:34:14'),
(227, 87, 32, 5.0, '2024-03-10 01:34:14', '2024-03-10 01:34:14'),
(228, 62, 32, 5.0, '2024-03-10 01:34:27', '2024-03-10 01:34:27'),
(229, 62, 32, 5.0, '2024-03-10 01:34:27', '2024-03-10 01:34:27'),
(230, 39, 32, 5.0, '2024-03-10 01:35:00', '2024-03-10 01:35:00'),
(231, 43, 32, 5.0, '2024-03-10 01:35:17', '2024-03-10 01:35:17'),
(232, 114, 32, 5.0, '2024-03-10 01:35:55', '2024-03-10 01:35:55'),
(233, 274, 32, 5.0, '2024-03-10 01:36:08', '2024-03-10 01:36:08'),
(234, 274, 32, 5.0, '2024-03-10 01:36:08', '2024-03-10 01:36:08'),
(235, 314, 32, 5.0, '2024-03-10 01:36:23', '2024-03-10 01:36:23'),
(236, 163, 32, 5.0, '2024-03-10 01:36:42', '2024-03-10 01:36:42'),
(237, 168, 32, 5.0, '2024-03-10 01:36:58', '2024-03-10 01:36:58'),
(238, 260, 32, 5.0, '2024-03-10 01:37:12', '2024-03-10 01:37:12'),
(239, 82, 54, 5.0, '2024-03-11 13:16:06', '2024-03-11 13:16:06'),
(240, 232, 54, 5.0, '2024-03-11 13:17:12', '2024-03-11 13:17:12'),
(241, 121, 54, 5.0, '2024-03-11 13:19:07', '2024-03-11 13:19:07'),
(242, 300, 54, 5.0, '2024-03-11 13:20:34', '2024-03-11 13:20:34'),
(243, 45, 54, 5.0, '2024-03-11 13:22:32', '2024-03-11 13:22:32'),
(244, 56, 54, 4.0, '2024-03-11 13:22:54', '2024-03-11 13:22:54'),
(245, 61, 54, 5.0, '2024-03-11 13:23:09', '2024-03-11 13:23:09'),
(246, 65, 54, 4.0, '2024-03-11 13:23:25', '2024-03-11 13:23:25'),
(247, 75, 54, 4.0, '2024-03-11 13:23:47', '2024-03-11 13:23:47'),
(248, 95, 54, 5.0, '2024-03-11 13:24:33', '2024-03-11 13:24:33'),
(249, 63, 54, 4.0, '2024-03-11 13:24:46', '2024-03-11 13:24:46'),
(250, 34, 54, 4.0, '2024-03-11 13:25:25', '2024-03-11 13:25:25'),
(251, 40, 54, 4.0, '2024-03-11 13:25:39', '2024-03-11 13:25:39'),
(252, 313, 55, 5.0, '2024-03-11 13:26:25', '2024-03-11 13:26:25'),
(253, 123, 54, 5.0, '2024-03-11 13:26:28', '2024-03-11 13:26:28'),
(254, 165, 54, 5.0, '2024-03-11 13:27:26', '2024-03-11 13:27:26'),
(255, 168, 54, 4.0, '2024-03-11 13:27:41', '2024-03-11 13:27:41'),
(256, 311, 56, 4.0, '2024-03-11 13:27:51', '2024-03-11 13:27:51'),
(257, 311, 55, 5.0, '2024-03-11 13:55:50', '2024-03-11 13:55:50'),
(258, 219, 15, 5.0, '2024-03-11 14:37:13', '2024-03-11 14:37:13'),
(259, 61, 15, 5.0, '2024-03-11 14:37:53', '2024-03-11 14:37:53'),
(260, 68, 15, 5.0, '2024-03-11 14:38:18', '2024-03-11 14:38:18'),
(261, 78, 15, 5.0, '2024-03-11 14:38:52', '2024-03-11 14:38:52'),
(262, 85, 15, 4.0, '2024-03-11 14:39:20', '2024-03-11 14:39:20'),
(263, 93, 15, 5.0, '2024-03-11 14:40:11', '2024-03-11 14:40:11'),
(264, 62, 15, 5.0, '2024-03-11 14:40:37', '2024-03-11 14:40:37'),
(265, 39, 15, 5.0, '2024-03-11 14:41:22', '2024-03-11 14:41:22'),
(266, 43, 15, 5.0, '2024-03-11 14:41:38', '2024-03-11 14:41:38'),
(267, 282, 15, 5.0, '2024-03-11 14:42:45', '2024-03-11 14:42:45'),
(268, 316, 15, 4.0, '2024-03-11 14:43:04', '2024-03-11 14:43:04'),
(269, 165, 15, 5.0, '2024-03-11 14:43:26', '2024-03-11 14:43:26'),
(270, 169, 15, 4.0, '2024-03-11 14:43:45', '2024-03-11 14:43:45'),
(271, 261, 15, 5.0, '2024-03-11 14:44:12', '2024-03-11 14:44:12'),
(272, 57, 57, 5.0, '2024-03-11 14:49:57', '2024-03-11 14:49:57'),
(273, 187, 57, 5.0, '2024-03-11 14:50:14', '2024-03-11 14:50:14'),
(274, 60, 57, 4.0, '2024-03-11 14:50:30', '2024-03-11 14:50:30'),
(275, 67, 57, 5.0, '2024-03-11 14:50:45', '2024-03-11 14:50:45'),
(276, 75, 57, 5.0, '2024-03-11 14:50:58', '2024-03-11 14:50:58'),
(277, 85, 57, 5.0, '2024-03-11 14:51:22', '2024-03-11 14:51:22'),
(278, 94, 57, 5.0, '2024-03-11 14:51:39', '2024-03-11 14:51:39'),
(279, 6, 57, 5.0, '2024-03-11 14:52:05', '2024-03-11 14:52:05'),
(280, 42, 57, 5.0, '2024-03-11 14:52:28', '2024-03-11 14:52:28'),
(281, 44, 57, 5.0, '2024-03-11 14:52:48', '2024-03-11 14:52:48'),
(282, 120, 57, 5.0, '2024-03-11 14:53:18', '2024-03-11 14:53:18'),
(283, 280, 57, 5.0, '2024-03-11 14:53:35', '2024-03-11 14:53:35'),
(284, 315, 57, 4.0, '2024-03-11 14:53:52', '2024-03-11 14:53:52'),
(285, 164, 57, 4.0, '2024-03-11 14:54:24', '2024-03-11 14:54:24'),
(286, 168, 57, 5.0, '2024-03-11 14:54:57', '2024-03-11 14:54:57'),
(287, 265, 57, 5.0, '2024-03-11 14:55:23', '2024-03-11 14:55:23'),
(288, 316, 58, 5.0, '2024-03-11 15:24:06', '2024-03-11 15:24:06'),
(289, 311, 59, 5.0, '2024-03-11 17:32:33', '2024-03-11 17:32:33'),
(290, 286, 59, 4.0, '2024-03-11 17:33:27', '2024-03-11 17:33:27'),
(291, 255, 59, 2.0, '2024-03-11 17:34:08', '2024-03-11 17:34:08'),
(292, 211, 59, 5.0, '2024-03-11 17:34:58', '2024-03-11 17:34:58'),
(293, 215, 59, 3.0, '2024-03-11 17:35:21', '2024-03-11 17:35:21'),
(294, 170, 59, 5.0, '2024-03-11 17:36:11', '2024-03-11 17:36:11'),
(295, 141, 59, 5.0, '2024-03-11 17:36:56', '2024-03-11 17:36:56'),
(296, 57, 59, 5.0, '2024-03-11 17:37:34', '2024-03-11 17:37:34'),
(297, 56, 59, 4.0, '2024-03-11 17:37:55', '2024-03-11 17:37:55'),
(298, 28, 59, 5.0, '2024-03-11 17:38:21', '2024-03-11 17:38:21'),
(299, 21, 59, 5.0, '2024-03-11 17:50:21', '2024-03-11 17:50:21'),
(300, 13, 59, 5.0, '2024-03-11 17:50:39', '2024-03-11 17:50:39'),
(301, 233, 59, 2.0, '2024-03-11 17:51:02', '2024-03-11 17:51:02'),
(302, 47, 60, 5.0, '2024-03-11 19:04:19', '2024-03-11 19:04:19'),
(303, 214, 60, 5.0, '2024-03-11 19:05:11', '2024-03-11 19:05:11'),
(304, 60, 60, 5.0, '2024-03-11 19:05:31', '2024-03-11 19:05:31'),
(305, 64, 60, 5.0, '2024-03-11 19:05:46', '2024-03-11 19:05:46'),
(306, 74, 60, 5.0, '2024-03-11 19:06:06', '2024-03-11 19:06:06'),
(307, 81, 60, 5.0, '2024-03-11 19:06:24', '2024-03-11 19:06:24'),
(308, 96, 60, 5.0, '2024-03-11 19:06:48', '2024-03-11 19:06:48'),
(309, 25, 60, 5.0, '2024-03-11 19:07:41', '2024-03-11 19:07:41'),
(310, 120, 60, 5.0, '2024-03-11 19:08:21', '2024-03-11 19:08:21'),
(311, 278, 61, 5.0, '2024-03-11 19:49:54', '2024-03-11 19:49:54'),
(312, 252, 61, 4.0, '2024-03-11 19:51:01', '2024-03-11 19:51:01'),
(313, 228, 61, 5.0, '2024-03-11 19:51:40', '2024-03-11 19:51:40'),
(314, 199, 61, 4.0, '2024-03-11 19:52:16', '2024-03-11 19:52:16'),
(315, 193, 61, 4.0, '2024-03-11 19:52:48', '2024-03-11 19:52:48'),
(316, 161, 61, 5.0, '2024-03-11 19:53:49', '2024-03-11 19:53:49'),
(317, 147, 61, 5.0, '2024-03-11 19:54:52', '2024-03-11 19:54:52'),
(318, 135, 61, 5.0, '2024-03-11 19:55:45', '2024-03-11 19:55:45'),
(319, 82, 61, 5.0, '2024-03-11 19:57:00', '2024-03-11 19:57:00'),
(320, 58, 61, 5.0, '2024-03-11 19:57:32', '2024-03-11 19:57:32'),
(321, 23, 61, 5.0, '2024-03-11 19:58:38', '2024-03-11 19:58:38'),
(322, 211, 62, 5.0, '2024-03-11 21:05:44', '2024-03-11 21:05:44'),
(323, 191, 63, 4.0, '2024-03-11 21:57:40', '2024-03-11 21:57:40'),
(324, 217, 48, 4.0, '2024-03-12 11:10:50', '2024-03-12 11:10:50'),
(325, 121, 48, 5.0, '2024-03-12 11:13:02', '2024-03-12 11:13:02'),
(326, 122, 48, 5.0, '2024-03-12 11:13:23', '2024-03-12 11:13:23'),
(327, 6, 48, 5.0, '2024-03-12 11:14:41', '2024-03-12 11:14:41'),
(328, 30, 48, 4.0, '2024-03-12 11:15:33', '2024-03-12 11:15:33'),
(329, 81, 48, 4.0, '2024-03-12 11:16:08', '2024-03-12 11:16:08'),
(330, 316, 65, 5.0, '2024-03-12 11:42:40', '2024-03-12 11:42:40'),
(331, 47, 65, 5.0, '2024-03-12 11:43:11', '2024-03-12 11:43:11'),
(332, 195, 65, 5.0, '2024-03-12 11:49:48', '2024-03-12 11:49:48'),
(333, 39, 65, 5.0, '2024-03-12 11:50:50', '2024-03-12 11:50:50'),
(334, 276, 65, 5.0, '2024-03-12 11:52:21', '2024-03-12 11:52:21'),
(335, 43, 65, 5.0, '2024-03-12 11:53:46', '2024-03-12 11:53:46'),
(336, 265, 65, 5.0, '2024-03-12 11:54:02', '2024-03-12 11:54:02'),
(337, 122, 65, 5.0, '2024-03-12 11:54:27', '2024-03-12 11:54:27'),
(338, 62, 65, 5.0, '2024-03-12 11:54:55', '2024-03-12 11:54:55'),
(339, 85, 65, 5.0, '2024-03-12 12:02:13', '2024-03-12 12:02:13'),
(340, 96, 65, 5.0, '2024-03-12 12:02:32', '2024-03-12 12:02:32'),
(341, 68, 65, 5.0, '2024-03-12 12:02:49', '2024-03-12 12:02:49'),
(342, 283, 65, 5.0, '2024-03-12 12:03:21', '2024-03-12 12:03:21'),
(343, 229, 65, 5.0, '2024-03-12 12:04:19', '2024-03-12 12:04:19'),
(344, 311, 64, 5.0, '2024-03-12 12:33:34', '2024-03-12 12:33:34'),
(345, 313, 64, 4.0, '2024-03-12 13:09:23', '2024-03-12 13:09:23'),
(346, 267, 64, 5.0, '2024-03-12 13:13:34', '2024-03-12 13:13:34'),
(347, 258, 64, 4.0, '2024-03-12 13:13:51', '2024-03-12 13:13:51'),
(348, 310, 26, 5.0, '2024-03-12 13:39:35', '2024-03-12 13:39:35'),
(349, 82, 26, 5.0, '2024-03-12 13:40:18', '2024-03-12 13:40:18'),
(350, 18, 26, 5.0, '2024-03-12 13:41:02', '2024-03-12 13:41:02'),
(351, 40, 26, 4.0, '2024-03-12 13:41:52', '2024-03-12 13:41:52'),
(352, 43, 26, 4.0, '2024-03-12 13:42:30', '2024-03-12 13:42:30'),
(353, 179, 26, 4.0, '2024-03-12 13:43:36', '2024-03-12 13:43:36'),
(354, 59, 26, 5.0, '2024-03-12 13:43:53', '2024-03-12 13:43:53'),
(355, 68, 26, 5.0, '2024-03-12 13:44:10', '2024-03-12 13:44:10'),
(356, 78, 26, 5.0, '2024-03-12 13:44:36', '2024-03-12 13:44:36'),
(357, 95, 26, 5.0, '2024-03-12 13:45:06', '2024-03-12 13:45:06'),
(358, 62, 26, 5.0, '2024-03-12 13:45:30', '2024-03-12 13:45:30'),
(359, 140, 26, 5.0, '2024-03-12 13:46:24', '2024-03-12 13:46:24'),
(360, 141, 26, 5.0, '2024-03-12 13:46:38', '2024-03-12 13:46:38'),
(361, 298, 26, 4.0, '2024-03-12 13:47:29', '2024-03-12 13:47:29'),
(362, 315, 26, 3.0, '2024-03-12 13:47:48', '2024-03-12 13:47:48'),
(363, 163, 26, 5.0, '2024-03-12 13:48:07', '2024-03-12 13:48:07'),
(364, 170, 26, 3.0, '2024-03-12 13:48:24', '2024-03-12 13:48:24'),
(365, 261, 26, 5.0, '2024-03-12 13:48:48', '2024-03-12 13:48:48'),
(366, 309, 66, 5.0, '2024-03-12 13:49:04', '2024-03-12 13:49:04'),
(367, 311, 66, 4.0, '2024-03-12 13:49:27', '2024-03-12 13:49:27'),
(368, 24, 63, 4.0, '2024-03-12 14:00:07', '2024-03-12 14:00:07'),
(369, 147, 63, 3.0, '2024-03-12 14:01:20', '2024-03-12 14:01:20'),
(370, 79, 63, 4.0, '2024-03-12 14:02:16', '2024-03-12 14:02:16'),
(371, 43, 63, 3.0, '2024-03-12 14:02:40', '2024-03-12 14:02:40'),
(372, 57, 63, 4.0, '2024-03-12 14:03:30', '2024-03-12 14:03:30'),
(373, 299, 66, 5.0, '2024-03-12 14:19:26', '2024-03-12 14:19:26'),
(374, 292, 66, 3.0, '2024-03-12 14:20:26', '2024-03-12 14:20:26'),
(375, 254, 66, 3.0, '2024-03-12 14:21:23', '2024-03-12 14:21:23'),
(376, 251, 66, 4.0, '2024-03-12 14:21:46', '2024-03-12 14:21:46'),
(377, 227, 66, 5.0, '2024-03-12 14:22:32', '2024-03-12 14:22:32'),
(378, 219, 66, 5.0, '2024-03-12 14:23:00', '2024-03-12 14:23:00'),
(379, 207, 66, 4.0, '2024-03-12 14:23:30', '2024-03-12 14:23:30'),
(380, 178, 66, 4.0, '2024-03-12 14:24:12', '2024-03-12 14:24:12'),
(381, 166, 66, 5.0, '2024-03-12 14:26:27', '2024-03-12 14:26:27'),
(382, 149, 66, 5.0, '2024-03-12 14:29:59', '2024-03-12 14:29:59'),
(383, 140, 66, 5.0, '2024-03-12 14:31:23', '2024-03-12 14:31:23'),
(384, 139, 66, 5.0, '2024-03-12 14:31:42', '2024-03-12 14:31:42'),
(385, 135, 66, 5.0, '2024-03-12 14:31:56', '2024-03-12 14:31:56'),
(386, 116, 66, 4.0, '2024-03-12 14:32:52', '2024-03-12 14:32:52'),
(387, 99, 66, 4.0, '2024-03-12 14:33:27', '2024-03-12 14:33:27'),
(388, 98, 66, 4.0, '2024-03-12 14:33:38', '2024-03-12 14:33:38'),
(389, 97, 66, 4.0, '2024-03-12 14:33:49', '2024-03-12 14:33:49'),
(390, 96, 66, 4.0, '2024-03-12 14:34:05', '2024-03-12 14:34:05'),
(391, 85, 66, 3.0, '2024-03-12 14:34:29', '2024-03-12 14:34:29'),
(392, 88, 66, 2.0, '2024-03-12 14:34:50', '2024-03-12 14:34:50'),
(393, 88, 66, 2.0, '2024-03-12 14:34:51', '2024-03-12 14:34:51'),
(394, 82, 66, 5.0, '2024-03-12 14:35:06', '2024-03-12 14:35:06'),
(395, 84, 66, 3.0, '2024-03-12 14:35:23', '2024-03-12 14:35:23'),
(396, 73, 66, 2.0, '2024-03-12 14:35:48', '2024-03-12 14:35:48'),
(397, 71, 66, 3.0, '2024-03-12 14:36:06', '2024-03-12 14:36:06'),
(398, 58, 66, 4.0, '2024-03-12 14:36:28', '2024-03-12 14:36:28'),
(399, 55, 66, 2.0, '2024-03-12 14:36:39', '2024-03-12 14:36:39'),
(400, 51, 66, 3.0, '2024-03-12 14:36:55', '2024-03-12 14:36:55'),
(401, 47, 66, 4.0, '2024-03-12 14:37:14', '2024-03-12 14:37:14'),
(402, 42, 66, 4.0, '2024-03-12 14:37:40', '2024-03-12 14:37:40'),
(403, 35, 66, 2.0, '2024-03-12 14:37:59', '2024-03-12 14:37:59'),
(404, 26, 66, 5.0, '2024-03-12 14:38:25', '2024-03-12 14:38:25'),
(405, 24, 66, 3.0, '2024-03-12 14:38:38', '2024-03-12 14:38:38'),
(406, 18, 66, 4.0, '2024-03-12 14:38:50', '2024-03-12 14:38:50'),
(407, 14, 66, 2.0, '2024-03-12 14:39:10', '2024-03-12 14:39:10'),
(408, 14, 66, 2.0, '2024-03-12 14:39:10', '2024-03-12 14:39:10'),
(409, 313, 52, 4.0, '2024-03-12 15:37:16', '2024-03-12 15:37:16'),
(410, 310, 52, 5.0, '2024-03-12 15:37:36', '2024-03-12 15:37:36'),
(411, 280, 52, 5.0, '2024-03-12 15:37:57', '2024-03-12 15:37:57'),
(412, 259, 52, 3.0, '2024-03-12 15:38:20', '2024-03-12 15:38:20'),
(413, 215, 52, 5.0, '2024-03-12 15:38:37', '2024-03-12 15:38:37'),
(414, 147, 52, 5.0, '2024-03-12 15:38:58', '2024-03-12 15:38:58'),
(415, 137, 52, 5.0, '2024-03-12 15:39:20', '2024-03-12 15:39:20'),
(416, 123, 52, 5.0, '2024-03-12 15:39:47', '2024-03-12 15:39:47'),
(417, 87, 52, 3.0, '2024-03-12 15:40:11', '2024-03-12 15:40:11'),
(418, 73, 52, 5.0, '2024-03-12 15:40:26', '2024-03-12 15:40:26'),
(419, 35, 52, 5.0, '2024-03-12 15:40:47', '2024-03-12 15:40:47'),
(420, 47, 56, 4.0, '2024-03-12 17:29:17', '2024-03-12 17:29:17'),
(421, 310, 67, 4.0, '2024-03-12 18:44:50', '2024-03-12 18:44:50'),
(422, 58, 67, 4.0, '2024-03-12 18:45:33', '2024-03-12 18:45:33'),
(423, 211, 67, 4.0, '2024-03-12 18:46:39', '2024-03-12 18:46:39'),
(424, 59, 67, 4.0, '2024-03-12 18:47:04', '2024-03-12 18:47:04'),
(425, 64, 67, 3.0, '2024-03-12 18:47:25', '2024-03-12 18:47:25'),
(426, 84, 67, 4.0, '2024-03-12 18:48:29', '2024-03-12 18:48:29'),
(427, 97, 67, 4.0, '2024-03-12 18:49:25', '2024-03-12 18:49:25'),
(428, 62, 67, 3.0, '2024-03-12 18:50:14', '2024-03-12 18:50:14'),
(429, 14, 67, 5.0, '2024-03-12 18:50:57', '2024-03-12 18:50:57'),
(430, 42, 67, 4.0, '2024-03-12 18:51:11', '2024-03-12 18:51:11'),
(431, 44, 67, 3.0, '2024-03-12 18:51:32', '2024-03-12 18:51:32'),
(432, 122, 67, 5.0, '2024-03-12 18:52:48', '2024-03-12 18:52:48'),
(433, 146, 67, 4.0, '2024-03-12 18:54:39', '2024-03-12 18:54:39'),
(434, 294, 67, 5.0, '2024-03-12 18:55:27', '2024-03-12 18:55:27'),
(435, 315, 67, 4.0, '2024-03-12 18:55:43', '2024-03-12 18:55:43'),
(436, 166, 67, 4.0, '2024-03-12 18:56:12', '2024-03-12 18:56:12'),
(437, 168, 67, 5.0, '2024-03-12 18:56:27', '2024-03-12 18:56:27'),
(438, 262, 67, 4.0, '2024-03-12 18:57:24', '2024-03-12 18:57:24'),
(439, 176, 2, 5.0, '2024-05-19 06:20:27', '2024-05-19 06:20:27'),
(446, 176, 79, 5.0, '2024-06-03 00:33:24', '2024-06-03 00:33:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `gender` enum('Laki-laki','Perempuan') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` enum('18-25','26-35','36-45','45+') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skin_type_face` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hair_issue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skin_type_body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allergy_history` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `preferred_products` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `avoided_products` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `specific_needs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data untuk tabel `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `gender`, `age`, `skin_type_face`, `hair_issue`, `skin_type_body`, `allergy_history`, `preferred_products`, `avoided_products`, `specific_needs`, `created_at`, `updated_at`) VALUES
(1, 2, 'Laki-laki', '18-25', 'normal', 'normal', 'normal', '[\"kandungan_kimia\"]', '[\"bahan_alami\"]', '[\"sls\"]', '[\"menghilangkan_jerawat\"]', '2024-02-28 14:46:36', '2024-05-19 04:26:27'),
(2, 3, 'Perempuan', '18-25', 'berminyak', 'berminyak', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[\"pewangi\"]', '[\"meratakan_warna_kulit\", \"menghilangkan_jerawat\", \"menghidrasi\", \"perlindungan_matahari\"]', '2024-03-02 22:44:44', '2024-03-02 22:45:36'),
(3, 4, 'Laki-laki', '18-25', 'kering', 'kering', 'kering', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\",\"pewangi\"]', '[\"paraben\",\"sls\"]', '[\"menghilangkan_jerawat\",\"perlindungan_matahari\",\"menghilangkan_noda_hitam\"]', '2024-03-03 18:05:32', '2024-06-02 21:46:22'),
(4, 5, NULL, NULL, NULL, NULL, NULL, '[]', '[]', '[]', '[]', '2024-03-03 18:38:09', '2024-03-03 18:38:09'),
(5, 6, NULL, NULL, NULL, NULL, NULL, '[]', '[]', '[]', '[]', '2024-03-03 23:35:56', '2024-03-03 23:35:56'),
(6, 7, 'Perempuan', '18-25', 'normal', 'berminyak', 'normal', '[\"tidak_ada_alergi\"]', '[\"cruelty_free\", \"pewangi\", \"minyak_mineral\"]', '[\"paraben\", \"sls\"]', '[\"meratakan_warna_kulit\", \"perlindungan_matahari\"]', '2024-03-04 17:42:02', '2024-03-04 17:42:46'),
(7, 8, 'Perempuan', '18-25', 'sensitif', 'kering', 'kering', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[\"paraben\"]', '[\"anti_aging\", \"meratakan_warna_kulit\", \"menghilangkan_jerawat\", \"menghidrasi\", \"perlindungan_matahari\", \"menghilangkan_noda_hitam\"]', '2024-03-04 17:47:47', '2024-03-04 17:49:03'),
(8, 9, 'Laki-laki', '36-45', 'kombinasi', 'ketombe', 'normal', '[\"pewarna\", \"kandungan_kimia\", \"tidak_ada_alergi\"]', '[\"bahan_alami\", \"cruelty_free\", \"pewangi\", \"paraben\", \"minyak_mineral\"]', '[\"cruelty_free\", \"sls\"]', '[\"anti_aging\", \"meratakan_warna_kulit\", \"menghilangkan_jerawat\", \"menghilangkan_noda_hitam\"]', '2024-03-04 17:52:08', '2024-03-04 17:52:54'),
(9, 10, 'Laki-laki', '18-25', 'kombinasi', 'ketombe', 'berminyak', '[\"pewangi\", \"pewarna\", \"kandungan_kimia\"]', '[\"vegan\", \"pewangi\", \"paraben\", \"sls\", \"minyak_mineral\"]', '[\"bahan_alami\", \"paraben\", \"sls\"]', '[\"anti_aging\", \"meratakan_warna_kulit\", \"menghilangkan_jerawat\", \"menghidrasi\", \"perlindungan_matahari\"]', '2024-03-04 17:53:59', '2024-03-04 17:54:22'),
(10, 11, 'Laki-laki', '18-25', 'normal', 'ketombe', 'berminyak', '[\"pewangi\", \"pewarna\", \"kandungan_kimia\", \"tidak_ada_alergi\"]', '[\"bahan_alami\", \"vegan\", \"cruelty_free\", \"paraben\"]', '[\"vegan\", \"cruelty_free\", \"pewangi\", \"paraben\", \"sls\", \"minyak_mineral\"]', '[\"anti_aging\", \"meratakan_warna_kulit\", \"menghilangkan_jerawat\", \"menghidrasi\", \"perlindungan_matahari\", \"menghilangkan_noda_hitam\"]', '2024-03-04 17:56:24', '2024-03-04 17:57:27'),
(11, 12, NULL, NULL, NULL, NULL, NULL, '[]', '[]', '[]', '[]', '2024-03-04 18:02:52', '2024-03-04 18:02:52'),
(12, 13, 'Perempuan', '18-25', 'berminyak', 'ketombe', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\", \"pewangi\"]', '[\"sls\", \"minyak_mineral\"]', '[\"meratakan_warna_kulit\", \"menghilangkan_jerawat\", \"perlindungan_matahari\", \"menghilangkan_noda_hitam\"]', '2024-03-04 18:06:50', '2024-03-04 18:07:51'),
(13, 14, 'Perempuan', '18-25', 'berminyak', 'normal', 'normal', '[\"tidak_ada_alergi\"]', '[\"cruelty_free\", \"pewangi\"]', '[]', '[\"meratakan_warna_kulit\", \"menghilangkan_jerawat\", \"perlindungan_matahari\", \"menghilangkan_noda_hitam\"]', '2024-03-04 18:24:49', '2024-03-04 18:25:41'),
(14, 15, 'Laki-laki', '18-25', 'berminyak', 'kering', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\", \"pewangi\"]', '[\"cruelty_free\", \"sls\"]', '[\"menghilangkan_jerawat\"]', '2024-03-04 18:28:18', '2024-03-04 18:30:07'),
(15, 16, 'Laki-laki', '18-25', 'normal', 'kering', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\", \"pewangi\"]', '[\"sls\"]', '[\"meratakan_warna_kulit\", \"menghilangkan_jerawat\", \"perlindungan_matahari\", \"menghilangkan_noda_hitam\"]', '2024-03-04 18:29:41', '2024-03-04 18:36:04'),
(16, 17, 'Laki-laki', '18-25', 'normal', 'normal', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[\"sls\"]', '[\"perlindungan_matahari\"]', '2024-03-04 18:37:24', '2024-03-04 18:38:15'),
(17, 18, 'Laki-laki', '18-25', 'berminyak', 'kering', NULL, '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[]', '[\"menghidrasi\", \"perlindungan_matahari\"]', '2024-03-04 18:42:56', '2024-03-04 18:44:26'),
(18, 19, 'Laki-laki', '18-25', 'berminyak', 'normal', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\", \"pewangi\"]', '[\"minyak_mineral\"]', '[\"meratakan_warna_kulit\", \"menghidrasi\", \"menghilangkan_noda_hitam\"]', '2024-03-04 19:05:24', '2024-03-04 19:07:03'),
(19, 20, 'Perempuan', '18-25', 'berminyak', 'ketombe', 'kering', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[\"pewangi\"]', '[\"menghilangkan_jerawat\", \"perlindungan_matahari\"]', '2024-03-04 19:09:21', '2024-03-04 19:10:05'),
(20, 21, 'Perempuan', '18-25', 'kombinasi', 'rontok', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\", \"vegan\", \"minyak_mineral\"]', '[\"pewangi\"]', '[\"menghilangkan_jerawat\", \"menghidrasi\"]', '2024-03-04 19:09:38', '2024-03-04 19:11:03'),
(21, 22, 'Perempuan', '18-25', 'normal', 'rontok', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[\"sls\"]', '[\"anti_aging\", \"meratakan_warna_kulit\", \"menghilangkan_jerawat\", \"menghidrasi\", \"perlindungan_matahari\", \"menghilangkan_noda_hitam\"]', '2024-03-04 19:26:36', '2024-03-04 19:27:40'),
(22, 23, 'Perempuan', '18-25', 'sensitif', 'kering', 'normal', '[\"kandungan_kimia\"]', '[\"bahan_alami\"]', '[\"sls\"]', '[\"perlindungan_matahari\"]', '2024-03-04 19:29:14', '2024-03-04 19:30:57'),
(23, 24, 'Laki-laki', '18-25', 'berminyak', 'normal', 'kering', '[\"tidak_ada_alergi\"]', '[\"pewangi\", \"minyak_mineral\"]', '[\"pewangi\", \"sls\"]', '[\"menghilangkan_jerawat\", \"perlindungan_matahari\", \"menghilangkan_noda_hitam\"]', '2024-03-04 19:29:41', '2024-03-04 19:31:17'),
(24, 25, 'Laki-laki', '18-25', 'berminyak', 'kering', 'kering', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\", \"pewangi\"]', '[]', '[\"menghilangkan_jerawat\", \"menghilangkan_noda_hitam\"]', '2024-03-04 19:30:50', '2024-03-04 19:31:28'),
(25, 26, 'Laki-laki', '18-25', 'sensitif', 'normal', 'normal', '[\"kandungan_kimia\"]', '[\"bahan_alami\", \"pewangi\", \"sls\"]', '[\"minyak_mineral\"]', '[\"meratakan_warna_kulit\", \"menghilangkan_jerawat\", \"perlindungan_matahari\"]', '2024-03-04 19:36:52', '2024-03-04 19:39:00'),
(26, 27, 'Perempuan', '18-25', 'berminyak', 'berminyak', 'kombinasi', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\", \"vegan\", \"pewangi\"]', '[\"paraben\", \"sls\"]', '[\"menghilangkan_jerawat\", \"perlindungan_matahari\", \"menghilangkan_noda_hitam\"]', '2024-03-04 19:48:46', '2024-03-04 19:49:42'),
(27, 28, 'Perempuan', '18-25', 'berminyak', 'berminyak', 'kombinasi', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\", \"pewangi\"]', '[\"paraben\"]', '[\"meratakan_warna_kulit\", \"menghilangkan_jerawat\", \"perlindungan_matahari\"]', '2024-03-04 19:53:06', '2024-03-04 19:54:32'),
(28, 29, 'Perempuan', '18-25', 'normal', 'berminyak', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\", \"vegan\"]', '[\"paraben\"]', '[\"anti_aging\", \"perlindungan_matahari\", \"menghilangkan_noda_hitam\"]', '2024-03-04 20:01:01', '2024-03-04 20:05:51'),
(29, 30, 'Laki-laki', '18-25', 'kombinasi', 'normal', 'kering', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[\"sls\"]', '[\"anti_aging\", \"meratakan_warna_kulit\", \"menghilangkan_jerawat\", \"menghidrasi\", \"perlindungan_matahari\", \"menghilangkan_noda_hitam\"]', '2024-03-04 20:22:27', '2024-03-04 20:23:31'),
(30, 31, 'Perempuan', '18-25', 'normal', 'ketombe', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\", \"paraben\"]', '[\"pewangi\"]', '[\"menghilangkan_jerawat\"]', '2024-03-04 20:38:00', '2024-03-04 20:38:36'),
(31, 32, 'Perempuan', '18-25', 'sensitif', 'ketombe', 'kombinasi', '[\"kandungan_kimia\"]', '[\"cruelty_free\"]', '[\"sls\"]', '[\"perlindungan_matahari\"]', '2024-03-04 20:39:54', '2024-03-04 20:40:26'),
(32, 33, 'Perempuan', '18-25', 'sensitif', 'ketombe', 'kering', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[\"pewangi\"]', '[\"meratakan_warna_kulit\", \"menghilangkan_jerawat\", \"perlindungan_matahari\", \"menghilangkan_noda_hitam\"]', '2024-03-04 21:41:49', '2024-03-04 21:42:59'),
(33, 34, 'Perempuan', '18-25', 'normal', 'bercabang', 'kering', '[\"tidak_ada_alergi\"]', '[\"pewangi\"]', '[\"sls\"]', '[\"meratakan_warna_kulit\", \"perlindungan_matahari\", \"menghilangkan_noda_hitam\"]', '2024-03-04 22:14:54', '2024-03-04 22:15:46'),
(34, 35, 'Laki-laki', '18-25', 'kering', 'berminyak', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\", \"minyak_mineral\"]', '[\"paraben\", \"sls\"]', '[\"anti_aging\", \"perlindungan_matahari\"]', '2024-03-04 22:27:52', '2024-03-04 22:30:16'),
(35, 36, 'Perempuan', '18-25', 'kering', 'kering', 'kering', '[\"kandungan_kimia\"]', '[\"bahan_alami\"]', '[\"cruelty_free\"]', '[\"menghilangkan_jerawat\"]', '2024-03-04 22:37:58', '2024-03-04 22:39:14'),
(36, 37, 'Perempuan', '18-25', 'sensitif', 'kering', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[\"cruelty_free\", \"sls\"]', '[\"menghilangkan_jerawat\", \"menghidrasi\", \"perlindungan_matahari\"]', '2024-03-04 22:47:14', '2024-03-04 22:48:28'),
(37, 38, 'Perempuan', '18-25', 'kombinasi', 'berminyak', 'normal', '[\"tidak_ada_alergi\"]', '[]', '[\"paraben\"]', '[\"menghilangkan_jerawat\"]', '2024-03-04 22:57:06', '2024-03-04 22:57:51'),
(38, 39, 'Perempuan', '18-25', 'normal', 'ketombe', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\", \"pewangi\"]', '[\"sls\"]', '[\"meratakan_warna_kulit\", \"perlindungan_matahari\"]', '2024-03-04 23:14:55', '2024-03-04 23:15:46'),
(39, 40, 'Perempuan', '18-25', 'normal', 'ketombe', 'normal', '[\"tidak_ada_alergi\"]', '[\"pewangi\"]', '[\"bahan_alami\"]', '[\"perlindungan_matahari\"]', '2024-03-04 23:20:39', '2024-03-04 23:21:56'),
(40, 41, 'Perempuan', '18-25', 'kombinasi', 'ketombe', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[\"paraben\"]', '[\"perlindungan_matahari\"]', '2024-03-04 23:22:09', '2024-03-04 23:25:30'),
(41, 42, 'Perempuan', '18-25', 'berminyak', 'rontok', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[\"paraben\"]', '[\"menghilangkan_jerawat\"]', '2024-03-05 00:07:49', '2024-03-05 00:08:42'),
(42, 43, 'Perempuan', '18-25', 'kombinasi', 'kering', 'kering', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\", \"pewangi\"]', '[\"sls\"]', '[\"anti_aging\", \"menghilangkan_jerawat\", \"menghidrasi\", \"perlindungan_matahari\"]', '2024-03-05 00:15:09', '2024-03-05 00:16:36'),
(43, 44, 'Laki-laki', '18-25', 'kombinasi', 'ketombe', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[\"paraben\", \"sls\"]', '[\"menghilangkan_jerawat\", \"menghidrasi\"]', '2024-03-05 00:33:24', '2024-03-05 00:36:01'),
(44, 45, 'Laki-laki', '18-25', 'berminyak', 'ketombe', 'berminyak', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\", \"pewangi\"]', '[\"vegan\"]', '[\"perlindungan_matahari\"]', '2024-03-05 02:12:52', '2024-03-05 02:15:05'),
(45, 46, 'Laki-laki', '18-25', 'kering', 'kering', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\", \"pewangi\"]', '[\"minyak_mineral\"]', '[\"meratakan_warna_kulit\", \"menghilangkan_jerawat\", \"perlindungan_matahari\", \"menghilangkan_noda_hitam\"]', '2024-03-05 04:02:01', '2024-03-05 04:05:01'),
(46, 47, 'Laki-laki', '18-25', 'berminyak', 'ketombe', 'kering', '[\"tidak_ada_alergi\"]', '[]', '[]', '[\"menghilangkan_jerawat\", \"perlindungan_matahari\", \"menghilangkan_noda_hitam\"]', '2024-03-05 11:30:16', '2024-03-05 11:31:36'),
(47, 48, 'Laki-laki', '18-25', 'sensitif', 'normal', 'normal', '[\"tidak_ada_alergi\"]', '[\"pewangi\"]', '[\"vegan\", \"sls\"]', '[\"menghilangkan_jerawat\"]', '2024-03-05 11:39:40', '2024-03-05 11:40:57'),
(48, 49, 'Laki-laki', '18-25', 'kombinasi', 'rontok', 'kombinasi', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[\"bahan_alami\"]', '[\"menghilangkan_jerawat\"]', '2024-03-05 12:19:04', '2024-03-05 12:19:36'),
(49, 50, 'Laki-laki', '18-25', 'berminyak', 'berminyak', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[\"paraben\"]', '[\"menghilangkan_jerawat\"]', '2024-03-05 17:34:35', '2024-03-05 17:35:45'),
(50, 51, NULL, NULL, NULL, NULL, NULL, '[]', '[]', '[]', '[]', '2024-03-05 19:02:21', '2024-03-05 19:02:21'),
(51, 52, 'Laki-laki', '18-25', 'normal', 'rontok', 'normal', '[\"tidak_ada_alergi\"]', '[\"pewangi\"]', '[\"sls\", \"minyak_mineral\"]', '[\"meratakan_warna_kulit\"]', '2024-03-05 23:34:16', '2024-03-05 23:35:18'),
(52, 53, NULL, NULL, NULL, NULL, NULL, '[]', '[]', '[]', '[]', '2024-03-10 01:15:02', '2024-03-10 01:15:02'),
(53, 54, 'Perempuan', '18-25', 'normal', 'normal', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\", \"cruelty_free\", \"pewangi\"]', '[\"sls\"]', '[\"meratakan_warna_kulit\", \"menghilangkan_noda_hitam\"]', '2024-03-11 13:13:37', '2024-03-11 13:14:30'),
(54, 55, 'Perempuan', '18-25', 'normal', 'kering', 'normal', '[\"kandungan_kimia\"]', '[\"bahan_alami\"]', '[\"paraben\", \"sls\"]', '[\"meratakan_warna_kulit\"]', '2024-03-11 13:23:48', '2024-03-11 13:24:24'),
(55, 56, 'Perempuan', '18-25', 'normal', 'kering', 'kering', '[\"kandungan_kimia\"]', '[\"bahan_alami\", \"pewangi\"]', '[\"cruelty_free\", \"paraben\", \"sls\"]', '[\"meratakan_warna_kulit\", \"menghilangkan_jerawat\", \"menghilangkan_noda_hitam\"]', '2024-03-11 13:26:37', '2024-03-11 13:27:29'),
(56, 57, 'Perempuan', '18-25', 'berminyak', 'rontok', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[\"cruelty_free\", \"paraben\"]', '[\"anti_aging\", \"perlindungan_matahari\"]', '2024-03-11 14:47:54', '2024-03-11 14:49:01'),
(57, 58, 'Perempuan', '18-25', 'berminyak', 'rontok', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[\"sls\"]', '[\"anti_aging\"]', '2024-03-11 15:21:12', '2024-03-11 15:22:25'),
(58, 59, 'Perempuan', '18-25', 'berminyak', 'berminyak', 'normal', '[\"pewarna\"]', '[\"bahan_alami\"]', '[\"sls\"]', '[\"anti_aging\", \"meratakan_warna_kulit\", \"menghilangkan_jerawat\"]', '2024-03-11 17:30:41', '2024-03-11 17:31:37'),
(59, 60, 'Perempuan', '18-25', 'berminyak', 'bercabang', 'berminyak', '[\"pewangi\", \"pewarna\", \"kandungan_kimia\"]', '[\"bahan_alami\", \"paraben\"]', '[\"bahan_alami\", \"vegan\"]', '[\"meratakan_warna_kulit\", \"menghilangkan_jerawat\"]', '2024-03-11 19:03:13', '2024-03-11 19:03:51'),
(60, 61, 'Laki-laki', '18-25', 'berminyak', 'normal', 'kombinasi', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\", \"pewangi\"]', '[]', '[\"meratakan_warna_kulit\", \"menghilangkan_jerawat\", \"perlindungan_matahari\", \"menghilangkan_noda_hitam\"]', '2024-03-11 19:46:47', '2024-03-11 19:47:55'),
(61, 62, 'Perempuan', '18-25', 'kombinasi', 'rontok', 'normal', '[\"kandungan_kimia\"]', '[\"vegan\"]', '[\"pewangi\", \"sls\"]', '[\"meratakan_warna_kulit\", \"perlindungan_matahari\"]', '2024-03-11 21:03:06', '2024-03-11 21:04:12'),
(62, 63, 'Laki-laki', '18-25', 'normal', 'normal', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[\"pewangi\"]', '[\"anti_aging\", \"meratakan_warna_kulit\", \"menghilangkan_jerawat\", \"menghidrasi\", \"perlindungan_matahari\", \"menghilangkan_noda_hitam\"]', '2024-03-11 21:47:08', '2024-03-11 21:49:02'),
(63, 64, 'Perempuan', '18-25', 'sensitif', 'rontok', 'kering', '[\"kandungan_kimia\"]', '[\"bahan_alami\"]', '[\"sls\"]', '[\"anti_aging\"]', '2024-03-11 22:25:54', '2024-03-11 22:26:49'),
(64, 65, 'Perempuan', '18-25', 'kombinasi', 'kering', 'kering', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[\"paraben\"]', '[\"meratakan_warna_kulit\"]', '2024-03-12 11:21:03', '2024-03-12 11:22:11'),
(65, 66, 'Laki-laki', '18-25', 'normal', 'rontok', 'kering', '[\"pewarna\", \"tidak_ada_alergi\"]', '[\"bahan_alami\", \"pewangi\", \"minyak_mineral\"]', '[\"cruelty_free\"]', '[\"anti_aging\", \"meratakan_warna_kulit\", \"menghidrasi\", \"perlindungan_matahari\", \"menghilangkan_noda_hitam\"]', '2024-03-12 13:45:13', '2024-03-12 13:46:51'),
(66, 67, 'Perempuan', '18-25', 'kering', 'kering', 'kering', '[\"pewangi\", \"kandungan_kimia\"]', '[\"bahan_alami\"]', '[\"pewangi\"]', '[\"menghidrasi\", \"perlindungan_matahari\"]', '2024-03-12 18:41:30', '2024-03-12 18:44:03'),
(78, 79, 'Laki-laki', '18-25', 'normal', 'normal', 'normal', '[\"tidak_ada_alergi\"]', '[\"bahan_alami\"]', '[\"vegan\",\"paraben\",\"sls\"]', '[\"meratakan_warna_kulit\",\"menghilangkan_jerawat\",\"perlindungan_matahari\",\"menghilangkan_noda_hitam\"]', '2024-06-02 20:03:18', '2024-06-03 00:32:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pembersih Wajah', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(2, 1, 'Sabun Pencuci Muka', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(3, 1, 'Day Cream', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(4, 1, 'Night Cream', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(5, 1, 'Pelembab Wajah', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(6, 1, 'UV', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(7, 1, 'Sun Screen', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(8, 1, 'Serum', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(9, 1, 'Masker', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(10, 2, 'Shampoo', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(11, 2, 'Hair Tonic', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(12, 2, 'Kondisioner', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(13, 2, 'Hair Mask', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(14, 2, 'Hair Serum', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(15, 2, 'Hair Oil', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(16, 3, 'Sabun Mandi', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(17, 3, 'Body Lotion', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(18, 3, 'Exfoliating Gel', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(19, 3, 'Body Serum', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(20, 3, 'Body Oil', '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(21, 3, 'Body Scrub', '2024-05-07 23:27:57', '2024-05-07 23:27:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Operator', 'operator', 'anthony@gmail.com', NULL, '$2y$12$rqC.xjMfosgYrkhVbbxo4.jaWVndfX.UU9K4qZ4f.mSfCfwqP9cVu', 'admin', NULL, '2024-05-07 23:27:57', '2024-05-07 23:27:57'),
(2, 'tester1', 'tester1', 'tester1@gmail.com', NULL, '$2y$12$vnhoPBCY3ZFtsW8g7flfYOHu02WjUvbjbqBVQK.SnRpYztXOsYfkG', 'user', NULL, '2024-02-28 14:46:36', '2024-02-28 14:46:36'),
(3, 'Elisa Regina Simanjuntak', 'elisars', 'elisasimanjuntak197@gmail.com', NULL, '$2y$12$3ZqAG9BecTFS6Aw73YrIH.jmqs3Ox0tV8YbyRCcfjgvYweEKVa0nW', 'user', NULL, '2024-03-02 22:44:44', '2024-03-02 22:44:44'),
(4, 'Hamada', 'hamada28', 'santasinaga92@gmail.com', NULL, '$2y$12$4aszukYNcxLcQ7ktdNzGW.OWleyuYxoiaHuDe1hxZu6CvQ1PqDEmi', 'user', NULL, '2024-03-03 18:05:32', '2024-03-03 18:05:32'),
(5, 'Elisa Regina Simanjuntak', 'elisa', 'elisaregina201203@gmail.com', NULL, '$2y$12$Ih.EJ57hkGqjy0Zbc9zTQOU9gKPZ0i0b4kLKeGC/tzNonlA8zT3Da', 'user', NULL, '2024-03-03 18:38:09', '2024-03-03 18:38:09'),
(6, 'haruto', 'haruto05', 'santasinaga05@gmail.com', NULL, '$2y$12$nbMSF5ExYnBdgeQn9Gz0zuyov1V0Btrz1lztCMJt/ld9eJR0/xe7e', 'user', NULL, '2024-03-03 23:35:56', '2024-03-03 23:35:56'),
(7, 'Dini Sipahutar', 'dharyati', 'dinisipahutar16@gmail.com', NULL, '$2y$12$DtgA6V3bhxVSRJsTc9/iGem8GPJZJYibw4UxjTs5oTM.mvBt7Y8.G', 'user', NULL, '2024-03-04 17:42:02', '2024-03-04 17:42:02'),
(8, 'Gladys', 'Gladyssilvana', 'gladyssilvanasinaga@gmail.com', NULL, '$2y$12$ECSlL7/E0mjJSt.SQtPkVOKyA.aWMHoAEc6QJG.9Hsy.8zDrW0w7G', 'user', NULL, '2024-03-04 17:47:47', '2024-03-04 17:47:47'),
(9, 'Suandika', 'Suan', 'suandika869@gmail.com', NULL, '$2y$12$7jsHo8vPjzTlXVZlkgYeM.rWtjKdfQMhXX520XlneJwdYsrgZffn2', 'user', NULL, '2024-03-04 17:52:08', '2024-03-04 17:52:08'),
(10, 'Suandika Napitupulu', 'if321043', 'suandikanapitupulu08@gmail.com', NULL, '$2y$12$tFLUIFVMTOvYAVET2XNfle4xhND/tziaPdRqTr.fXspKVdSfzmJO.', 'user', NULL, '2024-03-04 17:53:59', '2024-03-04 17:53:59'),
(11, 'Suandika Napitupulu', 'Suandika', 'suandika@gmail.com', NULL, '$2y$12$YoXy6BGnfV7v3sevKZdOiOuHGcfAbgyBx5xRHPJcxcv5INimnfBMK', 'user', NULL, '2024-03-04 17:56:24', '2024-03-04 17:56:24'),
(12, 'Elisa', 'Tambunan', 'elisatambunan21@gmail.com', NULL, '$2y$12$lUFzDqnZYjRt2rneHs0jdOPgT3TBqdLaM/biF/grrAcaRBL7eoyD2', 'user', NULL, '2024-03-04 18:02:52', '2024-03-04 18:02:52'),
(13, 'Emy Sonia Sinambela', 'emy_sonia', 'emysonia17@gmail.com', NULL, '$2y$12$9Cwl/mmnRWpCzrJy5k/gMObP0/QwuT0UPX0kiGil/4IPmk5GZPksO', 'user', NULL, '2024-03-04 18:06:50', '2024-03-04 18:06:50'),
(14, 'Stefhani Kezia', 'stefhanisbrn', 'stefhaniekezia04@gmail.com', NULL, '$2y$12$YHV4sK3Jia.jSjzVQefPDe2piGUYcOzVohyEu0qR72VRXFn85IC72', 'user', NULL, '2024-03-04 18:24:49', '2024-03-04 18:24:49'),
(15, 'Josep Phyto Napitupulu', 'josep', 'josepnapitupulu9@gmail.com', NULL, '$2y$12$xq5cwEkr8OjciFtcSMkTZeaRhnDHNcEJHeEOPf4br5YlAZz4l/wqi', 'user', NULL, '2024-03-04 18:28:18', '2024-03-04 18:28:18'),
(16, 'Samuel Simanjuntak', 'samuel18', 'samuelsimanjuntak195@gmail.com', NULL, '$2y$12$D2BbCYtWYg6iw8iVCHtFP.uTCKjed1QG7mJjQ.ZpRpiPTWgDdovqu', 'user', NULL, '2024-03-04 18:29:41', '2024-03-04 18:29:41'),
(17, 'Yoas Sahat Marulitua Hutapea', 'yoas_hutapea', 'yoashutapea3@gmail.com', NULL, '$2y$12$n.ojqBnpbYFrmfYDy45qHuUFWTJ8aGB5mVbJttk.ORWbrWWNN8gp.', 'user', NULL, '2024-03-04 18:37:24', '2024-03-04 18:37:24'),
(18, 'Boas', 'boas', 'boas@boas.com', NULL, '$2y$12$lGum6UVb7wUdBveyuclYp.dobRNiJrTZywLmUh/eXrdm1zVQjBc.W', 'user', NULL, '2024-03-04 18:42:56', '2024-03-04 18:42:56'),
(19, 'Jimmi', 'Jimmikece', 'jimmindp@gmail.com', NULL, '$2y$12$ITQS0kOHEvas9naWBmNSqugBKviERvqGvO70f/WBGZJ6eZ0Y0adJO', 'user', NULL, '2024-03-04 19:05:24', '2024-03-04 19:05:24'),
(20, 'Elsie', 'elsiegloriaa', 'elsiesihombing@gmail.com', NULL, '$2y$12$ryk9.dgyo05E3AlJ8trt.OKLsEWdSrVLTiDZpYTQ1FUmx207SINlq', 'user', NULL, '2024-03-04 19:09:21', '2024-03-04 19:09:21'),
(21, 'Sally Rotua Juliana Panjaitan', 'Sally', 'sallyrotua@gmail.com', NULL, '$2y$12$4xKvVtfalR9E4mpQuW/MIO9LVaaj068EsjYj.BKqIbG301lNkPHXC', 'user', NULL, '2024-03-04 19:09:38', '2024-03-04 19:09:38'),
(22, 'Natasha', 'natashatrya', 'natashaambarita11@gmail.com', NULL, '$2y$12$BFtNvJuSyAOL8OGU0FvrTeMVV/IYxijKZ0AXbRaN2WJNTadZk/tcm', 'user', NULL, '2024-03-04 19:26:36', '2024-03-04 19:26:36'),
(23, 'Theofil', 'theo123', 'theofiloktavia@gmail.com', NULL, '$2y$12$j7w2XJlvgadCJ5xLXSOmcOmeFOO2TDGEO0qb/ZVqTJiPoEDre/uJq', 'user', NULL, '2024-03-04 19:29:14', '2024-03-04 19:29:14'),
(24, 'Akses Simamora', 'Akdes3112', 'akdes3112s@gmail.com', NULL, '$2y$12$svOqsbgQqbvmIPw0EsttoOkaaZtDzfJVx9FAq/HwYUfcKVJoVdhCq', 'user', NULL, '2024-03-04 19:29:41', '2024-03-04 19:29:41'),
(25, 'daniel silalahi', 'daniel', 'silalahidaniel85@gmail.com', NULL, '$2y$12$ia0Fi3O2d2dvaDrIBUQWA.IIX4zao4hzenFFUkSJQOeEufAg5QASG', 'user', NULL, '2024-03-04 19:30:50', '2024-03-04 19:30:50'),
(26, 'Charlos Purba', 'charlospurba', 'charlospurba048@gmail.com', NULL, '$2y$12$4mFXN5eNLs2zossAIOaS7ObMd8OeM55nLFBSxr3kZrpnDIr0uUcYW', 'user', NULL, '2024-03-04 19:36:52', '2024-03-04 19:36:52'),
(27, 'Yosephine', 'Yosephine89', 'yosephineherlina20040205@gmail.com', NULL, '$2y$12$Z0.InPFO9It2HFKcTvI5TOoi.qAGuBVUN6mf3x7n3E0k99us81eXW', 'user', NULL, '2024-03-04 19:48:46', '2024-03-04 19:48:46'),
(28, 'Yosephine25', 'yosephine025', 'siburian.yosephine@yahoo.co.id', NULL, '$2y$12$//oY2Dwr9f/Vl9FbIy.Lj.MHlh/DiS0XxXxPt.lpD2YfOP1DR8zau', 'user', NULL, '2024-03-04 19:53:06', '2024-03-04 19:53:06'),
(29, 'Angelica Theresia Manurung', 'angelmnrg', 'sialica012@gmail.com', NULL, '$2y$12$e.bk6fAw1vnSBNiN2lf4aef0y7qFlZSOZgJJ9urIMGTGKQafkk/T.', 'user', NULL, '2024-03-04 20:01:01', '2024-03-04 20:01:01'),
(30, 'Febri Sihotang', 'febvrasixcasuree', 'febrisihotang0096@gmail.com', NULL, '$2y$12$kxp36j.ii0qKy7C7gEEZrOwrhYHVdkoZrxMBd.aumSZmSdXDwmsR6', 'user', NULL, '2024-03-04 20:22:27', '2024-03-04 20:22:27'),
(31, 'Ester anastasia marsada uli Simamora', 'Esteranastasya19@gmail.com', 'Esteranastasya19@gmail.com', NULL, '$2y$12$3NnB.1dv5fqxWdmKSR5YvufV/dFA/5G35zU2GSgdWnwqLmyTsvj0y', 'user', NULL, '2024-03-04 20:38:00', '2024-03-04 20:38:00'),
(32, 'Ester anastasia marsada uli Simamora', 'Ester', 'Ester@gmail.com', NULL, '$2y$12$nHU.BUoNNjrlfsBsKgfSwOCwv68wK/iIQCGUDQlgDyLF7Vmrz7lZO', 'user', NULL, '2024-03-04 20:39:54', '2024-03-04 20:39:54'),
(33, 'Viranty Napitupulu', 'Viranty05', 'viranty21@gmail.com', NULL, '$2y$12$sRN3rxP3n1Yt/LQqjzeMHuVPGSplxoJSX.B0VsWGk./2H4CJ0VCYy', 'user', NULL, '2024-03-04 21:41:49', '2024-03-04 21:41:49'),
(34, 'Silvany Putri Sipahutar', 'Silvany Sipahutar', 'silvanyputrisipahutar@gmail.com', NULL, '$2y$12$.rfnn4RlvIduJjqSJN/oM.Kx/B40IxUpMpKKm90j1G/HgtjjY8g9q', 'user', NULL, '2024-03-04 22:14:54', '2024-03-04 22:14:54'),
(35, 'Juna', 'junaedy', 'siahaanjunaedy0@gmail.com', NULL, '$2y$12$W/P/6X3x97lZsZCjp0WzSujix0QzZMwuTeSIq5zz69t0jYSg2Zrta', 'user', NULL, '2024-03-04 22:27:52', '2024-03-04 22:27:52'),
(36, 'Emely Simanjuntak', 'emelysmnjtk', 'emelyangelicalestari@gmail.com', NULL, '$2y$12$yIB67MbgTLtG3ugOPls79u2/yfpHFy1zN/Cqz2ms1tbCO5CCyyOTa', 'user', NULL, '2024-03-04 22:37:58', '2024-03-04 22:37:58'),
(37, 'Elsa Klariza Silalahi', 'Elsasilalahi', 'elsasilalahi39@gmail.com', NULL, '$2y$12$.wHUqLrZ8IHh0UHc3MPh2OVDZ8b6muW0rqxcZ1.yNG/3J/k2YHkiW', 'user', NULL, '2024-03-04 22:47:14', '2024-03-04 22:47:14'),
(38, 'Anita', 'anita12', 'anitamunthe93@gmail.com', NULL, '$2y$12$4UA2HfqJUOqLXv3OW7dhPucFudep2i0KT6CRoHdry.J4Ki9LbRYo2', 'user', NULL, '2024-03-04 22:57:06', '2024-03-04 22:57:06'),
(39, 'Mesya Angeliqa Hutagalung', 'mesya', 'mesyahutagalung300@gmail.com', NULL, '$2y$12$O5mhLNWfeh788Fxfo/PEWe/XxgnvlDHj2bwhjzqu4vpV1ZGzjrhMy', 'user', NULL, '2024-03-04 23:14:55', '2024-03-04 23:14:55'),
(40, 'Cecilia', 'Situmorang', 'ceciliasitumorang06@gmail.com', NULL, '$2y$12$fNZzMzPa/9mZcDS3ku.mfepjKtuEUQxP4oEVKqZYSfQT0JhQJFhQS', 'user', NULL, '2024-03-04 23:20:39', '2024-03-04 23:20:39'),
(41, 'aqustin', 'aqustin', 'tambunanaqustin@gmail.com', NULL, '$2y$12$ve.7h7UZS3eSb5ILIm93d.UIQlhRCmtZsv8KWwsw2U6BMzye7pF1i', 'user', NULL, '2024-03-04 23:22:09', '2024-03-04 23:22:09'),
(42, 'siska', '11321005', 'siskasiska123@gmail.com', NULL, '$2y$12$17tjSbmhVsBACjWzsqxrm.Wgoi8ensJB.I47WgRG78E2nLeb.rYO6', 'user', NULL, '2024-03-05 00:07:49', '2024-03-05 00:07:49'),
(43, 'Mutiara Enjelina', 'mutiaraenjelina', 'mutiaramanullang77@gmail.com', NULL, '$2y$12$M4utMvIRzWckepg1I0y9i.6DkCc7Sqyv.hq3YykHLg2iCGiajp7rC', 'user', NULL, '2024-03-05 00:15:09', '2024-03-05 00:15:09'),
(44, 'Hansel', 'hanselpasar', 'hanselpasar@gmail.com', NULL, '$2y$12$ZkrilacGj2PcMyf5PBqZC.2biR2erBs.jvR9rFJQ99m3O61JaV51u', 'user', NULL, '2024-03-05 00:33:24', '2024-03-05 00:33:24'),
(45, 'Hans', 'Karo Sekali', 'hanspranatak@gmail.com', NULL, '$2y$12$OMbXU5.7H2CrYUDQr2AXp.sfMM4oV3PoqkB98Tjc4aPSh9U19.vGS', 'user', NULL, '2024-03-05 02:12:52', '2024-03-05 02:12:52'),
(46, 'Sandi nainggolan', 'Mysan', 'sandinainggolan2002@gmail.com', NULL, '$2y$12$mIyoRmAGTjcihBg4InuwBOF92brbmaUOl9D42r8tLTNSZe6IvYeEO', 'user', NULL, '2024-03-05 04:02:01', '2024-03-05 04:02:01'),
(47, 'Raj Damanik', 'Raj', 'rajdadamanik@gmail.com', NULL, '$2y$12$B9NeNwwDONbq436Tj2BTLu0eqKlLxhFbqcfd48DIEs2WWYSUK73BK', 'user', NULL, '2024-03-05 11:30:16', '2024-03-05 11:30:16'),
(48, 'SABAR MARTUA TAMBA', 'sabarmartua', 'sabarmartuatamba@gmail.com', NULL, '$2y$12$L9xyB/RwjHk.RHwfc2lPeeCRYN3OkwmNK93ZvHoj44vTTBTiqatey', 'user', NULL, '2024-03-05 11:39:40', '2024-03-05 11:39:40'),
(49, 'Horas Siregar', 'marolop', 'amsalsiregar46@gmail.com', NULL, '$2y$12$z9IGCDIhRbkWJSa0hD8szOPL2Lu9tMpesAF1QbNnQGaZS7sI8NAAm', 'user', NULL, '2024-03-05 12:19:04', '2024-03-05 12:19:04'),
(50, 'Maryono', 'Maryono14', 'Jelas@gmail.com', NULL, '$2y$12$AusOt0EBZ31aEeyuUC6VAOzTbKmLzkqn3Ads0wbGNDnxYepM7YvoO', 'user', NULL, '2024-03-05 17:34:35', '2024-03-05 17:34:35'),
(51, 'Putri Napitupulu', 'putri.dsn', 'putridsnptpl@gmail.com', NULL, '$2y$12$WNhImL.UxfaIOVd.tGSq9uqeXgSPg4uoGNDVTEyej4rCrFaDQMRnu', 'user', NULL, '2024-03-05 19:02:21', '2024-03-05 19:02:21'),
(52, 'dedi', 'panggabean', 'dediandree22@gmail.com', NULL, '$2y$12$ZVVJz32ElTUPWlzTT7ZP3OFaDwJZSDA.Vh1MdpqSnxXMDVitkQsJy', 'user', NULL, '2024-03-05 23:34:16', '2024-03-05 23:34:16'),
(53, 'jacob', 'jacob1', 'jacob123@gmail.com', NULL, '$2y$12$oXtT67YdsPakh1hZItEpsOs5VM9lHEL7xupVJuwz8lF6yle5Dn0G.', 'user', NULL, '2024-03-10 01:15:02', '2024-03-10 01:15:02'),
(54, 'Merry Tamba', 'merrywijaya', 'merrytamba50@gmail.com', NULL, '$2y$12$IrZI.Y4SXYTa5Uo6TkXpJesXwuxTjwWDw1NOCtyemVH55TcI9COq6', 'user', NULL, '2024-03-11 13:13:37', '2024-03-11 13:13:37'),
(55, 'rosa', 'rosa123', 'rosalindamanikk@gmail.com', NULL, '$2y$12$Tm7JcMAiiHbhg5bqxw7P8ujlsbwvRRBYCW0WO6aUQsZPDSkjslbku', 'user', NULL, '2024-03-11 13:23:48', '2024-03-11 13:23:48'),
(56, 'Yoseplin', 'yoseplin__', 'yoseplinhutauruk2017@gmail.com', NULL, '$2y$12$6Jr3DDFdIxZLwOhIsWQswefWuT130yO0DSwnPCCDEJFSo7KDRqLXW', 'user', NULL, '2024-03-11 13:26:37', '2024-03-11 13:26:37'),
(57, 'Anita Munthe', 'anita', 'anitamunthe@gmail.com', NULL, '$2y$12$mf.MZjXhmvOz6caRQGYQyuJa1kL/HTgt5QN8kl5CZBouv6VMiS3LG', 'user', NULL, '2024-03-11 14:47:54', '2024-03-11 14:47:54'),
(58, 'Sulastri', 'Sulastri', 'Silalahisulastri265@gmail.com', NULL, '$2y$12$MLbhtij3pVHBkcFsFSyPMOndmZE7Mnsvoo4gv5cjER.h5wYw5JCgK', 'user', NULL, '2024-03-11 15:21:12', '2024-03-11 15:21:12'),
(59, 'Yosevyn Reginae Sipahutar', 'yosevyns', 'yosevyns@gmail.com', NULL, '$2y$12$oE4aMpCLm4rfGD35ZLr8ru6/21GRAvoAcjtUzy3Pt2I6TKe01d7JS', 'user', NULL, '2024-03-11 17:30:41', '2024-03-11 17:30:41'),
(60, 'Putri Ayu Manurung', 'ifs21016', 'putrimanurung2003@gmail.com', NULL, '$2y$12$kWX5ZJ1CBWWLM.4Ce2IR4OjECO4IeqVuozf9F6aqcl/xnIaHbqlV6', 'user', NULL, '2024-03-11 19:03:13', '2024-03-11 19:03:13'),
(61, 'Reinaldy Hutapea', 'ReinaldyHutapea', 'reinaldyhutapea41@sma.belajar.id', NULL, '$2y$12$lb4dKNASvoQVuTXJbdVAa.fheGi.T0Vu2URES8nI1jnXc8AS2vrYS', 'user', NULL, '2024-03-11 19:46:47', '2024-03-11 19:46:47'),
(62, 'Missyolin Eunike Rungguni', 'Missyolin', 'missyolin36@gmail.com', NULL, '$2y$12$CS/88QMJgNZ5gbLJik6uS.NisUJEsO9QT.4G6UpODPt7XlmwvKnUi', 'user', NULL, '2024-03-11 21:03:06', '2024-03-11 21:03:06'),
(63, 'Arga', 'Arga', 'bonanainggolan2112@gmail.com', NULL, '$2y$12$hQacSUJCoXdXBccZoIWBT.NiRXA1SjNhjOG16Ni.LasWKGnc3kOHC', 'user', NULL, '2024-03-11 21:47:08', '2024-03-11 21:47:08'),
(64, 'Maria', 'Maria123', 'mariasiska@gmail.com', NULL, '$2y$12$c7H3NVfej5zDd/eWNgv85ug5kc8XZmBmST86/dHXAMvNuhbg3T8yG', 'user', NULL, '2024-03-11 22:25:54', '2024-03-11 22:25:54'),
(65, 'Sarah Tobing', 'sarah', 'sarahelfiana06@gmail.com', NULL, '$2y$12$9ThI5c3.yyQBbmRcgGUq8e7GISKrN8TSklb6u2IrXa2W4mUMBr31e', 'user', NULL, '2024-03-12 11:21:03', '2024-03-12 11:21:03'),
(66, 'OLOAN BONAR NAINGGOLAN', 'Oloan', 'oloanngln03@gmail.com', NULL, '$2y$12$QnDWk8zWngWb0hvHg70HOe8LVmPfW713RLFRNAEWr/YpOJArv7dRW', 'user', NULL, '2024-03-12 13:45:13', '2024-03-12 13:45:13'),
(67, 'Wilona', 'Simbolon', 'wilonasimbolon49@gmail.com', NULL, '$2y$12$qVmYjV2RFasMmhgR01hNH.LNhIcqP8r2/J0O/MmgX93tEprqbX6fi', 'user', NULL, '2024-03-12 18:41:30', '2024-03-12 18:41:30'),
(79, 'tester3', 'tester3', 'tester3@gmail.com', NULL, '$2y$12$V9Cg9X8QAZ6KAV578Vm5LOXQ4sKCq9AmeFEXIrPY2uex0OZRoy/6a', 'user', NULL, '2024-06-02 20:03:18', '2024-06-02 20:03:18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indeks untuk tabel `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT untuk tabel `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT untuk tabel `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;

--
-- AUTO_INCREMENT untuk tabel `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`);

--
-- Ketidakleluasaan untuk tabel `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
