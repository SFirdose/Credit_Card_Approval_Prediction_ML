USE Credit_Card;


SELECT * from credit_card;


-- Q1. Group the customers based on their income type and find the average of their annual income.


select  type_income,
		count(ind_id) as No_Of_Customers,
		avg(annual_income) as Avg_annual_income
FROM   Credit_card
GROUP BY type_income;


-- Q2. Find the female owners of cars and property.


select gender,count(*) as owner_of_car_and_property from credit_card
where car_owner = 'y' and propert_owner = 'y' and gender = 'f';


-- Q3. Find the male customers who are staying with their families.


select gender,housing_type,count(*) as count
from credit_card
where gender = 'm' and housing_type = 'with parents';


-- Q4.Please list the top five people having the highest income.


select * from credit_card
order  by annual_income desc
limit 5;


-- Q5. How many married people are having bad credit?


select'Married People having Bad credit' AS 'description', label,marital_status,count(*) as count
from credit_card
where marital_status = 'married' and label = 1;



-- Q6. What is the highest education level and what is the total count?


select education,count(*) as count from credit_card
where education = 'academic degree';



-- Q7. Between married males and females, who is having more bad credit?;


with cte as(
select gender,count(*) as count_of_bad_credit from credit_card
where marital_status ='married' and label = 1
group by gender)
SELECT * FROM cte
WHERE 'count_of_bad_credit' = (SELECT MAX('count_of_bad_credit') FROM cte);