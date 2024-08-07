-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 11, 2024 at 02:28 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `info_film`
--

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `year` year DEFAULT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `length` int DEFAULT NULL,
  `synopsis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `trailer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `title`, `year`, `rating`, `genre`, `length`, `synopsis`, `trailer`, `poster`) VALUES
(1, 'Inception', '2010', 8.8, 'Action, Adventure, Sci-Fi', 148, 'Dom Cobb is a skilled thief, the absolute best in the dangerous art of extraction, stealing valuable secrets from deep within the subconscious during the dream state, when the mind is at its most vulnerable. Cobb\'s rare ability has made him a coveted player in this treacherous new world of corporate espionage, but it has also made him an international fugitive and cost him everything he has ever loved. Now Cobb is being offered a chance at redemption. One last job could give him his life back but only if he can accomplish the impossible, inception. Instead of the perfect heist, Cobb and his team of specialists have to pull off the reverse: their task is not to steal an idea, but to plant one. If they succeed, it could be the perfect crime. But no amount of careful planning or expertise can prepare the team for the dangerous enemy that seems to predict their every move. An enemy that only Cobb could have seen coming', 'https://www.youtube.com/embed/YoHD9XEInc0', '/posters/inception.jpg'),
(2, 'The Matrix', '1999', 8.7, 'Action, Sci-Fi', 136, 'Thomas A. Anderson is a man living two lives. By day he is an average computer programmer and by night a hacker known as Neo. Neo has always questioned his reality, but the truth is far beyond his imagination. Neo finds himself targeted by the police when he is contacted by Morpheus, a legendary computer hacker branded a terrorist by the government. As a rebel against the machines, Neo must confront the agents: super-powerful computer programs devoted to stopping Neo and the entire human rebellion.', 'https://www.youtube.com/embed/vKQi3bBA1y8', '/posters/the_matrix.jpg'),
(3, 'Top Gun: Maverick', '2022', 8.2, 'Action, Drama', 130, 'After more than 30 years of service as one of the Navy\'s top aviators, Pete \"Maverick\" Mitchell is where he belongs, pushing the envelope as a courageous test pilot and dodging the advancement in rank that would ground him. Training a detachment of graduates for a special assignment, Maverick must confront the ghosts of his past and his deepest fears, culminating in a mission that demands the ultimate sacrifice from those who choose to fly it.', 'https://www.youtube.com/embed/giXco2jaZ_4', '/posters/top_gun_maverick.jpg'),
(4, 'The Dark Knight', '2008', 9.0, 'Action, Crime, Drama', 152, 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'https://www.youtube.com/embed/EXeTwQWrcwY', '/posters/the_dark_knight.jpg'),
(5, 'Avatar', '2009', 7.8, 'Action, Adventure, Fantasy', 162, 'A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', 'https://www.youtube.com/embed/5PSNL1qE6VY', '/posters/avatar.jpg'),
(6, 'Interstellar', '2014', 8.6, 'Adventure, Drama, Sci-Fi', 169, 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.', 'https://www.youtube.com/embed/zSWdZVtXT7E', '/posters/interstellar.jpg'),
(7, 'Gladiator', '2000', 8.5, 'Action, Adventure, Drama', 155, 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 'https://www.youtube.com/embed/owK1qxDselE', '/posters/gladiator.jpg'),
(8, 'Pulp Fiction', '1994', 8.9, 'Crime, Drama', 154, 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 'https://www.youtube.com/embed/s7EdQ4FqbhY', '/posters/pulp_fiction.jpg'),
(9, 'The Shawshank Redemption', '1994', 9.3, 'Drama', 142, 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'https://www.youtube.com/embed/NmzuHjWmXOc', '/posters/the_shawshank_redemption.jpg'),
(10, 'Jurassic Park', '1993', 8.1, 'Action, Adventure, Sci-Fi', 127, 'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.', 'https://www.youtube.com/embed/QWBKEmWWL38', '/posters/jurassic_park.jpg'),
(11, 'Titanic', '1997', 7.8, 'Drama, Romance', 195, 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', 'https://www.youtube.com/embed/kVrqfYjkTdQ', '/posters/titanic.jpg'),
(12, 'Forrest Gump', '1994', 8.8, 'Drama, Romance', 142, 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.', 'https://www.youtube.com/embed/bLvqoHBptjg', '/posters/forrest_gump.jpg'),
(13, 'The Lion King', '1994', 8.5, 'Animation, Adventure, Drama', 88, 'Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.', 'https://www.youtube.com/embed/4sj1MT05lAA', '/posters/the_lion_king.jpg'),
(14, 'Fight Club', '1999', 8.8, 'Drama', 139, 'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.', 'https://www.youtube.com/embed/qtRKdVHc-cE', '/posters/fight_club.jpg'),
(15, 'The Godfather', '1972', 9.2, 'Crime, Drama', 175, 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'https://www.youtube.com/embed/sY1S34973zA', '/posters/the_godfather.jpg'),
(16, 'Star Wars: Episode IV - A New Hope', '1977', 8.6, 'Action, Adventure, Fantasy', 121, 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire\'s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.', 'https://www.youtube.com/embed/vZ734NWnAHA', '/posters/star_wars_episode_iv-a_new_hope.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
