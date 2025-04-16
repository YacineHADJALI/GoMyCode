select country, sum(amount)
from client join sales on clinet.idcli = sales.idcli
group by country

select year, month, sum(amount)
from date join sales on date.idDate = sales.idDate
group by rollup year, month

select countr, year, sum(quantity)
from client
    join sales on client.idcli = sales.idcli
    join product on sales.idproduct = product.idproduct
    join date on sales.idDate = date.idDate
where name = '22-inch Screen'
group by rollup country, year

select countr, year, product, sum(amount)
from client
    join sales on client.idcli = sales.idcli
    join product on sales.idproduct = product.idproduct
    join date on sales.idDate = date.idDate
group by country, year, product
