USE global_data;

SELECT e.Region, e.Year, e.GJ, c.co2Kg, g.USD
FROM energy AS e
INNER JOIN co2 AS c ON (e.Region = c.Region AND e.Year = c.Year)  -- where both Region and Year match
INNER JOIN gdp AS g ON (e.Region = g.Region AND e.Year = g.Year);

SELECT i.Region, i.ISO3, r.sharePercent                           -- yields: Region | ISO3 | sharePercent
FROM iso3 AS i
INNER JOIN renewable_share AS r ON i.ISO3 = r.ISO3;

SELECT * FROM iceland23;