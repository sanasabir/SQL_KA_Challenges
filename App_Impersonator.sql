/* What does the app's SQL look like? */

CREATE TABLE food_app(
id INTEGER PRIMARY KEY AUTOINCREMENT,
item TEXT,
calories INTEGER,
price INTEGER
);

INSERT INTO food_app(id,item,calories,price)
values(1, "Burger", 2000, 100);
INSERT INTO food_app(id,item,calories,price)
values(2, "Ice-cream", 1000, 20);
INSERT INTO food_app(id,item,calories,price)
values(3, "Fries", 2500, 90);
INSERT INTO food_app(id,item,calories,price)
values(4, "Momos", 400, 40);
INSERT INTO food_app(id,item,calories,price)
values(5, "Noodles", 100, 190);

SELECT * from food_app;

UPDATE food_app
SET price=80
where id=4;

DELETE from food_app
where id=2;

SELECT * from food_app;

