use etl1;
SELECT * FROM movie_assignment;

-- 1. Retrieve the names of all the Bollywood movies which are of drama genre in the dataset.
select movie_name from movie_assignment where genre='drama';

-- 2. Retrieve the names of all movies from dataset where aamir khan is the lead star
select movie_name from movie_assignment where Lead_star ='Aamir Khan';

-- 3. Retrieve the names of all the Bollywood movies which are directed by Ram Gopal Verma in the dataset.
select movie_name from movie_assignment where director='Ram Gopal Verma';

/* 4. Retrieve the names of all the Bollywood movies which have been released over more than 
1000 number of screens in the dataset.*/
select movie_name from movie_assignment where number_of_screens >1000;

/* 5. Retrieve the names of all the Bollywood movies which have generated Revenue(INR) 
more than 700000000 in the dataset.*/
select movie_name from movie_assignment where Revenue> 700000000;

-- 6. Retrieve the names of all the Bollywood movies which have budget less than 1cr in the dataset.
select movie_name from movie_assignment where Budget < 10000000;

-- 7. Retrieve the names of all the Bollywood movies which are flop in the dataset.(flop = revenue-budget)
select movie_name from movie_assignment where Revenue < Budget;

-- 8. Retrieve the names and profit of all the Bollywood movies in the dataset.(profit=revenue – budget)
select movie_name, (revenue-budget) as profit from movie_assignment where revenue>budget ;

-- 9. Retrieve the names and loss of all the Bollywood movies in the dataset.(loss=revenue – budget)
select movie_name, (budget-revenue) as loss from movie_assignment where revenue<budget;

-- 10. Retrieve the names of all the Bollywood movies which have been released on holidays in the dataset.
select movie_name from movie_assignment where release_period='Holiday';  

/*11. Retrieve the names of all the Bollywood movies which have lead star as Akshay Kumar 
and directed by Priyadarshan in the dataset.*/
select movie_name from movie_assignment where lead_star='Akshay Kumar' and director='Priyadarshan';

-- 12. Retrieve the names of all the Bollywood movies starting with ‘a’ in the dataset
select movie_name from movie_assignment where movie_name like'a%';

-- 13. Retrieve the names of all the Bollywood movies ending with ‘a’ in the dataset.
select movie_name from movie_assignment where movie_name like'%a'; 

-- 14. Retrieve the names of all the Bollywood movies having ‘a’ at second place of the name in the dataset.
select movie_name from movie_assignment where movie_name like'_a%';

-- 15. Retrieve the names of all the Bollywood movies having music of amit trivedi the dataset.
select movie_name from movie_assignment where music_director='Amit Trivedi';

-- 16. Retrieve the names of all the comedy movies of Akshay Kumar in the dataset.
select movie_name from movie_assignment where Lead_star ='Akshay Kumar' and genre='comedy';

-- 17. Retrieve the names of movies and star name starring khan in the dataset.
select movie_name, lead_star from movie_assignment where lead_star like'%khan%';

-- 18. Retrieve all the information of movies race and race2 in the dataset.
select * from movie_assignment where movie_name in('race', 'race2');

-- 19. Retrieve the names of all the thriller Bollywood movies in the dataset.
select * from movie_assignment where genre='thriller';

/* 20. Retrieve the names and budget of all the Bollywood movies 
according to the highest budget to lowest budget in the dataset.*/
select movie_name, budget from movie_assignment order by budget desc;

-- 21. Retrieve the names and budget of top 5 Bollywood movies with highest budget in the dataset.
select movie_name, budget from movie_assignment order by budget desc limit 5;

-- 22. Retrieve the names of top 10 Bollywood movies with highest revenue generation in the dataset.
select movie_name, revenue  from movie_assignment order by revenue desc limit 10;

-- 23. Retrieve the names of top 5 movies of salman khan in the dataset.
select movie_name from movie_assignment where lead_star = 'salman khan' order by (revenue-budget) desc limit 5;

-- 24. Retrieve the names of top 5 flopped movies in the dataset.
select movie_name from movie_assignment order by (revenue-budget) limit 5;

-- 25. Retrieve the names of top 5 hit movies in the dataset.
select movie_name from movie_assignment order by (revenue-budget) desc limit 5;

-- 26. Which is the second movie released on maximum screens.
select movie_name from movie_assignment order by number_of_screens desc limit 1,1;

-- 27. Which is the 10th movie with highest budget.
 select movie_name from movie_assignment order by budget desc limit 9,1;
 
 -- 28. Which is the 2nd movie of Amitabh Bachchan with highest budget.
 select movie_name from movie_assignment where lead_star='amitabh bachchan'
 order by budget desc limit 1,1;
 
 -- 29. Which are the flopped movies of Akshay Kumar.
 select movie_name from movie_assignment where lead_star= 'akshay kumar' and revenue < budget;
 
 -- 30. With which director Sharukh Khan has given the biggest hit movie.
 select Director from movie_assignment where lead_star= 'shahrukh khan' 
 order by (revenue-budget) desc limit 1;