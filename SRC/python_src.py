from faker import Faker
import random
import mysql.connector

# Initialize Faker
fake = Faker()

# Connect to MySQL database
connection = mysql.connector.connect(
    host="localhost",
    port=3306,
    user="root",
    password="admin123",  # Password updated here
    database="dispatcher_management_system"
)
cursor = connection.cursor()

try:
    # Start a transaction
    connection.start_transaction()

    # Insert dispatcher
    print("Inserting dispatcher...")
    dispatcher = [("John", "Doe", "1234567890")]
    cursor.executemany("""
        INSERT INTO Dispatcher (F_Name, L_Name, Phone_No)
        VALUES (%s, %s, %s)
    """, dispatcher)
    connection.commit()
    print(f"Inserted {len(dispatcher)} dispatcher.")

    # Debugging: Check if dispatcher was inserted
    cursor.execute("SELECT * FROM Dispatcher")
    dispatcher_data = cursor.fetchall()
    print("Dispatcher Table Contents:", dispatcher_data)

    # Insert clients
    print("Inserting clients...")
    clients = []
    for _ in range(50):  # 50 clients
        clients.append((
            fake.first_name(),
            fake.last_name(),
            fake.email(),
            fake.numerify(text="##########")  # 10-digit phone number
        ))
    cursor.executemany("""
        INSERT INTO Clients (F_name, L_name, Email, Phone_No)
        VALUES (%s, %s, %s, %s)
    """, clients)
    connection.commit()
    print(f"Inserted {len(clients)} clients.")

    # Get the range of Client_IDs
    cursor.execute("SELECT MIN(Client_ID), MAX(Client_ID) FROM Clients")
    client_id_min, client_id_max = cursor.fetchone()

    # Insert drivers
    print("Inserting drivers...")
    drivers = []
    for _ in range(150):  # Insert 150 drivers
        drivers.append((
            random.choice(["Class A", "Class B", "Class C", "Class D", "Class E"]),
            fake.first_name(),
            fake.last_name(),
            random.choice([0, 1]),  # Availability
            fake.numerify(text="##########"),  # Ensure 10-digit phone number
            1  # Dispatcher_ID (assume 1 dispatcher)
        ))
    cursor.executemany("""
        INSERT INTO Drivers (License_Type, F_Name, L_Name, Availability, Phone_No, Dispatcher_ID)
        VALUES (%s, %s, %s, %s, %s, %s)
    """, drivers)
    connection.commit()
    print(f"Inserted {len(drivers)} drivers.")

    # Insert trucks
    print("Inserting trucks...")
    trucks = []
    for _ in range(500):  # Insert 500 trucks
        trucks.append((
            fake.license_plate(),
            fake.company(),
            random.randint(5000, 30000),  # Max capacity
            random.randint(0, 100000),  # Total driven
            1,  # Availability
            fake.date_this_year(),
            1  # Dispatcher_ID
        ))
    cursor.executemany("""
        INSERT INTO Trucks (License_Plate, Truck_Brand, Max_Capacity, Total_Driven, Availability, Last_Service_Date, Dispatcher_ID)
        VALUES (%s, %s, %s, %s, %s, %s, %s)
    """, trucks)
    connection.commit()
    print(f"Inserted {len(trucks)} trucks.")

    # Insert jobs
    print("Inserting jobs...")
    jobs = []
    for _ in range(3000):  # Insert 3000 jobs
        jobs.append((
            fake.street_address(),
            fake.city(),
            fake.state_abbr(),
            fake.country()[:50],
            fake.zipcode(),
            fake.secondary_address(),
            fake.street_address(),
            fake.city(),
            fake.state_abbr(),
            fake.country()[:50],
            fake.zipcode(),
            fake.secondary_address(),
            random.randint(1, 5),  # Number of trucks
            random.choice(["Standard", "Express", "Priority"]),
            fake.date_time_this_year(),
            0,  # job_status
            random.randint(client_id_min, client_id_max),  # Valid Client_ID
            1  # Dispatcher_ID
        ))
    cursor.executemany("""
        INSERT INTO Jobs (p_address, p_city, p_state_province, p_country, p_zip_code, p_unit_number, d_address, d_city, d_state_province, d_country, d_zip_code, d_unit_number, Number_Of_Trucks, Job_Type, Start_Date, job_status, Client_ID, Dispatcher_ID)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
    """, jobs)
    connection.commit()
    print(f"Inserted {len(jobs)} jobs.")

    # Insert job details
    print("Inserting job details...")
    cursor.execute("SELECT MIN(Job_ID), MAX(Job_ID) FROM Jobs")
    job_id_min, job_id_max = cursor.fetchone()

    cursor.execute("SELECT MIN(Truck_ID), MAX(Truck_ID) FROM Trucks")
    truck_id_min, truck_id_max = cursor.fetchone()

    job_details = []
    for _ in range(5000):  # Insert 5000 job details
        job_details.append((
            random.randint(truck_id_min, truck_id_max),  # Valid Truck_ID
            random.randint(1, 150),  # Driver_ID (assume 150 drivers)
            random.randint(job_id_min, job_id_max)  # Valid Job_ID
        ))
    cursor.executemany("""
        INSERT INTO JobDetails (Truck_ID, Driver_ID, Job_ID)
        VALUES (%s, %s, %s)
    """, job_details)
    print(f"Inserted {len(job_details)} job details.")

    # Insert expenses
    print("Inserting expenses...")
    expenses = []
    for _ in range(500):  # Insert 500 expenses
        expenses.append((
            random.randint(1, 3000),  # Job_ID
            random.randint(1, 500),  # Truck_ID
            random.randint(50, 500),  # Fuel cost
            random.randint(0, 100),  # Toll cost
            random.randint(0, 200),  # Other expenses
            fake.date_this_year()
        ))
    cursor.executemany("""
        INSERT INTO Expenses (Job_ID, Truck_ID, Fuel_Cost, Toll_Cost, Other_Expenses, Date)
        VALUES (%s, %s, %s, %s, %s, %s)
    """, expenses)
    print(f"Inserted {len(expenses)} expenses.")

    # Commit the transaction
    connection.commit()
    print("Data generation and insertion completed successfully!")

except mysql.connector.Error as err:
    # Roll back the transaction in case of an error
    connection.rollback()
    print(f"Error: {err}")
finally:
    cursor.close()
    connection.close()
    print("Database connection closed.")
