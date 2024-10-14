--#1 Отобразите бренд, модель и цены всех машин
select brand, model, price from cars;

--#2 Отобразите количество всех автомобилей
select count(cars) as count_all_cars from cars;

--#3 Отобразите все автомобили бренда Hyundai
select * from cars where brand ilike 'hyundai';

--#4 Отобразите все красные и синие автомобили
select * from cars where color in ('Red', 'Blue');

--#5 Отобразите все автомобили, выпущенные с 2000 по 2010 год
select * from cars where year_of_issue between 2000 and 2010;

--#6 Отобразите количество автомобилей марки Chevrolet
select count(cars)  as count_cars_Chevrolet from cars where brand like 'Chevrolet' ;

--#7 Отобразите средне-статистический год выпуска всех машин
select round(avg(year_of_issue))  from cars;

--# 8 Отобразите все автомобили  брендов  Audi, Toyota, Kia и Ford
select * from cars where brand in ('Audi', 'Toyota', 'Kia');

--# 9 Отобразите автомобили, где модель автомобиля начинается с «Т»
select * from cars where model like 'T%';

--#10 Отобразите автомобили, где модель автомобиля заканчивается на «е»;
select * from cars where model like '%e';

--#11 Отобразите бренды, содержащие только 5 символов
select * from cars where length(brand) = 5;

--#12 Отобразите общую сумму всех автомобилей марки Mercedes-Benz
select sum(price) as total_price from cars
    where brand like 'Mercedes-Benz';

--#13 Отобразите самую дорогую и самую дешевую машину
select * from cars where price = (select max(price) from cars)
    or price = (select min(price) from cars);

-- --select * from cars order by price desc limit 1
--     union all
--         select * from cars order by price  limit 1;
-- union иштебей койду

--#14 Отобразите все автомобили кроме марки TOYOTA
select * from cars where brand not ilike 'toyota';

--#15 Отобразите 10 самых дорогих автомобилей
select * from cars order by price desc limit 10;

--#16 Отобразите 10 новейших машин с 5-го по 15-е.
select * from cars order by year_of_issue desc offset 4 limit 10;

--#17 Отобразите все автомобили, кроме тех, которые выпустились между 1995 и 2005;
select * from cars where year_of_issue not between 1995 and 2005;

--# 18 Вывести  автомобилей  одного цвета  и наибольшего количества
select color,count(*) from cars group by color  order by count(color) desc limit 1;




