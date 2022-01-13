/*1.Find the number of all employees who has an average salary between 10000 to 12000.*/
select COUNT(Employee.emp_id)
from Employee
GROUP BY emp_salary
HAVING AVG(emp_salary) BETWEEN 10000 AND 12000;


/*2.Find the name, yearly salary, and position of all employee who have a salary more than 10000 
and work in admin sector as well as name the salary as yearly salary.*/
select emp_name,emp_salary*12 as yearly_salary,emp_position 
from employee 
where emp_salary>10000 and emp_position='Admin';


/*3. Find the service name and type of all vehicle, which are used for food delivery.*/
select service_name, vehicle_type
from service sr, vehicle vr, delivary dl 
where sr.service_id = dl.service_service_id and
vr.vehicle_id = dl.vehicle_vehicle_id and
service_name = 'Food_Delivery';


/*4.Find the distinct name of all seller and shop name who work in food shop.*/
select distinct seller_name,shop_name
from seller sl,shops sp,service sr,delivary dl
where sl.seller_id = dl.seller_seller_id and
sp.shop_id = dl.shops_shop_id and
sr.service_id = dl.service_service_id and
service_name = 'Food_Delivery';


/*5.Find the customer details who orderd large burger */
select cust_name,cust_addr,cust_phone
from customer cm ,product pr ,delivary dl
where cm.cust_id = dl.customer_cust_id and
pr.pro_id = dl.product_pro_id and
pro_name = 'Burger_Large';


/*6.Find the average salary and work position of all employees those who are not work as deliveryman 
and the average salary is greater than 11000.*/
select emp_position, avg(emp_salary) as Average_salary
from employee 
where emp_position != 'Delivery_man'
group by emp_position
having avg(emp_salary)>11000;

