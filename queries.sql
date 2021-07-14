-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
    select p.productname, c.categoryname
    from products as p
    left join categories as c
    on p.productid = c.categoryid
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
    select o.orderid, o.orderdate, s.shippername --getting only 196 records
    from orders as o
    left join shippers as s
    on o.orderid = s.shipperid
    where orderdate < '2012-08-09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select p.productname, od.quantity
    from products as p
     join orderdetails as od 
    on p.productid = od.productid
      where od.orderid = 10251
order by p.productname;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select o.orderid, c.customername, e.lastname --getting only 196 records
    from orders as o
    left join customers as c
    on o.orderid = c.customerid
     left join employees as e
    on o.orderid = e.employeeid