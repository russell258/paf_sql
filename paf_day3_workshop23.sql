use paf_jul2023;

select * from customer;

create table video(
	id		int not null auto_increment,
    title	varchar(255),
    synopsis	text,
    available_count int,
    constraint pk_video_id primary key (id)
);

create table loan (
	id		int not null auto_increment,
    customer_id		int not null,
    loan_date	date,
    return_date	date,
    constraint pk_loan_id primary key(id),
    constraint fk_loan_customer_id foreign key (customer_id) references customer (id)
);

create table loan_details(
	id			int not null auto_increment,
    loan_id		int not null,
    video_id	int not null,
    constraint pk_loandetails_id primary key (id),
    constraint fk_loandetails_loan_id foreign key (loan_id) references loan(id),
    constraint fk_loandetails_video_id foreign key (video_id) references video(id)
);

insert into video (title,synopsis, available_count) values ('Top Gun Maverick', 'Tom Cruise', 5);
insert into video values (null, 'Three Idiots', 'Indian movie', 1);
insert into video values (null, 'Harry Potter', 'Emma', 5);
insert into video values (null, 'Poltergeist', 'Scary', 3);
insert into video values (null, 'Wrong Turn', 'Scary', 7);
insert into video values (null, 'Family Fathe', 'Slice of Life', 9);

update video
set title = 'Scream S',
synopsis = 'sadistic'
where id = 3;

select * from video;