DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS M_pokemon;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE M_pokemon (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  level INTEGER NOT NULL,
  pokename TEXT NOT NULL,
  hp INTEGER NOT NULL,
  atk INTEGER NOT NULL,
  def INTEGER NOT NULL,
  spatk INTEGER NOT NULL,
  spdef INTEGER NOT NULL,
  crit INTEGER NOT NULL,
  cdr INTEGER NOT NULL,
  ls INTEGER NOT NULL,
  asd INTEGER NOT NULL,
  msd INTEGER NOT NULL,
  melee INTEGER NOT NULL,
  ranged INTEGER NOT NULL,
  type INTEGER NOT NULL
);

/* 適当insert */
insert into M_pokemon (level,pokename,hp,atk,def,spatk,spdef,crit,cdr,ls,asd,msd,melee,ranged,type) 
values(1,'Absol',3000,140,	52,	20,	36,	0, 	0, 	0, 	10.00, 	3650,1,0,3);
