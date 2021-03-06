create table house(
   	id serial primary key,
   	name text not null,
   	sigil text,
   	words text,
   	allegiance_id bigint references house(id)
);

create table person(
	id serial primary key,
	name text not null,
	house_id bigint references house(id),
	farther_id bigint references person(id),
	mother_id bigint references person(id)
);
