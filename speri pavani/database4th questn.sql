
part one

mysql> use us_states;
Database changed
mysql>

mysql> use mysql;
Database changed
mysql> show tables;
+---------------------------+
| Tables_in_mysql           |
+---------------------------+
| columns_priv              |
| db                        |
| event                     |
| func                      |
| general_log               |
| help_category             |
| help_keyword              |
| help_relation             |
| help_topic                |
| innodb_index_stats        |
| innodb_table_stats        |
| ndb_binlog_index          |
| plugin                    |
| proc                      |
| procs_priv                |
| proxies_priv              |
| servers                   |
| slave_master_info         |
| slave_relay_log_info      |
| slave_worker_info         |
| slow_log                  |
| tables_priv               |
| time_zone                 |
| time_zone_leap_second     |
| time_zone_name            |
| time_zone_transition      |
| time_zone_transition_type |
| user                      |
+---------------------------+
28 rows in set (0.05 sec)

mysql> desc func;
+-------+------------------------------+------+-----+---------+-------+
| Field | Type                         | Null | Key | Default | Extra |
+-------+------------------------------+------+-----+---------+-------+
| name  | char(64)                     | NO   | PRI |         |       |
| ret   | tinyint(1)                   | NO   |     | 0       |       |
| dl    | char(128)                    | NO   |     |         |       |
| type  | enum('function','aggregate') | NO   |     | NULL    |       |
+-------+------------------------------+------+-----+---------+-------+
4 rows in set (0.17 sec)
variables are stored in this table.



mysql> use us_states;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_us_states |
+---------------------+
| states              |
+---------------------+
1 row in set (0.01 sec)

mysql> desc states;
+-------------------+--------------------+------+-----+---------+---------------
-+
| Field             | Type               | Null | Key | Default | Extra
 |
+-------------------+--------------------+------+-----+---------+---------------
-+
| state_name        | varchar(15)        | YES  |     | NULL    |
 |
| state_id          | int(11)            | NO   | PRI | NULL    | auto_increment
 |
| population        | int(10)            | YES  |     | NULL    |
 |
| students_educated | int(10)            | YES  |     | NULL    |
 |
| litrecy_rate      | enum('high','low') | YES  |     | NULL    |
 |
+-------------------+--------------------+------+-----+---------+---------------
-+
5 rows in set (0.09 sec)


output the states in descending order of population
mysql> select * from states order by population desc;
+----------------+----------+------------+-------------------+--------------+
| state_name     | state_id | population | students_educated | litrecy_rate |
+----------------+----------+------------+-------------------+--------------+
| california     |       48 |   38332521 |              6070 | high         |
| Oklahoma       |       27 |   38148201 |               642 | high         |
| Texas          |       34 |   26059203 |              4673 | high         |
| New York       |       23 |   19570261 |              2765 | high         |
| Illinois       |        4 |   12875255 |              2113 | high         |
| Pennsylvania   |       29 |   12763536 |              1788 | high         |
| Ohio           |       26 |   11544225 |              1822 | high         |
| georgia        |       45 |    9992167 |              1650 | high         |
| Michigan       |       13 |    9883360 |              1666 | high         |
| North Carolina |       24 |    9752073 |              1458 | high         |
+----------------+----------+------------+-------------------+--------------+
10 rows in set (0.00 sec)


part 2

mysql> select * from states  order by population desc;
+-----------------+----------+------------+-------------------+--------------+
| state_name      | state_id | population | students_educated | litrecy_rate |
+-----------------+----------+------------+-------------------+--------------+
| california      |       48 |   38332521 |              6070 | high         |
| Oklahoma        |       27 |   38148201 |               642 | high         |
| Texas           |       34 |   26059203 |              4673 | high         |
| New York        |       23 |   19570261 |              2765 | high         |
| Illinois        |        4 |   12875255 |              2113 | high         |
| Pennsylvania    |       29 |   12763536 |              1788 | high         |
| Ohio            |       26 |   11544225 |              1822 | high         |
| georgia         |       45 |    9992167 |              1650 | high         |
| Michigan        |       13 |    9883360 |              1666 | high         |
| North Carolina  |       24 |    9752073 |              1458 | high         |
| New Jersey      |       21 |    8864590 |              1380 | high         |
| Virginia        |       37 |    8185867 |              1231 | high         |
| Washington      |       38 |    6897012 |              1030 | high         |
| Massachusetts   |       12 |    6646144 |               963 | high         |
| arizona         |       47 |    6626624 |              1087 | high         |
| Indiana         |        5 |    6537334 |              1046 | high         |
| Tennessee       |       33 |    6456243 |               964 | high         |
| Missouri        |       16 |    6021988 |               917 | high         |
| Maryland        |       11 |    5884563 |               846 | high         |
| Wisconsin       |       40 |    5726398 |               874 | high         |
| Minnesota       |       14 |    5379139 |               838 | high         |
| colarado        |       49 |    5268367 |               803 | high         |
| alabama         |       42 |    4833722 |               744 | low          |
| South Carolina  |       31 |    4723723 |               712 | high         |
| Louisiana       |        9 |    4601893 |               681 | high         |
| Kentucky        |        8 |    4380415 |               666 | high         |
| Oregon          |       28 |    3899353 |               559 | high         |
| connecticut     |       44 |    3596080 |               568 | high         |
| connecticut     |       50 |    3596080 |               568 | high         |
| Iowa            |        6 |    3074186 |               482 | low          |
| Mississippi     |       15 |    2984926 |               494 | low          |
| Kansas          |        7 |    2885905 |               468 | low          |
| Utah            |       35 |    2855287 |               576 | high         |
| Nevada          |       19 |    2758931 |               429 | low          |
| New Mexico      |       22 |    2085538 |               328 | low          |
| Nebraska        |       18 |    1855525 |               291 | low          |
| West Virginia   |       39 |    1855413 |               283 | low          |
| Idaho           |        3 |    1595728 |               272 | low          |
| Maine           |       10 |    1329192 |               191 | low          |
| New Hampshire   |       20 |    1320718 |               202 | low          |
| Rhode Island    |       30 |    1050292 |               146 | low          |
| Montana         |       17 |    1005141 |               143 | low          |
| delaware        |       43 |     935749 |               123 | low          |
| South Dakota    |       32 |     833354 |               120 | low          |
| alaska          |        1 |     735132 |               131 | low          |
| North Dakota    |       25 |     699628 |               143 | low          |
| districtcoumbia |       46 |     646446 |                78 | low          |
| Vermont         |       36 |     626011 |                98 | low          |
| Wyoming         |       41 |     576412 |                86 | high         |
| Hawaii          |        2 |     139213 |               180 | low          |
+-----------------+----------+------------+-------------------+--------------+
50 rows in set (0.00 sec)


mysql> select max(population), max(students_educated);
+-----------------+------------------------+
| max(population) | max(students_educated) |
+-----------------+------------------------+
|        38332521 |                   6070 |
+-----------------+------------------------+
1 row in set (0.00 sec)




obtain customername orderdata from orders using join

1) select customerName, orderData from orders join customers on customers.customersNumber=orders.customernumber;
| Mini Gifts Distributors Ltd.       | 2005-01-23 |
| Mini Gifts Distributors Ltd.       | 2005-02-17 |
| Mini Gifts Distributors Ltd.       | 2005-02-28 |
| Mini Gifts Distributors Ltd.       | 2005-03-04 |
| Mini Gifts Distributors Ltd.       | 2005-03-23 |
| Mini Gifts Distributors Ltd.       | 2005-05-29 |
| Blauer See Auto, Co.               | 2003-01-09 |
| Blauer See Auto, Co.               | 2004-03-15 |
| Blauer See Auto, Co.               | 2003-10-04 |
| Blauer See Auto, Co.               | 2004-11-05 |
| Mini Wheels Co.                    | 2003-03-25 |
| Mini Wheels Co.                    | 2003-12-01 |
| Mini Wheels Co.                    | 2004-11-18 |
| Land of Toys Inc.                  | 2003-02-24 |
| Land of Toys Inc.                  | 2004-05-07 |
| Land of Toys Inc.                  | 2004-09-08 |
| Land of Toys Inc.                  | 2004-11-15 |
| Euro+ Shopping Channel             | 2003-01-31 |
| Euro+ Shopping Channel             | 2003-06-06 |
| Euro+ Shopping Channel             | 2003-06-27 |
| Euro+ Shopping Channel             | 2003-09-28 |
| Euro+ Shopping Channel             | 2003-10-08 |
| Euro+ Shopping Channel             | 2003-11-19 |
| Euro+ Shopping Channel             | 2003-12-02 |
| Euro+ Shopping Channel             | 2003-12-03 |
| Euro+ Shopping Channel             | 2004-01-16 |
| Euro+ Shopping Channel             | 2004-04-29 |
| Euro+ Shopping Channel             | 2004-05-05 |
| Euro+ Shopping Channel             | 2004-06-24 |
| Euro+ Shopping Channel             | 2004-08-09 |
| Euro+ Shopping Channel             | 2004-10-16 |
| Euro+ Shopping Channel             | 2004-12-02 |
| Euro+ Shopping Channel             | 2004-12-07 |
| Euro+ Shopping Channel             | 2004-12-10 |
| Euro+ Shopping Channel             | 2005-02-10 |
| Euro+ Shopping Channel             | 2005-02-10 |
| Euro+ Shopping Channel             | 2005-02-16 |
| Euro+ Shopping Channel             | 2005-02-22 |
| Euro+ Shopping Channel             | 2005-03-01 |
| Euro+ Shopping Channel             | 2005-03-15 |
| Euro+ Shopping Channel             | 2005-05-03 |
| Euro+ Shopping Channel             | 2005-05-13 |
| Euro+ Shopping Channel             | 2005-05-31 |
| Volvo Model Replicas, Co           | 2003-03-24 |
| Volvo Model Replicas, Co           | 2004-11-03 |
| Volvo Model Replicas, Co           | 2004-11-09 |
| Volvo Model Replicas, Co           | 2004-11-19 |
| Danish Wholesale Imports           | 2003-02-11 |
| Danish Wholesale Imports           | 2004-04-09 |
| Danish Wholesale Imports           | 2004-06-08 |
| Danish Wholesale Imports           | 2004-11-10 |
| Danish Wholesale Imports           | 2005-04-15 |
| Saveley & Henriot, Co.             | 2003-11-25 |
| Saveley & Henriot, Co.             | 2004-01-02 |
| Saveley & Henriot, Co.             | 2004-03-02 |
| Dragon Souveniers, Ltd.            | 2003-04-16 |
| Dragon Souveniers, Ltd.            | 2003-09-19 |
| Dragon Souveniers, Ltd.            | 2003-10-22 |
| Dragon Souveniers, Ltd.            | 2004-08-04 |
| Dragon Souveniers, Ltd.            | 2005-03-02 |
| Muscle Machine Inc                 | 2003-06-03 |
| Muscle Machine Inc                 | 2003-12-02 |
| Muscle Machine Inc                 | 2004-07-07 |
| Muscle Machine Inc                 | 2004-12-01 |
| Diecast Classics Inc.              | 2004-07-20 |
| Diecast Classics Inc.              | 2004-08-19 |
| Diecast Classics Inc.              | 2004-11-02 |
| Diecast Classics Inc.              | 2005-05-30 |
| Technics Stores Inc.               | 2003-07-24 |
| Technics Stores Inc.               | 2003-10-28 |
| Technics Stores Inc.               | 2004-11-02 |
| Technics Stores Inc.               | 2005-01-05 |
| Handji Gifts& Co                   | 2004-02-04 |
| Handji Gifts& Co                   | 2004-06-15 |
| Handji Gifts& Co                   | 2004-09-01 |
| Handji Gifts& Co                   | 2005-04-23 |
| Herkku Gifts                       | 2003-11-12 |
| Herkku Gifts                       | 2003-11-18 |
| Herkku Gifts                       | 2004-09-03 |
| Daedalus Designs Imports           | 2003-11-11 |
| Daedalus Designs Imports           | 2004-02-21 |
| La Corne D'abondance, Co.          | 2003-04-01 |
| La Corne D'abondance, Co.          | 2004-08-28 |
| La Corne D'abondance, Co.          | 2004-11-20 |
| Cambridge Collectables Co.         | 2004-03-10 |
| Cambridge Collectables Co.         | 2004-05-08 |
| Gift Depot Inc.                    | 2003-11-05 |
| Gift Depot Inc.                    | 2004-06-28 |
| Gift Depot Inc.                    | 2005-05-05 |
| Osaka Souveniers Co.               | 2004-01-12 |
| Osaka Souveniers Co.               | 2004-04-13 |
| Vitachrome Inc.                    | 2003-01-10 |
| Vitachrome Inc.                    | 2004-04-05 |
| Vitachrome Inc.                    | 2004-11-05 |
| Toys of Finland, Co.               | 2003-10-06 |
| Toys of Finland, Co.               | 2004-09-30 |
| Toys of Finland, Co.               | 2005-02-09 |
| AV Stores, Co.                     | 2003-03-18 |
| AV Stores, Co.                     | 2004-10-14 |
| AV Stores, Co.                     | 2004-11-17 |
| Clover Collections, Co.            | 2004-02-12 |
| Clover Collections, Co.            | 2004-09-16 |
| Auto-Moto Classics Inc.            | 2003-06-16 |
| Auto-Moto Classics Inc.            | 2004-09-07 |
| Auto-Moto Classics Inc.            | 2004-12-03 |
| UK Collectables, Ltd.              | 2004-06-01 |
| UK Collectables, Ltd.              | 2003-10-06 |
| UK Collectables, Ltd.              | 2005-04-08 |
| Canadian Gift Exchange Network     | 2003-12-05 |
| Canadian Gift Exchange Network     | 2004-10-22 |
| Online Mini Collectables           | 2004-08-02 |
| Online Mini Collectables           | 2004-09-10 |
| Toys4GrownUps.com                  | 2003-08-25 |
| Toys4GrownUps.com                  | 2003-11-18 |
| Toys4GrownUps.com                  | 2005-01-12 |
| Mini Caravy                        | 2004-04-13 |
| Mini Caravy                        | 2004-06-04 |
| Mini Caravy                        | 2005-04-14 |
| King Kong Collectables, Co.        | 2003-11-15 |
| King Kong Collectables, Co.        | 2003-12-01 |
| Enaco Distributors                 | 2003-04-21 |
| Enaco Distributors                 | 2003-11-26 |
| Enaco Distributors                 | 2004-11-24 |
| Boards & Toys Co.                  | 2003-10-02 |
| Boards & Toys Co.                  | 2005-02-08 |
| Heintze Collectables               | 2003-10-17 |
| Heintze Collectables               | 2004-10-22 |
| Québec Home Shopping Network       | 2003-11-05 |
| Québec Home Shopping Network       | 2004-06-17 |
| Québec Home Shopping Network       | 2005-05-01 |
| Collectable Mini Designs Co.       | 2004-02-19 |
| Collectable Mini Designs Co.       | 2004-02-26 |
| giftsbymail.co.uk                  | 2004-03-20 |
| giftsbymail.co.uk                  | 2004-11-01 |
| Alpha Cognac                       | 2003-07-04 |
| Alpha Cognac                       | 2003-11-08 |
| Alpha Cognac                       | 2005-03-28 |
| Amica Models & Co.                 | 2004-08-17 |
| Amica Models & Co.                 | 2004-09-09 |
| Lyon Souveniers                    | 2003-07-01 |
| Lyon Souveniers                    | 2004-12-09 |
| Lyon Souveniers                    | 2005-03-17 |
| Auto Associés & Cie.               | 2004-02-02 |
| Auto Associés & Cie.               | 2004-10-11 |
| Toms Spezialitäten, Ltd            | 2003-11-20 |
| Toms Spezialitäten, Ltd            | 2004-10-16 |
| Royal Canadian Collectables, Ltd.  | 2004-04-02 |
| Royal Canadian Collectables, Ltd.  | 2004-08-20 |
| Anna's Decorations, Ltd            | 2003-09-11 |
| Anna's Decorations, Ltd            | 2003-11-04 |
| Anna's Decorations, Ltd            | 2005-01-20 |
| Anna's Decorations, Ltd            | 2005-03-09 |
| Rovelli Gifts                      | 2003-02-17 |
| Rovelli Gifts                      | 2003-11-05 |
| Rovelli Gifts                      | 2004-11-12 |
| Souveniers And Things Co.          | 2003-07-16 |
| Souveniers And Things Co.          | 2004-07-19 |
| Souveniers And Things Co.          | 2004-12-17 |
| Souveniers And Things Co.          | 2005-05-29 |
| Marta's Replicas Co.               | 2004-08-27 |
| Marta's Replicas Co.               | 2004-10-13 |
| Vida Sport, Ltd                    | 2004-02-22 |
| Vida Sport, Ltd                    | 2004-08-30 |
| Norway Gifts By Mail, Co.          | 2004-08-21 |
| Norway Gifts By Mail, Co.          | 2003-10-05 |
| Oulu Toy Supplies, Inc.            | 2003-09-21 |
| Oulu Toy Supplies, Inc.            | 2004-04-12 |
| Oulu Toy Supplies, Inc.            | 2005-01-31 |
| Petit Auto                         | 2004-02-18 |
| Petit Auto                         | 2004-07-21 |
| Petit Auto                         | 2005-05-30 |
| Mini Classics                      | 2003-11-25 |
| Mini Classics                      | 2004-10-15 |
| Mini Creations Ltd.                | 2003-08-10 |
| Mini Creations Ltd.                | 2003-11-14 |
| Mini Creations Ltd.                | 2005-01-07 |
| Corporate Gift Ideas Co.           | 2003-10-10 |
| Corporate Gift Ideas Co.           | 2003-10-18 |
| Corporate Gift Ideas Co.           | 2005-02-17 |
| Corporate Gift Ideas Co.           | 2005-02-23 |
| Down Under Souveniers, Inc         | 2003-06-25 |
| Down Under Souveniers, Inc         | 2004-06-03 |
| Down Under Souveniers, Inc         | 2004-12-04 |
| Down Under Souveniers, Inc         | 2005-03-11 |
| Down Under Souveniers, Inc         | 2005-04-08 |
| Stylish Desk Decors, Co.           | 2003-06-12 |
| Stylish Desk Decors, Co.           | 2003-11-06 |
| Stylish Desk Decors, Co.           | 2004-12-03 |
| Tekni Collectables Inc.            | 2004-03-29 |
| Tekni Collectables Inc.            | 2004-05-18 |
| Tekni Collectables Inc.            | 2005-04-03 |
| Australian Gift Network, Co        | 2003-09-25 |
| Australian Gift Network, Co        | 2003-11-06 |
| Australian Gift Network, Co        | 2005-02-02 |
| Suominen Souveniers                | 2003-08-01 |
| Suominen Souveniers                | 2004-05-05 |
| Suominen Souveniers                | 2005-01-06 |
| Classic Gift Ideas, Inc            | 2003-11-13 |
| Classic Gift Ideas, Inc            | 2004-10-14 |
| CAF Imports                        | 2003-11-07 |
| CAF Imports                        | 2004-03-19 |
| Men 'R' US Retailers, Ltd.         | 2003-10-11 |
| Men 'R' US Retailers, Ltd.         | 2004-01-09 |
| Marseille Mini Autos               | 2003-05-08 |
| Marseille Mini Autos               | 2004-11-25 |
| Marseille Mini Autos               | 2005-01-06 |
| Reims Collectables                 | 2003-05-07 |
| Reims Collectables                 | 2003-07-10 |
| Reims Collectables                 | 2004-11-24 |
| Reims Collectables                 | 2004-12-15 |
| Reims Collectables                 | 2005-03-30 |
| GiftsForHim.com                    | 2003-12-02 |
| GiftsForHim.com                    | 2004-06-16 |
| GiftsForHim.com                    | 2005-04-29 |
| Gifts4AllAges.com                  | 2004-06-30 |
| Gifts4AllAges.com                  | 2004-09-10 |
| Gifts4AllAges.com                  | 2005-05-06 |
| Online Diecast Creations Co.       | 2003-01-06 |
| Online Diecast Creations Co.       | 2003-11-20 |
| Online Diecast Creations Co.       | 2004-11-04 |
| Collectables For Less Inc.         | 2003-09-05 |
| Collectables For Less Inc.         | 2004-07-21 |
| Collectables For Less Inc.         | 2005-01-20 |
| Royale Belge                       | 2003-04-11 |
| Royale Belge                       | 2003-08-13 |
| Royale Belge                       | 2004-11-22 |
| Royale Belge                       | 2005-01-10 |
| Salzburg Collectables              | 2003-04-28 |
| Salzburg Collectables              | 2004-07-16 |
| Salzburg Collectables              | 2004-11-24 |
| Salzburg Collectables              | 2005-05-17 |
| Cruz & Sons Co.                    | 2003-03-03 |
| Cruz & Sons Co.                    | 2003-11-27 |
| Cruz & Sons Co.                    | 2004-11-16 |
| L'ordine Souveniers                | 2003-11-06 |
| L'ordine Souveniers                | 2004-07-06 |
| L'ordine Souveniers                | 2005-05-10 |
| Tokyo Collectables, Ltd            | 2004-06-15 |
| Tokyo Collectables, Ltd            | 2004-11-23 |
| Tokyo Collectables, Ltd            | 2005-01-26 |
| Tokyo Collectables, Ltd            | 2005-04-22 |
| Auto Canal+ Petit                  | 2004-01-15 |
| Auto Canal+ Petit                  | 2004-05-26 |
| Auto Canal+ Petit                  | 2005-04-07 |
| Extreme Desk Decorations, Ltd      | 2004-03-30 |
| Extreme Desk Decorations, Ltd      | 2004-07-12 |
| Extreme Desk Decorations, Ltd      | 2005-05-16 |
| Bavarian Collectables Imports, Co. | 2004-09-15 |
| Classic Legends Inc.               | 2003-04-04 |
| Classic Legends Inc.               | 2003-10-20 |
| Classic Legends Inc.               | 2004-11-21 |
| Gift Ideas Corp.                   | 2003-06-16 |
| Gift Ideas Corp.                   | 2003-09-03 |
| Gift Ideas Corp.                   | 2004-12-04 |
| Scandinavian Gift Ideas            | 2003-10-23 |
| Scandinavian Gift Ideas            | 2004-09-08 |
| Scandinavian Gift Ideas            | 2005-03-03 |
| The Sharp Gifts Warehouse          | 2004-05-11 |
| The Sharp Gifts Warehouse          | 2004-06-14 |
| The Sharp Gifts Warehouse          | 2005-04-01 |
| The Sharp Gifts Warehouse          | 2005-04-22 |
| Mini Auto Werke                    | 2003-10-21 |
| Mini Auto Werke                    | 2003-11-04 |
| Mini Auto Werke                    | 2005-03-10 |
| Super Scale Inc.                   | 2003-11-26 |
| Super Scale Inc.                   | 2004-05-04 |
| Microscale Inc.                    | 2004-04-20 |
| Microscale Inc.                    | 2004-11-03 |
| Corrida Auto Replicas, Ltd         | 2003-05-28 |
| Corrida Auto Replicas, Ltd         | 2004-01-26 |
| Corrida Auto Replicas, Ltd         | 2004-11-01 |
| FunGiftIdeas.com                   | 2003-10-21 |
| FunGiftIdeas.com                   | 2004-11-04 |
| FunGiftIdeas.com                   | 2005-03-03 |
| Australian Collectables, Ltd       | 2003-11-21 |
| Australian Collectables, Ltd       | 2004-07-02 |
| Australian Collectables, Ltd       | 2005-05-09 |
| Frau da Collezione                 | 2003-10-09 |
| Frau da Collezione                 | 2004-02-09 |
| West Coast Collectables Co.        | 2003-12-01 |
| West Coast Collectables Co.        | 2004-01-29 |
| Iberia Gift Imports, Corp.         | 2003-11-14 |
| Iberia Gift Imports, Corp.         | 2004-10-06 |
| Motor Mint Distributors Inc.       | 2003-03-10 |
| Motor Mint Distributors Inc.       | 2004-04-03 |
| Motor Mint Distributors Inc.       | 2004-11-17 |
| Signal Collectibles Ltd.           | 2003-09-12 |
| Signal Collectibles Ltd.           | 2004-02-10 |
| Double Decker Gift Stores, Ltd     | 2003-11-14 |
| Double Decker Gift Stores, Ltd     | 2004-01-22 |
| Diecast Collectables               | 2003-12-09 |
| Diecast Collectables               | 2004-04-26 |
| Kelly's Gift Shop                  | 2003-07-07 |
| Kelly's Gift Shop                  | 2003-11-11 |
| Kelly's Gift Shop                  | 2004-12-16 |
| Kelly's Gift Shop                  | 2005-04-01 |
+------------------------------------+------------+
326 rows in set (0.03 sec)

obtain productname, quantityordered, shippeddate using and
2)select productName, quantityOrdered, shippeddate from products, orders, orderdetails where orders.orderNumber=orderdetails.orderNumber and Orderdetails.productcode=products.productcode
| HMS Bounty                                  |              24 | 2003-12-01  |
| HMS Bounty                                  |              33 | 2004-01-12  |
| HMS Bounty                                  |              26 | 2004-02-20  |
| HMS Bounty                                  |              29 | 2004-04-02  |
| HMS Bounty                                  |              40 | 2004-05-11  |
| HMS Bounty                                  |              44 | NULL        |
| HMS Bounty                                  |              24 | 2004-07-22  |
| HMS Bounty                                  |              20 | 2004-08-23  |
| HMS Bounty                                  |              34 | 2004-09-16  |
| HMS Bounty                                  |              34 | 2004-10-20  |
| HMS Bounty                                  |              45 | 2004-11-07  |
| HMS Bounty                                  |              41 | 2004-11-18  |
| HMS Bounty                                  |              55 | 2004-11-30  |
| HMS Bounty                                  |              23 | 2004-12-09  |
| HMS Bounty                                  |              24 | 2004-12-20  |
| HMS Bounty                                  |              32 | 2005-02-06  |
| HMS Bounty                                  |              29 | 2005-03-06  |
| HMS Bounty                                  |              36 | 2005-03-31  |
| HMS Bounty                                  |              46 | 2005-04-04  |
| HMS Bounty                                  |              32 | 2005-05-12  |
| America West Airlines B757-200              |              34 | 2003-02-21  |
| America West Airlines B757-200              |              24 | 2003-05-01  |
| America West Airlines B757-200              |              40 | 2003-06-21  |
| America West Airlines B757-200              |              26 | 2003-08-12  |
| America West Airlines B757-200              |              20 | 2003-10-07  |
| America West Airlines B757-200              |              31 | 2003-11-01  |
| America West Airlines B757-200              |              22 | 2003-11-10  |
| America West Airlines B757-200              |              44 | 2003-11-16  |
| America West Airlines B757-200              |              42 | 2003-12-03  |
| America West Airlines B757-200              |              26 | 2004-01-20  |
| America West Airlines B757-200              |              37 | 2004-02-20  |
| America West Airlines B757-200              |              38 | 2004-04-06  |
| America West Airlines B757-200              |              35 | 2004-05-15  |
| America West Airlines B757-200              |              33 | NULL        |
| America West Airlines B757-200              |              39 | 2004-07-29  |
| America West Airlines B757-200              |              45 | 2004-08-26  |
| America West Airlines B757-200              |              24 | 2004-09-16  |
| America West Airlines B757-200              |              35 | 2004-10-20  |
| America West Airlines B757-200              |              23 | 2004-11-07  |
| America West Airlines B757-200              |              37 | 2004-11-18  |
| America West Airlines B757-200              |              55 | 2004-11-25  |
| America West Airlines B757-200              |              49 | 2004-12-09  |
| America West Airlines B757-200              |              26 | 2004-12-20  |
| America West Airlines B757-200              |              33 | 2005-02-06  |
| America West Airlines B757-200              |              37 | 2005-03-06  |
| America West Airlines B757-200              |              22 | 2005-03-31  |
| America West Airlines B757-200              |              85 | NULL        |
| America West Airlines B757-200              |              22 | 2005-05-14  |
| The USS Constitution Ship                   |              31 | 2003-02-12  |
| The USS Constitution Ship                   |              38 | 2003-05-02  |
| The USS Constitution Ship                   |              45 | 2003-06-14  |
| The USS Constitution Ship                   |              31 | 2003-08-12  |
| The USS Constitution Ship                   |              36 | 2003-10-08  |
| The USS Constitution Ship                   |              46 | NULL        |
| The USS Constitution Ship                   |              32 | 2003-11-12  |
| The USS Constitution Ship                   |              39 | 2003-11-20  |
| The USS Constitution Ship                   |              50 | 2003-12-01  |
| The USS Constitution Ship                   |              46 | 2004-01-04  |
| The USS Constitution Ship                   |              36 | 2004-02-20  |
| The USS Constitution Ship                   |              29 | 2004-04-02  |
| The USS Constitution Ship                   |              32 | NULL        |
| The USS Constitution Ship                   |              44 | 2004-06-22  |
| The USS Constitution Ship                   |              42 | 2004-07-22  |
| The USS Constitution Ship                   |              47 | 2004-08-23  |
| The USS Constitution Ship                   |              44 | 2004-09-14  |
| The USS Constitution Ship                   |              43 | 2004-10-17  |
| The USS Constitution Ship                   |              48 | 2004-11-07  |
| The USS Constitution Ship                   |              21 | 2004-11-13  |
| The USS Constitution Ship                   |              50 | 2004-11-30  |
| The USS Constitution Ship                   |              29 | 2004-12-05  |
| The USS Constitution Ship                   |              30 | 2004-12-18  |
| The USS Constitution Ship                   |              41 | 2005-02-06  |
| The USS Constitution Ship                   |              37 | 2005-03-06  |
| The USS Constitution Ship                   |              22 | 2005-04-01  |
| The USS Constitution Ship                   |              31 | NULL        |
| 1982 Camaro Z28                             |              42 | 2003-02-02  |
| 1982 Camaro Z28                             |              42 | 2003-04-02  |
| 1982 Camaro Z28                             |              45 | 2003-06-02  |
| 1982 Camaro Z28                             |              36 | 2003-07-30  |
| 1982 Camaro Z28                             |              20 | 2003-09-21  |
| 1982 Camaro Z28                             |              39 | 2003-10-23  |
| 1982 Camaro Z28                             |              42 | 2003-11-09  |
| 1982 Camaro Z28                             |              23 | 2003-11-15  |
| 1982 Camaro Z28                             |              26 | 2003-11-26  |
| 1982 Camaro Z28                             |              33 | 2003-12-08  |
| 1982 Camaro Z28                             |              31 | 2004-02-06  |
| 1982 Camaro Z28                             |              50 | 2004-03-12  |
| 1982 Camaro Z28                             |              44 | 2004-05-09  |
| 1982 Camaro Z28                             |              45 | 2004-06-23  |
| 1982 Camaro Z28                             |              46 | 2004-07-24  |
| 1982 Camaro Z28                             |              27 | 2004-08-23  |
| 1982 Camaro Z28                             |              28 | 2004-09-14  |
| 1982 Camaro Z28                             |              40 | 2004-10-17  |
| 1982 Camaro Z28                             |              30 | 2004-10-25  |
| 1982 Camaro Z28                             |              34 | 2004-11-08  |
| 1982 Camaro Z28                             |              46 | 2004-11-24  |
| 1982 Camaro Z28                             |              32 | 2004-11-05  |
| 1982 Camaro Z28                             |              27 | 2004-12-16  |
| 1982 Camaro Z28                             |              34 | 2005-01-25  |
| 1982 Camaro Z28                             |              34 | 2005-02-18  |
| 1982 Camaro Z28                             |              21 | 2005-03-14  |
| 1982 Camaro Z28                             |              34 | 2005-05-06  |
| 1982 Camaro Z28                             |              46 | NULL        |
| ATA: B757-300                               |              32 | 2003-02-21  |
| ATA: B757-300                               |              24 | 2003-05-01  |
| ATA: B757-300                               |              27 | 2003-07-03  |
| ATA: B757-300                               |              20 | 2003-08-31  |
| ATA: B757-300                               |              48 | 2003-10-14  |
| ATA: B757-300                               |              36 | 2003-11-01  |
| ATA: B757-300                               |              25 | 2003-11-13  |
| ATA: B757-300                               |              29 | 2003-11-24  |
| ATA: B757-300                               |              39 | 2003-12-06  |
| ATA: B757-300                               |              25 | 2004-01-20  |
| ATA: B757-300                               |              29 | 2004-02-24  |
| ATA: B757-300                               |              25 | 2004-04-06  |
| ATA: B757-300                               |              44 | 2004-05-15  |
| ATA: B757-300                               |              47 | 2004-07-02  |
| ATA: B757-300                               |              48 | 2004-07-29  |
| ATA: B757-300                               |              45 | 2004-08-31  |
| ATA: B757-300                               |              35 | 2004-09-21  |
| ATA: B757-300                               |              31 | 2004-10-20  |
| ATA: B757-300                               |              50 | 2004-11-07  |
| ATA: B757-300                               |              33 | 2004-11-18  |
| ATA: B757-300                               |              29 | 2004-11-25  |
| ATA: B757-300                               |              48 | 2004-12-05  |
| ATA: B757-300                               |              44 | 2004-12-20  |
| ATA: B757-300                               |              25 | 2005-02-06  |
| ATA: B757-300                               |              50 | 2005-03-09  |
| ATA: B757-300                               |              23 | 2005-03-31  |
| ATA: B757-300                               |              21 | NULL        |
| ATA: B757-300                               |              41 | 2005-05-14  |
| F/A 18 Hornet 1/72                          |              44 | 2003-02-21  |
| F/A 18 Hornet 1/72                          |              43 | 2003-05-01  |
| F/A 18 Hornet 1/72                          |              36 | 2003-06-28  |
| F/A 18 Hornet 1/72                          |              28 | 2003-08-12  |
| F/A 18 Hornet 1/72                          |              43 | 2003-10-07  |
| F/A 18 Hornet 1/72                          |              48 | 2003-11-01  |
| F/A 18 Hornet 1/72                          |              39 | 2003-11-13  |
| F/A 18 Hornet 1/72                          |              34 | 2003-11-16  |
| F/A 18 Hornet 1/72                          |              38 | 2003-12-06  |
| F/A 18 Hornet 1/72                          |              31 | 2004-01-20  |
| F/A 18 Hornet 1/72                          |              26 | 2004-02-24  |
| F/A 18 Hornet 1/72                          |              32 | 2004-04-06  |
| F/A 18 Hornet 1/72                          |              44 | 2004-05-15  |
| F/A 18 Hornet 1/72                          |              27 | NULL        |
| F/A 18 Hornet 1/72                          |              43 | 2004-07-29  |
| F/A 18 Hornet 1/72                          |              25 | 2004-08-26  |
| F/A 18 Hornet 1/72                          |              22 | 2004-09-16  |
| F/A 18 Hornet 1/72                          |              21 | 2004-10-20  |
| F/A 18 Hornet 1/72                          |              48 | 2004-11-07  |
| F/A 18 Hornet 1/72                          |              33 | 2004-11-18  |
| F/A 18 Hornet 1/72                          |              34 | 2004-11-29  |
| F/A 18 Hornet 1/72                          |              43 | 2004-12-05  |
| F/A 18 Hornet 1/72                          |              44 | 2004-12-20  |
| F/A 18 Hornet 1/72                          |              44 | 2005-02-06  |
| F/A 18 Hornet 1/72                          |              32 | 2005-03-06  |
| F/A 18 Hornet 1/72                          |              29 | 2005-03-31  |
| F/A 18 Hornet 1/72                          |              77 | NULL        |
| F/A 18 Hornet 1/72                          |              39 | 2005-05-14  |
| The Titanic                                 |              39 | 2003-02-12  |
| The Titanic                                 |              36 | 2003-04-26  |
| The Titanic                                 |              42 | 2003-06-14  |
| The Titanic                                 |              21 | 2003-08-13  |
| The Titanic                                 |              50 | 2003-10-03  |
| The Titanic                                 |              24 | NULL        |
| The Titanic                                 |              44 | 2003-11-12  |
| The Titanic                                 |              37 | 2003-11-20  |
| The Titanic                                 |              27 | 2003-12-01  |
| The Titanic                                 |              37 | 2004-01-04  |
| The Titanic                                 |              38 | 2004-02-20  |
| The Titanic                                 |              48 | 2004-03-25  |
| The Titanic                                 |              30 | NULL        |
| The Titanic                                 |              25 | 2004-06-22  |
| The Titanic                                 |              40 | 2004-07-22  |
| The Titanic                                 |              22 | 2004-08-23  |
| The Titanic                                 |              34 | 2004-09-14  |
| The Titanic                                 |              32 | 2004-10-17  |
| The Titanic                                 |              31 | 2004-10-30  |
| The Titanic                                 |              43 | 2004-11-13  |
| The Titanic                                 |              31 | 2004-11-26  |
| The Titanic                                 |              31 | 2004-12-05  |
| The Titanic                                 |              35 | 2004-12-18  |
| The Titanic                                 |              34 | 2005-02-06  |
| The Titanic                                 |              45 | 2005-03-06  |
| The Titanic                                 |              48 | 2005-04-01  |
| The Titanic                                 |              28 | NULL        |
| The Queen Mary                              |              22 | 2003-02-12  |
| The Queen Mary                              |              45 | 2003-04-17  |
| The Queen Mary                              |              30 | 2003-06-14  |
| The Queen Mary                              |              38 | 2003-08-13  |
| The Queen Mary                              |              20 | 2003-10-03  |
| The Queen Mary                              |              28 | NULL        |
| The Queen Mary                              |              24 | 2003-11-12  |
| The Queen Mary                              |              22 | 2003-11-20  |
| The Queen Mary                              |              35 | 2003-12-01  |
| The Queen Mary                              |              33 | 2004-01-04  |
| The Queen Mary                              |              31 | 2004-02-20  |
| The Queen Mary                              |              35 | 2004-03-25  |
| The Queen Mary                              |              35 | NULL        |
| The Queen Mary                              |              50 | 2004-06-22  |
| The Queen Mary                              |              26 | 2004-07-22  |
| The Queen Mary                              |              38 | 2004-08-23  |
| The Queen Mary                              |              45 | 2004-09-14  |
| The Queen Mary                              |              30 | 2004-10-17  |
| The Queen Mary                              |              37 | 2004-10-30  |
| The Queen Mary                              |              37 | 2004-11-13  |
| The Queen Mary                              |              36 | 2004-11-26  |
| The Queen Mary                              |              25 | 2004-12-05  |
| The Queen Mary                              |              31 | 2004-12-18  |
| The Queen Mary                              |              37 | 2005-02-06  |
| The Queen Mary                              |              30 | 2005-03-06  |
| The Queen Mary                              |              36 | 2005-04-01  |
| The Queen Mary                              |              40 | NULL        |
| American Airlines: MD-11S                   |              48 | 2003-02-21  |
| American Airlines: MD-11S                   |              26 | 2003-05-02  |
| American Airlines: MD-11S                   |              26 | 2003-06-21  |
| American Airlines: MD-11S                   |              34 | 2003-08-12  |
| American Airlines: MD-11S                   |              44 | 2003-10-07  |
| American Airlines: MD-11S                   |              39 | 2003-11-01  |
| American Airlines: MD-11S                   |              45 | 2003-11-10  |
| American Airlines: MD-11S                   |              44 | 2003-11-16  |
| American Airlines: MD-11S                   |              40 | 2003-12-03  |
| American Airlines: MD-11S                   |              42 | 2004-01-20  |
| American Airlines: MD-11S                   |              43 | 2004-02-20  |
| American Airlines: MD-11S                   |              34 | 2004-04-06  |
| American Airlines: MD-11S                   |              38 | 2004-05-15  |
| American Airlines: MD-11S                   |              35 | NULL        |
| American Airlines: MD-11S                   |              31 | 2004-07-29  |
| American Airlines: MD-11S                   |              32 | 2004-08-26  |
| American Airlines: MD-11S                   |              47 | 2004-09-16  |
| American Airlines: MD-11S                   |              39 | 2004-10-20  |
| American Airlines: MD-11S                   |              44 | 2004-11-07  |
| American Airlines: MD-11S                   |              39 | 2004-11-18  |
| American Airlines: MD-11S                   |              50 | 2004-11-30  |
| American Airlines: MD-11S                   |              22 | 2004-12-09  |
| American Airlines: MD-11S                   |              35 | 2004-12-20  |
| American Airlines: MD-11S                   |              45 | 2005-02-06  |
| American Airlines: MD-11S                   |              44 | 2005-03-06  |
| American Airlines: MD-11S                   |              36 | 2005-03-31  |
| American Airlines: MD-11S                   |              40 | NULL        |
| American Airlines: MD-11S                   |              43 | 2005-05-14  |
| Boeing X-32A JSF                            |              48 | 2003-02-21  |
| Boeing X-32A JSF                            |              28 | 2003-05-02  |
| Boeing X-32A JSF                            |              21 | 2003-06-21  |
| Boeing X-32A JSF                            |              37 | 2003-08-12  |
| Boeing X-32A JSF                            |              34 | 2003-10-07  |
| Boeing X-32A JSF                            |              40 | NULL        |
| Boeing X-32A JSF                            |              45 | 2003-11-10  |
| Boeing X-32A JSF                            |              28 | 2003-11-18  |
| Boeing X-32A JSF                            |              29 | 2003-12-01  |
| Boeing X-32A JSF                            |              48 | 2004-01-12  |
| Boeing X-32A JSF                            |              31 | 2004-02-20  |
| Boeing X-32A JSF                            |              40 | 2004-04-02  |
| Boeing X-32A JSF                            |              32 | 2004-05-11  |
| Boeing X-32A JSF                            |              21 | NULL        |
| Boeing X-32A JSF                            |              32 | 2004-07-22  |
| Boeing X-32A JSF                            |              43 | 2004-08-23  |
| Boeing X-32A JSF                            |              21 | 2004-09-16  |
| Boeing X-32A JSF                            |              34 | 2004-10-20  |
| Boeing X-32A JSF                            |              34 | 2004-11-07  |
| Boeing X-32A JSF                            |              44 | 2004-11-16  |
| Boeing X-32A JSF                            |              27 | 2004-11-30  |
| Boeing X-32A JSF                            |              49 | 2004-12-09  |
| Boeing X-32A JSF                            |              23 | 2004-12-20  |
| Boeing X-32A JSF                            |              25 | 2005-02-06  |
| Boeing X-32A JSF                            |              50 | 2005-03-06  |
| Boeing X-32A JSF                            |              34 | 2005-03-31  |
| Boeing X-32A JSF                            |              20 | 2005-04-04  |
| Boeing X-32A JSF                            |              42 | 2005-05-12  |
| Pont Yacht                                  |              25 | 2003-02-12  |
| Pont Yacht                                  |              50 | 2003-04-17  |
| Pont Yacht                                  |              32 | 2003-06-14  |
| Pont Yacht                                  |              39 | 2003-08-13  |
| Pont Yacht                                  |              50 | 2003-10-03  |
| Pont Yacht                                  |              38 | NULL        |
| Pont Yacht                                  |              40 | 2003-11-12  |
| Pont Yacht                                  |              28 | 2003-11-20  |
| Pont Yacht                                  |              42 | 2003-12-01  |
| Pont Yacht                                  |              42 | 2004-01-04  |
| Pont Yacht                                  |              36 | 2004-02-20  |
| Pont Yacht                                  |              24 | 2004-03-25  |
| Pont Yacht                                  |              23 | NULL        |
| Pont Yacht                                  |              29 | 2004-06-22  |
| Pont Yacht                                  |              37 | 2004-07-22  |
| Pont Yacht                                  |              33 | 2004-08-23  |
| Pont Yacht                                  |              32 | 2004-09-14  |
| Pont Yacht                                  |              35 | 2004-10-17  |
| Pont Yacht                                  |              40 | 2004-10-30  |
| Pont Yacht                                  |              37 | 2004-11-13  |
| Pont Yacht                                  |              42 | 2004-11-26  |
| Pont Yacht                                  |              20 | 2004-12-05  |
| Pont Yacht                                  |              31 | 2004-12-18  |
| Pont Yacht                                  |              29 | 2005-02-06  |
| Pont Yacht                                  |              43 | 2005-03-06  |
| Pont Yacht                                  |              34 | 2005-04-01  |
| Pont Yacht                                  |              47 | NULL        |
+---------------------------------------------+-----------------+-------------+
2996 rows in set (0.03 sec)

obtain productname sold on monday
3)select productName from Products JOIN (OrderDetails,Orders) ON (OrderDetails.productCode=Products.productCode and Orders.orderNumber = OrderDetails.orderNumber) where DAYNAME(orderDate) = "Monday";
| 1936 Harley Davidson El Knucklehead         |
| 1936 Harley Davidson El Knucklehead         |
| 1936 Harley Davidson El Knucklehead         |
| 1936 Harley Davidson El Knucklehead         |
| 1936 Harley Davidson El Knucklehead         |
| 1936 Harley Davidson El Knucklehead         |
| 1936 Harley Davidson El Knucklehead         |
| 1928 Mercedes-Benz SSK                      |
| 1928 Mercedes-Benz SSK                      |
| 1928 Mercedes-Benz SSK                      |
| 1928 Mercedes-Benz SSK                      |
| 1999 Indy 500 Monte Carlo SS                |
| 1999 Indy 500 Monte Carlo SS                |
| 1999 Indy 500 Monte Carlo SS                |
| 1913 Ford Model T Speedster                 |
| 1913 Ford Model T Speedster                 |
| 1913 Ford Model T Speedster                 |
| 1913 Ford Model T Speedster                 |
| 1913 Ford Model T Speedster                 |
| 1913 Ford Model T Speedster                 |
| 1913 Ford Model T Speedster                 |
| 1934 Ford V8 Coupe                          |
| 1934 Ford V8 Coupe                          |
| 1934 Ford V8 Coupe                          |
| 1934 Ford V8 Coupe                          |
| 1934 Ford V8 Coupe                          |
| 1999 Yamaha Speed Boat                      |
| 1999 Yamaha Speed Boat                      |
| 1999 Yamaha Speed Boat                      |
| 1999 Yamaha Speed Boat                      |
| 1999 Yamaha Speed Boat                      |
| 1999 Yamaha Speed Boat                      |
| 1999 Yamaha Speed Boat                      |
| 18th Century Vintage Horse Carriage         |
| 18th Century Vintage Horse Carriage         |
| 18th Century Vintage Horse Carriage         |
| 18th Century Vintage Horse Carriage         |
| 18th Century Vintage Horse Carriage         |
| 18th Century Vintage Horse Carriage         |
| 1992 Ferrari 360 Spider red                 |
| 1992 Ferrari 360 Spider red                 |
| 1992 Ferrari 360 Spider red                 |
| 1992 Ferrari 360 Spider red                 |
| 1992 Ferrari 360 Spider red                 |
| 1969 Dodge Super Bee                        |
| 1969 Dodge Super Bee                        |
| 1969 Dodge Super Bee                        |
| 1969 Dodge Super Bee                        |
| 1969 Dodge Super Bee                        |
| 1917 Maxwell Touring Car                    |
| 1917 Maxwell Touring Car                    |
| 1917 Maxwell Touring Car                    |
| 1917 Maxwell Touring Car                    |
| 1917 Maxwell Touring Car                    |
| 1917 Maxwell Touring Car                    |
| 1976 Ford Gran Torino                       |
| 1976 Ford Gran Torino                       |
| 1976 Ford Gran Torino                       |
| 1976 Ford Gran Torino                       |
| 1948 Porsche Type 356 Roadster              |
| 1948 Porsche Type 356 Roadster              |
| 1957 Vespa GS150                            |
| 1957 Vespa GS150                            |
| 1957 Vespa GS150                            |
| 1957 Vespa GS150                            |
| 1941 Chevrolet Special Deluxe Cabriolet     |
| 1941 Chevrolet Special Deluxe Cabriolet     |
| 1941 Chevrolet Special Deluxe Cabriolet     |
| 1941 Chevrolet Special Deluxe Cabriolet     |
| 1941 Chevrolet Special Deluxe Cabriolet     |
| 1941 Chevrolet Special Deluxe Cabriolet     |
| 1941 Chevrolet Special Deluxe Cabriolet     |
| 1941 Chevrolet Special Deluxe Cabriolet     |
| 1970 Triumph Spitfire                       |
| 1932 Alfa Romeo 8C2300 Spider Sport         |
| 1932 Alfa Romeo 8C2300 Spider Sport         |
| 1932 Alfa Romeo 8C2300 Spider Sport         |
| 1932 Alfa Romeo 8C2300 Spider Sport         |
| 1940s Ford truck                            |
| 1940s Ford truck                            |
| 1939 Cadillac Limousine                     |
| 1939 Cadillac Limousine                     |
| 1939 Cadillac Limousine                     |
| 1957 Corvette Convertible                   |
| 1957 Corvette Convertible                   |
| 1957 Corvette Convertible                   |
| 1957 Corvette Convertible                   |
| 1957 Ford Thunderbird                       |
| 1957 Ford Thunderbird                       |
| 1957 Ford Thunderbird                       |
| 1970 Chevy Chevelle SS 454                  |
| 1970 Chevy Chevelle SS 454                  |
| 1970 Dodge Coronet                          |
| 1997 BMW R 1100 S                           |
| 1997 BMW R 1100 S                           |
| 1997 BMW R 1100 S                           |
| 1997 BMW R 1100 S                           |
| 1997 BMW R 1100 S                           |
| 1997 BMW R 1100 S                           |
| 1928 British Royal Navy Airplane            |
| 1928 British Royal Navy Airplane            |
| 1928 British Royal Navy Airplane            |
| 1928 British Royal Navy Airplane            |
| 1928 British Royal Navy Airplane            |
| 1939 Chevrolet Deluxe Coupe                 |
| 1939 Chevrolet Deluxe Coupe                 |
| 1939 Chevrolet Deluxe Coupe                 |
| 1939 Chevrolet Deluxe Coupe                 |
| 1939 Chevrolet Deluxe Coupe                 |
| 1960 BSA Gold Star DBD34                    |
| 1960 BSA Gold Star DBD34                    |
| 1960 BSA Gold Star DBD34                    |
| 1960 BSA Gold Star DBD34                    |
| 1960 BSA Gold Star DBD34                    |
| 1960 BSA Gold Star DBD34                    |
| 1938 Cadillac V-16 Presidential Limousine   |
| 1938 Cadillac V-16 Presidential Limousine   |
| 1938 Cadillac V-16 Presidential Limousine   |
| 1938 Cadillac V-16 Presidential Limousine   |
| 1962 Volkswagen Microbus                    |
| 1982 Ducati 900 Monster                     |
| 1982 Ducati 900 Monster                     |
| 1982 Ducati 900 Monster                     |
| 1982 Ducati 900 Monster                     |
| 1982 Ducati 900 Monster                     |
| 1949 Jaguar XK 120                          |
| 1949 Jaguar XK 120                          |
| 1949 Jaguar XK 120                          |
| 1949 Jaguar XK 120                          |
| 1900s Vintage Bi-Plane                      |
| 1900s Vintage Bi-Plane                      |
| 1900s Vintage Bi-Plane                      |
| 1900s Vintage Bi-Plane                      |
| 1900s Vintage Bi-Plane                      |
| 1900s Vintage Bi-Plane                      |
| 1900s Vintage Bi-Plane                      |
| 1952 Citroen-15CV                           |
| 1952 Citroen-15CV                           |
| 1952 Citroen-15CV                           |
| 1952 Citroen-15CV                           |
| 1982 Lamborghini Diablo                     |
| 1982 Lamborghini Diablo                     |
| 1982 Lamborghini Diablo                     |
| 1912 Ford Model T Delivery Wagon            |
| 1912 Ford Model T Delivery Wagon            |
| 1912 Ford Model T Delivery Wagon            |
| 1969 Chevrolet Camaro Z28                   |
| 1969 Chevrolet Camaro Z28                   |
| 1969 Chevrolet Camaro Z28                   |
| 1969 Chevrolet Camaro Z28                   |
| 1971 Alpine Renault 1600s                   |
| 1971 Alpine Renault 1600s                   |
| 1971 Alpine Renault 1600s                   |
| 1937 Horch 930V Limousine                   |
| 1937 Horch 930V Limousine                   |
| 1937 Horch 930V Limousine                   |
| 1937 Horch 930V Limousine                   |
| 1937 Horch 930V Limousine                   |
| 1937 Horch 930V Limousine                   |
| 1937 Horch 930V Limousine                   |
| 2002 Chevy Corvette                         |
| 2002 Chevy Corvette                         |
| 2002 Chevy Corvette                         |
| 1940 Ford Delivery Sedan                    |
| 1940 Ford Delivery Sedan                    |
| 1940 Ford Delivery Sedan                    |
| 1940 Ford Delivery Sedan                    |
| 1940 Ford Delivery Sedan                    |
| 1956 Porsche 356A Coupe                     |
| 1956 Porsche 356A Coupe                     |
| 1956 Porsche 356A Coupe                     |
| Corsair F4U ( Bird Cage)                    |
| Corsair F4U ( Bird Cage)                    |
| Corsair F4U ( Bird Cage)                    |
| Corsair F4U ( Bird Cage)                    |
| Corsair F4U ( Bird Cage)                    |
| Corsair F4U ( Bird Cage)                    |
| Corsair F4U ( Bird Cage)                    |
| 1936 Mercedes Benz 500k Roadster            |
| 1936 Mercedes Benz 500k Roadster            |
| 1936 Mercedes Benz 500k Roadster            |
| 1936 Mercedes Benz 500k Roadster            |
| 1936 Mercedes Benz 500k Roadster            |
| 1992 Porsche Cayenne Turbo Silver           |
| 1936 Chrysler Airflow                       |
| 1936 Chrysler Airflow                       |
| 1936 Chrysler Airflow                       |
| 1936 Chrysler Airflow                       |
| 1936 Chrysler Airflow                       |
| 1900s Vintage Tri-Plane                     |
| 1900s Vintage Tri-Plane                     |
| 1900s Vintage Tri-Plane                     |
| 1900s Vintage Tri-Plane                     |
| 1900s Vintage Tri-Plane                     |
| 1961 Chevrolet Impala                       |
| 1961 Chevrolet Impala                       |
| 1961 Chevrolet Impala                       |
| 1961 Chevrolet Impala                       |
| 1980's GM Manhattan Express                 |
| 1980's GM Manhattan Express                 |
| 1997 BMW F650 ST                            |
| 1997 BMW F650 ST                            |
| 1997 BMW F650 ST                            |
| 1997 BMW F650 ST                            |
| 1997 BMW F650 ST                            |
| 1997 BMW F650 ST                            |
| 1982 Ducati 996 R                           |
| 1982 Ducati 996 R                           |
| 1982 Ducati 996 R                           |
| 1982 Ducati 996 R                           |
| 1982 Ducati 996 R                           |
| 1950's Chicago Surface Lines Streetcar      |
| 1996 Peterbilt 379 Stake Bed with Outrigger |
| 1996 Peterbilt 379 Stake Bed with Outrigger |
| 1996 Peterbilt 379 Stake Bed with Outrigger |
| 1928 Ford Phaeton Deluxe                    |
| 1928 Ford Phaeton Deluxe                    |
| 1928 Ford Phaeton Deluxe                    |
| 1928 Ford Phaeton Deluxe                    |
| 1974 Ducati 350 Mk3 Desmo                   |
| 1974 Ducati 350 Mk3 Desmo                   |
| 1974 Ducati 350 Mk3 Desmo                   |
| 1974 Ducati 350 Mk3 Desmo                   |
| 1974 Ducati 350 Mk3 Desmo                   |
| 1930 Buick Marquette Phaeton                |
| 1930 Buick Marquette Phaeton                |
| 1930 Buick Marquette Phaeton                |
| 1930 Buick Marquette Phaeton                |
| Diamond T620 Semi-Skirted Tanker            |
| 1962 City of Detroit Streetcar              |
| 2002 Yamaha YZR M1                          |
| 2002 Yamaha YZR M1                          |
| 2002 Yamaha YZR M1                          |
| 2002 Yamaha YZR M1                          |
| 2002 Yamaha YZR M1                          |
| The Schooner Bluenose                       |
| The Schooner Bluenose                       |
| The Schooner Bluenose                       |
| The Schooner Bluenose                       |
| American Airlines: B767-300                 |
| American Airlines: B767-300                 |
| American Airlines: B767-300                 |
| American Airlines: B767-300                 |
| The Mayflower                               |
| HMS Bounty                                  |
| HMS Bounty                                  |
| HMS Bounty                                  |
| HMS Bounty                                  |
| HMS Bounty                                  |
| HMS Bounty                                  |
| HMS Bounty                                  |
| America West Airlines B757-200              |
| America West Airlines B757-200              |
| America West Airlines B757-200              |
| America West Airlines B757-200              |
| America West Airlines B757-200              |
| The USS Constitution Ship                   |
| The USS Constitution Ship                   |
| The USS Constitution Ship                   |
| The USS Constitution Ship                   |
| The USS Constitution Ship                   |
| 1982 Camaro Z28                             |
| 1982 Camaro Z28                             |
| 1982 Camaro Z28                             |
| ATA: B757-300                               |
| ATA: B757-300                               |
| ATA: B757-300                               |
| ATA: B757-300                               |
| ATA: B757-300                               |
| F/A 18 Hornet 1/72                          |
| F/A 18 Hornet 1/72                          |
| F/A 18 Hornet 1/72                          |
| F/A 18 Hornet 1/72                          |
| F/A 18 Hornet 1/72                          |
| The Titanic                                 |
| The Titanic                                 |
| The Titanic                                 |
| The Queen Mary                              |
| The Queen Mary                              |
| American Airlines: MD-11S                   |
| American Airlines: MD-11S                   |
| American Airlines: MD-11S                   |
| American Airlines: MD-11S                   |
| American Airlines: MD-11S                   |
| American Airlines: MD-11S                   |
| American Airlines: MD-11S                   |
| Boeing X-32A JSF                            |
| Boeing X-32A JSF                            |
| Boeing X-32A JSF                            |
| Boeing X-32A JSF                            |
| Boeing X-32A JSF                            |
| Boeing X-32A JSF                            |
| Boeing X-32A JSF                            |
| Boeing X-32A JSF                            |
| Pont Yacht                                  |
| Pont Yacht                                  |
+---------------------------------------------+
407 rows in set (0.01 sec)


4)select firstname,lastname from employees where reportsTo =  (select employeeNumber from employees where lastName = "Patterson" and firstName="William”);


find the ordernumber orderdate status paymentdate for which the status is resolved.
5)select orderNumber, orderDate, status, paymentDate from orders join payments on payments.customerNumber=orders.customerNumber where status='resolved';
| orderNumber | orderDate  | status   | paymentDate |
+-------------+------------+----------+-------------+
|       10386 | 2005-03-01 | Resolved | 2003-07-19  |
|       10386 | 2005-03-01 | Resolved | 2004-11-01  |
|       10386 | 2005-03-01 | Resolved | 2005-05-19  |
|       10386 | 2005-03-01 | Resolved | 2004-01-30  |
|       10386 | 2005-03-01 | Resolved | 2004-12-31  |
|       10386 | 2005-03-01 | Resolved | 2005-03-25  |
|       10386 | 2005-03-01 | Resolved | 2005-03-18  |
|       10386 | 2005-03-01 | Resolved | 2003-10-26  |
|       10386 | 2005-03-01 | Resolved | 2003-02-25  |
|       10386 | 2005-03-01 | Resolved | 2003-12-09  |
|       10386 | 2005-03-01 | Resolved | 2004-07-09  |
|       10386 | 2005-03-01 | Resolved | 2004-08-16  |
|       10386 | 2005-03-01 | Resolved | 2004-05-17  |
|       10327 | 2004-11-10 | Resolved | 2004-07-03  |
|       10327 | 2004-11-10 | Resolved | 2004-04-26  |
|       10327 | 2004-11-10 | Resolved | 2004-12-01  |
|       10327 | 2004-11-10 | Resolved | 2003-02-20  |
|       10367 | 2005-01-12 | Resolved | 2003-12-04  |
|       10367 | 2005-01-12 | Resolved | 2003-09-05  |
|       10367 | 2005-01-12 | Resolved | 2005-02-06  |
|       10164 | 2003-10-21 | Resolved | 2003-11-15  |
|       10164 | 2003-10-21 | Resolved | 2003-11-20  |
|       10164 | 2003-10-21 | Resolved | 2005-05-03  |
+-------------+------------+----------+-------------+
23 rows in set (0.00 sec)

find the total sum of the quantityordered
6)select sum(quantityordered*priceeach) from orderdetails where ordernumber in(select ordernumber from orders where status="cancelled");
+--------------------------------+
| sum(quantityordered*priceeach) |
+--------------------------------+
|             238854.18000000002 |
+--------------------------------+
1 row in set (0.00 sec)


7)select count(*) from employees,offices where employee.officecode=offices.officecode and country="USA";

+----------+
| count(*) |
+----------+
|       10 |
+----------+
1 row in set (0.06 sec)
8)select count(*) from orders where dayname(orderdate)="sunday";

+----------+
| count(*) |
+----------+
|       11 |
+----------+
1 row in set (0.00 sec)

9)select employeenumber, lastname, firstname from employees where employeenumber = (select customers.salesemployeenumber from customers,orders where customers.customernumber=orders.customernumber and orders.ordernumber = (select ordernumber from orders where shippedDate > requireddate));
+----------------+----------+-----------+
| employeenumber | lastname | firstname |
+----------------+----------+-----------+
|           1621 | Nishi    | Mami      |
+----------------+----------+-----------+
1 row in set (0.03 sec)
