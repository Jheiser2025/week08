DROP TABLE IF EXISTS project;
DROP TABLE IF EXISTS material;
DROP TABLE IF EXISTS step;
DROP TABLE IF EXISTS category;
drop table if exists project_category;


CREATE TABLE project_category (
	project_id int /*auto_increment*/not null,
	category_id VARCHAR(64) not null
);

CREATE TABLE category (
	project_id int /*auto_increment*/not null,
	category_id VARCHAR(64) not null
);

CREATE TABLE step (
	step_id int /*auto_increment*/ not null,
	project_id int not null,
	step_text TEXT not null,
	step_order int not null

);

CREATE TABLE material (
	material_id int /*auto_increment*/ not null,
	project_id int /*auto_increment*/ not null,
	material_name VARCHAR(128) not null,
	num_required int not null,
	cost DECIMAL(7, 2)
);


CREATE TABLE project (
	project_id int/*auto_increment*/ not null,
	project_name VARCHAR(128) not null,
	estimate_hours DECIMAL(7, 2),
	actual_hours DECIMAL(7, 2),
	difficulty int not null,
	notes TEXT not null
);
