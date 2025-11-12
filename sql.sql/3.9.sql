
DELIMITER $$

CREATE PROCEDURE get_appointments(IN inputDate DATE)
BEGIN
    SELECT 
        a.appointmentTime,
        a.appointmentDuration,
        d.doctorName,
        d.doctorSurname,
        p.patientName,
        p.patientSurname
    FROM appointments a
    JOIN doctor d ON a.doctorID = d.doctorID
    JOIN patient p ON a.patientID = p.patientID
    WHERE a.appointmentDate = inputDate
    ORDER BY a.appointmentTime ASC;
END $$

DELIMITER ;

CALL get_appointments('2024-01-18');
