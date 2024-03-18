USE world;
SHOW tables;

SELECT *
FROM cities;

SELECT *
FROM countries;

SELECT continent, COUNT(continent) AS 'number of countries'
FROM countries
GROUP BY continent
ORDER BY COUNT(continent) DESC;

SELECT countries.name, languages.language, languages.percentage 
FROM languages
JOIN countries ON countries.id = languages.id
WHERE languages.language = "Greek"
ORDER BY languages.percentage DESC;

SELECT name, surface_area, population
FROM countries
WHERE surface_area<1000 OR population>1000000000;

SELECT name, government_form, life_expectancy
FROM countries
WHERE government_form="Federal Republic" AND life_expectancy<75;

SELECT countries.name, cities.name, cities.district, cities.population
FROM countries
JOIN cities ON countries.id = cities.id
WHERE countries.name="Mexico" AND cities.district="Veracruz" AND cities.population>100000;

SELECT countries.name, cities.name, cities.population
FROM countries
JOIN cities ON countries.id = cities.id
ORDER BY cities.population ASC
LIMIT 10;

SELECT countries.name, languages.language, languages.percentage 
FROM languages
JOIN countries ON countries.id = languages.id
WHERE countries.name="Monaco" AND languages.percentage>10;