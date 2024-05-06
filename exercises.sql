/*SELECT * FROM crime_scene_report 
WHERE type = 'murder'AND date = 20180115 */
/*SELECT * FROM person WHERE address_street_name LIKE 'northwestern dr'
order by address_number
id		name			license addy	street name		ssn	
14887	Morty Schapiro	118009	4919	Northwestern Dr	111564949
89906	Kinsey Erickson	510019	309	Northwestern Dr	635287661 

SELECT * FROM person WHERE address_street_name LIKE 'franklin ave'
AND name LIKE '%annabel%'
16371	Annabel Miller	490173	103	Franklin Ave	318771143*/

/*SELECT * FROM drivers_license WHERE id IN (490173,118009,510019)
id	age	height	eye_color	hair_color	gender	plate_number	car_make	car_model
118009	64	84	blue	white	male	00NU00	Mercedes-Benz	E-Class
490173	35	65	green	brown	female	23AM98	Toyota	Yaris */

              
			  
/*SELECT * FROM interview WHERE person_id in  (14887,89906,16371)
person_id	transcript
14887	I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. 
The membership number on the bag started with "48Z". 
Only gold members have those bags. 
The man got into a car with a plate that included "H42W".

16371	I saw the murder happen, and I recognized the killer from my gym 
when I was working out last week on January the 9th.
*/

/*SELECT * FROM drivers_license WHERE plate_number LIKE '%H42W%';
id	age	height	eye_color	hair_color	gender	plate_number	car_make	car_model
183779	21	65	blue	blonde	female	H42W0X	Toyota	Prius
423327	30	70	brown	brown	male	0H42W2	Chevrolet	Spark LS
664760	21	71	black	black	male	4H42WR	Nissan	Altima*/


/*SELECT * FROM get_fit_now_member WHERE id LIKE '48Z%'
id	person_id	name	membership_start_date	membership_status
48Z38	49550	Tomas Baisley	20170203	silver
48Z7A	28819	Joe Germuska	20160305	gold
48Z55	67318	Jeremy Bowers	20160101	gold */


/*SELECT * FROM get_fit_now_check_in
WHERE check_in_date = 20180109 AND membership_id LIKE '48Z%'
membership_id	check_in_date	check_in_time	check_out_time
48Z7A	20180109	1600	1730
48Z55	20180109	1530	1700 */
   
   
   
/*
SELECT * FROM drivers_license INNER JOIN person
ON person.license_id = drivers_license.id WHERE plate_number LIKE '%H42W%';
id	age	height	eye_color	hair_color	gender	plate_number	car_make	car_model	id	name	license_id	address_number	address_street_name	ssn
664760	21	71	black	black	male	4H42WR	Nissan	Altima	51739	Tushar Chandra	664760	312	Phi St	137882671
423327	30	70	brown	brown	male	0H42W2	Chevrolet	Spark LS	67318	Jeremy Bowers	423327	530	Washington Pl, Apt 3A	871539279
183779	21	65	blue	blonde	female	H42W0X	Toyota	Prius	78193	Maxine Whitely	183779	110	Fisk Rd	137882671
*/

/*SELECT * FROM person INNER JOIN drivers_license
ON  drivers_license.id = person.license_id WHERE plate_number LIKE'%H42W%'*/

/*SELECT * FROM get_fit_now_member WHERE name LIKE '%Tushar%'*/

--SELECT * FROM PERSON WHERE license_id = 423327
/*SELECT * FROM interview WHERE person_id = 67318
person_id	transcript
67318	I was hired by a woman with a lot of money. 
I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). 
She has red hair and she drives a Tesla Model S. 
I know that she attended the SQL Symphony Concert 3 times in December 2017.
*/

--SELECT * FROM person id	name	license_id	address_number	address_street_name	ssn
-- SELECT * FROM income ssn	annual_income
--SELECT * FROM drivers_license id	age	height	eye_color	hair_color	gender	plate_number	
--car_make	car_model

/*
SELECT * FROM drivers_license INNER JOIN person
on drivers_license.id = person.license_id 
WHERE car_make LIKE 'TESLA' AND car_model LIKE 'model s'
AND GENDER = 'female' AND hair_color = 'red'

id		age	height	eye_color	hair_color	gender	plate_number	car_make	car_model	id	name	license_id	address_number	address_street_name	ssn
918773	48	65	black	red	female	917UU3	Tesla	Model S	78881	Red Korb	918773	107	Camerata Dr	961388910
291182	65	66	blue	red	female	08CM64	Tesla	Model S	90700	Regina George	291182	332	Maple Ave	337169072
202298	68	66	green	red	female	500123	Tesla	Model S	99716	Miranda Priestly	202298	1883	Golden Ave	987756388
*/

/*SELECT * FROM income WHERE ssn IN (961388910, 337169072,987756388)
ssn	annual_income
961388910	278000
987756388	310000 */

/*--SELECT * FROM facebook_event_checkin person_id	event_id	event_name	date
SELECT * FROM facebook_event_checkin  WHERE  (date BETWEEN 20171201 AND 20171231)
AND event_name LIKE '%SQL Symphony Concert%'
AND person_id IN (99716,90700,78881);

person_id	event_id	event_name	date
99716	1143	SQL Symphony Concert	20171206
99716	1143	SQL Symphony Concert	20171212
99716	1143	SQL Symphony Concert	20171229 /*


INSERT INTO solution VALUES (1, 'Jeremy Bowers');
        SELECT value FROM solution;

INSERT INTO solution VALUES (1, 'Miranda Priestly');
        SELECT value FROM solution;