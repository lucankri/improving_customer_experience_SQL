COMMENT ON COLUMN person_discounts.id IS 'primary key identifier';
COMMENT ON COLUMN person_discounts.person_id IS 'person identifier';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'pizzeria identifier';
COMMENT ON COLUMN person_discounts.discount IS 'discount for pair person and pizzeria';

SELECT * FROM pg_description
WHERE objoid = 'person_discounts'::regclass;
