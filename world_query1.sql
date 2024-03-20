USE world;
SHOW tables;

SELECT *
FROM cities;

SELECT *
FROM countries;

SELECT name, surface_area, population
FROM countries
WHERE surface_area<501 AND population>100000;

SELECT name, government_form, capital
FROM countries
WHERE government_form="Constitutional Monarchy"
	AND life_expectancy > 75
    AND capital > 200;

SELECT region, COUNT(id) AS num_countries
FROM countries
GROUP BY region
ORDER BY num_countries DESC;

SELECT countries.name, languages.language, languages.percentage
FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.language="Slovene"
ORDER BY languages.percentage DESC;

SELECT countries.name, COUNT(cities.id) as num_cities
FROM countries
JOIN cities ON cities.id = cities.country_id
GROUP BY countries.id
ORDER BY num_cities DESC;

SELECT cities.name, cities.population
FROM countries
JOIN cities ON countries.id = cities.country_id
WHERE countries.name="Mexico" AND cities.population>500000
ORDER BY cities.population DESC;

SELECT countries.name, languages.language, languages.percentage
FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.percentage>89
ORDER BY languages.percentage DESC;

SELECT countries.name, cities.name, cities.district, cities.population
FROM countries
JOIN cities ON countries.id = cities.country_id
WHERE countries.name="Argentina"
	AND cities.district="Buenos Aires"
    AND cities.population>500000;