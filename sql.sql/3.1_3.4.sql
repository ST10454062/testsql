use testingfile;

create table patient(
patientID int auto_increment primary key,
patientName varchar(15) not null,
patientSurname varchar(15) not null,
patientDOB date
);

create table doctor(
doctorID int auto_increment primary key,
doctorName varchar(15) not null,
doctorSurname varchar(15) not null

);

create table appointments(
appointmentID int auto_increment primary key,
doctorID int not null,
patientID int not null,
appointmentDate date,
appointmentTime time,
appointmentDuration int,
FOREIGN KEY (doctorID) REFERENCES doctor(doctorID),
FOREIGN KEY (patientID) REFERENCES patient(patientID)
);


insert into patient(patientID,patientName, patientSurname, patientDOB)
values(1,"Debbie", "theart", "1980-03-17"), (2, "thomas", "duncan", "1976-08-12");

insert into doctor(doctorID,doctorName, doctorSurname)
values(1,"Zintie", "Nukani"), (2, "Ravi", "Maharaj");

insert into appointments(appointmentID,appointmentDate, appointmentTime, appointmentDuration, doctorID, patientID)
values(1,"2024-01-15", "9:00", 15, 2, 1),
(2,"2024-01-18", "15:00", 30, 2, 2),
(3,"2024-01-20", "10:00", 15, 1, 1),
(4,"2024-01-21", "11:00", 15, 2, 1);


