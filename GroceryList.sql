--
-- File generated with SQLiteStudio v3.4.1 on Thu Feb 9 19:40:41 2023
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Store
CREATE TABLE IF NOT EXISTS Store (
    id         INTEGER PRIMARY KEY,
    item       TEXT,
    section    TEXT,
    price      INTEGER,
    popularity INTEGER
);

INSERT INTO Store (
                      id,
                      item,
                      section,
                      price,
                      popularity
                  )
                  VALUES (
                      1,
                      'salmon',
                      'frozen',
                      23.4,
                      50
                  );

INSERT INTO Store (
                      id,
                      item,
                      section,
                      price,
                      popularity
                  )
                  VALUES (
                      2,
                      'banana',
                      'produce',
                      0.99,
                      95
                  );

INSERT INTO Store (
                      id,
                      item,
                      section,
                      price,
                      popularity
                  )
                  VALUES (
                      3,
                      'oxiclean',
                      'hygiene',
                      11.78,
                      55
                  );

INSERT INTO Store (
                      id,
                      item,
                      section,
                      price,
                      popularity
                  )
                  VALUES (
                      4,
                      'avocado',
                      'produce',
                      0.78,
                      50
                  );

INSERT INTO Store (
                      id,
                      item,
                      section,
                      price,
                      popularity
                  )
                  VALUES (
                      5,
                      'lettuce',
                      'produce',
                      4.99,
                      65
                  );

INSERT INTO Store (
                      id,
                      item,
                      section,
                      price,
                      popularity
                  )
                  VALUES (
                      6,
                      'cucumber',
                      'produce',
                      1.11,
                      43
                  );

INSERT INTO Store (
                      id,
                      item,
                      section,
                      price,
                      popularity
                  )
                  VALUES (
                      7,
                      'chicken',
                      'meat',
                      15.18,
                      35
                  );

INSERT INTO Store (
                      id,
                      item,
                      section,
                      price,
                      popularity
                  )
                  VALUES (
                      8,
                      'chicken ground',
                      'meat',
                      16.79,
                      50
                  );

INSERT INTO Store (
                      id,
                      item,
                      section,
                      price,
                      popularity
                  )
                  VALUES (
                      9,
                      'broccoli',
                      'produce',
                      5.99,
                      75
                  );

INSERT INTO Store (
                      id,
                      item,
                      section,
                      price,
                      popularity
                  )
                  VALUES (
                      10,
                      'pineaple',
                      'frozen',
                      2.75,
                      25
                  );

INSERT INTO Store (
                      id,
                      item,
                      section,
                      price,
                      popularity
                  )
                  VALUES (
                      11,
                      'smoothie berries',
                      'frozen',
                      2.99,
                      33
                  );

INSERT INTO Store (
                      id,
                      item,
                      section,
                      price,
                      popularity
                  )
                  VALUES (
                      12,
                      'granola',
                      'bulk',
                      1.99,
                      80
                  );

INSERT INTO Store (
                      id,
                      item,
                      section,
                      price,
                      popularity
                  )
                  VALUES (
                      13,
                      'vitamin D',
                      'health',
                      8.99,
                      29
                  );

INSERT INTO Store (
                      id,
                      item,
                      section,
                      price,
                      popularity
                  )
                  VALUES (
                      14,
                      'potatos',
                      'produce',
                      2.99,
                      26
                  );

INSERT INTO Store (
                      id,
                      item,
                      section,
                      price,
                      popularity
                  )
                  VALUES (
                      15,
                      'popcorn',
                      'snacks',
                      1.99,
                      47
                  );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;


SELECT*
FROM Store;

--display the database ordered by price. 
SELECT * FROM store
ORDER BY price desc; 

--what is the avg price of items in theproduce section? 
SELECT AVG(price) "avg produce item price"
FROM store
where section='produce'; 

--what are the most 5 popular items? 
SELECT item, price, popularity
FROM store
order by popularity desc
limit 5; 

--which is the mosth cheap product?
SELECT item, price
FROM store
WHERE price =
(SELECT MIN(price) FROM store);
