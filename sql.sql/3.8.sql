CREATE OR REPLACE VIEW patients_with_doctor2 AS
SELECT DISTINCT
    p.patientName,
    p.patientSurname
FROM patient p
JOIN appointments a ON p.patientID = a.patientID
WHERE a.doctorID = 2
ORDER BY p.patientSurname ASC;



SELECT * FROM patients_with_doctor2;
