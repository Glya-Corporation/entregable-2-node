CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "email" varchar NOT NULL,
  "pass" varchar NOT NULL,
  "age" int,
  "birthday" date
);

CREATE TABLE "post" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar,
  "desciption" varchar,
  "author_id" int
);

CREATE TABLE "tags" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "tags_post" (
  "id" SERIAL PRIMARY KEY,
  "posts_id" int,
  "tags_id" int
);

CREATE TABLE "comentary" (
  "id" SERIAL PRIMARY KEY,
  "desciption" varchar,
  "post_id" int
);

ALTER TABLE "post" ADD FOREIGN KEY ("author_id") REFERENCES "users" ("id");

ALTER TABLE "comentary" ADD FOREIGN KEY ("post_id") REFERENCES "post" ("id");

ALTER TABLE "tags_post" ADD FOREIGN KEY ("tags_id") REFERENCES "tags" ("id");

ALTER TABLE "tags_post" ADD FOREIGN KEY ("posts_id") REFERENCES "post" ("id");


insert into users (name, email, pass, age, birthday) values 
('Luis Uzcategui', 'alfonsouzcategui@gmail.com', '0123456789' , 24, '1997-11-18'),
('Alfonso Martinez', 'luismartinez@gmail.com', '0123564789', 24, '1997-11-18');

insert into post (title, desciption, author_id) values
('como programar en tres pasos', 'primero desarrolla logica, segundo pactica bastante y tercero aplica todo en tu dia a dia', 1),
('El libro mayor resumen', 'la ciencia lo puede todo', 2);

insert into tags (name) values
('Tegnology'),
('science');

insert into tags_post (posts_id, tags_id) values
(1, 1),
(2, 1),
(2, 2);

insert into comentary (desciption, post_id) values
('Buenas recomendaciones', 1),
('Me han servido estas recomendaciones para crear abitos cuando programo', 1),
('El libro del cual habla este resumen es muy bueno', 2);