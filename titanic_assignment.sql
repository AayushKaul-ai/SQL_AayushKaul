use etl1;
-- 1. Select all columns for all passengers in the Titanic dataset.
SELECT * FROM titanic.`titanic.csv`;

-- 2. Display the number of passengers in each class (1st, 2nd, 3rd).
select count(*), pclass from titanic.`titanic.csv` group by pclass;

-- 3.Find the number of male and female passengers.
select count(*), sex FROM titanic.`titanic.csv` group by sex;

-- 4. Display the names of passengers who survived.
select name from titanic.`titanic.csv` where survived ='survived';

-- 5. Find the average age of passengers.
select avg(age) from titanic.`titanic.csv`;

-- 6. List the names and ages of passengers who were younger than 18.
select name, age from titanic.`titanic.csv` where age <18;

-- 7. Display the number of passengers in each embarkation port (C, Q, S).
select count(*), embarked from titanic.`titanic.csv`  group by embarked;

-- 8. Find the highest fare paid by any passenger.
select max(fare) from titanic.`titanic.csv`;

-- 9. List the average age of passengers for each class.
select avg(age), Pclass from titanic.`titanic.csv` group by Pclass;

-- 10. Display the passenger names and ages for those who survived and were in 1st class.
select name, age from titanic.`titanic.csv` where survived = 'survived' and Pclass = 1;

-- 11. Find the number of passengers who paid more than 50 for their ticket.
select count(*) from titanic.`titanic.csv` where fare >50;

-- 12. List the names of passengers who did not survive and were in 3rd class.
select name from titanic.`titanic.csv` where survived = 'Died' and Pclass =3;

-- 13. Find the number of passengers with missing values in the "Age" column.
select count(age) from  titanic.`titanic.csv` where age is NULL;

-- 14. Display the passenger names and ages for those who embarked at port 'S' and survived.
select name, age from titanic.`titanic.csv` where survived = 'survived' and embarked= 'S';

-- 15. Calculate the total number of passengers on board.
select count(*) from titanic.`titanic.csv`;
 
-- 16. List the average fare for each class.
select avg(fare), pclass from titanic.`titanic.csv` group by pclass;

-- 17. Display the passenger names and ages for those with a known age and a fare greater than 100.
select name, age from titanic.`titanic.csv` where age not in(' ') and fare>100;

-- 18. Find the percentage of passengers who survived.
alter table titanic.`titanic.csv` add column passenger_survived varchar(20);
update titanic.`titanic.csv` set passenger_survived = 'survived' where survived ='survived';
select (count(passenger_survived)/(count(survived)))*100 as percentage_survived from titanic.`titanic.csv`;

-- 19. List the names of passengers who were in 2nd class and had a fare less than 20.
select name from titanic.`titanic.csv` where fare <20 and pclass= 2;

-- 20. Display the passenger names and ages for those who did not survive and were in 1st class.
select name, age from titanic.`titanic.csv` where pclass = 1 and survived = 'Died';

-- 21. Find the number of passengers for each combination of class and gender.
select count(name), pclass, sex from titanic.`titanic.csv` group by pclass, sex;

-- 22. List the names of passengers who survived and were in 3rd class with an age less than 20.
select name from titanic.`titanic.csv` where survived = 'survived' and pclass =3 and age <20;

-- 23. Display the passenger names for those with the name starting with 'Mr.'
select name from titanic.`titanic.csv`where name like '%Mr.%';

-- 24. Find the average age of male and female passengers.
select avg(age), sex from titanic.`titanic.csv` group by sex;

-- 25. List the names of passengers who paid the highest fare.
select name from titanic.`titanic.csv` order by fare desc limit 1;

-- 26. Find the number of passengers for each embarkation port and class.
select count(name), embarked, pclass from titanic.`titanic.csv` group by embarked, pclass;

-- 27. Display the passenger names and ages for those who survived and paid more than 200 for their ticket.
select name, age from titanic.`titanic.csv` where survived = 'survived' and fare > 200;

-- 28. Find the average age of passengers who survived and those who did not.
select avg(age), survived from titanic.`titanic.csv` group by survived;

-- 29. List the names of passengers who were in 1st class and had an age greater than 50.
select name from titanic.`titanic.csv` where pclass= 1 and age >50;

-- 30. Display the passenger names for those with the name ending with 'sson'.
select name from titanic.`titanic.csv` where name like '%sson';                  