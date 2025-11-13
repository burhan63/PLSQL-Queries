select * from user_tables;

select * from student;
select * from ins_claim;
select * from student where name like 'H%';
select * from student where name like '%n';
select name, email, phone, address from student where address like '%Islamabad%';


select * from ins_product;
select description, product_name from ins_product where 
product_name = 'Pay As You Drive';
 -- select statement --
select name, phone, product_name, image_path from student, ins_product
where
student.id = ins_product.id (+);

-- joins table --
select * from student,ins_product,ins_claim
where
student.id = ins_product.id AND
ins_claim.claim_code = ins_product.id;


select * from user_tables;
select * from wp_leads;
select count(*) from wp_leads;

select idx, name, email from wp_leads where idx = '802B74AA68B149FCA8D3930207BB6B58';

--subQuery --

select name from wp_leads where name in (select name from wp_leads);

-- check distinct names --
select distinct(name) from wp_leads;


-- sub query with select statement by using in operator --
select * from student where name in 
(select name from student where id = 6); 

-- select query with select statemant by using not in -- 
select * from student where name not in
(select name from student where id = 1);

--joins -- 
select * from student, wp_leads
where student.id = wp_leads.product_id(+); 

select * from student;
select *
from ins_product

-- between operator --
select id from student where id between 2 and 5;


-- joins in pl/sql --
select * from ins_product;
select * from products;


-- currect joins ---
select * from ins_product
inner join products on
ins_product.id = products.p_id(+); 


select * from ins_product;
select * from products;

-- simple subquery -- 
select p_name,p_price from products where p_price > 
(select p_price from products where p_id = 4);


-- sub query for calculate p_price --
select * from products where p_price < 
(select sum(p_price) from products);

-- sub query for calculate avg p_price --

select * from products where p_price >
(select avg(p_price) from products);


