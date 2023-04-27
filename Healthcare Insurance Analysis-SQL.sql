create database project1_job;
show databases;
use project1_job;
SET SQL_SAFE_UPDATES = 0;

create table hospital (
	customer_id VARCHAR(100) NOT NULL,
    year int NOT NULL,
    month VARCHAR(100) NOT NULL,
    date int NOT NULL,
    children int NOT NULL,
    charges int NOT NULL,
    hospital_tier VARCHAR(100) NOT NULL,
    city_tier VARCHAR(100) NOT NULL,
    state_id VARCHAR(100) NOT NULL);
    
    
create table medical (
	customer_id VARCHAR(100) NOT NULL,
    bmi int NOT NULL,
    hba1c int NOT NULL,
    heart_issues VARCHAR(100) NOT NULL,
    any_transplants VARCHAR(100) NOT NULL,
    cancer_history VARCHAR(100) NOT NULL,
    no_of_major_surgeries VARCHAR(100) NOT NULL,
    smoker VARCHAR(100) NOT NULL);
    
SELECT *
FROM hospital
WHERE customer_id = '?';

DELETE FROM hospital
WHERE customer_id = '?';



CREATE TABLE merged_table
SELECT h.*, m.bmi, m.hba1c, m.heart_issues, m.any_transplants, m.cancer_history,m.no_of_major_surgeries,m.smoker
FROM hospital h
JOIN medical m ON h.customer_id = m.customer_id;

alter table merged_table
add age int(3);
update merged_table
set age = year(current_date())-year;

select avg(age) as avg_age, avg(children) as avg_children, avg(bmi) as avg_bmi, avg(charges) as avg_charges
from merged_table
where hba1c>6.5 and heart_issues='yes';

select hospital_tier, city_tier, avg(charges) as avg_charges
from merged_table
group by hospital_tier, city_tier;

select count(*) as no_of_people
from merged_table
where (no_of_major_surgeries = 1) or (no_of_major_surgeries = 2) or (no_of_major_surgeries = 3) and cancer_history = 'yes';

select state_id, count(*) as no_of_hospital  from merged_table
where hospital_tier = 'tier - 1'
group by state_id;

