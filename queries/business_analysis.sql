-- UK Business Formation SQL Analysis

-- Count total companies
SELECT COUNT(*) AS total_companies
FROM companies;

-- Company status distribution
SELECT CompanyStatus, COUNT(*) AS total
FROM companies
GROUP BY CompanyStatus
ORDER BY total DESC;

-- Company category distribution
SELECT CompanyCategory, COUNT(*) AS total
FROM companies
GROUP BY CompanyCategory
ORDER BY total DESC;

-- Country of origin distribution
SELECT CountryOfOrigin, COUNT(*) AS total
FROM companies
GROUP BY CountryOfOrigin
ORDER BY total DESC;

-- Companies incorporated per year
SELECT YEAR(IncorporationDate) AS year, COUNT(*) AS companies_created
FROM companies
GROUP BY year
ORDER BY year;
