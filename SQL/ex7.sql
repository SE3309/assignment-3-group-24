CREATE VIEW JobTotalCost AS
SELECT
    Job_ID,
    SUM(Total_Cost) AS Total_Job_Cost
FROM
    Expenses
GROUP BY
    Job_ID;

CREATE VIEW TruckUsageSummary AS
SELECT
    t.Truck_ID,
    t.License_Plate,
    t.Total_Driven AS Total_Distance,
    COUNT(jd.Job_ID) AS Total_Jobs_Assigned
FROM
    Trucks t
LEFT JOIN
    JobDetails jd ON t.Truck_ID = jd.Truck_ID
GROUP BY
    t.Truck_ID, t.License_Plate, t.Total_Driven;
