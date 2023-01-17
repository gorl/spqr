DROP SHARDING RULE ALL;
DROP KEY RANGE ALL;

SHOW key_ranges;
SHOW sharding_rules;

ADD KEY RANGE krid1 FROM 1 TO 10 ROUTE TO sh1;
ADD KEY RANGE krid2 FROM 11 TO 20 ROUTE TO sh1;

ADD SHARDING RULE rule1 COLUMNS id;
ADD SHARDING RULE rule1 COLUMNS id;
ADD SHARDING RULE rule2 COLUMNS id;

SHOW key_ranges;
SHOW sharding_rules;

DROP SHARDING RULE rule1;
DROP KEY RANGE krid1;

ADD KEY RANGE krid2 FROM 11 TO 20 ROUTE TO sh2;
ADD SHARDING RULE rule1 COLUMNS id;

SHOW key_ranges;
SHOW sharding_rules;

ADD SHARDING RULE cat TABLE orders COLUMN iid;
ADD SHARDING RULE dog TABLE delivery COLUMN order_id;

SHOW sharding_rules;
