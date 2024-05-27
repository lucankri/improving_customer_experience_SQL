SELECT person.name, pizza_name, price, price - (price * (discount / 100)) AS discount_ptice, pizzeria.name AS pizzria_name
    FROM person_order JOIN person ON person_order.person_id = person.id
    JOIN menu ON person_order.menu_id = menu.id
    JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
    JOIN person_discounts ON person.id = person_discounts.person_id
        AND pizzeria.id = person_discounts.pizzeria_id
ORDER BY person.name, pizza_name;
