use testingfile;

select p.patientName, p.patientSurname, count(a.appointmentID) as totalAppointments
from patient p
join appointments a on p.patientID = a.patientID
group by p.patientID, p.patientName, p.patientSurname
order by totalAppointments desc;
