-- 1. Simple SELECT with Filtering
-- Selects the drivers who are available to drive ordered alphabetically by first and last name
SELECT 
    F_Name, 
    L_Name 
FROM 
    Drivers 
WHERE 
    Availability = 1 
ORDER BY 
    F_Name ASC, 
    L_Name ASC;

-- 2. Aggregation with Group BY
-- Finds the total fuel cost for jobs where the fuel cost exceeds $500, ordered by total fuel cost
SELECT 
    Job_ID, 
    SUM(Fuel_Cost) AS Total_Fuel_Cost 
FROM 
    Expenses 
GROUP BY 
    Job_ID 
HAVING 
    SUM(Fuel_Cost) > 500 
ORDER BY 
    Total_Fuel_Cost ASC;

-- 3. Inner Join with Filtering
-- Retrieves the first and last names of drivers who have uploaded a document of type ‘Medical Certificate’
SELECT 
    d.F_Name,  
    d.L_Name 
FROM 
    Drivers d 
INNER JOIN 
    DriverDocuments dd 
ON 
    d.Driver_ID = dd.Driver_ID 
WHERE 
    dd.Document_Type = 'Medical Certificate';

-- 4. Driver and Job Match with Expense Aggregation
-- Retrieves driver names and total expenses for jobs with expenses exceeding $1,000
SELECT 
    d.F_Name, 
    d.L_Name, 
    j.Job_ID, 
    SUM(e.Total_Cost) AS TotalExpense 
FROM 
    Drivers d 
INNER JOIN 
    JobDetails jd ON d.Driver_ID = jd.Driver_ID 
INNER JOIN 
    Jobs j ON jd.Job_ID = j.Job_ID 
INNER JOIN 
    Expenses e ON j.Job_ID = e.Job_ID 
GROUP BY 
    d.F_Name, d.L_Name, j.Job_ID 
HAVING 
    SUM(e.Total_Cost) > 1000 
ORDER BY 
    TotalExpense DESC;

-- 5. Trucks Used for Jobs with Expenses Above Average
-- Lists trucks used in jobs where the total job expense exceeds the average job expense
SELECT 
    t.Truck_ID,  
    t.License_Plate,  
    j.Job_ID,  
    SUM(e.Total_Cost) AS Total_Job_Cost  
FROM  
    Trucks t  
INNER JOIN  
    JobDetails jd ON t.Truck_ID = jd.Truck_ID  
INNER JOIN  
    Jobs j ON jd.Job_ID = j.Job_ID  
INNER JOIN  
    Expenses e ON j.Job_ID = e.Job_ID  
GROUP BY  
    t.Truck_ID, t.License_Plate, j.Job_ID  
HAVING  
    SUM(e.Total_Cost) > ( 
        SELECT AVG(job_total_cost)  
        FROM ( 
            SELECT SUM(Total_Cost) AS job_total_cost  
            FROM Expenses  
            GROUP BY Job_ID 
        ) AS job_costs 
    );

-- 6. Trucks Used Most Frequently
-- Finds trucks used in the most jobs and their total mileage
SELECT 
    t.Truck_ID, 
    t.License_Plate, 
    COUNT(j.Job_ID) AS JobCount, 
    t.Total_Driven  
FROM 
    Trucks t  
INNER JOIN 
    JobDetails jd ON t.Truck_ID = jd.Truck_ID  
INNER JOIN 
    Jobs j ON jd.Job_ID = j.Job_ID  
GROUP BY 
    t.Truck_ID, t.License_Plate, t.Total_Driven  
ORDER BY 
    JobCount DESC, 
    t.Total_Driven DESC;

-- 7. Nested Subquery
-- Lists driver details for jobs handled by drivers in a specific city
SELECT 
    Driver_ID, 
    F_Name, 
    L_Name, 
    License_Type, 
    Availability  
FROM 
    Drivers  
WHERE  
    Driver_ID IN ( 
        SELECT 
            Driver_ID 
        FROM 
            JobDetails 
        WHERE 
            Job_ID IN ( 
                SELECT 
                    Job_ID  
                FROM 
                    Jobs 
                WHERE 
                    p_city = 'West John' 
            ) 
    );
