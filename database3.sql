use examprep1;

create table Client(
ClientID int auto_increment primary key,
ClientName varchar(255) not null,
ClientSurname varchar(255) not null,
ClientAddress varchar(255) not null
);
