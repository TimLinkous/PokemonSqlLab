# What is each pokemon's primary type?
mysql> SELECT p.name AS pokemon_name, t.name AS primary_type
    -> FROM pokemons p
    -> JOIN types t ON p.primary_type = t.id;


* What is Rufflet's secondary type?
mysql> SELECT secondary_type
    -> FROM pokemons
    -> WHERE name = "Rufflet";
+----------------+
| secondary_type |
+----------------+
|             18 |
+----------------+
1 row in set (0.00 sec)

mysql> SELECT t.name AS secondary_type
    -> FROM pokemons p
    -> JOIN types t ON p.secondary_type = t.id
    -> WHERE p.name = "Rufflet";
+----------------+
| secondary_type |
+----------------+
| Flying         |
+----------------+


#* What are the names of the pokemon that belong to the trainer with trainerID 303?
mysql> SELECT p.name AS pokemon_name 
FROM pokemons p 
JOIN pokemon_trainer pt ON p.id = pt.pokemon_id 
WHERE pt.trainerid = 303;
+--------------+
| pokemon_name |
+--------------+
| Wailord      |
| Vileplume    |
+--------------+


#* How many pokemon have a secondary type `Poison`
mysql> SELECT COUNT(*)
    -> FROM pokemons
    -> WHERE secondary_type = 'Poison';
+----------+
| COUNT(*) |
+----------+
|        0 |
+----------+
1 row in set, 1 warning (0.01 sec)

mysql> SELECT COUNT(*) AS poison_count 
FROM pokemons p 
JOIN types t ON p.secondary_type = t.id 
WHERE t.name = "Poison";
+--------------+
| poison_count |
+--------------+
|           31 |
+--------------+


* What are all the primary types and how many pokemon have that type?
