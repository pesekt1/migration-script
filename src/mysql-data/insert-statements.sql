use booking3;
INSERT INTO airline (`name`)
VALUES ('American Airlines'),
  ('Delta Airlines'),
  ('United Airlines'),
  ('Southwest Airlines'),
  ('JetBlue Airways'),
  ('Alaska Airlines'),
  ('Spirit Airlines'),
  ('Frontier Airlines'),
  ('Hawaiian Airlines'),
  ('Allegiant Air'),
  ('British Airways'),
  ('Lufthansa'),
  ('Air Canada'),
  ('Qantas'),
  ('Emirates'),
  ('Singapore Airlines'),
  ('Air France'),
  ('KLM Royal Dutch Airlines'),
  ('Cathay Pacific'),
  ('Turkish Airlines'),
  ('Qatar Airways'),
  ('Ethiopian Airlines'),
  ('Japan Airlines'),
  ('Korean Air'),
  ('China Southern Airlines'),
  ('Air India'),
  ('Etihad Airways'),
  ('Swiss International Air Lines'),
  ('Aeroméxico'),
  ('LATAM Airlines'),
  ('Avianca'),
  ('Virgin Atlantic'),
  ('Iberia'),
  ('SAS Scandinavian Airlines'),
  ('Austrian Airlines'),
  ('Finnair'),
  ('Aeroflot'),
  ('LOT Polish Airlines'),
  ('EgyptAir'),
  ('Garuda Indonesia'),
  ('Malaysia Airlines'),
  ('Thai Airways'),
  ('Vietnam Airlines'),
  ('Philippine Airlines'),
  ('Asiana Airlines'),
  ('TAP Air Portugal'),
  ('Royal Air Maroc'),
  ('Kenya Airways'),
  ('Saudi Arabian Airlines'),
  ('El Al Israel Airlines'),
  ('South African Airways'),
  ('Brussels Airlines'),
  ('Copa Airlines'),
  ('Vueling'),
  ('Norwegian Air Shuttle'),
  ('AirAsia'),
  ('Ryanair'),
  ('easyJet'),
  ('Wizz Air'),
  ('Jet Airways'),
  ('GoAir'),
  ('IndiGo'),
  ('Vistara'),
  ('Flydubai'),
  ('Air Arabia'),
  ('Peach Aviation'),
  ('Scoot'),
  ('Hong Kong Airlines'),
  ('Bangkok Airways'),
  ('SilkAir'),
  ('TUI Airways'),
  ('Sun Country Airlines'),
  ('WestJet'),
  ('Swoop'),
  ('Air Transat'),
  ('VivaAerobus'),
  ('Azul Brazilian Airlines'),
  ('Gol Transportes Aéreos'),
  ('LATAM Brasil'),
  ('Sky Airline'),
  ('JetSMART'),
  ('Interjet'),
  ('Blue Panorama Airlines'),
  ('Neos'),
  ('Volotea'),
  ('Binter Canarias'),
  ('Corendon Airlines'),
  ('SunExpress'),
  ('Pegasus Airlines'),
  ('AnadoluJet'),
  ('Jazeera Airways'),
  ('Air Mauritius'),
  ('Air Seychelles'),
  ('Air Madagascar'),
  ('Air Austral'),
  ('Fiji Airways'),
  ('Solomon Airlines'),
  ('Air Tahiti Nui'),
  ('Tunisair'),
  ('Royal Jordanian'),
  ('Oman Air'),
  ('Kuwait Airways'),
  ('Pakistan International Airlines'),
  ('SriLankan Airlines');
INSERT INTO airport (`code`, `name`, `city`, `state`)
VALUES (
    'JFK',
    'John F. Kennedy International Airport',
    'New York',
    'NY'
  ),
  (
    'LAX',
    'Los Angeles International Airport',
    'Los Angeles',
    'CA'
  ),
  (
    'ORD',
    'Hare International Airport',
    'Chicago',
    'IL'
  ),
  (
    'ATL',
    'Hartsfield-Jackson Atlanta International Airport',
    'Atlanta',
    'GA'
  ),
  (
    'DFW',
    'Dallas/Fort Worth International Airport',
    'Dallas',
    'TX'
  ),
  (
    'DEN',
    'Denver International Airport',
    'Denver',
    'CO'
  ),
  (
    'SFO',
    'San Francisco International Airport',
    'San Francisco',
    'CA'
  ),
  (
    'SEA',
    'Seattle-Tacoma International Airport',
    'Seattle',
    'WA'
  ),
  (
    'MIA',
    'Miami International Airport',
    'Miami',
    'FL'
  ),
  (
    'PHX',
    'Phoenix Sky Harbor International Airport',
    'Phoenix',
    'AZ'
  ),
  (
    'BOS',
    'Logan International Airport',
    'Boston',
    'MA'
  ),
  (
    'IAD',
    'Washington Dulles International Airport',
    'Washington',
    'DC'
  ),
  (
    'CLT',
    'Charlotte Douglas International Airport',
    'Charlotte',
    'NC'
  ),
  (
    'LAS',
    'McCarran International Airport',
    'Las Vegas',
    'NV'
  ),
  (
    'MCO',
    'Orlando International Airport',
    'Orlando',
    'FL'
  ),
  (
    'MSP',
    'Minneapolis-Saint Paul International Airport',
    'Minneapolis',
    'MN'
  ),
  (
    'DTW',
    'Detroit Metropolitan Airport',
    'Detroit',
    'MI'
  ),
  (
    'PHL',
    'Philadelphia International Airport',
    'Philadelphia',
    'PA'
  ),
  (
    'BWI',
    'Baltimore/Washington International Airport',
    'Baltimore',
    'MD'
  ),
  (
    'SLC',
    'Salt Lake City International Airport',
    'Salt Lake City',
    'UT'
  ),
  (
    'SAN',
    'San Diego International Airport',
    'San Diego',
    'CA'
  ),
  (
    'TPA',
    'Tampa International Airport',
    'Tampa',
    'FL'
  ),
  (
    'PDX',
    'Portland International Airport',
    'Portland',
    'OR'
  ),
  (
    'HNL',
    'Daniel K. Inouye International Airport',
    'Honolulu',
    'HI'
  ),
  (
    'STL',
    'St. Louis Lambert International Airport',
    'St. Louis',
    'MO'
  ),
  (
    'AUS',
    'Austin-Bergstrom International Airport',
    'Austin',
    'TX'
  ),
  (
    'RDU',
    'Raleigh-Durham International Airport',
    'Raleigh',
    'NC'
  ),
  (
    'BNA',
    'Nashville International Airport',
    'Nashville',
    'TN'
  ),
  (
    'MSY',
    'Louis Armstrong New Orleans International Airport',
    'New Orleans',
    'LA'
  ),
  (
    'OAK',
    'Oakland International Airport',
    'Oakland',
    'CA'
  ),
  -- International Airports
  (
    'LHR',
    'London Heathrow Airport',
    'London',
    'United Kingdom'
  ),
  (
    'CDG',
    'Charles de Gaulle Airport',
    'Paris',
    'France'
  ),
  (
    'FRA',
    'Frankfurt Airport',
    'Frankfurt',
    'Germany'
  ),
  (
    'AMS',
    'Amsterdam Schiphol Airport',
    'Amsterdam',
    'Netherlands'
  ),
  ('HND', 'Tokyo Haneda Airport', 'Tokyo', 'Japan'),
  (
    'NRT',
    'Narita International Airport',
    'Tokyo',
    'Japan'
  ),
  (
    'DXB',
    'Dubai International Airport',
    'Dubai',
    'United Arab Emirates'
  ),
  (
    'DOH',
    'Hamad International Airport',
    'Doha',
    'Qatar'
  ),
  (
    'HKG',
    'Hong Kong International Airport',
    'Hong Kong',
    'China'
  ),
  (
    'SIN',
    'Singapore Changi Airport',
    'Singapore',
    'Singapore'
  ),
  (
    'SYD',
    'Sydney Kingsford Smith Airport',
    'Sydney',
    'Australia'
  ),
  (
    'GRU',
    'São Paulo–Guarulhos International Airport',
    'São Paulo',
    'Brazil'
  ),
  (
    'MEX',
    'Mexico City International Airport',
    'Mexico City',
    'Mexico'
  ),
  (
    'JNB',
    'O.R. Tambo International Airport',
    'Johannesburg',
    'South Africa'
  ),
  (
    'YYZ',
    'Toronto Pearson International Airport',
    'Toronto',
    'Canada'
  ),
  (
    'YVR',
    'Vancouver International Airport',
    'Vancouver',
    'Canada'
  ),
  (
    'CPT',
    'Cape Town International Airport',
    'Cape Town',
    'South Africa'
  ),
  (
    'BCN',
    'Barcelona-El Prat Airport',
    'Barcelona',
    'Spain'
  ),
  (
    'MAD',
    'Adolfo Suárez Madrid-Barajas Airport',
    'Madrid',
    'Spain'
  ),
  ('MUC', 'Munich Airport', 'Munich', 'Germany'),
  ('ZRH', 'Zurich Airport', 'Zurich', 'Switzerland'),
  ('BRU', 'Brussels Airport', 'Brussels', 'Belgium'),
  (
    'VIE',
    'Vienna International Airport',
    'Vienna',
    'Austria'
  ),
  (
    'ATH',
    'Athens International Airport',
    'Athens',
    'Greece'
  ),
  (
    'FCO',
    'Leonardo da Vinci–Fiumicino Airport',
    'Rome',
    'Italy'
  ),
  (
    'MNL',
    'Ninoy Aquino International Airport',
    'Manila',
    'Philippines'
  ),
  (
    'ICN',
    'Incheon International Airport',
    'Seoul',
    'South Korea'
  ),
  (
    'KUL',
    'Kuala Lumpur International Airport',
    'Kuala Lumpur',
    'Malaysia'
  ),
  (
    'BKK',
    'Suvarnabhumi Airport',
    'Bangkok',
    'Thailand'
  ),
  (
    'DEL',
    'Indira Gandhi International Airport',
    'Delhi',
    'India'
  ),
  (
    'BOM',
    'Chhatrapati Shivaji Maharaj International Airport',
    'Mumbai',
    'India'
  ),
  (
    'CPT',
    'Cape Town International Airport',
    'Cape Town',
    'South Africa'
  ),
  (
    'LIM',
    'Jorge Chávez International Airport',
    'Lima',
    'Peru'
  ),
  (
    'SCL',
    'Arturo Merino Benítez International Airport',
    'Santiago',
    'Chile'
  ),
  (
    'BOG',
    'El Dorado International Airport',
    'Bogotá',
    'Colombia'
  ),
  (
    'GIG',
    'Rio de Janeiro-Galeão International Airport',
    'Rio de Janeiro',
    'Brazil'
  ),
  ('DUB', 'Dublin Airport', 'Dublin', 'Ireland'),
  (
    'ARN',
    'Stockholm Arlanda Airport',
    'Stockholm',
    'Sweden'
  ),
  (
    'HEL',
    'Helsinki-Vantaa Airport',
    'Helsinki',
    'Finland'
  ),
  (
    'OSL',
    'Oslo Gardermoen Airport',
    'Oslo',
    'Norway'
  ),
  (
    'CUN',
    'Cancún International Airport',
    'Cancún',
    'Mexico'
  ),
  (
    'PTY',
    'Tocumen International Airport',
    'Panama City',
    'Panama'
  ),
  (
    'GVA',
    'Geneva International Airport',
    'Geneva',
    'Switzerland'
  ),
  (
    'SVO',
    'Sheremetyevo International Airport',
    'Moscow',
    'Russia'
  ),
  (
    'DME',
    'Domodedovo International Airport',
    'Moscow',
    'Russia'
  ),
  (
    'LED',
    'Pulkovo Airport',
    'Saint Petersburg',
    'Russia'
  ),
  (
    'VKO',
    'Vnukovo International Airport',
    'Moscow',
    'Russia'
  ),
  ('IST', 'Istanbul Airport', 'Istanbul', 'Turkey'),
  (
    'SAW',
    'Sabiha Gökçen International Airport',
    'Istanbul',
    'Turkey'
  ),
  (
    'EVN',
    'Zvartnots International Airport',
    'Yerevan',
    'Armenia'
  );
INSERT INTO booking (`ID`)
VALUES (1),
  (2),
  (3),
  (4),
  (5),
  (6),
  (7),
  (8),
  (9),
  (10),
  (11),
  (12),
  (13),
  (14),
  (15),
  (16),
  (17),
  (18),
  (19),
  (20),
  (21),
  (22),
  (23),
  (24),
  (25),
  (26),
  (27),
  (28),
  (29),
  (30),
  (31),
  (32),
  (33),
  (34),
  (35),
  (36),
  (37),
  (38),
  (39),
  (40),
  (41),
  (42),
  (43),
  (44),
  (45),
  (46),
  (47),
  (48),
  (49),
  (50),
  (51),
  (52),
  (53),
  (54),
  (55),
  (56),
  (57),
  (58),
  (59),
  (60),
  (61),
  (62),
  (63),
  (64),
  (65),
  (66),
  (67),
  (68),
  (69),
  (70),
  (71),
  (72),
  (73),
  (74),
  (75),
  (76),
  (77),
  (78),
  (79),
  (80),
  (81),
  (82),
  (83),
  (84),
  (85),
  (86),
  (87),
  (88),
  (89),
  (90),
  (91),
  (92),
  (93),
  (94),
  (95),
  (96),
  (97),
  (98),
  (99),
  (100);
INSERT INTO flightclass (`name`)
VALUES ('Economy'),
  ('Premium Economy'),
  ('Business'),
  ('First Class');
INSERT INTO passenger (`fist_name`, `last_name`)
VALUES ('John', 'Doe'),
  ('Jane', 'Smith'),
  ('Michael', 'Johnson'),
  ('Emily', 'Davis'),
  ('Chris', 'Brown'),
  ('Sarah', 'Wilson'),
  ('David', 'Taylor'),
  ('Emma', 'Anderson'),
  ('James', 'Thomas'),
  ('Olivia', 'Moore'),
  ('Daniel', 'Jackson'),
  ('Sophia', 'White'),
  ('Matthew', 'Harris'),
  ('Mia', 'Martin'),
  ('Andrew', 'Thompson'),
  ('Isabella', 'Garcia'),
  ('Ryan', 'Martinez'),
  ('Ava', 'Robinson'),
  ('Nicholas', 'Clark'),
  ('Lily', 'Rodriguez'),
  ('Ethan', 'Lewis'),
  ('Chloe', 'Lee'),
  ('Alexander', 'Walker'),
  ('Ella', 'Hall'),
  ('Joshua', 'Allen'),
  ('Grace', 'Young'),
  ('Jacob', 'Hernandez'),
  ('Samantha', 'King'),
  ('Liam', 'Wright'),
  ('Natalie', 'Lopez'),
  ('Benjamin', 'Hill'),
  ('Hannah', 'Scott'),
  ('Tyler', 'Green'),
  ('Zoe', 'Adams'),
  ('Justin', 'Baker'),
  ('Leah', 'Gonzalez'),
  ('Brandon', 'Nelson'),
  ('Audrey', 'Carter'),
  ('Logan', 'Mitchell'),
  ('Savannah', 'Perez'),
  ('Dylan', 'Roberts'),
  ('Layla', 'Turner'),
  ('Aaron', 'Phillips'),
  ('Sofia', 'Campbell'),
  ('Kevin', 'Parker'),
  ('Avery', 'Evans'),
  ('Zachary', 'Edwards'),
  ('Harper', 'Collins'),
  ('Isaac', 'Stewart'),
  ('Eleanor', 'Sanchez'),
  ('Nathan', 'Morris'),
  ('Victoria', 'Rogers'),
  ('Caleb', 'Reed'),
  ('Scarlett', 'Cook'),
  ('Jason', 'Morgan'),
  ('Bella', 'Bell'),
  ('Evan', 'Murphy'),
  ('Lillian', 'Bailey'),
  ('Connor', 'Rivera'),
  ('Penelope', 'Cooper'),
  ('Luke', 'Richardson'),
  ('Lucy', 'Cox'),
  ('Brayden', 'Howard'),
  ('Sophie', 'Ward'),
  ('Cameron', 'Torres'),
  ('Hazel', 'Peterson'),
  ('Hunter', 'Gray'),
  ('Riley', 'Ramirez'),
  ('Adam', 'James'),
  ('Alice', 'Watson'),
  ('Colton', 'Brooks'),
  ('Madison', 'Kelly'),
  ('Ian', 'Sanders'),
  ('Kaitlyn', 'Price'),
  ('Blake', 'Bennett'),
  ('Evelyn', 'Wood'),
  ('Jackson', 'Barnes'),
  ('Aurora', 'Ross'),
  ('Aiden', 'Henderson'),
  ('Stella', 'Coleman'),
  ('Christian', 'Jenkins'),
  ('Ellie', 'Perry'),
  ('Landon', 'Powell'),
  ('Maya', 'Long'),
  ('Gavin', 'Patterson'),
  ('Anna', 'Hughes'),
  ('Parker', 'Flores'),
  ('Brooklyn', 'Washington'),
  ('Cooper', 'Butler'),
  ('Luna', 'Simmons'),
  ('Eli', 'Foster'),
  ('Ruby', 'Gonzales'),
  ('Nolan', 'Bryant'),
  ('Aubrey', 'Alexander'),
  ('Carter', 'Russell'),
  ('Violet', 'Griffin'),
  ('Mason', 'Diaz'),
  ('Lydia', 'Hayes');
INSERT INTO flight (
    number,
    departureDateTime,
    arrivalDateTime,
    duration,
    distance,
    departureAirport,
    arrivalAirport,
    airlineID
  )
VALUES (
    'AA101',
    '2024-10-01',
    '2024-10-01',
    180,
    800,
    1,
    2,
    1
  ),
  (
    'DL202',
    '2024-10-02',
    '2024-10-02',
    240,
    1200,
    3,
    4,
    2
  ),
  (
    'UA303',
    '2024-10-03',
    '2024-10-03',
    210,
    950,
    5,
    6,
    3
  ),
  (
    'SW404',
    '2024-10-04',
    '2024-10-04',
    150,
    600,
    7,
    8,
    4
  ),
  (
    'BA505',
    '2024-10-05',
    '2024-10-05',
    300,
    1400,
    9,
    10,
    5
  ),
  (
    'LH606',
    '2024-10-06',
    '2024-10-06',
    180,
    850,
    11,
    12,
    6
  ),
  (
    'AA707',
    '2024-10-07',
    '2024-10-07',
    360,
    1600,
    13,
    14,
    1
  ),
  (
    'DL808',
    '2024-10-08',
    '2024-10-08',
    240,
    1000,
    15,
    16,
    2
  ),
  (
    'UA909',
    '2024-10-09',
    '2024-10-09',
    330,
    1500,
    17,
    18,
    3
  ),
  (
    'SW1010',
    '2024-10-10',
    '2024-10-10',
    180,
    700,
    19,
    20,
    4
  ),
  (
    'BA1111',
    '2024-10-11',
    '2024-10-11',
    270,
    1300,
    21,
    22,
    5
  ),
  (
    'LH1212',
    '2024-10-12',
    '2024-10-12',
    180,
    800,
    23,
    24,
    6
  ),
  (
    'AA1313',
    '2024-10-13',
    '2024-10-13',
    150,
    600,
    25,
    26,
    1
  ),
  (
    'DL1414',
    '2024-10-14',
    '2024-10-14',
    220,
    1000,
    27,
    28,
    2
  ),
  (
    'UA1515',
    '2024-10-15',
    '2024-10-15',
    330,
    1400,
    29,
    30,
    3
  ),
  (
    'SW1616',
    '2024-10-16',
    '2024-10-16',
    270,
    1100,
    31,
    32,
    4
  ),
  (
    'BA1717',
    '2024-10-17',
    '2024-10-17',
    360,
    1800,
    33,
    34,
    5
  ),
  (
    'LH1818',
    '2024-10-18',
    '2024-10-18',
    300,
    1500,
    35,
    36,
    6
  ),
  (
    'AA1919',
    '2024-10-19',
    '2024-10-19',
    180,
    900,
    37,
    38,
    1
  ),
  (
    'DL2020',
    '2024-10-20',
    '2024-10-20',
    250,
    1200,
    39,
    40,
    2
  ),
  (
    'UA2121',
    '2024-10-21',
    '2024-10-21',
    320,
    1450,
    1,
    3,
    3
  ),
  (
    'SW2222',
    '2024-10-22',
    '2024-10-22',
    170,
    750,
    4,
    6,
    4
  ),
  (
    'BA2323',
    '2024-10-23',
    '2024-10-23',
    280,
    1350,
    7,
    9,
    5
  ),
  (
    'LH2424',
    '2024-10-24',
    '2024-10-24',
    190,
    850,
    10,
    12,
    6
  ),
  (
    'AA2525',
    '2024-10-25',
    '2024-10-25',
    360,
    1650,
    13,
    15,
    1
  ),
  (
    'DL2626',
    '2024-10-26',
    '2024-10-26',
    240,
    1050,
    16,
    18,
    2
  ),
  (
    'UA2727',
    '2024-10-27',
    '2024-10-27',
    310,
    1420,
    19,
    21,
    3
  ),
  (
    'SW2828',
    '2024-10-28',
    '2024-10-28',
    150,
    680,
    22,
    24,
    4
  ),
  (
    'BA2929',
    '2024-10-29',
    '2024-10-29',
    330,
    1500,
    25,
    27,
    5
  ),
  (
    'LH3030',
    '2024-10-30',
    '2024-10-30',
    180,
    850,
    28,
    30,
    6
  ),
  (
    'AA3131',
    '2024-11-01',
    '2024-11-01',
    340,
    1550,
    31,
    33,
    1
  ),
  (
    'DL3232',
    '2024-11-02',
    '2024-11-02',
    250,
    1150,
    34,
    36,
    2
  ),
  (
    'UA3333',
    '2024-11-03',
    '2024-11-03',
    200,
    900,
    37,
    39,
    3
  ),
  (
    'SW3434',
    '2024-11-04',
    '2024-11-04',
    270,
    1200,
    40,
    1,
    4
  ),
  (
    'BA3535',
    '2024-11-05',
    '2024-11-05',
    310,
    1400,
    2,
    3,
    5
  ),
  (
    'LH3636',
    '2024-11-06',
    '2024-11-06',
    330,
    1550,
    4,
    5,
    6
  ),
  (
    'AA3737',
    '2024-11-07',
    '2024-11-07',
    280,
    1300,
    6,
    7,
    1
  ),
  (
    'DL3838',
    '2024-11-08',
    '2024-11-08',
    190,
    850,
    8,
    9,
    2
  ),
  (
    'UA3939',
    '2024-11-09',
    '2024-11-09',
    230,
    1100,
    10,
    11,
    3
  ),
  (
    'SW4040',
    '2024-11-10',
    '2024-11-10',
    160,
    750,
    12,
    13,
    4
  ),
  (
    'BA4141',
    '2024-11-11',
    '2024-11-11',
    350,
    1750,
    14,
    15,
    5
  ),
  (
    'LH4242',
    '2024-11-12',
    '2024-11-12',
    290,
    1400,
    16,
    17,
    6
  ),
  (
    'AA4343',
    '2024-11-13',
    '2024-11-13',
    180,
    850,
    18,
    19,
    1
  ),
  (
    'DL4444',
    '2024-11-14',
    '2024-11-14',
    250,
    1200,
    20,
    21,
    2
  ),
  (
    'UA4545',
    '2024-11-15',
    '2024-11-15',
    330,
    1500,
    22,
    23,
    3
  ),
  (
    'SW4646',
    '2024-11-16',
    '2024-11-16',
    160,
    720,
    24,
    25,
    4
  ),
  (
    'BA4747',
    '2024-11-17',
    '2024-11-17',
    310,
    1400,
    26,
    27,
    5
  ),
  (
    'LH4848',
    '2024-11-18',
    '2024-11-18',
    190,
    900,
    28,
    29,
    6
  ),
  (
    'AA4949',
    '2024-11-19',
    '2024-11-19',
    230,
    1050,
    30,
    31,
    1
  ),
  (
    'DL5050',
    '2024-11-20',
    '2024-11-20',
    270,
    1250,
    32,
    33,
    2
  ),
  (
    'UA5151',
    '2024-11-21',
    '2024-11-21',
    320,
    1450,
    34,
    35,
    3
  ),
  (
    'SW5252',
    '2024-11-22',
    '2024-11-22',
    180,
    800,
    36,
    37,
    4
  ),
  (
    'BA5353',
    '2024-11-23',
    '2024-11-23',
    280,
    1350,
    38,
    39,
    5
  ),
  (
    'AA5555',
    '2024-11-25',
    '2024-11-25',
    200,
    950,
    2,
    4,
    1
  ),
  (
    'DL5656',
    '2024-11-26',
    '2024-11-26',
    240,
    1100,
    5,
    7,
    2
  ),
  (
    'UA5757',
    '2024-11-27',
    '2024-11-27',
    320,
    1400,
    8,
    10,
    3
  ),
  (
    'SW5858',
    '2024-11-28',
    '2024-11-28',
    180,
    700,
    11,
    13,
    4
  ),
  (
    'BA5959',
    '2024-11-29',
    '2024-11-29',
    350,
    1600,
    14,
    16,
    5
  ),
  (
    'LH6060',
    '2024-11-30',
    '2024-11-30',
    270,
    1300,
    17,
    19,
    6
  ),
  (
    'AA6161',
    '2024-12-01',
    '2024-12-01',
    190,
    850,
    20,
    22,
    1
  ),
  (
    'DL6262',
    '2024-12-02',
    '2024-12-02',
    220,
    1000,
    23,
    25,
    2
  ),
  (
    'UA6363',
    '2024-12-03',
    '2024-12-03',
    310,
    1450,
    26,
    28,
    3
  ),
  (
    'SW6464',
    '2024-12-04',
    '2024-12-04',
    170,
    680,
    29,
    31,
    4
  ),
  (
    'BA6565',
    '2024-12-05',
    '2024-12-05',
    330,
    1500,
    32,
    34,
    5
  ),
  (
    'LH6666',
    '2024-12-06',
    '2024-12-06',
    200,
    920,
    35,
    37,
    6
  ),
  (
    'AA6767',
    '2024-12-07',
    '2024-12-07',
    240,
    1200,
    38,
    40,
    1
  ),
  (
    'DL6868',
    '2024-12-08',
    '2024-12-08',
    180,
    750,
    1,
    3,
    2
  ),
  (
    'UA6969',
    '2024-12-09',
    '2024-12-09',
    320,
    1550,
    4,
    6,
    3
  ),
  (
    'SW7070',
    '2024-12-10',
    '2024-12-10',
    230,
    1050,
    7,
    9,
    4
  ),
  (
    'BA7171',
    '2024-12-11',
    '2024-12-11',
    300,
    1400,
    10,
    12,
    5
  ),
  (
    'LH7272',
    '2024-12-12',
    '2024-12-12',
    250,
    1300,
    13,
    15,
    6
  ),
  (
    'AA7373',
    '2024-12-13',
    '2024-12-13',
    270,
    1450,
    16,
    18,
    1
  ),
  (
    'DL7474',
    '2024-12-14',
    '2024-12-14',
    220,
    1200,
    19,
    21,
    2
  ),
  (
    'UA7575',
    '2024-12-15',
    '2024-12-15',
    300,
    1500,
    22,
    24,
    3
  ),
  (
    'SW7676',
    '2024-12-16',
    '2024-12-16',
    160,
    720,
    25,
    27,
    4
  ),
  (
    'BA7777',
    '2024-12-17',
    '2024-12-17',
    330,
    1600,
    28,
    30,
    5
  ),
  (
    'LH7878',
    '2024-12-18',
    '2024-12-18',
    190,
    850,
    31,
    33,
    6
  ),
  (
    'AA7979',
    '2024-12-19',
    '2024-12-19',
    250,
    1100,
    34,
    36,
    1
  ),
  (
    'DL8080',
    '2024-12-20',
    '2024-12-20',
    200,
    950,
    37,
    39,
    2
  ),
  (
    'UA8181',
    '2024-12-21',
    '2024-12-21',
    330,
    1650,
    40,
    1,
    3
  ),
  (
    'SW8282',
    '2024-12-22',
    '2024-12-22',
    190,
    800,
    2,
    5,
    4
  ),
  (
    'BA8383',
    '2024-12-23',
    '2024-12-23',
    310,
    1450,
    6,
    8,
    5
  ),
  (
    'LH8484',
    '2024-12-24',
    '2024-12-24',
    270,
    1350,
    9,
    11,
    6
  ),
  (
    'AA8585',
    '2024-12-25',
    '2024-12-25',
    220,
    1050,
    12,
    14,
    1
  ),
  (
    'LH5454',
    '2024-11-24',
    '2024-11-24',
    190,
    850,
    40,
    1,
    6
  );
INSERT INTO ticket (
    `ticketNumber`,
    `Price`,
    `ConfirmationNumber`,
    `passengerID`,
    `flightID`,
    `flightClassID`,
    `booking_ID`
  )
VALUES ('TK1001', 299.99, 'CONF12345A', 1, 1, 1, 1),
  ('TK1002', 299.99, 'CONF12345A', 2, 1, 1, 1),
  -- Same booking
  ('TK1003', 299.99, 'CONF12345A', 3, 1, 1, 1),
  -- Same booking
  ('TK1004', 299.99, 'CONF12345A', 4, 1, 1, 1),
  -- Same booking
  ('TK1005', 299.99, 'CONF12345A', 5, 1, 1, 1),
  -- Same booking
  ('TK1006', 399.99, 'CONF12345B', 6, 2, 1, 2),
  ('TK1007', 450.50, 'CONF12345C', 7, 3, 2, 3),
  ('TK1008', 150.75, 'CONF12345D', 8, 4, 2, 4),
  ('TK1009', 320.25, 'CONF12345E', 9, 5, 3, 5),
  ('TK1010', 500.00, 'CONF12345F', 10, 6, 3, 5),
  -- Same booking
  ('TK1011', 275.30, 'CONF12345G', 11, 6, 3, 5),
  -- Same booking
  ('TK1012', 185.60, 'CONF12345H', 12, 7, 2, 6),
  ('TK1013', 415.10, 'CONF12345I', 13, 8, 1, 7),
  ('TK1014', 375.00, 'CONF12345J', 14, 9, 2, 8),
  ('TK1015', 299.99, 'CONF12345K', 15, 10, 2, 9),
  ('TK1016', 240.00, 'CONF12345L', 16, 11, 3, 10),
  ('TK1017', 600.00, 'CONF12345M', 17, 12, 3, 10),
  -- Same booking
  ('TK1018', 220.75, 'CONF12345N', 18, 13, 1, 11),
  ('TK1019', 349.95, 'CONF12345O', 19, 14, 1, 12),
  ('TK1020', 490.00, 'CONF12345P', 20, 15, 2, 13),
  ('TK1021', 155.20, 'CONF12345Q', 21, 16, 1, 14),
  ('TK1022', 350.00, 'CONF12345R', 22, 17, 2, 15),
  ('TK1023', 425.80, 'CONF12345S', 23, 18, 3, 16),
  ('TK1024', 575.00, 'CONF12345T', 24, 19, 3, 17),
  ('TK1025', 399.99, 'CONF12345U', 25, 20, 1, 18),
  ('TK1026', 240.00, 'CONF12345V', 26, 21, 1, 19),
  ('TK1027', 460.50, 'CONF12345W', 27, 22, 2, 20),
  ('TK1028', 190.75, 'CONF12345X', 28, 23, 2, 21),
  ('TK1029', 310.30, 'CONF12345Y', 29, 24, 3, 22),
  ('TK1030', 299.00, 'CONF12345Z', 30, 25, 3, 22),
  -- Same booking
  ('TK1031', 575.00, 'CONF12345AA', 31, 26, 3, 23),
  ('TK1032', 399.99, 'CONF12345AB', 32, 27, 1, 24),
  ('TK1033', 240.00, 'CONF12345AC', 33, 28, 1, 25),
  ('TK1034', 460.50, 'CONF12345AD', 34, 29, 2, 26),
  ('TK1035', 160.60, 'CONF12345AE', 35, 30, 2, 27),
  ('TK1036', 310.50, 'CONF12345AF', 36, 31, 3, 28),
  ('TK1037', 325.80, 'CONF12345AG', 37, 32, 1, 29),
  ('TK1038', 555.00, 'CONF12345AH', 38, 33, 1, 30),
  ('TK1039', 390.40, 'CONF12345AI', 39, 34, 2, 31),
  ('TK1040', 280.25, 'CONF12345AJ', 40, 35, 3, 32),
  ('TK1041', 470.00, 'CONF12345AK', 41, 36, 3, 33),
  ('TK1042', 290.00, 'CONF12345AL', 42, 37, 1, 34),
  ('TK1043', 300.50, 'CONF12345AM', 43, 38, 1, 35),
  ('TK1044', 620.75, 'CONF12345AN', 44, 39, 2, 36),
  ('TK1045', 230.10, 'CONF12345AO', 45, 40, 2, 37),
  ('TK1046', 405.50, 'CONF12345AP', 46, 41, 3, 38),
  ('TK1047', 540.00, 'CONF12345AQ', 47, 42, 3, 39),
  -- Same booking
  ('TK1048', 175.30, 'CONF12345AR', 48, 43, 1, 40),
  ('TK1049', 315.75, 'CONF12345AS', 49, 44, 1, 41),
  ('TK1050', 400.00, 'CONF12345AT', 50, 45, 2, 42),
  ('TK1051', 460.10, 'CONF12345AU', 51, 46, 2, 43),
  ('TK1052', 275.50, 'CONF12345AV', 52, 47, 3, 44),
  ('TK1053', 650.00, 'CONF12345AW', 53, 48, 3, 44),
  -- Same booking
  ('TK1054', 280.25, 'CONF12345AX', 54, 49, 1, 45),
  ('TK1055', 355.00, 'CONF12345AY', 55, 50, 1, 46),
  ('TK1056', 205.75, 'CONF12345AZ', 56, 51, 2, 47),
  ('TK1057', 490.80, 'CONF12345BA', 57, 52, 2, 48),
  ('TK1058', 375.00, 'CONF12345BB', 58, 53, 3, 49),
  ('TK1059', 465.00, 'CONF12345BC', 59, 54, 3, 49),
  -- Same booking
  ('TK1060', 210.10, 'CONF12345BD', 60, 55, 1, 50),
  ('TK1061', 330.00, 'CONF12345BE', 61, 56, 1, 51),
  ('TK1062', 620.50, 'CONF12345BF', 62, 57, 2, 52),
  ('TK1063', 375.90, 'CONF12345BG', 63, 58, 2, 53),
  ('TK1064', 540.25, 'CONF12345BH', 64, 59, 3, 54),
  ('TK1065', 290.00, 'CONF12345BI', 65, 60, 3, 54),
  -- Same booking
  ('TK1066', 450.00, 'CONF12345BJ', 66, 61, 1, 55),
  ('TK1067', 235.20, 'CONF12345BK', 67, 62, 1, 56),
  ('TK1068', 330.50, 'CONF12345BL', 68, 63, 2, 57),
  ('TK1069', 420.30, 'CONF12345BM', 69, 64, 3, 58),
  ('TK1070', 295.75, 'CONF12345BN', 70, 65, 3, 59),
  -- Same booking
  ('TK1071', 385.00, 'CONF12345BP', 71, 66, 1, 60),
  ('TK1072', 460.50, 'CONF12345BQ', 72, 67, 1, 61),
  ('TK1073', 380.00, 'CONF12345BR', 73, 68, 2, 62),
  ('TK1074', 245.75, 'CONF12345BS', 74, 69, 2, 63),
  ('TK1075', 310.50, 'CONF12345BT', 75, 70, 3, 64),
  ('TK1076', 205.00, 'CONF12345BU', 76, 71, 3, 65),
  -- Same booking
  ('TK1077', 490.50, 'CONF12345BV', 77, 72, 1, 66),
  ('TK1078', 670.00, 'CONF12345BW', 78, 73, 1, 67),
  ('TK1079', 400.75, 'CONF12345BX', 79, 74, 2, 68),
  ('TK1080', 300.25, 'CONF12345BY', 80, 75, 2, 69);