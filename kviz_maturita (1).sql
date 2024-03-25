-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pon 25. bře 2024, 16:06
-- Verze serveru: 10.4.32-MariaDB
-- Verze PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `kviz_maturita`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `filmove_otazky`
--

CREATE TABLE `filmove_otazky` (
  `id_otazky` int(250) NOT NULL,
  `otazka` varchar(250) NOT NULL,
  `A` varchar(250) NOT NULL,
  `B` varchar(250) NOT NULL,
  `C` varchar(250) NOT NULL,
  `odpoved` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `filmove_otazky`
--

INSERT INTO `filmove_otazky` (`id_otazky`, `otazka`, `A`, `B`, `C`, `odpoved`) VALUES
(1, 'Který z těchto filmů odstartoval filmový vesmír Marvel Cinematic Universe? (MCU)', 'Neuvěřitelný Hulk', 'Spider-Man', 'Batman', 'A'),
(2, 'Který z těchto amerických herců dostal Oscara po své smrti?', 'Christian Bale', 'Robert Downey Jr.', 'Heath Ledger', 'C'),
(3, 'Jaký z těchto herců si zahrál roli Petera Parkera/Spider-Mana v trilogii od režiséra Sama Raimiho?', 'Andrew Garfield ', 'Tobey Meguire ', 'Tom Holland ', 'B'),
(4, 'Kolik aut bylo bylo zničeno ve filmu Transformers 3: Odvrácená strana Měsíce?', '1111', '532', '867', 'C'),
(5, 'Ikonický horrorový vrah, Michael Mayers pochází z jaké horrorové série která odstartovala už v roce 1979?', 'Pátek 13.', 'Vřískot', 'Halloween ', 'C'),
(6, 'Hokejová máska je ikonická pro jakého horrorového vraha?', 'Ghostface', 'Jason Vorhees', 'Hellraiser', 'B'),
(7, 'Jack Sparrow, pirát z filmové ságy Piráty z Karibiku byl ztvárněn jakým americkým hercem?', 'Brad Pitt', 'Nicolas Cage', 'Johny Depp', 'C'),
(8, 'Který film získal Cenu Akademie za nejlepší film v roce 1994?', ' Pulp Fiction', 'Forrest Gump', 'The Shawshank Redemption', 'B'),
(9, 'V kterém filmu zazněla slavná věta \"You can\'t handle the truth!\"?', 'A Few Good Men', 'The Silence of the Lambs', 'Rain Man', 'A'),
(10, 'Kdo režíroval film \"Jurassic Park\"?', 'Steven Spielberg', 'James Cameron', 'George Lucas', 'A'),
(11, 'Který herec ztvárnil hlavní roli v sérii filmů \"Die Hard\"?\r\n', ' Bruce Willis', 'Arnold Schwarzenegger', 'Sylvester Stallone', 'A'),
(12, 'Jaký je název prvního filmu v sérii \"The Godfather\"?', ' The Godfather: Part II', 'The Godfather', 'The Godfather: Part III', 'B'),
(13, 'Který film získal rekordní počet Oscary v roce 2003?', 'Titanic', 'The Lord of the Rings: The Return of the King', 'Gladiator', 'B'),
(14, 'Která série filmů je založena na knihách J.K. Rowlingové?', 'The Hunger Games', 'Twilight', 'Harry Potter\r\n\r\n', 'C'),
(15, 'Kdo získal Oscara za nejlepší herečku za roli v filmu \"La La Land\"?', 'Emma Watson', 'Emma Stone', 'Emma Roberts', 'B'),
(16, 'Jaký film je známý hláškou \"Life is like a box of chocolates\"?', 'The Shawshank Redemption\r\n', 'Forrest Gump', 'The Green Mile', 'B'),
(17, 'Který režisér stojí za vytvořením \"Inception\"?', 'Christopher Nolan', 'Quentin Tarantino', 'Martin Scorsese', 'A'),
(18, 'Který film přinesl Heathu Ledgerovi Oscara za nejlepšího mužského hereckého výkonu ve vedlejší roli?', 'Brokeback Mountain', 'The Dark Knight', 'A Knight\'s Tale', 'B'),
(19, 'Který z následujících filmů není součástí Marvel Cinematic Universe?', 'Spider-Man: Homecoming', 'Wonder Woman', 'Black Panther', 'B'),
(20, 'Kdo hrál hlavní roli v Matrixu?', 'Keanu Reeves', 'Tom Cruise', 'Brad Pitt', 'A');

-- --------------------------------------------------------

--
-- Struktura tabulky `herni_otazky`
--

CREATE TABLE `herni_otazky` (
  `id_otazky` int(250) NOT NULL,
  `otazka` varchar(250) NOT NULL,
  `A` varchar(250) NOT NULL,
  `B` varchar(250) NOT NULL,
  `C` varchar(250) NOT NULL,
  `odpoved` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `herni_otazky`
--

INSERT INTO `herni_otazky` (`id_otazky`, `otazka`, `A`, `B`, `C`, `odpoved`) VALUES
(1, 'Která hra je považována za první arkádovou hru a byla vydána v roce 1972?', ' Pong', 'Space Invaders', 'Pac-Man', 'A'),
(2, 'Jaký je název hlavní postavy v sérii her \"The Legend of Zelda\" od Nintenda?', ' Link', 'Mario', ' Samus', 'A'),
(3, 'Která hra je často považována za první moderní střílečku z pohledu první osoby ', ' Doom', 'Quake', 'Wolfenstein 3D', 'C'),
(4, 'Která herní série je známá postavou Kratose, bohem války?', ' God of War', 'Assassin\'s Creed', ' Gears of War', 'A'),
(5, 'Kdo je tvůrcem populární sandboxové hry \"Minecraft\"?', 'Markus Persson (Notch)', 'Shigeru Miyamoto', 'Hideo Kojima', 'A'),
(6, 'Jaký je název hlavní postavy v sérii her \"Assassin\'s Creed\"?', 'Ezio Auditore', 'Altaïr Ibn-La\'Ahad', 'Connor Kenway', 'A'),
(7, 'Která hra je známá svým otevřeným světem a možností interakce s nespočtem postav a objektů?', 'Grand Theft Auto V', 'The Elder Scrolls V: Skyrim', 'The Witcher 3: Wild Hunt', 'C'),
(8, 'Která herní konzole byla vydána společností Sony v roce 1994?', 'Xbox', 'PlayStation', ' Nintendo 64', 'B'),
(9, 'Která hra je považována za průkopníka žánru real-time strategy (RTS) a byla vydána v roce 1998?', 'StarCraft', 'Age of Empires', 'Warcraft II: Tides of Darkness', 'A'),
(10, 'Jak se jmenuje hlavní postava v sérii her \"Uncharted\"?', 'Nathan Drake', ' Lara Croft', 'Marcus Fenix', 'A'),
(11, 'Která hra vytvořila obrovský boom v populárnosti battle royale her a byla vyvinuta firmou Epic Games?', 'PUBG (PlayerUnknown\'s Battlegrounds)', ' Fortnite', 'Apex Legends', 'B'),
(12, 'Který herní titul je znám pro svůj inovativní přístup k ovládání pomocí pohybu a byl vydán společností Nintendo v roce 2006?', 'Wii Sports', ' Kinect Adventures!', ' PlayStation Move', 'A'),
(13, 'Která hra byla vydána jako první díl v sérii \"Final Fantasy\" od Square Enix?', 'Final Fantasy VI', 'Final Fantasy I', 'Final Fantasy VII', 'B'),
(14, 'Která hra je známá svými pixelovými bloky a je považována za jednu z nejvlivnějších her poslední dekády?', 'Terraria', 'Stardew Valley', 'Minecraft', 'C'),
(15, 'Jaký je název hlavní postavy v sérii her \"Metal Gear Solid\" od Hideo Kojimy?', 'Solid Snake', 'Liquid Snake', 'Big Boss', 'A'),
(16, 'Který herní titul je označován za první herní adaptaci knižní série \"The Witcher\" od polského spisovatele Andreje Sapkowskeho?', 'The Witcher 2: Assassins of Kings', 'The Witcher 3: Wild Hunt', 'The Witcher', 'C'),
(17, 'Která hra byla vydána společností Valve v roce 2007 a je známá svým multiplayerovým hraním a týmovou spoluprací?', 'Counter-Strike: Source', ' Team Fortress 2', ' Left 4 Dead', 'B'),
(18, 'Která herní série vás zavede do postapokalyptického světa plného mutujících monstrosit a byla vytvořena firmou Bethesda?', ' S.T.A.L.K.E.R.', 'Metro', 'Fallout', 'C'),
(19, 'Která hra byla vydána společností Naughty Dog a sleduje příběh Ellie a Joela v postapokalyptickém světě?', 'The Last of Us', ' Days Gone', 'Dying Light', 'A'),
(20, 'Jak se jmenuje hlavní postava v sérii her \"Half-Life\" od Valve?', ' Gordon Freeman', 'Alex Vance', 'Adrian Shephard', 'A');

-- --------------------------------------------------------

--
-- Struktura tabulky `hraci`
--

CREATE TABLE `hraci` (
  `id_hrace` int(11) NOT NULL,
  `Jmeno` varchar(250) NOT NULL,
  `Skore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `hraci`
--

INSERT INTO `hraci` (`id_hrace`, `Jmeno`, `Skore`) VALUES
(1, 'Dobby', 3),
(2, 'ded', 1),
(3, 'ded', 3),
(4, 'lol', 3),
(5, 'Pepa', 2),
(6, 'PepíkTest', 1),
(7, 'TErka', 1),
(8, 'ded', 0),
(9, 'TestProJItuš', 2);

-- --------------------------------------------------------

--
-- Struktura tabulky `hudebni_otazky`
--

CREATE TABLE `hudebni_otazky` (
  `id_otazky` int(250) NOT NULL,
  `otazka` varchar(250) NOT NULL,
  `A` varchar(250) NOT NULL,
  `B` varchar(250) NOT NULL,
  `C` varchar(250) NOT NULL,
  `odpoved` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `hudebni_otazky`
--

INSERT INTO `hudebni_otazky` (`id_otazky`, `otazka`, `A`, `B`, `C`, `odpoved`) VALUES
(1, 'Která kapela je považována za zakladatele heavy metalu?', 'Metallica', 'Black Sabbath', 'Iron Maiden', 'B'),
(2, 'Jaká zpěvačka byla známá jako \"Metal Queen\" a je považována za jednu z ikon heavy metalu?', 'Doro Pesch', 'Tarja Turunen', 'Angela Gossow', 'A'),
(3, 'Která kapela je známá svým albem \"Master of Puppets\" a je často označována za jednu z nejlepších metalových kapel všech dob?', ' Slayer', 'Megadeth', 'Metallica', 'C'),
(4, 'Kdo je frontmanem a zakladatelem britské heavymetalové kapely Iron Maiden?', 'Bruce Dickinson', 'Ozzy Osbourne', 'Rob Halford', 'A'),
(5, 'Která norská black metalová kapela byla spojována s kontroverzními událostmi v 90. letech, včetně kostelních podpálení?', 'Dimmu Borgir', 'Mayhem', 'Emperor', 'B'),
(6, 'Jaký je název prvního alba kapely Slayer?', ' Reign in Blood', 'Hell Awaits', 'Show No Mercy', 'C'),
(7, 'Která kapela je známá svými \"masivními\" albumy jako \"Metallica,\" \"Load\" a \"Reload\"?', 'Pantera', 'Metallica', 'Anthrax', 'B'),
(8, 'Která švédská death metalová kapela vydala alba jako \"Left Hand Path\" a \"Clandestine\"?', 'Entombed', 'At the Gates', 'In Flames', 'A'),
(9, 'Která kapela je známá svým využíváním symfonických prvků v metalové hudbě a albem \"Once\"?', 'Nightwish', 'Epica', 'Within Temptation', 'A'),
(10, 'Kdo je frontmanem a zakladatelem americké thrash metalové skupiny Megadeth?', 'James Hetfield', 'Dave Mustaine', 'Kerry King', 'B'),
(11, 'Jaká kapela vydala alba \"Ride the Lightning\" a \"Kill \'Em All\"?', 'Metallica', 'Anthrax', 'Slayer', 'A'),
(12, 'Která finská symfonická metalová kapela je známá albem \"Oceanborn\" a písní \"Nemo\"?', 'Nightwish', 'Sonata Arctica', 'Children of Bodom', 'A'),
(13, 'Kdo je známý jako \"Prince of Darkness\" a je legendárním zpěvákem Black Sabbath?', ' Ronnie James Dio', 'Ozzy Osbourne', 'Rob Halford', 'B'),
(14, 'Která kapela je považována za jednoho z průkopníků gothic metalu a vydala alba jako \"Draconian Times\" a \"Icon\"?', 'Paradise Lost', 'My Dying Bride', 'Type O Negative', 'A'),
(15, 'Která thrash metalová kapela pochází z Německa a je známá alby jako \"Pleasure to Kill\" a \"Coma of Souls\"?', 'Kreator', 'Sodom', 'Destruction', 'A'),
(16, 'Jaký je název prvního alba skupiny Pantera, které je někdy označováno za glam metalové?', 'Cowboys from Hell', 'Metal Magic', 'Vulgar Display of Power', 'B'),
(17, 'Která kapela je známá svým kombinováním folkových prvků s black metalem a vydala alba jako \"Eld\" a \"Blodhemn\"?', 'Ensiferum', 'Finntroll', 'Windir', 'C'),
(18, 'Která německá power metalová kapela vydala alba jako \"Keeper of the Seven Keys\" a \"Walls of Jericho\"?', 'Blind Guardian', 'Helloween', 'Gamma Ray', 'B'),
(19, 'Který bubeník je známý svým přínosem pro metalovou hudbu a byl členem kapel jako Slayer a Testament?', 'Lars Ulrich', 'Dave Lombardo', 'Nicko McBrain', 'B'),
(20, 'Která kapela je známá svým thrash metalovým albem \"Rust in Peace\" a frontmanem Daveem Mustainem?', 'Anthrax', 'Megadeth', 'Testament', 'B');

-- --------------------------------------------------------

--
-- Struktura tabulky `otazky_od_hracu`
--

CREATE TABLE `otazky_od_hracu` (
  `id_otazky` int(11) NOT NULL,
  `otazka` varchar(250) NOT NULL,
  `A` varchar(250) NOT NULL,
  `B` varchar(250) NOT NULL,
  `C` varchar(250) NOT NULL,
  `odpoved` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `otazky_od_hracu`
--

INSERT INTO `otazky_od_hracu` (`id_otazky`, `otazka`, `A`, `B`, `C`, `odpoved`) VALUES
(1, 'Jaké přijmení má Jituš', 'Furrýk', 'Fjůbacherová ', 'Furbacherová ', 'C'),
(2, 'adad', 'ada', 'ada', 'dad', 'A'),
(3, 'Ahoj Jituš, jak se dnes máš', 'Nic moc', 'Bylo líp', 'SKVĚLE! Jelikož si konečně dodělal tu práci na kterou si kašlal celej rok a já byla na nervy >:(!!!', 'C');

-- --------------------------------------------------------

--
-- Struktura tabulky `zemepisne_otazky`
--

CREATE TABLE `zemepisne_otazky` (
  `id_otazky` int(11) NOT NULL,
  `otazka` varchar(200) NOT NULL,
  `A` varchar(250) NOT NULL,
  `B` varchar(250) NOT NULL,
  `C` varchar(250) NOT NULL,
  `odpoved` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `zemepisne_otazky`
--

INSERT INTO `zemepisne_otazky` (`id_otazky`, `otazka`, `A`, `B`, `C`, `odpoved`) VALUES
(1, 'Který je největší kontinent na Zemi?', 'Afrika', 'Severní Amerika', 'Asie', 'C'),
(2, 'Který je nejvyšší horský vrchol na světě?', ' Mount Everest', 'K2', 'Annapurna', 'A'),
(3, 'Který je nejdelší řeka na světě?', ' Nil', ' Amazonka', ' Mississippi', 'B'),
(4, 'Který je největší ostrov na světě?', ' Austrálie', 'Grónsko', 'Nová Guinea', 'B'),
(5, 'Který je největší jezero na světě podle objemu vody?', 'Kaspické moře', 'Michigan', 'Balchash', 'A'),
(6, 'Která země má největší populaci na světě?', 'Rusko', 'Indie', 'Čína', 'C'),
(7, 'Která země se nachází na poloostrově Iberském?', 'Španělsko', 'Itálie', 'Řecko', 'A'),
(8, 'Která je největší poušť na světě?', 'Sahara', 'Gobi', 'Atacama', 'A'),
(9, 'Který je největší stát na světě podle rozlohy?', ' Kanada', 'Rusko', 'Čína', 'B'),
(10, 'Který je nejmenší kontinent na světě?', 'Antarktida', 'Jižní Amerika', ' Austrálie', 'C'),
(11, 'Který je nejchladnější obydlený kontinent na Zemi?', 'Antarktida', 'Severní Amerika', 'Evropa', 'A'),
(12, 'Která země se nachází na severním pólu Země?', 'Kanada', 'Rusko', ' Island', 'B'),
(13, 'Která je největší řeka Evropy?', 'Dunaj', 'Volha', 'Dněpr', 'B'),
(14, 'Která země má nejvíce ostrovů na světě?', ' Indonésie', ' Japonsko', 'Filipíny', 'A'),
(15, 'Který je nejvyšší vrchol v Evropě?', ' Mont Blanc', ' Elbrus', 'Matterhorn', 'B'),
(16, 'Která země má nejvíce obyvatel v Evropě?', 'Německo', 'Rusko', 'Francie', 'B'),
(17, 'Která je největší zemí na Jižní Americe?', 'Brazílie', 'Argentina', 'Chile', 'A'),
(18, 'Který je největší ostrov v Karibiku?', 'Kuba', 'Hispaniola', 'Jamajka', 'A'),
(19, 'Který je největší záliv na světě?', ' Hudsonův záliv', 'Botnický záliv', 'Sanfranciský záliv', 'A'),
(20, 'Který je nejvyšší vrchol v Severní Americe?', 'Mount McKinley (Denali)', ' Mount Logan', 'Pico de Orizaba', 'A');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `filmove_otazky`
--
ALTER TABLE `filmove_otazky`
  ADD PRIMARY KEY (`id_otazky`);

--
-- Indexy pro tabulku `herni_otazky`
--
ALTER TABLE `herni_otazky`
  ADD PRIMARY KEY (`id_otazky`);

--
-- Indexy pro tabulku `hraci`
--
ALTER TABLE `hraci`
  ADD PRIMARY KEY (`id_hrace`);

--
-- Indexy pro tabulku `hudebni_otazky`
--
ALTER TABLE `hudebni_otazky`
  ADD PRIMARY KEY (`id_otazky`);

--
-- Indexy pro tabulku `otazky_od_hracu`
--
ALTER TABLE `otazky_od_hracu`
  ADD PRIMARY KEY (`id_otazky`);

--
-- Indexy pro tabulku `zemepisne_otazky`
--
ALTER TABLE `zemepisne_otazky`
  ADD PRIMARY KEY (`id_otazky`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `hraci`
--
ALTER TABLE `hraci`
  MODIFY `id_hrace` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pro tabulku `otazky_od_hracu`
--
ALTER TABLE `otazky_od_hracu`
  MODIFY `id_otazky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `zemepisne_otazky`
--
ALTER TABLE `zemepisne_otazky`
  MODIFY `id_otazky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
