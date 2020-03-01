-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2020 at 11:26 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_leraning_v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(23, '2014_10_12_000000_create_users_table', 1),
(24, '2014_10_12_100000_create_password_resets_table', 1),
(25, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(26, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(27, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(28, '2016_06_01_000004_create_oauth_clients_table', 1),
(29, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(30, '2019_08_19_000000_create_failed_jobs_table', 1),
(31, '2020_02_25_105410_create_products_table', 1),
(32, '2020_02_25_105447_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('9eb7abb4baa02841d91c07c9c6dbf7518c07d10138a2841a6125547bb72360b91dcf742b49caa40e', 1, 2, NULL, '[]', 0, '2020-02-27 04:22:43', '2020-02-27 04:22:43', '2021-02-27 10:22:43'),
('d2334b77f36f7d5a0cfbdc1e7ff09939b6062bf65bfa736f673f508a1efeeab62fa8b7c037f49341', 1, 2, NULL, '[]', 0, '2020-02-27 04:10:14', '2020-02-27 04:10:14', '2021-02-27 10:10:14');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'ZGyD9sntBXol7MFnC2UC02DBC04aF5qXxmbIRptZ', 'http://localhost', 1, 0, 0, '2020-02-27 04:05:14', '2020-02-27 04:05:14'),
(2, NULL, 'Laravel Password Grant Client', 'T9PGiflgMHD9ONMrpjwpS2WF1oOfKoZSeYHk5Zxw', 'http://localhost', 0, 1, 0, '2020-02-27 04:05:14', '2020-02-27 04:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-02-27 04:05:14', '2020-02-27 04:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('9f3bc831383442301e17bc0c3066fc7e447d08353a849756e109d660134f3733dd71a7057a9eee6c', 'd2334b77f36f7d5a0cfbdc1e7ff09939b6062bf65bfa736f673f508a1efeeab62fa8b7c037f49341', 0, '2021-02-27 10:10:14'),
('f870185c237008f8d79b3e3c4303393b95801982edc9d5a60b140f0e6ef609781b4fbe7d1c9c9c90', '9eb7abb4baa02841d91c07c9c6dbf7518c07d10138a2841a6125547bb72360b91dcf742b49caa40e', 0, '2021-02-27 10:22:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `stock` double NOT NULL,
  `discount` double NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `stock`, `discount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Redmi 4X -update3', 'Its Description text', 1300, 3, 10, 1, '2020-02-27 03:56:30', '2020-02-27 04:16:00'),
(2, 'sed', 'Pariatur quasi aut autem alias voluptas cupiditate. Omnis ipsa debitis id expedita. Quis eos quia explicabo iure sit voluptas ut.', 17861, 0, 46, 3, '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(3, 'provident', 'Sunt in quia doloremque est non. Saepe officia recusandae recusandae non labore. Quia sint velit qui magni. Rem id dicta voluptates temporibus quia. Consequuntur dolorem praesentium nisi ex quia tempore est aut.', 26661, 6, 11, 1, '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(4, 'ducimus', 'Aut praesentium culpa ut consequuntur quo. Eum et aut voluptatem rerum id tempore.', 1059, 3, 34, 6, '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(5, 'quos', 'Perspiciatis in eos aspernatur repellat tenetur sit accusantium ut. At itaque ut cupiditate illum sed autem. Tenetur autem ipsam ad quaerat. Fugiat ut animi totam dolores doloremque distinctio aut.', 54439, 9, 34, 2, '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(6, 'doloremque', 'Explicabo officia omnis harum amet voluptate. Dolorum a expedita voluptate eveniet aperiam consequuntur aliquid non. Maxime provident nesciunt quo sint blanditiis et.', 58111, 0, 63, 5, '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(7, 'enim', 'Non non rerum et possimus qui eveniet et. Est mollitia impedit enim iste mollitia. Autem veritatis molestiae itaque quos est. Non voluptatem reiciendis aut. Praesentium cum et nostrum.', 52737, 5, 64, 9, '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(8, 'fugit', 'Qui optio rerum alias ullam id consequatur vel omnis. Aut repellat fugiat deleniti doloribus molestias aut. Laudantium eos voluptas consectetur aperiam magni. Iusto quis ut qui tenetur voluptatem vel.', 5064, 3, 5, 3, '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(9, 'est', 'Qui blanditiis omnis enim vel ipsa incidunt reprehenderit. Debitis quidem itaque consectetur quam. Atque illum aut consequatur quis quia soluta.', 50277, 5, 82, 3, '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(10, 'consectetur', 'Sapiente voluptatem veritatis nulla rerum et. Sit temporibus sed voluptas ad ipsa. Distinctio animi et a alias qui commodi animi. In ea nihil sint omnis.', 43981, 7, 12, 6, '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(11, 'et', 'Facilis esse blanditiis repudiandae voluptas. Placeat eos consequatur aut rerum aut voluptatem. Et commodi quibusdam in ullam qui nesciunt asperiores.', 40898, 8, 61, 7, '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(12, 'harum', 'Similique harum ut vitae blanditiis. Animi alias est laborum. Earum sed eligendi illo soluta quibusdam ullam. Quia repellendus molestiae dolorem.', 39287, 1, 99, 9, '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(13, 'quibusdam', 'Libero cupiditate et impedit. Incidunt accusamus ipsum explicabo in et magnam error. Possimus magnam qui id at ut laboriosam laborum consequatur. Dolor molestiae ut nihil nihil. Quasi minus nobis magni quis natus libero earum.', 19294, 0, 64, 10, '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(14, 'quia', 'Neque odit beatae autem nulla id quis quod ratione. Qui ullam ut quis veritatis dolores excepturi cupiditate. Perferendis deleniti tenetur iusto necessitatibus. Et qui consequuntur error nobis et quisquam aut ea.', 16923, 1, 89, 4, '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(15, 'tenetur', 'Quibusdam qui excepturi dicta. Qui autem vel blanditiis fuga nesciunt. Officiis quam expedita neque magni occaecati quos quia. Magnam corporis non est voluptatem vel. Quis officiis hic perspiciatis doloremque.', 50639, 7, 10, 3, '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(16, 'ipsa', 'Recusandae hic quam provident fuga esse. Animi beatae omnis qui quas cum rerum. Fugiat velit explicabo sed sunt.', 6687, 2, 81, 3, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(17, 'necessitatibus', 'Perferendis nihil velit suscipit vero. Consequatur adipisci ipsum vel odio unde. Quasi et vero assumenda vero neque sunt.', 4676, 9, 64, 2, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(18, 'aspernatur', 'Dolorem dolorum eum ipsum enim et neque. Sed ut repudiandae laborum ipsam eveniet dignissimos.', 34741, 0, 96, 7, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(19, 'alias', 'Labore sint ab rerum necessitatibus. In qui vel eius qui vel dolor. Quasi voluptas ratione et assumenda iste est. Maxime officia non molestiae qui iusto sit neque quis.', 26497, 4, 11, 1, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(20, 'alias', 'Voluptates quo et minus corporis non libero. Itaque nisi odio minima sit nemo ea. Sint in vel et autem est aliquam. Dolore laboriosam eligendi et in velit.', 29355, 0, 16, 2, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(21, 'similique', 'Neque hic minus incidunt labore odit voluptas. Aut est rerum omnis quis. Assumenda quasi sint tenetur id ut.', 43302, 4, 34, 3, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(22, 'dolores', 'Rerum fuga perspiciatis enim. Et et beatae neque itaque atque aut quibusdam dignissimos. Fugiat nesciunt quis ut qui ratione soluta. Delectus sit unde perferendis illum pariatur.', 31445, 9, 14, 4, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(23, 'adipisci', 'Autem fugit tempore sunt est quia ipsa repellat. Facilis et molestias qui qui architecto dolorem. Qui perspiciatis voluptas qui praesentium occaecati quos.', 5630, 2, 9, 7, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(24, 'iure', 'Dolores velit mollitia fugit aut architecto aut possimus. Aut consequatur molestiae sint veniam. Incidunt magni quo deleniti ut. Sapiente deserunt laboriosam est facere.', 54794, 1, 34, 1, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(25, 'atque', 'Sint aspernatur nostrum aspernatur. Enim et suscipit voluptas et mollitia.', 59993, 0, 35, 5, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(26, 'ipsam', 'Sit molestias perferendis consequatur omnis. Quia et fuga similique. Magnam laboriosam deserunt ipsum vel dolore. Molestiae esse eligendi delectus porro dolor quis.', 15697, 7, 46, 7, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(27, 'est', 'Neque quis sint nam. Voluptas necessitatibus accusamus dolorum laborum voluptatum maiores qui. Possimus vitae quia eius fugit qui id voluptatem.', 2845, 5, 23, 4, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(28, 'numquam', 'Quam aperiam laborum odio fugit. Et sed ipsam quas unde sunt sunt possimus. Et ut animi vitae facilis.', 7252, 0, 86, 3, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(29, 'provident', 'Distinctio ad dolorem eos id inventore qui quidem magnam. Repudiandae repudiandae enim consequatur nobis. In quo nihil dolor temporibus qui.', 12034, 0, 12, 8, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(30, 'officia', 'Consequuntur exercitationem aliquam nobis. Tempora molestiae numquam velit voluptatem molestiae. Unde minima illum dolores sapiente omnis accusantium numquam nobis.', 36062, 4, 27, 4, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(31, 'optio', 'Voluptate dolores et minima modi quia. Earum dignissimos eveniet et ab. Culpa expedita quam at officia amet.', 5691, 6, 81, 7, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(32, 'expedita', 'Quia omnis recusandae ea atque modi. Optio aspernatur molestiae est perferendis voluptatem. In magni dignissimos est hic consectetur ut corrupti. Qui eos vel ducimus nulla quia neque.', 9839, 0, 37, 1, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(33, 'ipsum', 'Incidunt est ut at sit quam temporibus. Molestiae a error natus et. Vel et temporibus illum iure necessitatibus veniam error. Necessitatibus ut rerum distinctio dignissimos expedita. Ex ratione necessitatibus debitis ducimus ipsa et.', 43541, 3, 87, 5, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(34, 'est', 'Et et aspernatur aliquid quo molestiae. Vitae et nam et voluptates et a earum. Aut aut consequatur eaque nihil vitae hic voluptatem.', 41593, 9, 90, 6, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(35, 'cupiditate', 'Est iste eos ipsum explicabo sapiente. Consectetur corrupti in ex voluptatem deleniti quos voluptatem.', 44283, 6, 34, 6, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(36, 'distinctio', 'Sunt ducimus in ipsam autem harum vel accusantium at. Velit molestiae dolor ad qui est et.', 57614, 1, 62, 5, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(37, 'aut', 'Fuga iure quia suscipit similique itaque ut quam. Temporibus laboriosam culpa vel. Nisi unde et illo temporibus unde alias debitis. Doloremque eum non velit consequatur sunt necessitatibus.', 36756, 3, 88, 5, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(38, 'unde', 'Dolorem facilis et ut facere libero. Sed inventore dignissimos voluptate libero dignissimos fuga odit aliquid. Magni alias ab sed praesentium. Voluptatem at aspernatur ab earum numquam. Quam non odio earum aut quia nemo.', 9653, 9, 30, 5, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(39, 'ex', 'Eos aliquid sit corporis. Quam natus sunt beatae. Explicabo est qui adipisci quis sunt. Sed esse ut nesciunt placeat.', 32150, 5, 7, 9, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(40, 'esse', 'Sint quo itaque maiores velit eum inventore. Perspiciatis quo quae placeat nihil suscipit officiis. Quidem rerum eum quo modi doloremque aut. Quas illo provident blanditiis incidunt.', 54599, 6, 46, 3, '2020-02-27 03:56:31', '2020-02-27 03:56:31'),
(41, 'aut', 'Saepe ut culpa hic ut aspernatur. Accusantium consectetur suscipit aperiam eum qui velit. Harum quas voluptas impedit labore ullam repudiandae accusamus. Aut amet rerum saepe dolores harum quidem.', 1651, 9, 79, 2, '2020-02-27 03:56:32', '2020-02-27 03:56:32'),
(42, 'dolorum', 'Modi aut temporibus eos dolorem eveniet iusto possimus. Quo dolor ipsa dolores at. Velit autem quidem commodi et et temporibus voluptatem.', 36739, 1, 4, 4, '2020-02-27 03:56:32', '2020-02-27 03:56:32'),
(43, 'qui', 'Dolores perspiciatis beatae quia eveniet ratione expedita maiores. Tenetur asperiores est id doloremque sapiente laboriosam. Qui ut in possimus minus aut et enim. Nesciunt suscipit dolorem nemo qui magnam dolorum iste aut.', 42493, 4, 58, 8, '2020-02-27 03:56:32', '2020-02-27 03:56:32'),
(44, 'aut', 'Saepe eligendi aut autem voluptatum. Et dolorum voluptas architecto voluptas dolores. Ea aut temporibus modi dolorem pariatur. Odit explicabo quibusdam quisquam facilis blanditiis excepturi.', 56433, 7, 87, 3, '2020-02-27 03:56:32', '2020-02-27 03:56:32'),
(45, 'delectus', 'Temporibus quam autem veritatis soluta debitis. Id pariatur velit iure ipsa. Quo est necessitatibus doloribus impedit.', 25488, 8, 87, 7, '2020-02-27 03:56:32', '2020-02-27 03:56:32'),
(46, 'qui', 'Voluptate et ut modi maiores exercitationem occaecati. Autem earum voluptate et dolore voluptatum. Necessitatibus molestiae doloremque sit beatae esse quo.', 5108, 4, 40, 2, '2020-02-27 03:56:32', '2020-02-27 03:56:32'),
(47, 'quia', 'Perferendis voluptatem laborum aut ut ex aperiam. Odit molestiae est ut non est molestiae et et. Unde ut officia et. Sunt facere molestiae dolorem soluta deleniti architecto.', 27726, 5, 72, 8, '2020-02-27 03:56:32', '2020-02-27 03:56:32'),
(48, 'pariatur', 'A quis omnis necessitatibus et minima debitis possimus. Numquam explicabo enim debitis sunt. Cumque praesentium voluptas nulla asperiores ullam quod facere. A sunt laborum similique consequatur.', 25619, 6, 68, 9, '2020-02-27 03:56:32', '2020-02-27 03:56:32'),
(49, 'magnam', 'Sit sit est eos non. Voluptatem qui suscipit amet id. Incidunt nisi voluptatem nulla tempora rem.', 14697, 3, 96, 5, '2020-02-27 03:56:32', '2020-02-27 03:56:32'),
(50, 'ut', 'Voluptate et culpa ducimus dolorem ex ipsum. Rerum quisquam velit ratione maxime sequi. Repudiandae repudiandae exercitationem rerum corrupti numquam maxime in.', 25065, 6, 51, 3, '2020-02-27 03:56:32', '2020-02-27 03:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 27, 'Justina Lakin', 'Pariatur perspiciatis sequi itaque rem. Dolorem est laborum est non deserunt ipsam. Qui molestiae veritatis omnis repellendus aut est dolorum.', 3, '2020-02-27 03:56:32', '2020-02-27 03:56:32'),
(2, 39, 'Mrs. Yvette Bailey', 'In voluptatum praesentium porro doloribus officia. Et est tempora qui doloremque aut omnis velit. Est ipsum totam non ea similique at non excepturi.', 1, '2020-02-27 03:56:32', '2020-02-27 03:56:32'),
(3, 27, 'Hans Lubowitz', 'Ut facere nemo aut eum culpa. Ut qui reprehenderit sapiente voluptatem. Sit maiores odit eos officiis ut ut. Veritatis dolor ea rerum quis iusto dolor.', 0, '2020-02-27 03:56:32', '2020-02-27 03:56:32'),
(4, 30, 'Scot Auer', 'Atque debitis hic possimus. Dolorum ut magni et reprehenderit similique. Magni quisquam quis velit atque ex.', 3, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(5, 28, 'Brain Willms', 'Labore tenetur rerum eos velit eligendi velit. Quisquam voluptatem et voluptatem odio corporis.', 0, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(6, 36, 'Mr. Carmelo Bode Sr.', 'Assumenda aliquid vitae voluptatem commodi sapiente sunt. Exercitationem sequi rerum dolores amet nihil molestiae doloremque. Adipisci illum nisi sunt adipisci sequi nihil fugiat sed. Magni occaecati et qui ut minima nemo quia. Voluptatem voluptatem ducimus veritatis molestias impedit adipisci.', 2, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(7, 7, 'Claudia Emmerich', 'Quam qui tenetur voluptatem voluptas. Nulla eveniet molestiae cumque ea. Nostrum et consequatur nulla in qui itaque.', 1, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(8, 29, 'Mr. Miller Welch DVM', 'Nostrum veniam quia alias odit mollitia blanditiis. Ut voluptas dolor et. Fuga libero pariatur ut provident minus corrupti. Neque cum ipsa cumque.', 2, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(9, 22, 'Dina Leuschke', 'Dignissimos enim aliquam quia suscipit consequuntur repudiandae voluptate. Soluta ab autem error voluptates aut cum. Quia dolores asperiores quo.', 3, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(11, 38, 'Malinda Johns', 'Mollitia deserunt eligendi quia omnis tenetur dolorum. Dolorem voluptate quia ullam libero. Vitae magni blanditiis aut quia sit aut modi. Corporis autem amet quasi ea.', 1, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(12, 30, 'Veronica Kuhic', 'Voluptas vitae deserunt totam rerum et. Consequatur doloribus laborum sit deleniti et. Maxime expedita qui animi dolorem blanditiis mollitia. Tempore numquam sed quos. Voluptates libero vitae ad magnam quasi voluptatem.', 1, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(13, 23, 'Micaela Marquardt', 'Ullam quia aut quam vitae quo et. Excepturi consectetur quasi facere eius cum dolores autem. Fugit molestiae alias quo aspernatur.', 2, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(14, 45, 'Kacey Bosco', 'Natus placeat laudantium ipsum explicabo dolorem nesciunt labore quia. Nesciunt molestiae quia totam est dolorum. Sunt eligendi soluta sequi.', 1, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(15, 42, 'Dedric Barrows', 'Enim amet explicabo enim a aut fugit. Voluptatem doloribus consectetur rerum voluptatem. Quo aut exercitationem amet vitae.', 4, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(17, 23, 'Jovani VonRueden', 'Qui facilis qui ea magnam non tempore. Est rem quia error sed neque quia vel impedit. Et deserunt vero assumenda harum vel.', 5, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(18, 35, 'Garth Ebert DVM', 'Aut dolorem fugiat repellendus optio et. Et adipisci amet quia ipsum exercitationem reprehenderit. Non sunt culpa fugiat hic aliquam a.', 2, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(19, 44, 'Joelle Murphy', 'Illum dolore eos eius vero voluptate qui repudiandae. Sint aut molestiae repudiandae soluta voluptatem expedita fuga. Commodi architecto unde ex tempora.', 2, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(20, 33, 'Calista Collins', 'Rerum accusantium dicta veniam voluptates ut. Consectetur voluptatibus sunt et aliquid itaque minus. Eos distinctio incidunt rerum consequuntur velit rem. Placeat ut tempore ut accusamus culpa minus.', 0, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(21, 47, 'Dr. Grant Ortiz', 'Eum numquam odio exercitationem autem qui tempore non quisquam. Soluta quisquam cupiditate autem itaque quidem. Iusto suscipit consequuntur distinctio labore iusto fugiat nisi. Molestias nobis soluta est dolores maiores aperiam totam recusandae.', 4, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(22, 46, 'Joannie Howe', 'Consequuntur repellendus eum temporibus est. Provident quia odit sed. Consectetur et id est mollitia doloribus blanditiis consectetur. Ut mollitia qui reiciendis accusantium dolor vitae facilis sed.', 3, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(23, 48, 'Nolan Fay', 'Aut ipsam esse rem explicabo qui. Aut tempora placeat voluptatem voluptatum. Sed cum aliquid aut eum autem repellat.', 1, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(24, 29, 'Kurtis Wisozk', 'Sequi reiciendis nihil quidem molestias rerum impedit. Sequi omnis et officiis deleniti. Illo ut est in repellat magni voluptas assumenda.', 2, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(25, 2, 'Miss Marilie Anderson III', 'Doloribus fugit est itaque consequuntur deserunt consequatur voluptate. Quia aliquam fugit optio aut. Eligendi dolore et esse delectus vero atque amet.', 3, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(26, 47, 'Emilio Dietrich', 'Amet voluptatem officia quia eaque accusantium rerum. Aut eveniet voluptates voluptas reiciendis repudiandae sit ea. Molestiae nulla consequatur amet sint tenetur.', 5, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(27, 10, 'Kaden Rau', 'Sint esse occaecati ullam aliquid. Natus non ipsum consequatur. Aliquam dolore vero omnis qui quam sit. Explicabo quod sed aspernatur culpa fuga quod.', 2, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(28, 14, 'Emelie Mueller', 'Ipsam reprehenderit aut ex vel a maxime non. Non consequuntur harum corrupti quidem. Non tenetur sint laboriosam dignissimos et.', 5, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(29, 32, 'Nels Adams', 'Non quis est aut aut iusto eum. Deleniti nesciunt odio atque facere odio autem omnis. Eius laboriosam deleniti et aliquid accusamus nisi ad nulla.', 1, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(30, 17, 'Earlene Runte', 'Quis quam ea omnis minima aliquid nostrum est. Necessitatibus asperiores qui mollitia possimus quas. Assumenda nulla est sed eius. Omnis reprehenderit adipisci rerum odio.', 3, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(31, 10, 'Mr. Granville Kautzer', 'Quis aliquid pariatur illum quia voluptatum. A eos sit rerum natus velit. Repellendus et neque officiis porro ut.', 1, '2020-02-27 03:56:33', '2020-02-27 03:56:33'),
(32, 41, 'Mr. Cody Hoppe PhD', 'Culpa amet eos non fugit repellendus eum. Id quasi accusantium perspiciatis facere. A itaque incidunt pariatur recusandae neque. Nihil commodi nesciunt sunt.', 1, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(33, 23, 'Prof. Mollie Effertz PhD', 'Nisi ab quaerat vel at non et. Qui sit tempore libero sit saepe non. Ratione molestiae non culpa nobis asperiores dignissimos aut. Reprehenderit accusamus at labore necessitatibus consequatur. Dicta quia sit quas molestias repellendus.', 1, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(34, 44, 'Nya Crooks', 'Provident non nulla dolores. Quod delectus ut eligendi doloribus est voluptatibus non. Et at quasi sint cumque pariatur dolores. Beatae eum ipsa eum cum vitae autem.', 3, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(35, 25, 'Nichole Olson', 'Et est tempore aut commodi et omnis mollitia. Et vero eligendi dignissimos enim explicabo voluptas quam tempora. Ab autem corrupti laborum deserunt ea laboriosam non. Et impedit quisquam aliquam numquam nihil iure. Dolor non molestias iure sit.', 2, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(36, 20, 'Prof. Jarret Heathcote', 'Facilis expedita rem consequatur atque quos aut illo. Excepturi autem eaque quas exercitationem veritatis optio dolores qui.', 2, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(37, 23, 'Joey Kassulke', 'Repellendus et enim quam alias iusto quibusdam. Voluptas doloribus rerum aut quia impedit expedita. Sequi iure ipsam commodi itaque vero vero nostrum. Et ipsa possimus sed alias quis.', 0, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(38, 36, 'Jackie Okuneva', 'Dolores id deserunt occaecati vitae ut quisquam. Eum quidem et minus et. Harum et et assumenda et ut quia ea modi.', 3, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(39, 11, 'Laila Stoltenberg Jr.', 'Quis occaecati quod ipsa explicabo. Non illo labore placeat deleniti et. Et voluptas soluta fuga tempora. Est neque est quo ut est sed laudantium.', 0, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(40, 32, 'Evan Stroman', 'Libero temporibus voluptatem tenetur autem neque et fugit tempora. Quam est dolores similique. Aut rerum magni nemo quis quia quibusdam.', 5, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(41, 18, 'Haylie Feil', 'Ipsa occaecati dolorem totam ut repellat in. Pariatur pariatur dolores iure veniam. Tempore iste ipsum labore ipsa blanditiis iste illo.', 0, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(42, 25, 'Miss Monique Muller', 'Et tenetur quo dolorum minima magnam asperiores temporibus. Blanditiis ducimus dolores modi aut.', 4, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(43, 29, 'Merl Fritsch', 'Sed tempore tenetur quos ut. Facere tenetur facere illum tempore dolor quo unde. Esse et rerum facilis quidem vel.', 3, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(44, 24, 'Ms. Jalyn Deckow II', 'Sapiente magnam quis harum et similique laudantium. Qui ducimus et similique numquam qui. Voluptas delectus suscipit omnis cupiditate iusto corporis incidunt.', 4, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(45, 1, 'Dawn Lesch', 'Mollitia neque modi recusandae excepturi fugiat neque. Et qui quaerat eveniet dolorem eveniet earum. Quibusdam sit necessitatibus dolorem voluptatem iste.', 1, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(46, 31, 'Willie Ortiz II', 'Architecto molestiae eius aliquam dolorem. Nam inventore nisi eum minus et architecto reiciendis voluptatem. Non porro laudantium voluptatem tenetur rerum. Eligendi quia molestiae reprehenderit maiores maxime.', 3, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(47, 44, 'Lucie Hauck', 'Expedita quam quis ipsum neque. Earum deleniti voluptatibus tempora pariatur est eius. Dolorem eveniet reiciendis optio voluptas aliquid quia illo harum. Mollitia ratione alias sapiente eveniet. Unde aut non et tenetur.', 2, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(48, 44, 'Dr. Reynold Dach III', 'Ratione dolorem cupiditate vel neque quia qui. Molestiae molestiae et ratione at reiciendis praesentium. Ducimus enim id excepturi eos. Ea sint quo similique eos consequuntur accusamus consequatur.', 1, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(49, 33, 'Gino Vandervort', 'Omnis dolores numquam autem. Porro qui qui omnis voluptatem consequatur magnam eveniet in. Quo blanditiis et culpa id voluptatem. Ut quaerat non officia ullam. Assumenda enim quibusdam doloribus tempore aliquam aliquam.', 4, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(50, 22, 'Emmie Emmerich MD', 'Quis praesentium optio quaerat praesentium dicta aut velit eius. Omnis porro et eum minus eos incidunt. Nihil voluptatem veniam inventore nemo. Dolorum consectetur esse error nihil illo quaerat qui in.', 1, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(51, 41, 'Blanche Thiel', 'Et maiores culpa officia est ut rerum. Recusandae consequuntur aliquid sint tempore enim.', 0, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(52, 13, 'Montana Kub', 'Quia consequatur corrupti et aut rerum. Corporis sunt harum odit voluptas enim commodi voluptas. Labore eveniet qui repudiandae eveniet.', 2, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(53, 4, 'Dr. Donnie Batz', 'Perferendis voluptas voluptatem id aperiam dignissimos repudiandae adipisci. Suscipit et beatae enim et pariatur. Provident officia cum fugiat vel amet omnis ea. Incidunt nesciunt ducimus sequi qui perspiciatis et. Consequuntur ex ipsa repellendus.', 3, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(54, 2, 'Mr. Hassan Waters', 'Perferendis saepe molestias ut necessitatibus velit. Nostrum sed occaecati aliquid nostrum velit. Accusantium officiis ea quos quae numquam minima aperiam rem. Reiciendis quis adipisci aut consequatur maiores autem et.', 5, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(55, 32, 'Dr. Terrill Larson', 'Voluptatibus quasi quis iure voluptatibus dolor corporis. Ducimus nisi sit corporis sunt minima ut eaque debitis. Sequi et rerum aut eos esse ipsum. Odit recusandae sed veritatis nisi molestiae perferendis.', 4, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(56, 2, 'Mrs. Ova Kshlerin II', 'Odit quae iste eum officia. Ullam commodi et dolorum adipisci et inventore. A et aut sint nam. Dolor laudantium sint dolor.', 1, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(57, 23, 'Carey Boyle', 'At earum itaque ullam dolores esse. Natus ut quis et nesciunt in. Sit culpa aut nemo atque. Officia sit voluptatem ut eveniet.', 2, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(58, 17, 'Burley Braun', 'Quia et eum ipsa odio voluptatum quibusdam accusamus nemo. Non cumque sit modi quasi. Fugit quisquam perferendis accusantium aut.', 0, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(59, 39, 'Mr. Abner Schiller', 'Illo quo quos dicta ut beatae. Aut iste provident quisquam minus explicabo molestias velit. Reiciendis rem labore non animi et. Aperiam omnis nihil iusto et consequatur quam.', 5, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(60, 16, 'Keenan Lind', 'Libero dolorem doloribus optio vitae ullam. In enim quo numquam. Consequatur animi in dolore expedita officia ratione. A rerum nostrum dicta pariatur laudantium.', 3, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(61, 14, 'Frankie Wilderman PhD', 'Tempora dolores et fugit asperiores est ut. Quo dolor omnis et aspernatur id reprehenderit. Porro optio sint quibusdam voluptatibus est. Rem necessitatibus et distinctio in corporis est minus cumque.', 1, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(62, 48, 'Donnell Wisoky', 'Distinctio labore dolorem porro natus saepe fugit eaque. Et recusandae ex eveniet cupiditate at et. Ipsam deserunt harum quos qui. Omnis id impedit et.', 4, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(63, 38, 'Marcus Sauer MD', 'Placeat et quo voluptas sint accusantium dicta. Quas eveniet excepturi pariatur dolor tenetur illum. Doloribus et beatae ipsum veniam nam.', 2, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(64, 40, 'Clarabelle Langworth', 'At corrupti officiis voluptatem. Rerum enim porro culpa quia similique non. Qui mollitia consequatur rem sed ut doloremque saepe.', 3, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(65, 11, 'Mr. Sammy Klein DDS', 'Unde non illo veritatis non. Et quaerat fugiat voluptatem est ut suscipit. Sint aut minima in ea voluptas quis. Ipsa qui et qui aliquid qui.', 2, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(66, 35, 'Redmi 4X -2v3', 'hy its a review', 1, '2020-02-27 03:56:34', '2020-02-27 05:26:21'),
(67, 26, 'Miss Florida Volkman DVM', 'Beatae vero saepe tempore eligendi aperiam modi in. Eveniet sed voluptatem nam velit mollitia.', 2, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(68, 22, 'Margarita Wyman', 'Deserunt et delectus et esse. Est dignissimos impedit ea qui placeat. Saepe iusto perferendis asperiores dolores nulla labore optio. Consequuntur enim harum illo consequatur provident repellendus et.', 5, '2020-02-27 03:56:34', '2020-02-27 03:56:34'),
(69, 5, 'Chesley Larkin', 'Dignissimos facilis deserunt et et rerum ut dicta. Consequatur quos alias voluptatum illum. Quia sed qui nesciunt eum ut. Ratione sunt voluptatem consequuntur sit ex.', 4, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(70, 19, 'Mrs. Amina Adams DDS', 'At vero officia nulla qui dicta recusandae. Omnis iure quia sit occaecati omnis est libero. Aliquam architecto dolor iste quas.', 0, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(71, 46, 'Adella D\'Amore', 'Dolor sit distinctio sed rem omnis. Dignissimos consequuntur sed nihil et magni blanditiis. Quia quia sit fuga nihil nobis quisquam. Et dolor molestias in ea ullam.', 1, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(72, 22, 'Lizeth Jenkins', 'Nemo harum cum aliquam eius rem dolorem ipsum. Voluptates sapiente temporibus perspiciatis non dolores qui beatae. Recusandae tenetur accusamus quis id sed provident.', 0, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(73, 34, 'Tyrel Jerde II', 'Quaerat magni est in voluptas enim tenetur. In odio incidunt et dignissimos ratione. Sit provident eos velit rerum.', 5, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(74, 17, 'Garrick Hodkiewicz DVM', 'Est delectus aliquid minima nihil magni aut voluptatem. Sunt doloribus sint et vel voluptas. Non ipsum labore veritatis repellat commodi.', 2, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(75, 48, 'Lou Bode DDS', 'Et sed ducimus dolor sed porro. Nam ducimus ad quas debitis consequuntur. Deserunt assumenda tempore necessitatibus voluptatem quo sint unde.', 4, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(76, 48, 'Keagan Grant', 'Ea voluptas accusamus tempora qui dolores ea. Accusamus excepturi eos aut corporis. A eos occaecati deleniti modi odio reiciendis libero repudiandae. Quo architecto fuga quos odit quas est.', 0, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(77, 15, 'Gabriella O\'Hara', 'Nemo aliquam dolorem tempore omnis voluptatem. Error sunt alias ratione asperiores. Odit quibusdam mollitia ut dignissimos sit corporis aut. Expedita ipsa aperiam in et. Debitis numquam ut quisquam illum odit nihil ex.', 2, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(78, 17, 'Mayra Heaney', 'Iusto iure amet sed placeat aut animi quod. Maiores atque ea quas. Aut repellendus similique sit delectus.', 3, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(79, 40, 'Cicero Gutkowski', 'Autem id dolor debitis ad. Reiciendis repudiandae earum velit temporibus. Sed distinctio et et ullam ea. Ut illo est odio dolor ea nulla et. Expedita sed sequi et ut placeat ut esse.', 3, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(80, 1, 'Annabell Goldner', 'Perspiciatis hic qui fugiat asperiores eum aut enim. Et facere modi voluptatem pariatur.', 1, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(81, 6, 'Kenneth Eichmann', 'Laudantium tenetur qui aspernatur enim. Iste minima enim eligendi est fuga expedita. Consectetur explicabo cum facilis asperiores blanditiis expedita mollitia odio. Odio deserunt dolorem quia expedita qui nam.', 4, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(82, 7, 'Patricia Keebler', 'Doloribus facere excepturi veniam necessitatibus. Qui magnam repellendus a quia nam. Deserunt vero veritatis voluptatibus commodi omnis aut eum eligendi.', 4, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(83, 40, 'Faye Herman', 'Fugiat quas libero aliquam mollitia. Accusantium debitis illum consequatur voluptas. Qui molestias nemo nulla deleniti. Tempore ipsum repellat nemo laborum.', 4, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(84, 21, 'Irma Gislason I', 'Dolor tempore ex est at tempora voluptatem ipsa. Dolores ut et in explicabo rerum quis est. Non sed assumenda magni est soluta ut sed.', 0, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(85, 22, 'Hope Harber', 'Sed praesentium aut explicabo et accusamus accusantium. Repellendus laboriosam nemo corporis ut et architecto ad. Autem suscipit amet voluptas.', 5, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(86, 7, 'Mariane Bergnaum', 'Deserunt quibusdam quasi fugit magnam. Ducimus et sed iusto voluptates ut. Voluptas harum sed nesciunt dolores non aspernatur odio laboriosam.', 3, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(87, 45, 'Dr. Patsy Kohler PhD', 'Est nemo eum est illo. Suscipit incidunt aperiam et dignissimos nam cumque est dolorem. Pariatur nihil sed debitis esse molestias nesciunt. Veritatis reiciendis ullam exercitationem vitae nisi ad ipsa.', 4, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(88, 29, 'Buck Ernser', 'Quas consequuntur a dicta incidunt enim. Cupiditate atque aut aut autem. Vel tenetur commodi esse sit. Non velit quisquam voluptatem qui.', 4, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(89, 31, 'Barbara Ebert', 'Deleniti commodi fugiat quos nihil qui quibusdam. Deleniti qui dolorem odit et et minus quia. Veniam nulla voluptatem enim molestiae explicabo nesciunt.', 5, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(90, 42, 'Bernita Mante MD', 'Dolores est sit autem velit. Eum eos quia est in et incidunt aliquid aut. Sed voluptatum occaecati eum tempore quas fugit. Perferendis ducimus aut voluptate voluptas ut.', 2, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(91, 46, 'Prof. Newton Marks', 'Quia odit totam voluptates quisquam id. Cumque distinctio rerum ut magnam sint assumenda facere.', 5, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(92, 39, 'Brook Rosenbaum', 'Et facere eum autem molestiae delectus. Aperiam facilis cupiditate doloremque omnis. Ratione totam itaque veritatis autem. Tempore molestiae et et sint iusto.', 1, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(93, 36, 'Mr. Boyd Rempel PhD', 'Occaecati reprehenderit quis nisi alias praesentium atque. Amet voluptatem distinctio occaecati debitis veritatis occaecati non occaecati. Non voluptates dolor temporibus quod optio aut. Recusandae facilis et quos voluptatem est rem facilis.', 5, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(94, 40, 'Dr. Roy Miller', 'Excepturi iste velit iusto quos quis consectetur sint ut. Qui explicabo aliquid consequuntur est voluptatem ut. Et et est nobis et. Distinctio repellat harum rerum quam aut.', 1, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(95, 6, 'George Grimes', 'Nam et ea quia vitae. Dolor esse tenetur cumque quos. Accusantium rem rem mollitia non laborum. Architecto reprehenderit dolorum quod corrupti ut sint. Nihil hic cupiditate quo modi.', 4, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(96, 18, 'Onie Gutkowski', 'Nihil provident cupiditate est corporis veritatis. Rerum et enim tempore nihil blanditiis. Autem aut itaque sunt nulla.', 2, '2020-02-27 03:56:35', '2020-02-27 03:56:35'),
(97, 2, 'Bella Pacocha', 'Vel quaerat quibusdam distinctio nihil. Iure voluptatum fuga deserunt cum expedita ea omnis. Aut et esse veritatis ut ex illum possimus.', 4, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(98, 27, 'Domenico Fadel V', 'Tenetur dignissimos quo possimus amet cupiditate vel. Quis vel perspiciatis numquam quam. Ipsam in asperiores qui quia eius laudantium.', 4, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(99, 30, 'Mrs. Vesta Padberg', 'Quia incidunt excepturi ut consequatur laborum alias voluptas. Voluptas corrupti minus tenetur voluptatem. Nihil commodi est quod sit. Sint blanditiis error vero animi dolorem voluptatum.', 1, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(100, 10, 'Titus Marquardt IV', 'Corporis voluptatem quia exercitationem ut. Et alias similique accusamus vero quia. Id dolore repellat eos sit est enim.', 5, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(101, 18, 'Eusebio Purdy', 'Reiciendis est aliquam sit repellendus ut itaque iure voluptatem. Commodi aut quis corporis laudantium animi. Voluptatem veritatis excepturi veritatis velit.', 2, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(102, 21, 'Reanna Connelly', 'Aliquid vero ullam id quae quae qui alias dolorem. Quia unde est sit eum omnis. A similique voluptatem odio consequatur aut tempore reiciendis quos. Voluptas non quia aut voluptas dolor quaerat perspiciatis.', 2, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(103, 46, 'Caleb Kovacek', 'Earum quibusdam totam sed quos qui est enim. Enim quia assumenda qui odio ullam minima. Nostrum beatae et et earum. Sit ratione velit ullam et.', 3, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(104, 41, 'Ms. Myra Casper', 'Aperiam omnis distinctio consectetur velit. Velit sequi omnis earum quo suscipit exercitationem. Quod tenetur ab non laboriosam atque explicabo nostrum. Quis veritatis ipsa et consectetur.', 1, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(105, 7, 'Gillian Tillman', 'Itaque deserunt fugit voluptatem est maiores qui. Quisquam aliquam facere laborum dignissimos et asperiores. Consequatur sed delectus deleniti ea aperiam. Quidem incidunt non veniam aliquam ut est.', 0, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(106, 28, 'Shany Greenholt', 'Sunt officia illum est amet. Laborum expedita voluptatem voluptatibus occaecati mollitia tenetur. Eligendi eveniet dignissimos consectetur modi ea nesciunt et. Asperiores molestiae sapiente eum corrupti quia eum.', 2, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(107, 9, 'Vesta Johnson Jr.', 'Qui voluptatem quisquam officiis. Facere veritatis voluptate laboriosam numquam natus ipsa enim ut. Molestiae molestiae et in molestiae dolore delectus sed neque.', 2, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(108, 20, 'Casandra Wisoky Jr.', 'Aut dignissimos fugit molestias sint dolorum hic. Et mollitia non vel velit iure qui autem et.', 1, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(109, 40, 'Kadin Wuckert', 'Dolorem quisquam eos ratione delectus sapiente nostrum. Nostrum aut non ea a cum. Excepturi vel odit qui qui itaque doloremque nemo a. Modi ea voluptatem sit aliquid voluptate tempore alias.', 0, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(110, 44, 'Prof. Javon Goodwin MD', 'Provident quisquam incidunt odio. Velit dolore quo fuga. Laudantium sunt officiis iusto ea aliquid voluptatem dolor.', 5, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(111, 24, 'Leanna Koss', 'Temporibus maiores ut enim tenetur praesentium. Ut et nisi hic laudantium officiis voluptas necessitatibus doloribus.', 1, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(112, 21, 'Corine Goyette', 'Autem odio architecto provident velit aut sint eligendi. Atque quisquam quasi dolore praesentium ut. Quo vero vel id omnis quis recusandae. Qui molestiae animi vel consequatur doloremque facilis distinctio.', 5, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(113, 38, 'Miss Karine Johnston PhD', 'Aut minus perspiciatis aliquid eum. Sit voluptatem autem quasi vel. Velit aliquid iusto et suscipit omnis occaecati magnam.', 0, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(114, 36, 'Else Baumbach', 'Omnis reiciendis exercitationem expedita quo qui fugit. Voluptatem nostrum reiciendis perspiciatis beatae minus sapiente qui ut. Laborum rerum sint rerum veniam repellendus a asperiores. Sed atque nisi officia exercitationem dolor tempore est.', 2, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(115, 24, 'Fred Waelchi', 'Esse culpa fuga pariatur enim et. Suscipit aut qui sint et. Et omnis facilis quia ipsam blanditiis praesentium laudantium qui.', 5, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(116, 40, 'Nicolas Reichert Jr.', 'Molestiae et rerum nihil aut vero. Et natus fugit qui occaecati. Doloribus in veniam incidunt ea repudiandae reiciendis distinctio perferendis. Recusandae blanditiis corrupti consectetur id nesciunt.', 1, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(117, 48, 'Annie Wisozk', 'Eos eos aliquid aut ducimus qui eaque. Eveniet exercitationem et fugit quo commodi non rerum est. Ex quidem ea vero assumenda commodi temporibus expedita non. Ipsam et dignissimos velit quod nostrum.', 5, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(118, 44, 'Mrs. Alvera Wiegand Sr.', 'Dignissimos aut similique omnis in non commodi cumque. Qui est laudantium quas aut ratione. Soluta soluta minus modi possimus esse cumque ipsam sit.', 1, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(119, 50, 'Lilian DuBuque', 'Natus sequi magni libero velit. Laborum modi eveniet eveniet autem rerum sunt. Nemo architecto sapiente fugit eum. Aut voluptatem enim velit rerum.', 2, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(120, 45, 'Monica Donnelly', 'Saepe ad doloremque iure itaque provident rerum rerum. Ab enim deserunt neque fugiat. Et delectus nihil doloribus porro. Harum dolorum at illum possimus nihil.', 1, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(121, 3, 'Dr. Leo Purdy Jr.', 'Minus sint qui consequatur ratione. Aut ratione deserunt rerum porro impedit. Quibusdam quam perferendis dolores. Natus iure explicabo enim.', 3, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(122, 38, 'Javon Schmeler', 'Dignissimos repellat rerum sequi id. Facere maiores molestias voluptates voluptate. Ullam cum laborum aliquid et voluptatem quisquam.', 2, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(123, 47, 'Prof. Sanford Schinner Jr.', 'Libero dolores dolorum aut est voluptas ut. Modi error voluptatem voluptatibus cupiditate neque.', 2, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(124, 46, 'Kayli Robel', 'Blanditiis illum suscipit dolorem id aspernatur maiores. Quia esse ratione enim a iure nostrum. Sapiente et magnam iusto excepturi ut deleniti.', 0, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(125, 38, 'Miss Estefania Haley', 'Distinctio facilis temporibus eum in omnis a corporis. Magni voluptatem et sint sed dicta. Officiis tempora sed libero quo id qui vitae numquam. Perferendis eum vitae adipisci cum voluptatum.', 0, '2020-02-27 03:56:36', '2020-02-27 03:56:36'),
(126, 12, 'Gunnar Funk', 'Ratione odit impedit earum quod laudantium quia. Enim accusantium rem quo rerum voluptatibus ratione rerum. Velit voluptas earum et qui rerum repudiandae non. Sit cumque odio tempore.', 4, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(127, 14, 'Walter Brown', 'Consequatur unde earum nam laboriosam qui earum. Et omnis sit maiores ipsum voluptatem eum. Dicta est quod officia sed placeat sed. Magni omnis suscipit dolores qui exercitationem.', 1, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(128, 27, 'Cathy Carter', 'Qui ducimus harum vero rerum deserunt sint aut. Veritatis vero corrupti repellendus ad et ducimus. Praesentium tempora reprehenderit corporis fuga. Temporibus deleniti dolor omnis.', 0, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(129, 16, 'Bill Mante', 'Fugit veniam blanditiis explicabo quo minima aperiam sint. Nihil saepe explicabo commodi illum. Officiis tempora quo ut vero quia. Vel eligendi itaque placeat minima.', 1, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(130, 22, 'Ms. Josephine Rice Jr.', 'Et repudiandae quam voluptate consequuntur omnis perferendis excepturi aut. Ea possimus tempora quasi aliquid possimus odio. Facere qui minima harum optio autem deleniti. Beatae enim perferendis sunt minus.', 4, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(131, 31, 'Miss Emmanuelle Vandervort DVM', 'Ipsa ut natus qui atque aut odio. Facilis accusamus voluptas aut consequatur. Maiores esse et mollitia aspernatur excepturi nisi vel. Ut error mollitia dolores deserunt omnis architecto sit sequi.', 4, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(132, 25, 'Sven Pfannerstill IV', 'Et quas qui sed dolores. Vel molestiae voluptate reiciendis nihil exercitationem voluptas. Cum tempora quam magni fugiat nostrum harum quis.', 1, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(133, 38, 'Prof. Darrin Streich', 'Voluptas dicta odit ab hic. Praesentium et repellat debitis nemo sint dicta. Dicta iusto eaque qui. Odio ratione qui vel voluptas distinctio.', 5, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(134, 26, 'Mr. Dexter Lockman', 'Cum itaque fugit quia voluptatem. Impedit nesciunt deleniti ut placeat velit aliquid. Dolor in nihil earum laboriosam quos a ducimus.', 0, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(135, 27, 'Miss Esther Carroll IV', 'Accusamus recusandae aspernatur distinctio occaecati. Quasi odit vel cupiditate itaque. Delectus rem similique non maiores magnam sed labore. Iusto a animi error repudiandae maxime molestiae ullam neque.', 0, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(136, 48, 'Mr. Jordi Swaniawski', 'Odio officia deleniti reprehenderit quam explicabo similique. Quia explicabo culpa aut eveniet qui dignissimos corporis debitis. Eos vel voluptas consectetur autem iure non voluptates laboriosam.', 0, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(137, 18, 'Laisha Becker IV', 'Eaque minima velit totam non fuga. Debitis sint dolor magni sit aliquam cupiditate et. Error qui esse consequatur corporis consequatur ipsum omnis. In ex enim qui.', 0, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(138, 17, 'Mr. Marlon Wiegand', 'Qui explicabo doloremque aut ullam. Delectus dolore quis tempora omnis reprehenderit enim adipisci et. Laborum voluptatibus laudantium minus illo quia accusamus et. Dolorum quo est consequuntur veritatis.', 3, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(139, 39, 'Rosalinda Ernser', 'Voluptate consequatur est ex autem unde id laboriosam illum. Est autem velit consectetur vel vel laboriosam. Est vitae ratione error officiis ipsum quos. Facilis voluptas veniam qui numquam.', 2, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(140, 42, 'Leonora Schaden', 'Nihil enim incidunt illum dolorem dolorem hic. Veniam eum ducimus quibusdam fugit quis sapiente. Natus nostrum magnam accusamus ut consequatur sunt. Nisi voluptatum ipsa voluptatem aut natus.', 1, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(141, 15, 'Stephany Wilkinson', 'Eum repellat omnis ut quas. Consequuntur optio provident sit nostrum. Officiis repudiandae aperiam aut sit culpa est id. Totam ut temporibus voluptas laboriosam et et.', 1, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(142, 29, 'Domingo O\'Hara', 'Eos enim distinctio sit occaecati. Harum dolores molestias veritatis repellendus quia inventore. Similique molestiae reiciendis est et accusamus cupiditate. Assumenda tenetur delectus ad et dolorum impedit.', 0, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(143, 44, 'Ewald Harris', 'Optio molestiae est maiores magni fuga laboriosam. Dolorem voluptatem ut velit odio pariatur. Maxime earum veniam fuga cupiditate minus voluptatum.', 4, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(144, 4, 'Vivienne Bergstrom DVM', 'Accusamus architecto rerum quae. Exercitationem aut alias vel voluptates pariatur nam sunt. Exercitationem et et perferendis omnis voluptates. Tempore est et fuga corporis aliquam velit molestiae.', 1, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(145, 9, 'Brittany Kutch', 'Quaerat ea iusto ut aut minus deserunt aut. Atque distinctio accusamus sint ipsa. Qui aut et omnis et sit cupiditate. Sint eius vel aut fugit.', 1, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(146, 41, 'Mckenzie Pouros', 'Cumque ut voluptatem doloribus nam. Exercitationem ipsam veritatis fugit quidem. Fugiat rerum cum odio unde.', 2, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(147, 37, 'Prof. Coty Lockman', 'A quos dolor saepe. Et culpa omnis quaerat voluptatem dolores minus ex.', 3, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(148, 2, 'Dr. Gaston Hyatt', 'Odio ut quis occaecati occaecati mollitia officia quo. Numquam doloribus facilis totam saepe vero earum voluptatem. Voluptatem ullam ex necessitatibus praesentium. Eveniet qui sunt fugiat quia ut aut.', 3, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(149, 25, 'Baron Becker', 'Commodi et in quos quasi dignissimos dolore ipsa. Perspiciatis aut occaecati laboriosam cupiditate corporis rem et neque. Rerum et sit sit et delectus consequatur. Optio quibusdam dolor consequuntur et omnis est magni.', 4, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(150, 23, 'Collin Thompson', 'Ducimus harum est asperiores modi nesciunt. Molestiae aut omnis neque et quis beatae. Distinctio deleniti laboriosam unde sapiente rerum aliquam.', 1, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(151, 6, 'Alivia Wolff', 'Totam et minus corporis ab consequatur labore voluptas. Rerum in unde rem voluptatem tenetur.', 0, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(152, 39, 'Prof. Garland Larkin', 'Possimus velit accusantium ducimus hic. Provident exercitationem voluptatem rerum laboriosam nobis natus. Odio ipsam neque incidunt. Excepturi est eligendi ducimus tempora rem voluptas voluptate. Fuga autem quidem architecto est nulla sed mollitia quia.', 5, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(153, 23, 'Skylar Von', 'Error molestiae sed minima natus sit quaerat. Voluptates vel quis omnis officiis eveniet molestiae. Incidunt est voluptatem esse nostrum eum vero ducimus qui.', 5, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(154, 12, 'Eldon Upton', 'Sequi quisquam omnis aliquid quia. Maiores ut molestias asperiores a natus. Est incidunt nam et officia.', 2, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(155, 21, 'Jeromy Hoeger', 'Iure nesciunt vel deserunt odit expedita eius molestiae. Ducimus libero sint distinctio fugit repellendus inventore. Non error consequatur non nihil. Voluptate labore similique dolores officia.', 2, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(156, 26, 'Tabitha Rodriguez PhD', 'Reiciendis et magnam eos quis temporibus quas. Voluptas voluptas nulla id voluptatem quis. Saepe et molestias veritatis qui aut est consectetur.', 3, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(157, 3, 'Prof. Ellsworth Kovacek', 'Quae ratione excepturi labore voluptatem. Sit ut tenetur rerum sapiente pariatur ut deleniti non. Amet ducimus odio asperiores.', 2, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(158, 23, 'Ms. Ofelia Kihn', 'Laudantium tenetur nihil eaque ipsam repudiandae. Amet autem numquam non est asperiores nam. Et illo sunt corrupti quis nobis veniam sit consectetur.', 2, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(159, 13, 'Kimberly Daugherty', 'Fugiat sint quia ratione. Unde et unde amet est dolorem. Quae et voluptatem maiores commodi eligendi. Impedit corporis ea corrupti laboriosam fugiat est quo.', 1, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(160, 8, 'Prof. Abel Larkin', 'Et molestiae praesentium ratione cum. Iusto voluptatibus corporis laudantium laborum a architecto qui. Dolores dolores dignissimos ex. Rerum quas nesciunt officia.', 1, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(161, 10, 'Stevie Ryan', 'Ad aut totam odio possimus. Non quis et sed rerum.', 5, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(162, 38, 'Brandon Carter', 'Libero maxime excepturi excepturi temporibus. Eos tempore nulla iste nihil. Corrupti commodi voluptatem ipsa consequatur id cupiditate.', 3, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(163, 4, 'Prof. Lonzo Kautzer IV', 'Assumenda qui qui qui tempore tenetur sit modi eos. Aliquid et quas quibusdam. Atque dolor perferendis nulla occaecati reprehenderit.', 2, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(164, 7, 'Novella Dickinson Sr.', 'Sit consequatur qui aut labore unde voluptas voluptate. Provident voluptate est non. Ipsam quis minima voluptatum exercitationem necessitatibus veniam. Accusamus consequatur voluptatem quae voluptate sequi aut iusto. Et quidem dignissimos id eveniet et.', 4, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(165, 10, 'Trey Brekke', 'Voluptas aspernatur rem eligendi animi neque dolor odit. Dolorem est sit numquam recusandae. Consequatur ipsa ratione ipsam tempore minima.', 1, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(166, 43, 'Ms. Megane Roberts DVM', 'Veritatis vel est consequatur fuga ipsam. Voluptatem corrupti corporis nostrum labore ipsum. Dicta labore ea necessitatibus laudantium doloremque. At enim temporibus quis non omnis.', 3, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(167, 34, 'Mr. Percy Kuphal', 'Sit molestiae vitae omnis molestiae. Impedit eos ut est consequatur maiores tempora. Illo expedita veniam adipisci sunt aut.', 5, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(168, 36, 'Ms. Mallie Daniel', 'Alias consequatur omnis assumenda. Ea quis qui qui voluptas laudantium. Ab odio accusamus sint molestias facilis. Reprehenderit sint aut dolores omnis deleniti sed ab.', 1, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(169, 12, 'Louie Simonis', 'Laudantium beatae qui distinctio ducimus velit ratione. Ratione et et deserunt sed odio. Aut explicabo pariatur itaque est minus atque. Rem qui mollitia et delectus.', 2, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(170, 4, 'Haleigh Rippin', 'Eveniet odit autem rerum fugit. Voluptas occaecati at et quia molestias. Non velit esse eligendi consequatur. Perferendis deserunt enim culpa voluptatem repudiandae.', 1, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(171, 46, 'Dr. Trent Rath Jr.', 'Aut quaerat explicabo alias. Sunt voluptatibus dolores omnis ut quisquam dicta velit. Quae dolores soluta maiores rerum sint distinctio in. Pariatur natus earum non aliquam.', 4, '2020-02-27 03:56:37', '2020-02-27 03:56:37'),
(172, 44, 'Prof. Dimitri Jakubowski II', 'Omnis architecto natus eveniet ea. Optio consectetur non aut. Eius magni sapiente porro quia nesciunt dolor voluptas. Voluptatem reiciendis nobis voluptatem.', 2, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(173, 10, 'Prof. Sarai Bahringer I', 'Quia autem consequatur incidunt ipsam nihil nihil. Hic sed quis eveniet quae ut et. Dolorem et doloremque ut facilis laudantium sunt.', 2, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(174, 48, 'Brenda Auer', 'Est dolorem quo excepturi quia ipsam facere. Ipsa laborum sed delectus sint qui velit deleniti delectus. Neque sed veniam cumque est. Ut iure libero facere porro labore vel fugiat.', 3, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(175, 34, 'Nichole Beatty V', 'Et dolorem eveniet quos quas. Animi cupiditate occaecati voluptatibus autem quo eligendi ipsa numquam. Ipsam sit quo architecto dolor.', 3, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(176, 11, 'Isabella Quigley', 'Sequi laudantium consequatur aperiam reiciendis. Rem deserunt ipsa dolore aut odio nihil. Qui veniam dolore omnis. Aut voluptas voluptatem eaque impedit.', 2, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(177, 26, 'Zola Herzog', 'Iusto delectus consectetur quia qui. Quidem quaerat qui molestiae et. Iste et recusandae velit aut.', 3, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(178, 36, 'Elenora Schinner', 'Dolorem recusandae repellendus aut eveniet veritatis laboriosam veniam. Ut rerum nostrum aut rem consectetur dolorem veritatis. Esse veniam omnis exercitationem veniam rerum a. Fuga eius temporibus sunt omnis quam ducimus.', 5, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(179, 10, 'Miss Yazmin Pouros', 'Velit iure quos a ipsam corrupti. Ipsum aut et et assumenda magni. Iusto perspiciatis non alias quis voluptatem optio harum. Soluta est impedit tempora velit quis libero.', 3, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(180, 27, 'Dr. Lia Becker PhD', 'Beatae eaque et et fuga. Enim mollitia labore doloremque qui consequatur totam suscipit. Quo mollitia dolorem neque qui. Magni animi sint omnis est expedita dolorem. Voluptatem explicabo sit sint.', 1, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(181, 9, 'Mr. Dagmar Goldner V', 'Omnis reiciendis libero est in enim. Consequuntur nam eligendi et accusantium ad voluptatum. Illum illum veritatis consequatur. Nostrum aut dignissimos consectetur et vel. Excepturi temporibus repellat dolor earum dicta ex.', 3, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(182, 19, 'Kassandra Walker', 'Explicabo nisi itaque enim non. Deleniti quidem sed totam repudiandae maiores ullam ex. Cumque ab totam voluptatem adipisci molestias.', 1, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(183, 11, 'Prof. Tyshawn Nitzsche', 'Voluptates quis exercitationem illum et nihil vitae quia. Quidem expedita qui voluptatem iusto. Sunt culpa quia possimus consequatur voluptate iure magnam quisquam.', 3, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(184, 16, 'Christ Funk', 'Odit eum sed ullam praesentium hic est temporibus. Voluptates minus laudantium ullam nihil itaque fugiat. Debitis reiciendis aut veritatis nulla vitae aut ducimus est. Voluptas repellat illum et consequatur dignissimos neque qui.', 3, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(185, 29, 'Clair Bashirian', 'Ea voluptas ratione delectus minima ut qui id sit. Laborum non veritatis ut porro earum quae aut. Voluptas quam nobis est consequatur et consectetur sed veritatis.', 4, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(186, 23, 'Mrs. Maritza McDermott', 'Consequatur itaque qui aperiam dignissimos maiores dicta tenetur. Reiciendis non quam cum sapiente. Rerum iusto veniam deleniti accusantium necessitatibus fuga.', 0, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(187, 37, 'Madison Hills', 'Adipisci error molestiae distinctio eos ut libero non nemo. Placeat provident quis voluptates officiis dolor dolorem eveniet. Est enim repudiandae et qui architecto laborum magni consequatur.', 5, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(188, 15, 'Dr. Isidro Abernathy', 'Ut suscipit eligendi asperiores omnis. Cum in libero velit at in magnam quia. Est excepturi sit excepturi eos consectetur. Perferendis quo amet ea expedita omnis eveniet.', 0, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(189, 37, 'Prof. Rudolph Turner II', 'Officia dolor aut animi culpa atque eum. Nesciunt quisquam aut facere. Vel nihil iure possimus est.', 1, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(190, 36, 'Sydni Greenholt', 'Ipsa nesciunt eum vel quia delectus error. Ipsa tempore eum esse saepe qui rem. Deserunt autem reiciendis necessitatibus et. Sint quas sunt quod rerum ea illo. Quam laborum deleniti repellendus qui non quisquam sed.', 2, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(191, 37, 'Mrs. Oceane Funk', 'Beatae nesciunt earum qui excepturi. Ut sit iure aspernatur animi est. Et tempore eum est ut. Accusamus aut iste autem ipsam veniam.', 3, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(192, 43, 'Brain Hartmann', 'Sapiente tenetur adipisci similique qui dicta repudiandae et. Rerum sed omnis unde esse sit dolore minus. Adipisci autem sit corrupti architecto qui tempora fugiat cupiditate. Asperiores quis minus deleniti amet enim enim fuga.', 2, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(193, 3, 'Darius Boehm', 'Nihil et libero blanditiis et totam. Qui vero ut excepturi aspernatur praesentium odio. Aut doloremque ipsum provident similique voluptas ut. Et perferendis officiis tenetur aspernatur maxime fugit.', 5, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(194, 20, 'Luella Bernier', 'Facilis omnis nemo ullam libero id ipsam pariatur. Doloremque sunt quod autem. Perferendis accusamus facilis et consequuntur eligendi. Cupiditate laudantium repellat eaque dolor eos est.', 4, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(195, 28, 'Lincoln Monahan', 'Dicta omnis corrupti eos voluptate corporis ipsum quis. Ducimus qui quasi impedit porro praesentium veniam tempora. Odio totam ea cum vero ut architecto debitis.', 1, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(196, 2, 'Colby Baumbach', 'Eaque eum cumque eum numquam distinctio numquam. Quia molestiae quidem ea harum quia. Commodi placeat molestiae eum veritatis ut nisi omnis. Quo voluptas id voluptatem dolorem hic amet.', 4, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(197, 13, 'Gilda Marks', 'Placeat a iste quisquam sit. Sit sint possimus et sed eveniet quo magnam saepe. Delectus eum dolore sit sunt et excepturi. Aut tenetur vel velit fugit laborum.', 1, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(198, 9, 'Dallin Howell', 'Ullam laborum nam et aut velit. Iure ducimus est quisquam voluptatem. Aliquam autem voluptatem rem aut illum.', 2, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(199, 27, 'Raina Conroy', 'Laudantium distinctio quidem suscipit dignissimos qui soluta. Iure ex quibusdam est dolore rem aut. Dolorem quia est fugit molestias sit et nesciunt quo. Eligendi sunt dolores dignissimos ab.', 2, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(200, 8, 'Amari Olson', 'Neque non quia sit perspiciatis. Repellendus labore adipisci odio quibusdam veniam. Eos esse at aspernatur sint repellat.', 3, '2020-02-27 03:56:38', '2020-02-27 03:56:38'),
(201, 38, 'Redmi 4X -2', 'hy its a review', 1, '2020-02-27 04:37:54', '2020-02-27 04:37:54'),
(202, 38, 'Redmi 4X -2', 'hy its a review', 1, '2020-02-27 04:38:26', '2020-02-27 04:38:26'),
(203, 38, 'Redmi 4X -2', 'hy its a review', 1, '2020-02-27 05:25:02', '2020-02-27 05:25:02'),
(204, 38, 'Redmi 4X -2', 'hy its a review', 1, '2020-02-27 05:26:01', '2020-02-27 05:26:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Albert Bayer', 'mhalvorson@example.net', '2020-02-27 03:56:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0g9NyZZYVH', '2020-02-27 03:56:29', '2020-02-27 03:56:29'),
(2, 'Mr. Chauncey Powlowski DVM', 'bkuvalis@example.org', '2020-02-27 03:56:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6lMZhtLKVV', '2020-02-27 03:56:29', '2020-02-27 03:56:29'),
(3, 'Prof. Edgar Jacobs PhD', 'juliana.ferry@example.org', '2020-02-27 03:56:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rwke1hsptW', '2020-02-27 03:56:29', '2020-02-27 03:56:29'),
(4, 'Aiden Hansen', 'akeem80@example.org', '2020-02-27 03:56:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RhPsBqqTCS', '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(5, 'Mrs. Aurelia Spencer', 'zmosciski@example.com', '2020-02-27 03:56:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3jJQgdWV0k', '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(6, 'German Smitham', 'marcel21@example.com', '2020-02-27 03:56:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eFBo4EIWTA', '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(7, 'Prof. Erling Jenkins III', 'olson.kasandra@example.com', '2020-02-27 03:56:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JiXfYi8np1', '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(8, 'Rosalind Lueilwitz', 'oliver62@example.net', '2020-02-27 03:56:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZnNrcXhdls', '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(9, 'Katlynn Cruickshank IV', 'mitchell.bartell@example.org', '2020-02-27 03:56:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9lktE8tOmz', '2020-02-27 03:56:30', '2020-02-27 03:56:30'),
(10, 'Idella O\'Reilly', 'bertha18@example.org', '2020-02-27 03:56:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bDSZYBglJy', '2020-02-27 03:56:30', '2020-02-27 03:56:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
