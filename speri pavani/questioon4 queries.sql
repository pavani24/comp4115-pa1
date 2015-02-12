use classicmodels;
 select customerName, orderData from orders join customers on customers.customersNumber=orders.customernumber;
 select productName, quantityOrdered, shippeddate from products, orders, orderdetails where orders.orderNumber=orderdetails.orderNumber and Orderdetails.productcode=products.productcode
select productName from Products JOIN (OrderDetails,Orders) ON (OrderDetails.productCode=Products.productCode and Orders.orderNumber = OrderDetails.orderNumber) where DAYNAME(orderDate) = "Monday";
 
select firstname,lastname from employees where reportsTo =  (select employeeNumber from employees where lastName = "Patterson" and firstName="William”);

select orderNumber, orderDate, status, paymentDate from orders join payments on payments.customerNumber=orders.customerNumber where status='resolved';

select sum(quantityordered*priceeach) from orderdetails where ordernumber in(select ordernumber from orders where status="cancelled");

select count(*) from employees,offices where employee.officecode=offices.officecode and country="USA";
 select count(*) from orders where dayname(orderdate)="sunday";


select employeenumber, lastname, firstname from employees where employeenumber = (select customers.salesemployeenumber from customers,orders where customers.customernumber=orders.customernumber and orders.ordernumber = (select ordernumber from orders where shippedDate > requireddate));
