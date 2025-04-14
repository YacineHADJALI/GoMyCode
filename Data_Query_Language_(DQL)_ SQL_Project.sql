select employee_int, first_name, last_name,
	datediff(year, birth_date, getdate()) as age,
	datediff(year, hire_date, getdate()) as seniority
from employees
where salary + isnull(commission, 0) >= 8000
order by hire_date

select product_ref, product_name, supplier_int, units_on_order, unit_price
from products
where quantity like '%bottle%'
	and product_name like '__t%'
	and supplier_int in (1,2,3)
	and unit_price between 70 and 200
	and units_on_order is not null

select * from customers
where concat(country, city, right(postal_code, 3)) = (select concat(country, city, right(postal_code, 3)) from suppliers where supplier_int = 1)

select 
  order_int,
  case 
    when order_int between 10998 and 11003 then
      case 
        when unit_price * quantity between 0 and 2000 then '0%'
        when unit_price * quantity between 2001 and 10000 then '5%'
        when unit_price * quantity between 10001 and 40000 then '10%'
        when unit_price * quantity between 40001 and 80000 then '15%'
        else '20%'
      end
    else ''
  end as new_discount_rate,
  iif(order_int between 10000 and 10999, 'apply old discount rate', 'apply new discount rate') as discount_rate_application_note
from order_details;

select suppliers.supplier_int, company, address, phone
from suppliers join products on suppliers.supplier_int = products.supplier_int
where quantity like '%bottle%' or quantity like '%can%'

select customers.customer_code, count(order_details.product_ref) as dessert
from customers
	join orders on customers.customer_code = orders.customer_code
	join order_details on orders.order_int = order_details.order_int
	join products on order_details.product_ref = products.product_ref
where products.quantity like '%jar%' and city = 'Berlin'
group by customers.customer_code
having count(order_details.product_ref) <= 1

