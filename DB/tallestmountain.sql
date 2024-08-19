-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema tallestmountaindb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `tallestmountaindb` ;

-- -----------------------------------------------------
-- Schema tallestmountaindb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tallestmountaindb` DEFAULT CHARACTER SET utf8 ;
USE `tallestmountaindb` ;

-- -----------------------------------------------------
-- Table `eight_thousander_mountain`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `eight_thousander_mountain` ;

CREATE TABLE IF NOT EXISTS `eight_thousander_mountain` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `description` VARCHAR(2000) NULL,
  `image_url` VARCHAR(2000) NULL,
  `height_in_metres` INT NOT NULL,
  `latitude` VARCHAR(20) NULL,
  `longitude` VARCHAR(20) NULL,
  `first_ascent` YEAR(4) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS tallestmountainuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'tallestmountainuser'@'localhost' IDENTIFIED BY 'tallestmountainuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'tallestmountainuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `eight_thousander_mountain`
-- -----------------------------------------------------
START TRANSACTION;
USE `tallestmountaindb`;
INSERT INTO `eight_thousander_mountain` (`id`, `name`, `country`, `description`, `image_url`, `height_in_metres`, `latitude`, `longitude`, `first_ascent`) VALUES (1, 'Mount Averest', 'Nepal, China', 'Mount Everest attracts many climbers, including highly experienced mountaineers. There are two main climbing routes, one approaching the summit from the southeast in Nepal (known as the \"standard route\") and the other from the north in Tibet. While not posing substantial technical climbing challenges on the standard route, Everest presents dangers such as altitude sickness, weather, and wind, as well as hazards from avalanches and the Khumbu Icefall. As of May 2024, 340 people have died on Everest. Over 200 bodies remain on the mountain and have not been removed due to the dangerous conditions.', 'https://upload.wikimedia.org/wikipedia/commons/e/e7/Everest_North_Face_toward_Base_Camp_Tibet_Luca_Galuzzi_2006.jpg', 8849, '27.9881', '86.925', 1953);
INSERT INTO `eight_thousander_mountain` (`id`, `name`, `country`, `description`, `image_url`, `height_in_metres`, `latitude`, `longitude`, `first_ascent`) VALUES (2, 'K2', 'Pakistan, China', 'K2 became known as the Savage Mountain after George Bell—a climber on the 1953 American expedition—said, \"It\'s a savage mountain that tries to kill you.\" Of the five highest mountains in the world, K2 has long been the deadliest: prior to 2021, approximately one person had died on the mountain for every four who reached the summit. After an increase in successful attempts, as of August 2023, an estimated 800 people have summited K2, with 96 deaths during attempted climbs.', 'https://upload.wikimedia.org/wikipedia/commons/c/c9/Chogori.jpg', 8611, '35.881389', '76.513333', 1954);
INSERT INTO `eight_thousander_mountain` (`id`, `name`, `country`, `description`, `image_url`, `height_in_metres`, `latitude`, `longitude`, `first_ascent`) VALUES (3, 'Kangchenjunga', 'Nepal, India', 'The Kangchenjunga is a sacred mountain in Nepal and Sikkim and was first climbed on 25 May 1955 by Joe Brown and George Band, who were part of the 1955 British Kangchenjunga expedition. They stopped just short of the true summit, keeping a promise given to Tashi Namgyal, the Chogyal of the Kingdom of Sikkim, that the top of the mountain would remain inviolate. The Indian side of the mountain is off-limits to climbers. In 2016, the adjoining Khangchendzonga National Park was declared a UNESCO World Heritage Site.', 'https://upload.wikimedia.org/wikipedia/commons/5/57/Kangchenjunga%2C_India.jpg', 8586, '27.703333', '88.1475', 1955);
INSERT INTO `eight_thousander_mountain` (`id`, `name`, `country`, `description`, `image_url`, `height_in_metres`, `latitude`, `longitude`, `first_ascent`) VALUES (4, 'Lhotse', 'Nepal, China', 'The main ridge of the mountain features four distinct summits: Lhotse Main at 8,516 m (27,940 ft) AMSL, Lhotse Middle (also called Lhotse Central I or Lhotse East) at 8,414 m (27,605 ft), Lhotse Central II at 8,372 m (27,467 ft), and Lhotse Shar at 8,383 m (27,503 ft). Though Lhotse Main is considered to be an intermediately difficult eight-thousander when ascended from the standard Reiss Couloir route, its secondary summits and extremely steep South Face are regarded as some of the most difficult and dangerous climbs in the world.[', 'https://upload.wikimedia.org/wikipedia/commons/7/72/Lhotse-fromChukhungRi.jpg', 8516, '27.961667', '86.933056', 1956);
INSERT INTO `eight_thousander_mountain` (`id`, `name`, `country`, `description`, `image_url`, `height_in_metres`, `latitude`, `longitude`, `first_ascent`) VALUES (5, 'Makalu', 'Nepal, China', 'Makalu has two notable subsidiary peaks. Kangchungtse, or Makalu II (7,678 m), lies about three kilometres (two miles) north-northwest of the main summit. Rising about 5 km (3 mi) north-northeast of the main summit across a broad plateau, and connected to Kangchungtse by a narrow, 7,200 m saddle, is Chomo Lonzo (7,804 m).\n\n', 'https://upload.wikimedia.org/wikipedia/commons/1/19/Makalu.jpg', 8485, '27.889722', '87.088889', 1955);
INSERT INTO `eight_thousander_mountain` (`id`, `name`, `country`, `description`, `image_url`, `height_in_metres`, `latitude`, `longitude`, `first_ascent`) VALUES (6, 'Cho Oyu', 'Nepal, China', 'Cho Oyu means \"Turquoise Goddess\" in Tibetan. The mountain is the westernmost major peak of the Khumbu sub-section of the Mahalangur Himalaya 20 km west of Mount Everest. The mountain stands on the China–Nepal border, between the Tibet Autonomous Region and Koshi Province.', 'https://upload.wikimedia.org/wikipedia/commons/1/1c/ChoOyu-fromGokyo.jpg', 8188, '28.094167', '86.660833', 1954);
INSERT INTO `eight_thousander_mountain` (`id`, `name`, `country`, `description`, `image_url`, `height_in_metres`, `latitude`, `longitude`, `first_ascent`) VALUES (7, 'Dhaulagiri I', 'Nepal', 'Dhaulagiri is the Nepali name for the mountain which comes from Sanskrit where धवल (dhawala) means dazzling, white, beautiful and गिरि (giri) means mountain.', 'https://upload.wikimedia.org/wikipedia/commons/5/5c/Dhaulagiri_mountain.jpg', 8167, '28.696667', '83.493056', 1960);
INSERT INTO `eight_thousander_mountain` (`id`, `name`, `country`, `description`, `image_url`, `height_in_metres`, `latitude`, `longitude`, `first_ascent`) VALUES (8, 'Manaslu', 'Nepal', 'Manaslu is in the Mansiri Himal, part of the Nepalese Himalayas, in west-central Nepal. Manaslu means \"mountain of the spirit\" and the word is derived from the Sanskrit word manasa, meaning \"intellect\" or \"soul\".', 'https://upload.wikimedia.org/wikipedia/commons/e/e0/Sunrise%2C_Manaslu.jpg', 8163, '28.55', '84.559722', 1956);
INSERT INTO `eight_thousander_mountain` (`id`, `name`, `country`, `description`, `image_url`, `height_in_metres`, `latitude`, `longitude`, `first_ascent`) VALUES (9, 'Nanga Parbat', 'Pakistan', 'Namga Parbat is lying immediately southeast of the northernmost bend of the Indus River in the Gilgit-Baltistan region of Pakistan-administered Kashmir, Nanga Parbat is the westernmost major peak of the Himalayas, and thus in the traditional view of the Himalayas as bounded by the Indus and Yarlung Tsangpo/Brahmaputra rivers, it is the western anchor of the entire mountain range.', 'https://upload.wikimedia.org/wikipedia/commons/3/35/Fairy_Meadows_and_the_view_of_Nanga_Parbat.jpg', 8126, '35.237222', '74.589167', 1953);
INSERT INTO `eight_thousander_mountain` (`id`, `name`, `country`, `description`, `image_url`, `height_in_metres`, `latitude`, `longitude`, `first_ascent`) VALUES (10, 'Annapurna I', 'Pakistan', 'Annapurna is a mountain situated in the Annapurna mountain range of Gandaki Province, north-central Nepal.', 'https://upload.wikimedia.org/wikipedia/commons/f/f2/South_Face_of_Annapurna_I_%28Main%29.jpg', 8091, '28.595556', '83.820278', 1950);
INSERT INTO `eight_thousander_mountain` (`id`, `name`, `country`, `description`, `image_url`, `height_in_metres`, `latitude`, `longitude`, `first_ascent`) VALUES (11, 'Gasherbrum I', 'Pakistan, China', 'Gasherbrum I was designated K5 (meaning the 5th peak of the Karakoram) by T.G. Montgomerie in 1856 when he first spotted the peaks of the Karakoram from more than 200 km away during the Great Trigonometric Survey of India. In 1892, William Martin Conway provided the alternate name, Hidden Peak, in reference to its extreme remoteness.', 'https://upload.wikimedia.org/wikipedia/commons/6/6f/HiddenPeak.jpg', 8080, '35.724444', '76.696389', 1958);
INSERT INTO `eight_thousander_mountain` (`id`, `name`, `country`, `description`, `image_url`, `height_in_metres`, `latitude`, `longitude`, `first_ascent`) VALUES (12, 'Broad Peak', 'Pakistan, China', 'Broad Peak is part of the Gasherbrum massif in Baltistan situated on the border of Pakistan and China.[1] It is located in the Karakoram mountain range, approximately eight kilometres (five miles) from K2. The peak\'s name aptly describes its physical characteristics, with a summit that extends over 1.5 kilometers (7⁄8 miles) in length, giving it the appearance of a \"broad peak.\"[', 'https://upload.wikimedia.org/wikipedia/commons/5/5b/7_15_BroadPeak.jpg', 8051, '35.810556', '76.568333', 1957);
INSERT INTO `eight_thousander_mountain` (`id`, `name`, `country`, `description`, `image_url`, `height_in_metres`, `latitude`, `longitude`, `first_ascent`) VALUES (13, 'Gasherbrum II', 'Pakistan, China', 'Gasherbrum II is located on the border of Gilgit–Baltistan, Pakistan, and Xinjiang, China. It is part of the Karakoram mountain range in the Himalayas, and located at the top of the Baltoro Glacier. With an elevation of 8,034 metres (26,358 ft) it is the third-highest member of the Gasherbrum group, behind Gasherbrum I (8,080 metres or 26,510 feet) and Broad Peak (8,051 metres or 26,414 feet). Gasherbrum III is sometimes considered to be a subpeak of Gasherbrum II, because the former has a topographic prominence of only 461 metres (1,512 ft).', 'https://upload.wikimedia.org/wikipedia/commons/3/37/Gasherbrum2.jpg', 8035, '35.757778', '76.653333', 1956);
INSERT INTO `eight_thousander_mountain` (`id`, `name`, `country`, `description`, `image_url`, `height_in_metres`, `latitude`, `longitude`, `first_ascent`) VALUES (14, 'Shishapangma', 'China', 'Shishapangma is located in south-central Tibet, five kilometres from the border with Nepal. It and Nanga Parbat are the only eight-thousanders entirely within Chinese and Pakistan territory respectively. It is also the highest peak in the Jugal Himal, which is contiguous with and often considered part of Langtang Himal. The Jugal/Langtang Himal straddles the Tibet/Nepal border. Since Shishapangma is on the dry north side of the Himalayan crest and farther from the lower terrain of Nepal, it has less dramatic vertical relief than most major Himalayan peaks.', 'https://upload.wikimedia.org/wikipedia/commons/e/e9/Shishapangma.jpg', 8027, '28.353333', '85.778611', 1964);

COMMIT;

