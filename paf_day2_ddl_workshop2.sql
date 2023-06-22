use paf_jul2023;

create table rsvp(
	id int not null auto_increment,
    full_name varchar(200) not null,
    email varchar(100) not null,
    phone int,
    confirmation_date date,
    comments text,
    constraint pk_rsvp_id primary key (id)
    );
    