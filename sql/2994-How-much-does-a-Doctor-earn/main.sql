CREATE TABLE IF NOT EXISTS doctors(
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS work_shifts(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    bonus NUMERIC
);

CREATE TABLE IF NOT EXISTS attendances(
    id INT PRIMARY KEY,
    id_doctor INT REFERENCES doctors(id),
    hours INT,
    id_work_shift INT REFERENCES work_shifts(id)
);

INSERT INTO doctors (id,name) VALUES
(1,'Arlino'),
(2,'Tiago'),
(3,'Amanda'),
(4,'Wellington');

INSERT INTO work_shifts (id,name,bonus) VALUES
(1,'nocturnal',15),
(2,'afternoon',2),
(3,'day',1);

INSERT INTO attendances(id,id_doctor,hours,id_work_shift) VALUES
(1,1,5,1),
(2,3,2,1),
(3,3,3,2),
(4,2,2,3),
(5,1,5,3),
(6,4,1,3),
(7,4,2,1),
(8,3,2,2),
(9,2,4,2);

-- My solution
WITH doctors_salary AS(
SELECT 
    doctors.name as name, 
    SUM(attendances.hours) * 150 * 
        CASE 
            WHEN work_shifts.name = 'day' THEN 1.01
            WHEN work_shifts.name = 'afternoon' THEN 1.02
            WHEN work_shifts.name = 'nocturnal' THEN 1.15
            ELSE 0
        END AS adjusted_payment
FROM attendances
JOIN doctors ON attendances.id_doctor = doctors.id
JOIN work_shifts ON attendances.id_work_shift = work_shifts.id
GROUP BY doctors.name, work_shifts.name
)
SELECT name, ROUND(SUM(adjusted_payment),1) as salary FROM doctors_salary
GROUP BY name
ORDER BY SUM(adjusted_payment) DESC;

-- ChatGPT
SELECT 
    doctors.name,
    ROUND(SUM(attendances.hours * 150 * (1 + work_shifts.bonus / 100.0)), 1) AS salary
FROM attendances
JOIN doctors ON attendances.id_doctor = doctors.id
JOIN work_shifts ON attendances.id_work_shift = work_shifts.id
GROUP BY doctors.id
ORDER BY salary DESC;

DROP TABLE IF EXISTS attendances;
DROP TABLE IF EXISTS doctors;
DROP TABLE IF EXISTS work_shifts;