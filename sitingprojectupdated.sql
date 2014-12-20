

--student
		Drop table if exists Student;
		create table Student
		(
		 sid int primary key,
		 fname char(20),
		 lname text,
		 gender text,
		 dob date,
		 contact varchar(20),
		 email varchar(20),
		 BuildingsB_ROOM_ID int not null 
		 );


delete from student;

		--insert into student
		insert into student(sid,fname,lname,gender,dob,contact,email,BuildingsB_ROOM_ID)
			values('20048890','kevel','Kim','male','02-04-1995','888-888-8888','123@marist.edu','1');
		insert into Student(Sid,fname,lname,gender,dob,contact,email,BuildingsB_ROOM_ID)
			values('20024482','kan','Smith','male','12-04-1995','111-111-1111','234@marist.edu','1');
		insert into student(sid,fname,lname,gender,dob,contact,email,BuildingsB_ROOM_ID)
			values('20045650','Ada','molon','female','07-08-1994','222-222-2222','456@marist.edu','2');
		insert into Student(Sid,fname,lname,gender,dob,contact,email,BuildingsB_ROOM_ID)
			values('20048824','Kyle','Bend','male','06-04-1993','333-333-3333','678@marist.edu','1');
		insert into student(sid,fname,lname,gender,dob,contact,email,BuildingsB_ROOM_ID)
			values('20048678','Susan','Lee','female','11-25-1994','333-333-3313','672@marist.edu','3');
		insert into Student(Sid,fname,lname,gender,dob,contact,email,BuildingsB_ROOM_ID)
			values('20040067','Caroline','Sean','female','04-15-1994','333-333-3331','674@marist.edu','4');
		insert into student(sid,fname,lname,gender,dob,contact,email,BuildingsB_ROOM_ID)
			values('20048867','Kaitlyn','Fold','female','10-10-1992','333-333-3332','675@marist.edu','2');
		insert into Student(Sid,fname,lname,gender,dob,contact,email,BuildingsB_ROOM_ID)
			values('20024483','Kayla','Bean','female','03-19-1995','333-333-3334','679@marist.edu','3');

			
	select*
	from Student;



CREATE SEQUENCE SEQ_BuildingsB_ROOM_ID;

	--building
	Drop table if exists Building;
	create table Building
	(
	BuildingsB_ROOM_ID int DEFAULT NEXTVAL('SEQ_BuildingsB_ROOM_ID') primary key ,
	bid char(3),
	Description text not null,
	roomNumber int,
	floor char(20)
	);







	--insert into building
	insert into Building(bid,Description,floor,roomNumber)
		values('b01','Leo','3','305');
	insert into Building(bid,Description,floor,roomNumber)
		values('b01','Leo','2','215');
	insert into Building(bid,Description,floor,roomNumber)
		values('b03','Marian','2','215');
	insert into Building(bid,Description,floor,roomNumber)
		values('b02','Champagnat','2','204');
	insert into Building(bid,Description,floor,roomNumber)
		values('b04','Sheahan','2','204');
	insert into Building(bid,Description,floor,roomNumber)
		values('b04','Sheahan','3','311');
	insert into Building(bid,Description,floor,roomNumber)
		values('b04','Sheahan','3','311');
	


--delete from building;

	select *
	from Building;

	

CREATE SEQUENCE SEQ_VISIT_ID;


create function public.getdate() returns timestamptz
       stable language sql as 'select now()';

      -- select * from public.getdate();

	--Visit
	drop table if exists Visit;
	create table Visit
	(
	visit_ID int DEFAULT NEXTVAL('SEQ_VISIT_ID') primary key,
	VID int not null,
	SID int not null,
	DATE_TIME TIMESTAMP default public.getdate()
	);


        insert into Visit(VID,SID)
                 values('20047387','20048890');
        insert into Visit(VID,SID)
                 values('20043453','20045650');
        insert into Visit(VID,SID)
                 values('20047387','20048890');
        insert into Visit(VID,SID)
                 values('20045643','20045650');
	insert into Visit(VID,SID)
                 values('20043465','20048890');

delete from Visit;

        select * from visit;


    
		
	

	--visitor
	drop table if exists Visitor cascade;
	create table Visitor
	(
	vid int primary key,
	fname text,
	lname text,
	contact varchar (15)
	);

	--insert into visitor
	insert into Visitor(vid,fname,lname,contact)
		values('20047387','Dan','Mathew','111-222-3333');
	insert into Visitor(vid,fname,lname,contact)
		values('20037893','Kenny','Ocean','111-222-3332');
	insert into Visitor(vid,fname,lname,contact)
		values('20043453','John','Miller','111-222-3331');
	insert into Visitor(vid,fname,lname,contact)
		values('20046535','Dannel','Mcbrain','111-222-3334');
	insert into Visitor(vid,fname,lname,contact)
		values('20045643','Bryn','kushi','111-222-3335');
	insert into Visitor(vid,fname,lname,contact)
		values('20042465','Sally','Ross','111-222-3336');
	insert into Visitor(vid,fname,lname,contact)
		values('20043465','Roza','Mura','111-222-3337');
	insert into Visitor(vid,fname,lname,contact)
		values('20049323','William','Curry','111-222-3338');

		
	select *
	from Visitor;

	--Resident staff
	drop table if exists Staff;
	create table Staff
	(
	 staffid char(20) primary key,
	 fname char(20),
	 lname text,
	 contact varchar(15),
	 email varchar(20),
	 gender text,
	 Building char(3)
	 );

	--inset into staff
	insert into Staff(staffid,fname,lname,contact,email,gender,Building)
		Values('20048890','kelly','McDough','111-222-3332','123@gmail.com','female','b01');
	insert into Staff(staffid,fname,lname,contact,email,gender,Building)
		Values('20034532','Paggy','Smith','111-222-3332','123@gmail.com','female','b02');
	insert into Staff(staffid,fname,lname,contact,email,gender,Building)
		Values('20040053','Wendy','Sung','111-222-3332','123@gmail.com','female','b03');
	insert into Staff(staffid,fname,lname,contact,email,gender,Building)
		Values('20022244','Warren','Park','111-222-3332','123@gmail.com','male','b01');
	insert into Staff(staffid,fname,lname,contact,email,gender,Building)
		Values('20048888','kimi','Yuk','111-222-3332','123@gmail.com','male','b04');
	insert into Staff(staffid,fname,lname,contact,email,gender,Building)
		Values('20024234','Lucas','Zain','111-222-3332','123@gmail.com','male','b02');


	select*
	from Staff;


	--table moveout

	drop table if exists Moveout;
	create table Moveout
	(
	mid char(20) not null primary key,
	SID int  REFERENCES student(sid),
	mdate timestamp default public.getdate()
	);

--
delete from moveout;
	
	--insert into moveout
	insert into Moveout(mid,sid)
		values('m01','20048890');
	insert into Moveout(mid,sid)
		values('m02','20024483');
	insert into Moveout(mid,sid)
		values('m03','20040067');
	insert into Moveout(mid,sid)
		values('m04','20040067');
	insert into Moveout(mid,sid)
		values('m05','20048890');
	insert into Moveout(mid,sid)
		values('m06','20045650');
	insert into Moveout(mid,sid)
		values('m10','20045650');
 
	select*
	from Moveout;
	
	

--view 
	drop view if exists visit_info;
	create view visit_info
	AS
		select distinct a.fname||' '||a.lname as "VISITOR",a.contact,s.fname||' '||s.lname as "STUDENT",d.Description as "VISIT BUILdING",d.roomNumber,d.floor,b.DATE_TIME
		from Visitor a,visit b,student s,Building d
		where a.VID = b.VID
		and b.SID = s.SID
		and s.BuildingsB_ROOM_ID = d.BuildingsB_ROOM_ID;
		    

		 select *
		 from visit_info;
		



--query        -- to find who is moving out and from which building and room number
		select s.sid,s.fname as "FIRST NAME",lname AS "LAST NAME",b.description,b.roomNumber as "ROOM VACANT",b.floor, m.mdate as "MOVING ON"
		from Student s,moveout m,building b
		where s.BuildingsB_ROOM_ID = b.BuildingsB_ROOM_ID
		and s.sid = m.sid
		and b.Description in ('Sheahan','Leo','Marian')
		and s.gender='female';


                -- to find the employees mamaging the building or working staff
		select distinct b.description,s.staffid,s.fname,s.lname,s.contact,s.email,s.gender,b.bid
		from building b, staff s
		where b.bid = s.Building
		and b.bid = 'b01';


	           	     	                 

--store procedures,Count the total number of students.
	CREATE OR REPLACE FUNCTION student_count() RETURNS INT AS $$
	DECLARE
		studentcount INT;
	BEGIN
		SELECT COUNT(*)
		INTO studentcount 
		FROM student;
		RETURN studentcount;
	END;
	$$
	LANGUAGE plpgsql;
	SELECT student_count();

--trigger-

	--function to perform a task during trigger call, if the name is null or blank, it will be replaced by 'unknown'
	CREATE OR REPLACE FUNCTION unknown_first_name() RETURNS trigger AS $my_trigger$ BEGIN
	IF NEW.fname IS NULL OR NEW.fname = '' THEN NEW.fname := 'Unknown';
	END IF;
	RETURN NEW; 
	END;
	$my_trigger$
	LANGUAGE plpgsql;
	
	-- trigger for student table
	CREATE TRIGGER my_trigger
	BEFORE INSERT ON student
	FOR EACH ROW
	EXECUTE PROCEDURE unknown_first_name();


--drop trigger my_trigger on student;


	insert into student(sid,lname,gender,dob,contact,email,BuildingsB_ROOM_ID)
			values('20048892','Kim','male','02-04-1995','888-888-8888','123@marist.edu','1');

	select * from student;

	

--trigger

        --although we have already used default getdate() function, but we can create trigger for the same task
	CREATE OR REPLACE FUNCTION current_date_set() RETURNS trigger AS $date_trigger$ BEGIN
	IF NEW.mdate IS NULL OR NEW.mdate = '' THEN NEW.mdate := current_date;
	END IF;
	RETURN NEW; 
	END;
	$date_trigger$
	LANGUAGE plpgsql;
	
	CREATE TRIGGER date_trigger
	BEFORE INSERT ON Moveout
	FOR EACH ROW
	EXECUTE PROCEDURE current_date_set();

	drop trigger date_trigger on Moveout;

	SELECT CURRENT_DATE;
