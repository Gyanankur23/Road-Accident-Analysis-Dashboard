-- Creating the table structure
CREATE TABLE Road_Accidents (
    Accident_ID VARCHAR(20) PRIMARY KEY,
    Accident_Date DATE,
    Day_of_Week VARCHAR(15),
    Junction_Control VARCHAR(50),
    Junction_Type VARCHAR(50),
    Severity VARCHAR(10),
    Latitude DECIMAL(10,6),
    Light_Conditions VARCHAR(50),
    Region VARCHAR(50),
    Road_Object VARCHAR(50),
    Longitude DECIMAL(10,6),
    Casualties INT,
    Vehicles_Involved INT,
    Area VARCHAR(20),
    Weather_Conditions VARCHAR(50),
    Road_Type VARCHAR(50),
    Speed_Limit INT,
    Time TIME,
    Urban_Rural VARCHAR(10),
    Weather_Detail VARCHAR(50),
    Vehicle_Type VARCHAR(50)
);

-- Handling missing values
UPDATE Road_Accidents 
SET Junction_Control = 'Unknown' 
WHERE Junction_Control = 'Data missing or out of range';

UPDATE Road_Accidents 
SET Road_Object = 'None' 
WHERE Road_Object = 'Data missing or out of range';

-- Filtering accident severity
SELECT Severity, COUNT(*) AS Accident_Count 
FROM Road_Accidents 
GROUP BY Severity 
ORDER BY FIELD(Severity, 'Fatal', 'Serious', 'Slight');

-- Aggregating data for insights
SELECT 
    Day_of_Week, 
    COUNT(*) AS Total_Accidents, 
    SUM(Casualties) AS Total_Casualties 
FROM Road_Accidents 
GROUP BY Day_of_Week 
ORDER BY Total_Accidents DESC;

-- Identifying high-risk zones
SELECT 
    Latitude, Longitude, Region, COUNT(*) AS Accident_Count 
FROM Road_Accidents 
GROUP BY Latitude, Longitude, Region 
ORDER BY Accident_Count DESC 
LIMIT 10;

-- Filtering by weather conditions affecting accidents
SELECT Weather_Conditions, COUNT(*) AS Accident_Count 
FROM Road_Accidents 
GROUP BY Weather_Conditions 
ORDER BY Accident_Count DESC;
