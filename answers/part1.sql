# What are all the types of pokemon that a pokemon can have?
mysql> SELECT DISTINCT name
    -> from types;
+----------+
| name     |
+----------+
| Normal   |
| Water    |
| Grass    |
| Rock     |
| Fire     |
| Ground   |
| Poison   |
| Bug      |
| Electric |
| Dragon   |
| Steel    |
| Dark     |
| Fighting |
| Psychic  |
| Ghost    |
| Fairy    |
| Ice      |
| Flying   |
+----------+
18 rows in set (0.01 sec)


# What is the name of the pokemon with id 45?
mysql> SELECT name 
    -> FROM pokemons
    -> WHERE id = 45;
+-------+
| name  |
+-------+
| Eevee |
+-------+
1 row in set (0.00 sec)


# How many pokemon are there?
mysql> SELECT count(*) 
    -> FROM pokemons;
+----------+
| count(*) |
+----------+
|      656 |
+----------+
1 row in set (0.01 sec)


# How many types are there?
mysql> SELECT COUNT(DISTINCT id)
    -> FROM types;
+--------------------+
| COUNT(DISTINCT id) |
+--------------------+
|                 18 |
+--------------------+
1 row in set (0.01 sec)

# How many pokemon have a secondary type?
mysql> SELECT COUNT(*)
    -> FROM pokemons
    -> WHERE secondary_type IS NOT NULL;
+----------+
| COUNT(*) |
+----------+
|      316 |
+----------+
1 row in set (0.00 sec)