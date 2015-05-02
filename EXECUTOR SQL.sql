--passengers table--
CREATE TABLE passengers
(
  iid text NOT NULL,
  firstname text,
  lastname text,
  species text,
  homeplanet text,
  CONSTRAINT passengers_pkey PRIMARY KEY (iid),
  CONSTRAINT passengers_species_fkey FOREIGN KEY (species)
      REFERENCES speciesinfo (species) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE passengers
  OWNER TO postgres;
  
DELETE FROM passengers

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('V01', 'Darth', 'Vader', 'Human', 'Tatooine'); --VIPs--

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('T02', 'Wilhuff', 'Tarkin', 'Human', 'Eriadu'); --moffs--

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('V03', 'Trachta', 'Ventor', 'Human', 'Coruscant');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('T04', 'Derran', 'Takkar', 'Human', 'Coruscant');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('T05', 'Leonia', 'Tavira', 'Human', 'Eiattu 6');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('J06', 'Tiaan', 'Jerjerrod', 'Human', 'Tinnel IV');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('B07', 'Tak', 'Bazierre', 'Human', 'Coruscant'); --stormtroopers--

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('K08', 'Kir', 'Kanos', 'Human', 'Coruscant');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('S09', 'Nova', 'Stihl', 'Human', 'Dantooine');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('T10', 'Brenn', 'Tantor', 'Human', 'Garos IV');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('T11', 'Hume', 'Tarl', 'Human', 'Corellia');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('F12', 'Davin', 'Felth', 'Human', 'Carida');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('F13', 'Soontir', 'Fel', 'Human', 'Corellia'); --pilots--

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('D14', 'Biggs', 'Darklighter', 'Human', 'Tatooine');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('E15', 'Juno', 'Eclipse', 'Human', 'Corulag');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('B16', 'Shira', 'Brie', 'Human', 'Coruscant');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('P17', 'Turr', 'Phennir', 'Human', 'Valahari');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('L18', 'Umak', 'Leth', 'Human', 'Coruscant'); --engineers--

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('M19', 'Dusque', 'Mistflier', 'Human', 'Talus');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('P20', 'Elo', 'Panil', 'Kaminoan', 'Kamino');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('H21', 'Han', 'Solo', 'Human', 'Corellia'); --prisoners--

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('O22', 'Leia', 'Organa', 'Human', 'Alderaan');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('F23', 'Boba', 'Fett', 'Mandalorian', 'Kamino'); --bounty hunters--

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('G24', 'IG', '88', 'Assassin Droid', 'Halowan');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('K25', 'Kenix', 'Kil', 'Human', 'Coruscant');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('D26', 'Bossh', 'Dosh', 'Trandoshan', 'Trandoshia');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('B27', 'Cad', 'Bane', 'Duros', 'Duro');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('Q28', 'Alessi', 'Quon', 'Sluissi', 'Sluis Van'); --more engineers--

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('X29', 'Qwi', 'Xux', 'Omwati', 'Omwat');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('W30', 'Lira', 'Wessex', 'Human', 'Kuat');

INSERT INTO passengers(iid, firstname, lastname, species, homeplanet) VALUES('V31', 'Elon', 'Vedij', 'Human', 'Coruscant'); --another pilot--

--bountyhunters table--
CREATE TABLE bountyhunters
(
  iid text NOT NULL,
  successratepercent integer,
  weaponofchoice text,
  vessel text,
  CONSTRAINT bountyhunters_pkey PRIMARY KEY (iid),
  CONSTRAINT bountyhunters_vessel_fkey FOREIGN KEY (vessel)
      REFERENCES ships (vessel) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE bountyhunters
  OWNER TO postgres;

DELETE FROM bountyhunters

INSERT INTO bountyhunters(iid, successratepercent, weaponofchoice, vessel) VALUES('F23', 95, 'EE-3 Carbine Rifle', 'Slave 1');

INSERT INTO bountyhunters(iid, successratepercent, weaponofchoice, vessel) VALUES('G24', 75, 'DLT-20A Blaster Rifle', 'IG-2000');

INSERT INTO bountyhunters(iid, successratepercent, weaponofchoice, vessel) VALUES('K25', 70, 'Force Pike', 'A-Wing');

INSERT INTO bountyhunters(iid, successratepercent, weaponofchoice, vessel) VALUES('D26', 85, 'Relby-v10 Microgrenade Launcher', 'Hounds Tooth');

INSERT INTO bountyhunters(iid, successratepercent, weaponofchoice, vessel) VALUES('B27', 90, 'LL-30 Blaster Pistols', 'Sleight of Hand');

--engineers table--
CREATE TABLE engineers
(
  iid text NOT NULL,
  specialty text,
  yearsinservice text,
  CONSTRAINT engineers_pkey PRIMARY KEY (iid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE engineers
  OWNER TO postgres;

DELETE FROM engineers

INSERT INTO engineers(iid, specialty, yearsinservice) VALUES('L18', 'weaponry', 12);

INSERT INTO engineers(iid, specialty, yearsinservice) VALUES('M19', 'bioengineering', 4);

INSERT INTO engineers(iid, specialty, yearsinservice) VALUES('P20', 'weaponry', 1);

--moffs table--
CREATE TABLE moffs
(
  iid text NOT NULL,
  sectorgoverned text,
  CONSTRAINT moffs_pkey PRIMARY KEY (iid),
  CONSTRAINT moffs_sectorgoverned_fkey FOREIGN KEY (sectorgoverned)
      REFERENCES sectorinfo (sectorgoverned) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE moffs
  OWNER TO postgres;

DELETE FROM moffs

INSERT INTO moffs(iid, sectorgoverned) VALUES('T02', 'Seswenna Sector');

INSERT INTO moffs(iid, sectorgoverned) VALUES('V03', 'Imperial Center Oversector');

INSERT INTO moffs(iid, sectorgoverned) VALUES('T04', 'Tapani Sector');

INSERT INTO moffs(iid, sectorgoverned) VALUES('T05', 'Ado Sector');

INSERT INTO moffs(iid, sectorgoverned) VALUES('J06', 'Quanta Sector');

--pilots table--
CREATE TABLE pilots
(
  iid text NOT NULL,
  vessel text,
  yearsinservice integer,
  CONSTRAINT pilots_pkey PRIMARY KEY (iid),
  CONSTRAINT pilots_vessel_fkey FOREIGN KEY (vessel)
      REFERENCES ships (vessel) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE pilots
  OWNER TO postgres;

DELETE FROM pilots

INSERT INTO pilots(iid, vessel, yearsinservice) VALUES('F13', 'TIE Fighter DS-06', 11);

INSERT INTO pilots(iid, vessel, yearsinservice) VALUES('D14', 'TIE Fighter DS-91', 2);

INSERT INTO pilots(iid, vessel, yearsinservice) VALUES('E15', 'TIE Interceptor DS-51', 6);

INSERT INTO pilots(iid, vessel, yearsinservice) VALUES('B16', 'TIE Fighter DS-38', 15);

INSERT INTO pilots(iid, vessel, yearsinservice) VALUES('P17', 'TIE Bomber DS-09', 11);

--prisoners table--
CREATE TABLE prisoners
(
  iid text NOT NULL,
  offense text,
  isdangerous boolean,
  CONSTRAINT prisoners_pkey PRIMARY KEY (iid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE prisoners
  OWNER TO postgres;


DELETE FROM prisoners

INSERT INTO prisoners(iid, offense, isdangerous) VALUES('H21', 'treason', true);

INSERT INTO prisoners(iid, offense, isdangerous) VALUES('O22', 'treason', false);

--stormtroopers table--
CREATE TABLE stormtroopers
(
  iid text NOT NULL,
  designation text,
  yearsinservice integer,
  CONSTRAINT stormtroopers_pkey PRIMARY KEY (iid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE stormtroopers
  OWNER TO postgres;

DELETE FROM stormtroopers

INSERT INTO stormtroopers(iid, designation, yearsinservice) VALUES('B07', 'Assault Trooper', 10);

INSERT INTO stormtroopers(iid, designation, yearsinservice) VALUES('K08', 'Elite Guard', 15);

INSERT INTO stormtroopers(iid, designation, yearsinservice) VALUES('S09', 'Scout Trooper', 7);

INSERT INTO stormtroopers(iid, designation, yearsinservice) VALUES('T10', 'Imperial Marine', 4);

INSERT INTO stormtroopers(iid, designation, yearsinservice) VALUES('T11', 'Shock Trooper', 11);

INSERT INTO stormtroopers(iid, designation, yearsinservice) VALUES('F12', 'EVO Trooper', 6);

--VIPs table--
CREATE TABLE vips
(
  iid text NOT NULL,
  "position" text,
  CONSTRAINT vips_pkey PRIMARY KEY (iid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE vips
  OWNER TO postgres;

DELETE FROM vips

INSERT INTO vips(iid, position) VALUES('V01', 'Supreme Commander of Imperial Forces')

--docked ships table--
CREATE TABLE dockedships
(
  vessel text NOT NULL,
  vid text,
  CONSTRAINT dockedships_pkey PRIMARY KEY (vessel),
  CONSTRAINT dockedships_vid_fkey FOREIGN KEY (vid)
      REFERENCES shiplocations (vid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE dockedships
  OWNER TO postgres;

DELETE FROM dockedships

INSERT INTO dockedships(vessel, vid) VALUES('TIE Fighter DS-06', 'TF06');

INSERT INTO dockedships(vessel, vid) VALUES('TIE Fighter DS-91', 'TF91');

INSERT INTO dockedships(vessel, vid) VALUES('TIE Interceptor DS-51', 'TF51');

INSERT INTO dockedships(vessel, vid) VALUES('TIE Fighter DS-38', 'TF38');

INSERT INTO dockedships(vessel, vid) VALUES('TIE Bomber DS-09', 'TF09');

INSERT INTO dockedships(vessel, vid) VALUES('Slave 1', 'SL1');

INSERT INTO dockedships(vessel, vid) VALUES('IG-2000', 'IG2000');

INSERT INTO dockedships(vessel, vid) VALUES('A-Wing', 'AW03');

INSERT INTO dockedships(vessel, vid) VALUES('Hounds Tooth', 'HT4');

INSERT INTO dockedships(vessel, vid) VALUES('Sleight of Hand', 'SLH2');

--sectorinfo table--
CREATE TABLE sectorinfo
(
  sectorgoverned text NOT NULL,
  region text,
  numberofsystems integer,
  numberoftraderoutes integer,
  sectorcapital text,
  CONSTRAINT sectorinfo_pkey PRIMARY KEY (sectorgoverned)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE sectorinfo
  OWNER TO postgres;

DELETE FROM sectorinfo

INSERT INTO sectorinfo(sectorgoverned, region, numberofsystems, numberoftraderoutes, sectorcapital) VALUES ('Seswenna Sector', 'Outer Rim Territories', 21, 4, 'Eriadu');

INSERT INTO sectorinfo(sectorgoverned, region, numberofsystems, numberoftraderoutes, sectorcapital) VALUES ('Imperial Center Oversector', 'Deep Core', 3, 2, 'Anaxes');

INSERT INTO sectorinfo(sectorgoverned, region, numberofsystems, numberoftraderoutes, sectorcapital) VALUES ('Tapani Sector', 'Colonies Territory', 98, 9, 'Procopia');

INSERT INTO sectorinfo(sectorgoverned, region, numberofsystems, numberoftraderoutes, sectorcapital) VALUES ('Ado Sector', 'Mid Rim Territories', 11, 3, 'Eiattu');

INSERT INTO sectorinfo(sectorgoverned, region, numberofsystems, numberoftraderoutes, sectorcapital) VALUES ('Quanta Sector', 'Core Worlds', 1, 1, 'Tinnel IV');

--shiplocations table--
CREATE TABLE shiplocations
(
  vid text NOT NULL,
  hangar integer,
  CONSTRAINT shiplocations_pkey PRIMARY KEY (vid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE shiplocations
  OWNER TO postgres;

DELETE FROM shiplocations

INSERT INTO shiplocations(vid, hangar) VALUES('TF06', 8);

INSERT INTO shiplocations(vid, hangar) VALUES('TF91', 12);

INSERT INTO shiplocations(vid, hangar) VALUES('TF51', 6);

INSERT INTO shiplocations(vid, hangar) VALUES('TF38', 9);

INSERT INTO shiplocations(vid, hangar) VALUES('TF09', 12);

INSERT INTO shiplocations(vid, hangar) VALUES('SL1', 17);

INSERT INTO shiplocations(vid, hangar) VALUES('IG2000', 13);

INSERT INTO shiplocations(vid, hangar) VALUES('AW03', 19);

INSERT INTO shiplocations(vid, hangar) VALUES('HT4', 17);

INSERT INTO shiplocations(vid, hangar) VALUES('SLH2', 15);  

--ships table--
CREATE TABLE ships
(
  vessel text NOT NULL,
  manufacturer text,
  CONSTRAINT ships_pkey PRIMARY KEY (vessel)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE ships
  OWNER TO postgres;

DELETE FROM ships

INSERT INTO ships(vessel, manufacturer) VALUES('TIE Fighter DS-06', 'Sienar Fleet Systems');

INSERT INTO ships(vessel, manufacturer) VALUES('TIE Fighter DS-91', 'Sienar Fleet Systems');

INSERT INTO ships(vessel, manufacturer) VALUES('TIE Interceptor DS-51', 'Sienar Fleet Systems');

INSERT INTO ships(vessel, manufacturer) VALUES('TIE Fighter DS-38', 'Sienar Fleet Systems');

INSERT INTO ships(vessel, manufacturer) VALUES('TIE Bomber DS-09', 'Sienar Fleet Systems');

INSERT INTO ships(vessel, manufacturer) VALUES('Slave 1', 'Kuat Systems Engineering');

INSERT INTO ships(vessel, manufacturer) VALUES('A-Wing', 'Incom Corporation');

INSERT INTO ships(vessel, manufacturer) VALUES('Hounds Tooth', 'Corellian Engineering Corporation');

INSERT INTO ships(vessel, manufacturer) VALUES('Sleight of Hand', 'Telgorn Corporation');

INSERT INTO ships(vessel, manufacturer) VALUES('IG-2000', 'Mechis III');

--speciesinfo table--
CREATE TABLE speciesinfo
(
  species text NOT NULL,
  originplanet text,
  specieslanguage text,
  CONSTRAINT speciesinfo_pkey PRIMARY KEY (species)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE speciesinfo
  OWNER TO postgres;

DELETE FROM speciesinfo

INSERT INTO speciesinfo(species, originplanet, specieslanguage) VALUES('Human', 'Coruscant','Basic');

INSERT INTO speciesinfo(species, originplanet, specieslanguage) VALUES('Kaminoan', 'Kamino', 'Kaminoan');

INSERT INTO speciesinfo(species, originplanet, specieslanguage) VALUES('Mandalorian', 'Mandalore', 'Mando''a');

INSERT INTO speciesinfo(species, originplanet, specieslanguage) VALUES('Assassin Droid', 'Halowan', 'Basic');

INSERT INTO speciesinfo(species, originplanet, specieslanguage) VALUES('Trandoshan', 'Trandoshia', 'Saurin');

INSERT INTO speciesinfo(species, originplanet, specieslanguage) VALUES('Duros', 'Duro', 'Durese');

INSERT INTO speciesinfo(species, originplanet, specieslanguage) VALUES('Sluissi', 'Sluis Van', 'Sluissese');

INSERT INTO speciesinfo(species, originplanet, specieslanguage) VALUES('Omwati', 'Omwat', 'Omwatese');

INSERT INTO speciesinfo(species, originplanet, specieslanguage) VALUES('Wookie', 'Kashyyyk', 'Shyriiwook');

INSERT INTO speciesinfo(species, originplanet, specieslanguage) VALUES('Rodian', 'Rodia', 'Rodese');

INSERT INTO speciesinfo(species, originplanet, specieslanguage) VALUES('Bothan', 'Bothawui', 'Bothese');

INSERT INTO speciesinfo(species, originplanet, specieslanguage) VALUES('Sullustan', 'Sullust', 'Sullustese');

INSERT INTO speciesinfo(species, originplanet, specieslanguage) VALUES('Gand', 'Gand', 'Gand');

INSERT INTO speciesinfo(species, originplanet, specieslanguage) VALUES('Quarren', 'Mon Calamri',' Quarrenese');
  

--Views--
--Ships and their locations--
CREATE VIEW whereships AS
SELECT vessel, hangar
FROM shiplocations
INNER JOIN dockedships
ON dockedships.vid = shiplocations.vid

select *
from whereships

--Bounty Hunters in order of their successrate--
CREATE VIEW highestsuccessrate AS
SELECT firstname, lastname, successratepercent
FROM bountyhunters
INNER JOIN passengers
ON passengers.iid = bountyhunters.iid
ORDER BY successratepercent DESC

select *
from highestsuccessrate

--Moffs in order of power (how big their governed sector is)--
CREATE VIEW moffspower AS
select firstname, lastname, moffs.sectorgoverned
from moffs
inner join passengers
on passengers.iid = moffs.iid
inner join sectorinfo
on moffs.sectorgoverned = sectorinfo.sectorgoverned
order by numberofsystems desc

select *
from moffspower

--Queries--
--Query to show percent of how many passengers are not human--
select round(cast((x.number * 100) as float) / cast((y.number * 100) AS float) * 100) as percentnonhuman
from
(
	select count(iid) as number
	from passengers
	where species <> 'Human'
) x
join
(
	select count(iid) as number
	from passengers

) y on 1=1

--Query to show percent of passengers who are not of the Galactic Empire--
select round(cast((nonimperials * 100) as float) / cast((z.number * 100) as float) *100) as percentnonimperial
from 
(select trunc(x.number + y.number) as nonimperials
from
(
	select count(iid) as number
	from bountyhunters
) x
join
(
	select count(iid) as number
	from prisoners
) y on 1=1) as notimperials
join
(
	select count(iid) as number
	from passengers
) z on 1=1

--Query to show combat ready personnel
select round(cast((combatpersonnel * 100) as float) / cast((z.number * 100) as float) *100) as percentcombatready
from 
(select trunc(x.number + y.number) as combatpersonnel
from
(
	select count(iid) as number
	from stormtroopers
) x
join
(
	select count(iid) as number
	from pilots
) y on 1=1) as combatready
join
(
	select count(iid) as number
	from passengers
) z on 1=1


--stored procedures--
--Given the firstname of a Bounty Hunter, shows where their ship is docked-- 
CREATE OR REPLACE FUNCTION wheredocked(text, refcursor) returns refcursor as 
$$
declare
	bountyfirstname text :=$1;
	resultset refcursor :=$2;
begin
open resultset for

select hangar
from shiplocations
where vid = (

	select vid
	from dockedships
	where vessel = ( 

		select vessel
		from bountyhunters
		where iid = (

			select iid
			from bountyhunters
			where iid = (

				select iid
				from passengers
				where bountyfirstname = firstname
				))));
				return resultset;
end;
$$
language plpgsql;

select wheredocked('Boba', 'results');
fetch all from results;

--Given the VID of a vessel, shows the name of the vessel--
CREATE OR REPLACE FUNCTION vid(text, refcursor) returns refcursor as
$$
declare
	vesselid text:=$1;
	resultset refcursor :=$2;
begin
	open resultset for
	select vessel
	from dockedships
	where vesselid = vid
	limit 1;
	return resultset;
end;
$$
language plpgsql;


select vid('HT4', 'results');
fetch all from results;

--Given a sector capital, shows which Moff governs it--
create or replace function whichmoff(text, refcursor) returns refcursor as
$$
declare 
	capitalplanet text :=$1;
	resultset refcursor :=$2;
begin
open resultset for
select firstname, lastname
from passengers
where iid = (

	select iid
	from moffs
	where sectorgoverned = (

		select sectorgoverned
		from sectorinfo
		where capitalplanet = sectorcapital));
		return resultset;
end;
$$
language plpgsql;

select whichmoff('Procopia', 'results');
fetch all from results;


--Security--
--VIPs and Moffs--
create role admins;
grant all on all tables
in schema public
to admins;

--Imperial Administrators--
create role imperials;
grant select on bountyhunters, dockedships, engineers, 
		moffs, passengers, pilots, 
		prisoners, sectorinfo, shiplocations, ships, 
		speciesinfo, stormtroopers, vips
to imperials;
grant insert on bountyhunters, dockedships, engineers, 
		passengers, pilots, prisoners, 
		sectorinfo, shiplocations, ships, stormtroopers
to imperials;
grant update on bountyhunters, dockedships, prisoners, sectorinfo, 
		shiplocations, ships
to imperials;

--Non imperials--
create role nonimperials;
grant select on sectorinfo, shiplocations, ships, speciesinfo
to nonimperials;
grant insert on ships
to nonimperials;