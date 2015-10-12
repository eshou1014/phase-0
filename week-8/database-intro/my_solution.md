1. SELECT * FROM states;

2. SELECT * FROM regions;

3. SELECT state_name,population FROM states;

4. SELECT state_name,population FROM states
   ORDER BY population DESC;

5. SELECT state_name FROM states
   WHERE region_id IN ('7');

6. SELECT state_name, population_density FROM states
   WHERE population_density > '50'
   ORDER BY population_density ASC;

7. SELECT state_name from STATES
   WHERE population BETWEEN 1000000 AND 1500000;

8. SELECT state_name, region_id FROM states
   ORDER BY region_id ASC;

9. SELECT region_name FROM regions
   WHERE region_name LIKE '%Central';

10. SELECT regions.region_name, states.state_name FROM states INNER JOIN regions ON states.region_id=regions.id ORDER BY states.region_id ASC;

<!-- Reflection
1. Databases are for storing large and complex data that can be easily accessed by using a high level command.
2. One to many is when you have a foreign key that links back to the "one" side from the "many" side.
3. A primary key is a unique identifier in a database. A foreign key is a field in one table that uniquely identifies a row of another table. You can identify them by the tables they are set in.
4. You can select information by writing the correct syntax which constraints the type of information you want. Some general guidelines include wanting one column on a certain table.



-->
