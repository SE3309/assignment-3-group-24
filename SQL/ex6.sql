UPDATE Drivers
SET Availability = 0
WHERE Driver_ID IN (
    SELECT Driver_ID
    FROM JobDetails jd
    JOIN Jobs j ON jd.Job_ID = j.Job_ID
    WHERE j.job_status = 0
);

UPDATE Trucks
SET Availability = 0
WHERE Total_Driven > 75000
AND Truck_ID IN (
    SELECT DISTINCT Truck_ID
    FROM JobDetails
    JOIN Jobs ON JobDetails.Job_ID = Jobs.Job_ID
    WHERE Jobs.job_status = 0
);

INSERT INTO Expenses (Job_ID, Truck_ID, Fuel_Cost, Toll_Cost, Other_Expenses, Date)
SELECT
    j.Job_ID,
    t.Truck_ID,
    COALESCE(SUM(e.Fuel_Cost), 0) AS Fuel_Cost,
    COALESCE(SUM(e.Toll_Cost), 0) AS Toll_Cost,
    COALESCE(SUM(e.Other_Expenses), 0) AS Other_Expenses,
    CURDATE() AS Date
FROM
    Jobs j
JOIN
    JobDetails jd ON j.Job_ID = jd.Job_ID
JOIN
    Trucks t ON jd.Truck_ID = t.Truck_ID
LEFT JOIN
    Expenses e ON j.Job_ID = e.Job_ID
WHERE
    j.job_status = 0
GROUP BY
    j.Job_ID, t.Truck_ID
LIMIT 5;
