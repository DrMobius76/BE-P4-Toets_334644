-- Check if the database exists
DROP DATABASE IF EXISTS `rij_examen`;

-- Create a new Database
CREATE DATABASE IF NOT EXISTS `rij_examen`;

--
-- Database: `rij_examen`
--

-- --------------------------------------------------------

--
-- Table structure for table `Examen`
--

CREATE TABLE `Examen` (
  `Id` int(11) NOT NULL,
  `StudentId` int(6) NOT NULL,
  `Rijschool` varchar(34) NOT NULL,
  `Stad` varchar(21) NOT NULL,
  `Rijbewijscategorie` varchar(3) NOT NULL,
  `Datum` date NOT NULL,
  `Uitslag` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ExamenPerExaminator`
--

CREATE TABLE `ExamenPerExaminator` (
  `Id` int(11) NOT NULL,
  `ExamenId` int(255) NOT NULL,
  `ExaminatorId` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table sExaminator
--

CREATE TABLE `Examinator` (
  `Id` int(11) NOT NULL,
  `Voornaam` varchar(255) NOT NULL,
  `Tussenvoegsel` varchar(11) DEFAULT NULL,
  `Achternaam` varchar(255) NOT NULL,
  `Mobiel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Examen`
--
ALTER TABLE `Examen`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table ExamenPerExaminator
--
ALTER TABLE `ExamenPerExaminator`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `ExamenId` (`ExamenId`);

--
-- Indexes for table Examinator
--
ALTER TABLE `Examinator`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table Examen
--
ALTER TABLE `Examen`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table ExamenPerExaminator
--
ALTER TABLE `ExamenPerExaminator`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table Examinator
--
ALTER TABLE `Examinator`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;