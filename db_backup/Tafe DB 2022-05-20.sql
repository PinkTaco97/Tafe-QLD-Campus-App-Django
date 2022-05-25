-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 20, 2022 at 02:26 AM
-- Server version: 5.5.68-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django`
--

-- --------------------------------------------------------

--
-- Table structure for table `tafe_campus`
--

CREATE TABLE `tafe_campus` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `listed` tinyint(1) NOT NULL,
  `region_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_campus`
--

INSERT INTO `tafe_campus` (`id`, `name`, `description`, `address`, `phone`, `listed`, `region_id`) VALUES
(1, 'Acacia Ridge', 'The Acacia Ridge campus is our flagship trade training centre spanning more than 22 hectares. The campus is based on the south side of Brisbane approximately 15 kilometres from the Brisbane CBD and is home to some of our newest facilities with the recent completion of a $200 million capital works program.', '247 Bradman Street, Acacia Ridge Qld 4110', '', 1, 1),
(2, 'Alexandra Hills', 'Study close to home and enjoy the perfect blend of city life with a laid-back coastal atmosphere at our Alexandra Hills campus. Located a 35 minute drive from Brisbane this leafy campus is situated in the Redlands within easy distance of the gorgeous islands of Moreton Bay.', 'Windemere Road, Alexandra Hills Qld 4161', '', 1, 1),
(3, 'Bracken Ridge', 'Located 20 kilometres north of Brisbane our Bracken Ridge campus is surrounded by green parks, bikeways, and walkways and is within easy reach of nearby cafes and take-away shops. The beautiful Sandgate waterfront is just a five minute drive from campus and has plenty of shopping and restaurant options for you to explore between classes.', '157 Norris Road, Bracken Ridge Qld 4017', '', 1, 1),
(4, 'Caboolture', 'Our Caboolture campus services a growing population and provides a convenient training location for students in Caboolture, the Sunshine Coast, Glasshouse Mountains, and Bribie Island. The stunning D\'Aguilar Range provides an impressive backdrop for the campus with the beautiful sandy beaches of Bribie Island just a short drive away.', 'Tallon Street, Caboolture Qld 4510', '', 1, 1),
(5, 'Eagle Farm', 'Our Eagle Farm campus is located on the north side of the city approximately nine kilometres from the Brisbane CBD. The campus is just a few minutes drive to Brisbane’s dining precinct and cruise terminal Portside Wharf, offering a range of dining and take-away options for you to fuel up before or after class.', '776 Kingsford Smith Drive, Eagle Farm Qld 4009', '', 1, 1),
(6, 'Grovely', 'Our Grovely campus is renowned for the delivery of courses in horticulture and animal studies. The campus is located near the impressive Brisbane State Forest Park and its classrooms and training areas are surrounded by manicured lawns, sprawling gardens, nurseries, and reclaimed forest areas. The campus is also within easy walking distance of a shopping precinct featuring a supermarket, food outlets and restaurants.', 'Fitzsimmons Street, Keperra Qld 4054', '', 1, 1),
(7, 'Inala', 'The Inala campus has provided essential education and training to the local community for over 13 years. The campus has a diverse and multicultural student cohort and offers training for job seekers as well as English classes for migrants and refugees.', '54 Thrush Street, Inala Qld 4077', '', 1, 1),
(8, 'Ipswich', 'Located in the outer suburb of Bundamba, our Ipswich campus offers a convenient location for students in Ipswich and surrounding areas. The campus is conveniently located 10 minutes from the Bundamba train station with nearby childcare facilities also available.', 'Corner Mary and Byrne Streets, Bundamba Qld 4304', '', 1, 1),
(9, 'Loganlea', 'Located on Brisbane\'s south side only 40 mins from the city, our Loganlea campus offers a huge range of study options for students in Brisbane\'s outer suburbs. Set amidst lush, green surrounds and featuring a scenic pond and garden area, the campus is the perfect place to study without the need to travel to the city.', '50-68 Armstrong Road, Meadowbrook Qld 4131', '', 1, 1),
(10, 'Mt Gravatt', 'Our Mt Gravatt campus is located just 20 minutes from the Brisbane CBD, offering students in Brisbane\'s south side a convenient location to pursue their study goals. Mt Gravatt is also our fashion studies hub offering a range of applied fashion design and millinery courses, and hosts our annual Brisbane fashion parade where students showcase their designs.', '1030 Cavendish Road, Mt Gravatt Qld 4122', '', 1, 1),
(11, 'Redcliffe', 'Our Redcliffe campus offers a relaxed learning environment within easy walking distance of the Redcliffe business area and nearby beach. The Redcliffe area is known for its easy-going lifestyle with a distinct focus on leisure and recreation. The mix of golden sandy beaches and picturesque foreshore parks makes Redcliffe a popular destination for day-trippers wanting to experience the best nature has to offer.', '64-68 Klingner Road, Redcliffe Qld 4020', '', 1, 1),
(12, 'South Bank', 'Our South Bank campus is located in the heart of Brisbane\'s arts and cultural precinct adjacent to art galleries, performing arts venues, a museum, and the State Library. The campus has easy access to the city, the beautiful South Bank Parklands, as well as plenty of cafes and restaurants for you to refuel between classes.', '66 Ernest Street , South Brisbane Qld 4101', '', 1, 1),
(13, 'Springfield', 'Our Springfield campus is positioned in a growth corridor between the cities of Brisbane and Ipswich. Greater Springfield has experienced strong growth over the last 10 years and is projected to be one of the largest communities in Queensland within the next 30 years. The campus is located within Education City, a central nucleus for education in the greater Springfield area.', 'Education City Drive, Springfield Qld 4300', '', 1, 1),
(14, 'Ashmore', 'This specialised facility is the renowned trades training hub of the Gold Coast. Equipped with industry-standard learning technologies you will perfect your craft nestled among the parkland setting and spacious campus grounds.', 'Corner Heeb Street and Benowa Road, Ashmore Qld 4214', '', 1, 2),
(15, 'Coolangatta', 'Located on the border of New South Wales our Coolangatta campus services students at the southern end of the Gold Coast. The campus is only 250 metres from the famous coastline between Snapper Rocks and Kirra beach with easy access to beaches, cafes and shops.', '5 Scott Street, Coolangatta Qld 4225', '', 1, 2),
(16, 'Coomera', 'Our Coomera campus is the perfect home for the creators, innovators, entertainers, and movie makers. Nestled among natural bushland this $26 million state-of-the-art facility offers the best creative learning experience in the region.', '198 Foxwell Road, Coomera Qld 4209,', '', 1, 2),
(17, 'Coomera Marine', 'Our Coomera Marine campus is situated in the heart of the Gold Coast Marine Precinct in Coomera, approximately 15 kilometres from Surfers Paradise.', '50 Waterway Drive, Coomera Qld 4209', '', 1, 2),
(18, 'Southport', 'Our Southport campus is conveniently located in the Gold Coast CBD next to the Australia Fair shopping centre and across the road from the beautiful Broadwater Parklands. The campus\' central location offers plenty of places to eat or relax between classes. The campus is regularly serviced by public transport including the light rail with a G:link station on its doorstep.', '91-99 Scarborough Street, Southport Qld 4215', '', 1, 2),
(19, 'Robina', 'The new TAFE Queensland Gold Coast Robina campus is due to open its doors to new students in 2022. Leading the way as a sustainable vocational institution in Australia, our Robina campus will ensure that sustainability is embedded into every aspect of campus operations including campus design, course curriculum and student life.', '209 Robina Town Centre Drive, Robina Qld 4226', '', 1, 2),
(20, 'Mooloolaba', 'Located in the heart of the Sunshine Coast, Mooloolaba is home to some of the best swimming and surfing beaches in the region. Our Mooloolaba campus is located just minutes from the buzzing beachfront esplanade and the pure white sands of Mooloolaba Beach.', '34 Lady Musgrave Drive,  Mooloolaba Qld 4557', '', 1, 3),
(21, 'Nambour', 'Nambour is located in the hinterland of the Sunshine Coast at the foot of the Blackall Range. Nambour is the largest of our Sunshine Coast campuses and is located just five minutes from the town centre. Set among lush sub-tropical rainforest hinterland, the campus features beautiful landscaped grounds with gardens, lawns, native trees, and a winding creek.', '91 Windsor Road, Nambour Qld 4560', '', 1, 3),
(22, 'Sunshine Coast Health Institute', 'Located in the suburb of Birtinya just a 15 minute drive south of Mooloolaba, the Sunshine Coast Health Institute (SCHI) is a dedicated education, training and research facility. The Institute is a collaborative partnership between the Sunshine Coast Hospital and Health Service, the University of the Sunshine Coast, and TAFE Queensland, and is located on the Sunshine Coast University Hospital (SCUH) campus.', '6 Doherty Street, Birtinya Qld 4575', '', 1, 3),
(23, 'Charleville', 'Our Charleville location is located close to the town centre and provides industry-relevant training to develop in-demand skills.\r\n\r\nPlease note that Charleville\'s opening hours are dependent on current course delivery and that the campus may be unattended if there are no classes scheduled.  For customer service enquiries it is best to contact our customer service centre on 1300 308 233 or through our website.  Student support and school programs do operate on campus, however it is best to check operating times with the customer service team prior to visiting.', '66 Galatea Street, Charleville Qld 4470', '', 1, 4),
(24, 'Chinchilla', 'Our Chinchilla campus is located in the grounds of the Chinchilla State High School, adjacent to the Chinchilla Showgrounds. Chinchilla is a hub for the agricultural, resources and construction industries in the region.', '9 Zeller Street, Chinchilla Qld 4413', '', 1, 4),
(25, 'Dalby', 'Set among beautiful landscape, Dalby is a thriving regional centre as well as a hub for the surrounding rural communities. Our Dalby campus is located a five minute drive from the town centre and provides training across a range of industry areas.', '463 Bunya Highway, Dalby Qld 4405', '', 1, 4),
(26, 'Roma', 'Roma is a pivotal business centre for the Western Downs region. Located on the Warrego Highway, Roma is known for its gas and oil production and is home to Australia\'s largest cattle sales. Our Roma campus is located a 15 minute walk from the city centre with easy access to food outlets to fuel up between classes.', 'Timbury Street, Roma Qld 4455', '', 1, 4),
(27, 'Toowoomba', 'Toowoomba is Australia\'s second largest inland city and is located just 90 minutes from Brisbane. Known as the ‘Garden City’ and bordered by the Great Dividing Range, Toowoomba boasts wide open spaces, tree-lined streets, and historical attractions. Our Toowoomba campus is located close to Queens Park and next to the historical Cobb+Co Museum.', '100 Bridge Street, Toowoomba Qld 4350', '', 1, 4),
(28, 'Warwick', 'Sitting on the banks of the Condamine River, Warwick is the administrative centre of the Southern Downs Region. Known as the \'Rose and Rodeo Capital\' Warwick also features some of the state\'s finest original sandstone buildings. Our Warwick campus is located on the outskirts of the town, close to the Warwick Showgrounds.', '200 Dragon Street, Warwick Qld 4370', '', 1, 4),
(29, 'Lockyer Valley - Gatton', 'Situated in the rich farmlands of the Lockyer Valley, the town of Gatton is located 35 minutes east of Toowoomba. Known as the salad bowl of Australia, the valley produces the most diverse range of fruit and vegetables in Australia. Our courses in Gatton are delivered out of the Lockyer Valley Conference and Function Centre.', '34 Lake Apex Drive, Gatton Qld 4343', '', 1, 4),
(30, 'Bundaberg', 'Bundaberg is a regional city that offers plenty of coastal attractions. Located on the Burnett River the city is known for its sugar plantations, the famous Bundaberg Rum factory, and nearby beaches. Centrally located five minutes from the town centre, our Bundaberg campus offers a range of practical courses in purpose-built facilities.', '118 Walker Street, Bundaberg Qld 4670', '', 1, 5),
(31, 'Gympie', 'Gympie is a regional city located on the banks of the Mary River. Known for its gold field and heritage listed buildings, Gympie also has a number of natural attractions on its doorstep including Tin Can Bay, Rainbow Beach, and the rolling hills of the Mary Valley. Situated in beautiful natural surrounds our Gympie campus is located a five minute drive north of the town centre.', '71 Cartwright Road, Gympie Qld 4570', '', 1, 5),
(32, 'Hervey Bay', 'Known as the whale watching capital of the world, Hervey Bay is also the gateway to Fraser Island. The sheltered waters in the area make it perfect for year-round swimming, diving, sailing, water sports, and fishing. Our Hervey Bay campus is located in the suburb of Pialba, just a 10 minute drive from the Stockland Shopping Centre.', '47-95 Urraween Road, Hervey Bay Qld 4655', '', 1, 5),
(33, 'Kingaroy', 'Located at the junction of the D\'Aguilar and Bunya Highways, Kingaroy is the commercial centre of the South Burnett region. The town is surrounded by spectacular scenery with the nearby Bunya Mountains a popular destination for bushwalkers and the Booie Range home to several wineries and cellar doors. Our Kingaroy campus is located off the Bunya Highway just a short drive from the town centre.', 'Corner Bunya Highway and Geritz Road, Kingaroy Qld 4610', '', 1, 5),
(34, 'Maryborough', 'Opened in 2016 our purpose-built Maryborough campus is located in the heart of the Maryborough CBD. The campus is a brand new education and training delivery concept and is the first of its kind in Queensland, offering a unique training hub to support local students and the community.', '89 Adelaide Street, Maryborough Qld 4650', '', 1, 5),
(35, 'Nurunderi', 'Located off the Bunya Highway in the South Burnett region our Nurunderi campus is based in the Aboriginal community of Cherbourg. The community is situated on the traditional lands of the Wakka Wakka Aboriginal people with the Wondai State Forest and Lake Barambah on its doorstep. Nurunderi (Cherbourg) is the only TAFE Queensland location to be built on designated Aboriginal land.', 'Collins Road, Cherbourg Qld 4605', '', 1, 5),
(36, 'Bowen', 'Bowen is situated in the northern region of the Whitsunday Coast, halfway between the regional centres of Mackay and Townsville. Its community of just over 10,000 enjoys a warm climate, palm fringed beaches, and beautiful secluded bays. Our Bowen campus is located on the outskirts of the town on Queens Road, just a five minute drive from the town centre.', '98-158 Queens Road, Bowen Qld 4805', '', 1, 6),
(37, 'Burdekin', 'The Shire of Burdekin is located between Townsville and Bowen and is home to 18,000 residents spread throughout 19 towns and localities. Our Burdekin campus is located in the Shire\'s second largest town of Home Hill. Residents enjoy the laid-back atmosphere of the Shire enjoying the regions great cafes and restaurants, speciality stores, shady parks, and excellent public amenities.', 'Seventeenth Street, Home Hill Qld 4806', '', 1, 6),
(38, 'Charters Towers', 'The inland town of Charters Towers is located approximately 140 kilometres south west of Townsville. The town is a regional mining and agricultural centre, and is renowned for its historic character and beautifully preserved buildings and streetscapes.', '1-13 Macpherson Street, Richmond Hill Qld 4820', '', 1, 6),
(39, 'Cloncurry', 'Cloncurry is located in the north-west of Queensland approximately 120 kilometres east of Mount Isa. Known as \'The Friendly Heart of Outback Queensland\', the township lies alongside the beautiful Cloncurry River and features the Flying Doctor museum, a public library, gallery, swimming pool, showground, and racecourse.', '35 Ramsay Street, Cloncurry Qld 4824', '', 1, 6),
(40, 'Ingham', 'Located midway between Townsville and Innisfail, the town of Ingham is the southern gateway to the World Heritage-listed rainforests of Tropical North Queensland. The town is the service centre for many of the surrounding sugarcane plantations and has nearby attractions including majestic Hinchinbrook Island and Australia\'s highest sheer drop waterfall, Wallaman Falls.', '74 Townsville Road, Ingham Qld 4850  Postal address', '', 1, 6),
(41, 'Mount Isa', 'Located in the Gulf Country region of Queensland, Mount Isa is known as the \'Rodeo Capital of Australia\' and is the administrative, commercial and industrial centre for the state\'s north-west region. The city features a cinema complex, events complex, Go Kart club, ten-pin bowling, and a range of sporting facilities including an aquatic centre, skate park, sporting complex, and sports fields and courts. Our Mount Isa campus is located just off the Barkly Highway approximately five minutes east of the town centre.', '165-179 Abel Smith Parade, Mount Isa Qld 4825', '', 1, 6),
(42, 'Normanton', 'Situated on the banks of the Norman River, Normanton is a small cattle town located in the Gulf Country region of north west Queensland. Normanton is the administrative centre of the Shire of Carpentaria and has a range of facilities including an aerodrome, bowling green, golf course, gun club, public library, racecourse, rodeo ground, and sports centre.', '20 Green Street, Normanton Qld 4890', '', 1, 6),
(43, 'Palm Island', 'Palm Island is an Aboriginal community located on Great Palm Island in the Great Barrier Reef. Also known by its Aboriginal name \"Bwgcolman\", the tropical island is home to a community of approximately 5,000 people and features small bays, sandy beaches, and steep forested mountains.', 'Beach Road, Palm Island Qld 4816', '', 1, 6),
(44, 'Townsville (Pimlico)', 'The Townsville (Pimlico) campus has recently undergone a $35 million redevelopment. To enhance the learning experience of our students, a state-of-the-art training kitchen, restaurant and simulated nursing wards, as well as hairdressing and beauty salons are featured in the new campus.\r\n\r\nThe campus is located off Hugh Street in Pimlico, and is conveniently positioned just 10 minutes\' drive from the Townsville CBD. Known as the unofficial capital of north Queensland, Townsville offers a laid-back tropical lifestyle with all the facilities of a major city.', 'Corner of Hugh Street and Fulham Road, Pimlico Qld 4812', '', 1, 6),
(45, 'Townsville (Trade Training Centre Bohle)', 'Known as the unofficial capital of north Queensland, Townsville offers a laid-back tropical lifestyle with all the facilities of a major city. The city\'s attractions include the Strand, the city\'s seaside promenade lined with restaurants, cafes and bars, and the nearby Great Barrier Reef and Magnetic Island. The Townsville (Trade Training Centre Bohle) campus is a $37 million state-of-the-art facility that trains more than 2,000 apprentices annually. The centre is conveniently located in the city\'s industrial area in the suburb of Bohle, approximately a 15 minute drive from the Townsville city centre.', '763 Ingham Road, Bohle Qld 4818', '', 1, 6),
(46, 'Whitsundays', 'Our Whitsundays campus is located in Cannonvale, the business precinct of the Whitsundays region. Located just three kilometres from the popular tourist destination of Airlie Beach, you\'ll have easy access to many attractions in the area including beautiful beaches, lagoons, foreshore, marina, entertainment and nightlife.', 'Shute Harbour Road, Cannonvale Qld 4802', '', 1, 6),
(47, 'Atherton', 'The historical township of Atherton is located on the Atherton Tablelands in Tropical North Queensland. This fertile plateau features rolling green hills, stunning views, and high quality local produce including coffee, chocolate, wine, cheese, and tropical fruits.', 'Maunds Road, Atherton Qld 4883', '', 1, 7),
(48, 'Great Barrier Reef International Marine College', 'The Great Barrier Reef International Marine College (GBRIMC) offers a comprehensive range of training qualifications and certificates for the maritime industry. The campus is located along Chinaman Creek in the suburb of Portsmith, just a short 10 minute drive south of the Cairns city centre.', '55-61 Tingira Street, Portsmith Qld 4870', '', 1, 7),
(49, 'Northern Peninsula Area', 'Our Northern Peninsula Area campus is located in Bamaga, approximately 40 kilometres from the northern tip of the Cape York Peninsula. The Northern Peninsula Area is rich in Aboriginal and Torres Strait Islander history and is made up of five Indigenous communities: Bamaga, Injinoo, Umagico, New Mapoon, and Seisia. Bamaga is the most northern township in mainland Queensland and is a popular tourist destination for 4WD enthusiasts.', 'Sebasio Street, Bamaga Qld 4876', '', 1, 7),
(50, 'Cairns', 'Cairns is the gateway to the stunning World Heritage-listed Great Barrier Reef and Daintree Rainforest, and attracts over two million visitors annually. The laid-back city boasts world-class sporting facilities, a swimming lagoon overlooking the picturesque Trinity Inlet, and a popular esplanade lined with cafes, restaurants and bustling markets. Our Cairns campus is located in the western suburb of Manunda approximately 10 minutes drive from the city centre.', 'Gatton, Newton, Eureka and Wilkinson Streets, Cairns Qld 4870', '', 1, 7),
(51, 'Innisfail', 'Located on the Bruce Highway between Cairns and Townsville, Innisfail is the major township of the Cassowary Coast Region. Renowned for its sugar cane and banana industries, the area is popular with backpackers seeking fruit picking jobs and also produces tea, pawpaws and other exotic fruits. Our Innisfail campus is located at the Innisfail State College, an integrated learning facility combining a secondary school, diverse learning centre, and TAFE Queensland campus.', '45 Flying Fish Point Road, Innisfail Qld 4860', '', 1, 7),
(52, 'Thursday Island', 'Thursday Island (Waiben) is the commercial and administrative centre of the Torres Strait region, located 40 kilometres off the northern coast of the Cape York Peninsula. The island\'s community is a diverse mix of cultures including Torres Strait Islander, Aboriginal, Papua New Guinean, Malay and Japanese. Thursday Island has a number of facilities including the Gab Titui Cultural Centre, a gym, public library, accommodation facilities, retail and commercial stores, a sports complex, and sporting fields.', '19 Aplin Road, Thursday Island Qld 4875', '', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tafe_campushours`
--

CREATE TABLE `tafe_campushours` (
  `id` bigint(20) NOT NULL,
  `monOpen` time(6) NOT NULL,
  `monClose` time(6) NOT NULL,
  `tueOpen` time(6) NOT NULL,
  `tueClose` time(6) NOT NULL,
  `wedOpen` time(6) NOT NULL,
  `wedClose` time(6) NOT NULL,
  `thurOpen` time(6) NOT NULL,
  `thurClose` time(6) NOT NULL,
  `friOpen` time(6) NOT NULL,
  `friClose` time(6) NOT NULL,
  `satOpen` time(6) NOT NULL,
  `satClose` time(6) NOT NULL,
  `sunOpen` time(6) NOT NULL,
  `sunClose` time(6) NOT NULL,
  `campus_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_campushours`
--

INSERT INTO `tafe_campushours` (`id`, `monOpen`, `monClose`, `tueOpen`, `tueClose`, `wedOpen`, `wedClose`, `thurOpen`, `thurClose`, `friOpen`, `friClose`, `satOpen`, `satClose`, `sunOpen`, `sunClose`, `campus_id`) VALUES
(1, '08:00:00.000000', '17:00:00.000000', '08:00:00.000000', '17:00:00.000000', '08:00:00.000000', '17:00:00.000000', '08:00:00.000000', '17:00:00.000000', '08:00:00.000000', '14:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 1),
(2, '08:30:00.000000', '16:30:00.000000', '08:00:00.000000', '16:00:00.000000', '09:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 2),
(3, '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '09:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 3),
(4, '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '09:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 4),
(5, '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '14:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 5),
(6, '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '09:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 6),
(7, '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '09:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 7),
(8, '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '09:00:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 8),
(9, '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '09:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 9),
(10, '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '09:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 10),
(11, '00:00:00.000000', '00:00:00.000000', '08:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '08:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 11),
(12, '08:30:00.000000', '17:00:00.000000', '08:30:00.000000', '17:00:00.000000', '09:30:00.000000', '17:00:00.000000', '08:30:00.000000', '17:00:00.000000', '08:30:00.000000', '17:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 12),
(13, '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '09:00:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 13),
(14, '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '09:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 14),
(15, '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 15),
(16, '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 16),
(17, '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 17),
(18, '08:00:00.000000', '16:30:00.000000', '08:00:00.000000', '16:30:00.000000', '08:00:00.000000', '16:30:00.000000', '08:00:00.000000', '16:30:00.000000', '08:00:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 18),
(19, '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 19);

-- --------------------------------------------------------

--
-- Table structure for table `tafe_event`
--

CREATE TABLE `tafe_event` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `content` longtext NOT NULL,
  `location` varchar(255) NOT NULL,
  `registerLink` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `eventStart` datetime(6) NOT NULL,
  `eventEnd` datetime(6) NOT NULL,
  `lastUpdate` datetime(6) NOT NULL,
  `timeCreated` datetime(6) NOT NULL,
  `listed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_event`
--

INSERT INTO `tafe_event` (`id`, `title`, `description`, `content`, `location`, `registerLink`, `image`, `eventStart`, `eventEnd`, `lastUpdate`, `timeCreated`, `listed`) VALUES
(1, 'Diploma of Business Webinar', 'Garry talks about TAFE Queensland’s business training and the diverse career opportunities open to our business graduates.', 'Garry talks about TAFE Queensland’s business training and the diverse career opportunities open to our business graduates. Choose from options in business, leadership and management to get the skills and experience you need to commence or further develop your business career.', 'Online', 'https://tafeqld.edu.au/news-and-events/webinars/diploma-of-business-webinar', 'https://tafeqld.edu.au/content/dam/tafe/en/campaigns/webinars/TQ-on24-WEBINAR-1920x1080%20Screenshot-diploma-of-business.jpg', '2022-05-20 00:00:00.000000', '2022-05-20 02:00:00.000000', '2022-05-19 02:35:56.880148', '2022-05-18 12:38:51.451396', 1),
(2, 'Diploma of Nursing Webinar', 'Meet Georgia from our highly skilled nursing teaching team. During our webinar you will hear about our nursing training and what a wonderful career opportunities can be found with a nursing qualification from TAFE Queensland.', 'TAFE Queensland nursing students will learn their practical skills in our simulated training labs before going on to experience further learning during their work placement. This webinar focuses on our Diploma of Nursing (HLT54115) qualification.', 'Online', 'https://tafeqld.edu.au/news-and-events/webinars/diploma-of-nursing-webinar', 'https://tafeqld.edu.au/content/dam/tafe/en/campaigns/webinars/TQ-on24-WEBINAR-1920x1080%20Screenshot-diploma-of-nursing.jpg', '2022-05-31 00:00:00.000000', '2022-05-31 06:00:00.000000', '2022-05-19 02:36:30.687015', '2022-05-18 12:45:13.634502', 1),
(3, 'Robina Campus Webinar', 'Get excited! Our brand new campus is due to open its doors in July and we can’t wait to show you what’s on offer.', 'You’re invited to join us at our exclusive Robina campus webinar happening Tuesday 17 May at 10am.\r\n\r\nThis will be a great opportunity to hear from our teachers across a range of study areas including beauty and hairdressing, childcare, cookery, events, hospitality, sports and fitness. Meet our director of faculty and learn all about the new, sustainable campus.\r\n\r\nFill in the form to receive your link to this informative online event!', 'Online', 'https://tafeqld.edu.au/https://tafeqld.edu.au/news-and-events/events/2022/may/robina-campus-webinar', 'https://tafeqld.edu.au/content/dam/tafe/en/news-and-events/news/2022/Robina-Blog-Assets-Feature-1920x1080.jpg', '2022-05-17 00:00:00.000000', '2022-05-17 01:00:00.000000', '2022-05-19 02:36:17.540913', '2022-05-18 12:45:55.697049', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tafe_industry`
--

CREATE TABLE `tafe_industry` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `listed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_industry`
--

INSERT INTO `tafe_industry` (`id`, `name`, `listed`) VALUES
(2, 'Business and IT', 1),
(3, 'Creative Industries', 1),
(4, 'Education and Community', 1),
(5, 'Environment and Animal Services', 1),
(6, 'Health and Science', 1),
(7, 'Infrastructure and Transport', 1),
(8, 'Service Industries', 1),
(9, 'Trades', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tafe_notification`
--

CREATE TABLE `tafe_notification` (
  `id` bigint(20) NOT NULL,
  `type` varchar(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `sendTime` datetime(6) NOT NULL,
  `campus_id` bigint(20) NOT NULL,
  `industry_id` bigint(20) NOT NULL,
  `region_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tafe_region`
--

CREATE TABLE `tafe_region` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `listed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_region`
--

INSERT INTO `tafe_region` (`id`, `name`, `listed`) VALUES
(1, 'Greater Brisbane', 1),
(2, 'Gold Coast', 1),
(3, 'Sunshine Coast', 1),
(4, 'Darling Downs and South West', 1),
(5, 'Wide Bay Burnett', 1),
(6, 'North Queensland', 1),
(7, 'Far North Queensland', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tafe_restaurant`
--

CREATE TABLE `tafe_restaurant` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `menuLink` varchar(255) NOT NULL,
  `bookingLink` varchar(255) NOT NULL,
  `listed` tinyint(1) NOT NULL,
  `campus_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_restaurant`
--

INSERT INTO `tafe_restaurant` (`id`, `name`, `description`, `address`, `phone`, `image`, `menuLink`, `bookingLink`, `listed`, `campus_id`) VALUES
(1, 'Cafe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '209 Robina Town Centre Drive, Robina Qld 4226', '66525226', 'https://images.pexels.com/photos/1855214/pexels-photo-1855214.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'https://tafeqld.edu.au/', 'https://tafeqld.edu.au/', 1, 19),
(2, 'Restaurant', '', '', '', 'https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', '', '', 1, 19);

-- --------------------------------------------------------

--
-- Table structure for table `tafe_restauranthours`
--

CREATE TABLE `tafe_restauranthours` (
  `id` bigint(20) NOT NULL,
  `monOpen` time(6) NOT NULL,
  `monClose` time(6) NOT NULL,
  `tueOpen` time(6) NOT NULL,
  `tueClose` time(6) NOT NULL,
  `wedOpen` time(6) NOT NULL,
  `wedClose` time(6) NOT NULL,
  `thurOpen` time(6) NOT NULL,
  `thurClose` time(6) NOT NULL,
  `friOpen` time(6) NOT NULL,
  `friClose` time(6) NOT NULL,
  `satOpen` time(6) NOT NULL,
  `satClose` time(6) NOT NULL,
  `sunOpen` time(6) NOT NULL,
  `sunClose` time(6) NOT NULL,
  `restaurant_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tafe_user`
--

CREATE TABLE `tafe_user` (
  `id` bigint(20) NOT NULL,
  `type` varchar(2) NOT NULL,
  `timeCreated` datetime(6) NOT NULL,
  `notificationToken` varchar(255) NOT NULL,
  `campus_id` bigint(20) NOT NULL,
  `industry_id` bigint(20) NOT NULL,
  `region_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tafe_campus`
--
ALTER TABLE `tafe_campus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `tafe_campus_region_id_1257459b_fk_tafe_region_id` (`region_id`);

--
-- Indexes for table `tafe_campushours`
--
ALTER TABLE `tafe_campushours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tafe_campushours_campus_id_2105641b_fk_tafe_campus_id` (`campus_id`);

--
-- Indexes for table `tafe_event`
--
ALTER TABLE `tafe_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tafe_industry`
--
ALTER TABLE `tafe_industry`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tafe_notification`
--
ALTER TABLE `tafe_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tafe_notification_campus_id_f2a73d1e_fk_tafe_campus_id` (`campus_id`),
  ADD KEY `tafe_notification_industry_id_8258f58b_fk_tafe_industry_id` (`industry_id`),
  ADD KEY `tafe_notification_region_id_d8fdf348_fk_tafe_region_id` (`region_id`);

--
-- Indexes for table `tafe_region`
--
ALTER TABLE `tafe_region`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tafe_restaurant`
--
ALTER TABLE `tafe_restaurant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `tafe_restaurant_campus_id_ef435a35_fk_tafe_campus_id` (`campus_id`);

--
-- Indexes for table `tafe_restauranthours`
--
ALTER TABLE `tafe_restauranthours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tafe_restauranthours_restaurant_id_89492378_fk_tafe_rest` (`restaurant_id`);

--
-- Indexes for table `tafe_user`
--
ALTER TABLE `tafe_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tafe_user_campus_id_bf7980f6_fk_tafe_campus_id` (`campus_id`),
  ADD KEY `tafe_user_industry_id_035bbcc6_fk_tafe_industry_id` (`industry_id`),
  ADD KEY `tafe_user_region_id_96a5ddc9_fk_tafe_region_id` (`region_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tafe_campus`
--
ALTER TABLE `tafe_campus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tafe_campushours`
--
ALTER TABLE `tafe_campushours`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tafe_event`
--
ALTER TABLE `tafe_event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tafe_industry`
--
ALTER TABLE `tafe_industry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tafe_notification`
--
ALTER TABLE `tafe_notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tafe_region`
--
ALTER TABLE `tafe_region`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tafe_restaurant`
--
ALTER TABLE `tafe_restaurant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tafe_restauranthours`
--
ALTER TABLE `tafe_restauranthours`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tafe_user`
--
ALTER TABLE `tafe_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tafe_campus`
--
ALTER TABLE `tafe_campus`
  ADD CONSTRAINT `tafe_campus_region_id_1257459b_fk_tafe_region_id` FOREIGN KEY (`region_id`) REFERENCES `tafe_region` (`id`);

--
-- Constraints for table `tafe_campushours`
--
ALTER TABLE `tafe_campushours`
  ADD CONSTRAINT `tafe_campushours_campus_id_2105641b_fk_tafe_campus_id` FOREIGN KEY (`campus_id`) REFERENCES `tafe_campus` (`id`);

--
-- Constraints for table `tafe_notification`
--
ALTER TABLE `tafe_notification`
  ADD CONSTRAINT `tafe_notification_region_id_d8fdf348_fk_tafe_region_id` FOREIGN KEY (`region_id`) REFERENCES `tafe_region` (`id`),
  ADD CONSTRAINT `tafe_notification_campus_id_f2a73d1e_fk_tafe_campus_id` FOREIGN KEY (`campus_id`) REFERENCES `tafe_campus` (`id`),
  ADD CONSTRAINT `tafe_notification_industry_id_8258f58b_fk_tafe_industry_id` FOREIGN KEY (`industry_id`) REFERENCES `tafe_industry` (`id`);

--
-- Constraints for table `tafe_restaurant`
--
ALTER TABLE `tafe_restaurant`
  ADD CONSTRAINT `tafe_restaurant_campus_id_ef435a35_fk_tafe_campus_id` FOREIGN KEY (`campus_id`) REFERENCES `tafe_campus` (`id`);

--
-- Constraints for table `tafe_restauranthours`
--
ALTER TABLE `tafe_restauranthours`
  ADD CONSTRAINT `tafe_restauranthours_restaurant_id_89492378_fk_tafe_rest` FOREIGN KEY (`restaurant_id`) REFERENCES `tafe_restaurant` (`id`);

--
-- Constraints for table `tafe_user`
--
ALTER TABLE `tafe_user`
  ADD CONSTRAINT `tafe_user_region_id_96a5ddc9_fk_tafe_region_id` FOREIGN KEY (`region_id`) REFERENCES `tafe_region` (`id`),
  ADD CONSTRAINT `tafe_user_campus_id_bf7980f6_fk_tafe_campus_id` FOREIGN KEY (`campus_id`) REFERENCES `tafe_campus` (`id`),
  ADD CONSTRAINT `tafe_user_industry_id_035bbcc6_fk_tafe_industry_id` FOREIGN KEY (`industry_id`) REFERENCES `tafe_industry` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
