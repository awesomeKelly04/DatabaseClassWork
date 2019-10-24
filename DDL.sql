create table Artist (
Artist_ID	integer	not null,
Artist_Name	char(35)	not null,
Rating	numeric(3,1)	null,
Phone_Number	Char(11)	null,
constraint	Artist_PK	PRIMARY KEY(Artist_ID)
);

insert into Artist values (1, "Awesome Kelly", 9.5, "08138015039");
insert into Artist values (2, "Awesome Kelly", 4.5, "08138015039");
insert into Artist values (3, "Awesome Kelly", 7.5, "08138015039");
insert into Artist values (4, "Awesome Kelly", 1.5, "08138015039");
insert into Artist values (5, "Awesome Kelly", 6.5, "08138015039");
insert into Artist values (6, "Awesome Kelly", 3.5, "08138015039");

create table Album (
Album_ID	integer		not null,
Album_Name	Char(35)	not null,
Track_Number	Integer		not null,
Genre	Char(30)	null,
Year_Rating	numeric(3,1)	null,
Artist_ID	integer	not null,
constraint	Album_PK	PRIMARY KEY(Album_ID),
constraint	Album_FK	foreign key(Artist_ID)
references Artist(Artist_ID)
);

insert into Album values (1, "Beautiful Future", 2, "Hiphop", 6.3, 3);
insert into Album values (2, "Beautiful Future", 1, "Hiphop", 4.3, 1);

select *
from Artist, Album
where Artist.Artist_ID = Album.Artist_ID
order by Artist.Artist_ID;