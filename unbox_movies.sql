-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 18/09/2020 às 04:41
-- Versão do servidor: 10.4.6-MariaDB
-- Versão do PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `unbox_movies`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `genders`
--

CREATE TABLE `genders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `genders`
--

INSERT INTO `genders` (`id`, `name`) VALUES
(1, 'Drama'),
(2, 'Suspense'),
(3, 'Terror'),
(4, 'Kids'),
(5, 'Policial'),
(6, 'Adventure');

-- --------------------------------------------------------

--
-- Estrutura para tabela `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `original_title` varchar(100) DEFAULT NULL,
  `overview` text NOT NULL,
  `poster` varchar(100) NOT NULL,
  `trending` tinyint(4) DEFAULT NULL,
  `discover` tinyint(4) DEFAULT NULL,
  `duration` time NOT NULL,
  `gender_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `movies`
--

INSERT INTO `movies` (`id`, `title`, `name`, `original_title`, `overview`, `poster`, `trending`, `discover`, `duration`, `gender_id`) VALUES
(1, 'Fight Club', 'Clube da Luta', 'Fight Club', 'A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground \\\"fight clubs\\\" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.', 'https://image.tmdb.org/t/p/original/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg', NULL, NULL, '01:50:00', 1),
(2, 'Mulan', 'Mulan', 'Mulan', 'When the Emperor of China issues a decree that one man per family must serve in the Imperial Chinese Army to defend the country from Huns, Hua Mulan, the eldest daughter of an honored warrior, steps in to take the place of her ailing father. She is spirited, determined and quick on her feet. Disguised as a man by the name of Hua Jun, she is tested every step of the way and must harness her innermost strength and embrace her true potential.', 'https://image.tmdb.org/t/p/original/aKx1ARwG55zZ0GpRvU2WrGrCG9o.jpg', NULL, 1, '02:00:00', 3),
(3, 'Dark Forces', 'Dark Forces', 'Fuego negro', 'In search of his sister, a renegade criminal seeks answers at a sordid hotel where he encounters a sinister guest and romances a mysterious waitress.', 'https://image.tmdb.org/t/p/original/dKSN0oZCUSNcEd39MnySLYmpUiJ.jpg', 1, NULL, '02:12:00', 4),
(4, 'We Bare Bears: The Movie', 'We Bare Bears: The Movie', 'We Bare Bears: The Movie', 'When Grizz, Panda, and Ice Bear\'s love of food trucks and viral videos went out of hand, it catches the attention of Agent Trout from the National Wildlife Control, who pledges to restore the “natural order” by separating them forever. Chased away from their home, the Bears embark on an epic road trip as they seek refuge in Canada, with their journey being filled with new friends, perilous obstacles, and huge parties. The risky journey also forces the Bears to face how they first met and became brothers, in order to keep their family bond from splitting apart.', 'https://image.tmdb.org/t/p/original/kPzcvxBwt7kEISB9O4jJEuBn72t.jpg', 1, NULL, '02:03:00', 4),
(5, 'Trolls World Tour', 'Trolls 2', 'Trolls World Tour', 'Queen Poppy and Branch make a surprising discovery — there are other Troll worlds beyond their own, and their distinct differences create big clashes between these various tribes. When a mysterious threat puts all of the Trolls across the land in danger, Poppy, Branch, and their band of friends must embark on an epic quest to create harmony among the feuding Trolls to unite them against certain doom.', 'https://image.tmdb.org/t/p/original/7W0G3YECgDAfnuiHG91r8WqgIOe.jpg', 1, 1, '01:48:00', 5),
(6, 'The Lord of the Rings: The Two Towers', 'O Senhor dos Anéis: As Duas Torres', 'The Lord of the Rings: The Two Towers', 'Frodo and Sam are trekking to Mordor to destroy the One Ring of Power while Gimli, Legolas and Aragorn search for the orc-captured Merry and Pippin. All along, nefarious wizard Saruman awaits the Fellowship members at the Orthanc Tower in Isengard.', 'https://image.tmdb.org/t/p/original/5VTN0pR8gcqV3EPUHHfMGnJYN9L.jpg', 1, NULL, '03:16:00', 6),
(7, 'On the Waterfront', 'Sindicato de Ladrões', 'On the Waterfront', 'Terry Malloy dreams about being a prize fighter, while tending his pigeons and running errands at the docks for Johnny Friendly, the corrupt boss of the dockers union. Terry witnesses a murder by two of Johnny\'s thugs, and later meets the dead man\'s sister and feels responsible for his death. She introduces him to Father Barry, who tries to force him to provide information for the courts that will smash the dock racketeers.', 'https://image.tmdb.org/t/p/original/v1RtJ1qR4v9nrnfoBVBl6hjTW9.jpg', NULL, 1, '02:07:00', 3),
(8, 'Brazil', 'Brasil', 'Brazil', 'Low-level bureaucrat Sam Lowry escapes the monotony of his day-to-day life through a recurring daydream of himself as a virtuous hero saving a beautiful damsel. Investigating a case that led to the wrongful arrest and eventual death of an innocent man instead of wanted terrorist Harry Tuttle, he meets the woman from his daydream, and in trying to help her gets caught in a web of mistaken identities, mindless bureaucracy and lies.', 'https://image.tmdb.org/t/p/original/d0PibPzCK4fVikjoD1PqHovbvkt.jpg', 1, 1, '01:52:00', 2),
(9, 'Citizen Kane', 'Cidadão Kane', 'Citizen Kane', 'Newspaper magnate, Charles Foster Kane is taken from his mother as a boy and made the ward of a rich industrialist. As a result, every well-meaning, tyrannical or self-destructive move he makes for the rest of his life appears in some way to be a reaction to that deeply wounding event.', 'https://image.tmdb.org/t/p/original/sav0jxhqiH0bPr2vZFU0Kjt2nZL.jpg', 1, NULL, '02:11:00', 5),
(10, 'Jarhead', 'Soldado Anônimo', 'Jarhead', 'Jarhead is a film about a US Marine Anthony Swofford’s experience in the Gulf War. After putting up with an arduous boot camp, Swofford and his unit are sent to the Persian Gulf where they are eager to fight, but are forced to stay back from the action. Swofford struggles with the possibility of his girlfriend cheating on him, and as his mental state deteriorates, his desire to kill increases.', 'https://image.tmdb.org/t/p/original/4rCzaZy5Qkvxh5xaVpHriXSLTgC.jpg', 1, NULL, '02:00:00', 1),
(11, 'Star Trek: First Contact', 'Jornada nas Estrelas: Primeiro Contato', 'Star Trek: First Contact', 'The Borg, a relentless race of cyborgs, are on a direct course for Earth. Violating orders to stay away from the battle, Captain Picard and the crew of the newly-commissioned USS Enterprise E pursue the Borg back in time to prevent the invaders from changing Federation history and assimilating the galaxy.', 'https://image.tmdb.org/t/p/original/vrC1lkTktFQ4AqBfqf4PXoDDLcw.jpg', 1, NULL, '03:23:00', 6),
(12, 'Volver', 'Volver', 'Volver', 'Raimunda lives and works in Madrid with her husband Paco and their daughter Paula. Raimunda\'s sister Sole lives nearby. The two sisters miss their mother Irene who died several years ago in a house fire along with their father. When a former neighbor from their hometown reports that she has seen the ghost of Irene, the daughters do not believe her. After a murder and a family tragedy, however, Irene\'s spirit materializes around her daughters to comfort them.', 'https://image.tmdb.org/t/p/original/ljRPzuI1xybiFUGU1uCRdx68h0K.jpg', NULL, NULL, '01:40:00', 6),
(13, 'Reservoir Dogs', 'Cães de aluguel', 'Reservoir Dogs', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice Guy Eddie -- unravel.', 'https://image.tmdb.org/t/p/original/AjTtJNumZyUDz33VtMlF1K8JPsE.jpg', 1, NULL, '02:14:00', 6),
(14, 'Lock, Stock and Two Smoking Barrels', 'Jogos, Trapaças e Dois Canos Fumegantes', 'Lock, Stock and Two Smoking Barrels', 'A card shark and his unwillingly-enlisted friends need to make a lot of cash quick after losing a sketchy poker match. To do this they decide to pull a heist on a small-time gang who happen to be operating out of the flat next door.', 'https://image.tmdb.org/t/p/original/8kSerJrhrJWKLk1LViesGcnrUPE.jpg', NULL, 1, '02:21:00', 2),
(15, 'Star Trek: Insurrection', 'Jornada nas Estrelas: Insurreição', 'Star Trek: Insurrection', 'When an alien race and factions within Starfleet attempt to take over a planet that has \\\"regenerative\\\" properties, it falls upon Captain Picard and the crew of the Enterprise to defend the planet\'s people as well as the very ideals upon which the Federation itself was founded.', 'https://image.tmdb.org/t/p/original/9pbc44kltJhArUNyrdQcantMEvH.jpg', 1, NULL, '03:29:00', 6),
(16, 'Saw II', 'Jogos Mortais 2', 'Saw II', 'When a new murder victim is discovered with all the signs of Jigsaw\'s hand, Detective Eric Matthews begins a full investigation and apprehends Jigsaw with little effort. But for Jigsaw, getting caught is just another part of his plan. Eight more of his victims are already fighting for their lives and now it\'s time for Matthews to join the game.', 'https://image.tmdb.org/t/p/original/gTnaTysN8HsvVQqTRUh8m35mmUA.jpg', NULL, 1, '02:00:00', 3),
(17, 'The Big Lebowski', 'O Grande Lebowski', 'The Big Lebowski', 'Jeff \\\"The Dude\\\" Lebowski, mistaken for a millionaire of the same name, seeks restitution for his ruined rug and enlists his bowling buddies to help get it in a twisting venture beyond dreams and reality.', 'https://image.tmdb.org/t/p/original/d4J7GotCjvDJBAYayZBTc5nLbbP.jpg', NULL, 1, '01:54:00', 3),
(18, 'Charlie and the Chocolate Factory', 'A Fantástica Fábrica de Chocolates', 'Charlie and the Chocolate Factory', 'A young boy wins a tour through the most magnificent chocolate factory in the world, led by the world\'s most unusual candy maker.', 'https://image.tmdb.org/t/p/original/wfGfxtBkhBzQfOZw4S8IQZgrH0a.jpg', NULL, 1, '02:23:00', 4),
(19, 'Metropolis', 'Metrópolis', 'Metropolis', 'In a futuristic city sharply divided between the working class and the city planners, the son of the city\'s mastermind falls in love with a working class prophet who predicts the coming of a savior to mediate their differences.', 'https://image.tmdb.org/t/p/original/hUK9rewffKGqtXynH5SW3v9hzcu.jpg', NULL, NULL, '01:58:00', 2),
(20, 'Shaft', 'Shaft', 'Shaft', 'New York police detective John Shaft arrests Walter Wade Jr. for a racially motivated slaying. But the only eyewitness disappears, and Wade jumps bail for Switzerland. Two years later Wade returns to face trial, confident his money and influence will get him acquitted -- especially since he\'s paid a drug kingpin to kill the witness.', 'https://image.tmdb.org/t/p/original/uiXKlDtaDvrrOLy0XULcfc12flu.jpg', NULL, 1, '02:20:00', 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `original_title` varchar(100) DEFAULT NULL,
  `overview` text DEFAULT NULL,
  `poster` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
