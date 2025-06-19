# Road-Accident-Analysis-Dashboard

# 🚦 Road Accident Dashboard  

📊 This project features a **Power BI dashboard** that explores road accident data, supported by SQL queries for **data cleaning, analysis, and insight generation**. The dataset contains **307,973 rows** of detailed accident records.

## 🛠 Tools Used  
- **Excel & SQL** for preprocessing  
- **Power BI** for dashboard creation  
- **GitHub** for version control and project management  

## 🔍 Key SQL Queries  

### ✅ Data Cleaning  
```sql
UPDATE Road_Accidents  
SET Junction_Control = 'Unknown'  
WHERE Junction_Control = 'Data missing or out of range';  
```

### 📊 Severity Analysis  
```sql
SELECT Severity, COUNT(*) AS Accident_Count  
FROM Road_Accidents  
GROUP BY Severity  
ORDER BY FIELD(Severity, 'Fatal', 'Serious', 'Slight');  
```

### 🌍 High-Risk Zones Detection  
```sql
SELECT Latitude, Longitude, Region, COUNT(*) AS Accident_Count  
FROM Road_Accidents  
GROUP BY Latitude, Longitude, Region  
ORDER BY Accident_Count DESC  
LIMIT 10;  
```

## 📂 GitHub Repository & Files  
- 📊 **Power BI Dashboard:** [Road Accident Dashboard.pbit](https://github.com/Gyanankur23/Road-Accident-Analysis-Dashboard/blob/main/Road%20Accident%20Dashboard.pbit)  
- 💾 **SQL Queries File:** [road_accident_analysis.sql](https://github.com/Gyanankur23/Road-Accident-Analysis-Dashboard/blob/main/road_accident_analysis.sql)  
- 📄 **Project Summary Report:** [Road Accident Analysis.pdf](https://github.com/Gyanankur23/Road-Accident-Analysis-Dashboard/blob/main/Road%20Accident%20Analysis.pdf)  

## 🔗 GitHub Clone Link  
```bash
git clone https://github.com/Gyanankur23/Road-Accident-Analysis-Dashboard.git
```

🚀 Dive into the data and discover patterns that matter. Feel free to reach out if you'd like to add visuals, custom KPIs, or storytelling highlights! 💡
