INSERT INTO Jobs (
    p_address, p_city, p_state_province, p_country, p_zip_code, p_unit_number,
    d_address, d_city, d_state_province, d_country, d_zip_code, d_unit_number,
    Number_Of_Trucks, Job_Type, Start_Date, job_status, End_Date, Client_ID, Dispatcher_ID
)
SELECT
    '123 Main Street', 'New York', 'NY', 'USA', '10001', NULL,
    '456 Elm Street', 'Boston', 'MA', 'USA', '02115', NULL,
    2, 'Express', NOW(), 0, NULL, c.Client_ID, d.Dispatcher_ID
FROM
    Clients c, Dispatcher d
WHERE
    c.Client_ID = 5 AND d.Dispatcher_ID = 1;



INSERT INTO Jobs (
    p_address, p_city, p_state_province, p_country, p_zip_code, p_unit_number,
    d_address, d_city, d_state_province, d_country, d_zip_code, d_unit_number,
    Number_Of_Trucks, Job_Type, Start_Date, job_status, End_Date, Client_ID, Dispatcher_ID
)
SELECT
    '789 Maple Lane', 'Chicago', 'IL', 'USA', '60616', NULL,
    '123 Pine Street', 'Houston', 'TX', 'USA', '77002', NULL,
    3, 'Priority', NOW(), 0, NULL, c.Client_ID, 1
FROM
    Clients c
ORDER BY
    c.Client_ID DESC
LIMIT 1;



INSERT INTO Jobs (
    p_address, p_city, p_state_province, p_country, p_zip_code, p_unit_number,
    d_address, d_city, d_state_province, d_country, d_zip_code, d_unit_number,
    Number_Of_Trucks, Job_Type, Start_Date, job_status, End_Date, Client_ID, Dispatcher_ID
)
SELECT
    '456 Oak Avenue', 'Los Angeles', 'CA', 'USA', '90001', NULL,
    '321 Birch Drive', 'San Francisco', 'CA', 'USA', '94110', NULL,
    4, 'Standard', NOW(), 0, NULL, c.Client_ID, d.Dispatcher_ID
FROM
    Clients c
JOIN
    Dispatcher d
ORDER BY
    RAND()
LIMIT 1;
