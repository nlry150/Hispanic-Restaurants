/*Query 1*/
USE hispanic_eats;

CREATE OR REPLACE VIEW Hispanic_Restaurant_Count AS 
SELECT country_of_origin AS cuisine, COUNT(*) as "origin count"
FROM Restaurant
JOIN Restaurant_Food USING(restaurant_id)
JOIN Food USING(type_id)
GROUP BY country_of_origin;

/*Query 2*/
CREATE OR REPLACE VIEW restaurant_rating AS 
	SELECT avg_star_rating, restaurant_name
    FROM review
    JOIN restaurant USING(restaurant_id)
    ORDER BY avg_star_rating DESC;
    
/*Query 3*/
CREATE OR REPLACE VIEW employee_list AS
	SELECT Manager_Supervisor.employee_id AS badge_number, CONCAT(Manager_Supervisor.fname, ' ', Manager_Supervisor.lname) as employee,
	Manager_Supervisor.position, Manager_Supervisor.restaurant_id, Restaurant.restaurant_name,
    CONCAT(Owner.fname, ' ' , Owner.lname) as owner
	FROM Manager_Supervisor
	JOIN restaurant ON Manager_Supervisor.restaurant_id = restaurant.restaurant_id
    JOIN Restaurant_Owner ON Manager_Supervisor.restaurant_id = Restaurant_Owner.restaurant_id
    JOIN Owner ON Restaurant_Owner.owner_id = owner.owner_id
    ORDER BY position;

/*Query 4*/
 CREATE OR REPLACE VIEW cuisine_ratings AS
    SELECT type_id, country_of_origin AS cuisine, ROUND(AVG(avg_star_rating),2) AS rating
    FROM food
    JOIN restaurant_food USING(type_id)
    JOIN restaurant USING(restaurant_id)
    JOIN review USING(restaurant_id)
    GROUP BY type_id;
    
/*Query 5*/
CREATE OR REPLACE VIEW downtown_restaurants AS
    SELECT restaurant_name, neighborhood, street
    FROM restaurant
    JOIN area USING(area_id)
    JOIN address USING(address_id)
    WHERE neighborhood = "Downtown";
    

/*Query 6*/
CREATE OR REPLACE VIEW area_restaurants AS
    SELECT restaurant.restaurant_name, address.street, address.city, address.zipcode,
    area.neighborhood, area.landmarks, area.description, review.avg_star_rating
    FROM area
    JOIN restaurant ON area.area_id = restaurant.area_id
    JOIN address ON restaurant.address_id = address.address_id
    JOIN review ON restaurant.restaurant_id = review.restaurant_id
    WHERE zipcode >= 20011;
    
/*Query 7*/
CREATE OR REPLACE VIEW Cuban_Salvadorian AS
	SELECT Restaurant.restaurant_name, Food.type_id, Food.country_of_origin
   AS cuisine , Restaurant.description
	FROM Restaurant
	JOIN Restaurant_Food USING (restaurant_id)
	JOIN Food USING(type_id)
	WHERE country_of_origin = "Cuban" or country_of_origin = 'Salvadorian';

/*Query 8*/
CREATE OR REPLACE VIEW Latin_Mexican AS
    SELECT restaurant_id, restaurant_name, phone_number
    FROM restaurant
    JOIN restaurant_food USING(restaurant_id)
    WHERE type_id IN
		( SELECT type_id
        FROM food
        WHERE country_of_origin = "Mexican" or country_of_origin = "Latin American"
        );


    
