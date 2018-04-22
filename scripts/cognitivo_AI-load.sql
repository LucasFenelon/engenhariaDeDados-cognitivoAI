LOAD DATA INFILE 'comp_boss.csv' 
INTO TABLE cognitivo_AI.COMP_BOSS 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
IGNORE 1 LINES
(
	component_id,
	component_type_id,
	@type,
	@connection_type_id,
	@outside_shape,
	@base_type,
	@height_over_tube,
	@bolt_pattern_long,
	@bolt_pattern_wide,
	@groove,
	@base_diameter,
	@shoulder_diameter,
	@unique_feature,
	@orientation,
	@weight
)
SET type = IF(@type = 'NA', NULL, @type), 
	outside_shape = IF(@outside_shape = 'NA', NULL, @outside_shape), 
	base_type = IF(@base_type = 'NA', NULL, @base_type),
	height_over_tube = IF(@height_over_tube = 'NA', NULL, @height_over_tube),
	bolt_pattern_long = IF(@bolt_pattern_long = 'NA', NULL, @bolt_pattern_long),
	bolt_pattern_wide = IF(@bolt_pattern_wide = 'NA', NULL, @bolt_pattern_wide),
	groove = IF(@groove = 'NA', NULL, @groove),
	base_diameter = IF(@base_diameter = 'NA', NULL, @base_diameter),
	shoulder_diameter = IF(@shoulder_diameter = 'NA', NULL, @shoulder_diameter),
	unique_feature = IF(@unique_feature = 'NA', NULL, @unique_feature),
	orientation = IF(@orientation = 'NA', NULL, @orientation),
	weight = IF(@weight = 'NA', NULL, @weight);

LOAD DATA INFILE 'bill_of_materials.csv' 
INTO TABLE cognitivo_AI.BILL_OF_MATERIALS 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
IGNORE 1 LINES
(
	tube_assembly_id,
	@component_id_1,
	@quantity_1,
	@component_id_2,
	@quantity_2,
	@component_id_3,
	@quantity_3,
	@component_id_4,
	@quantity_4,
	@component_id_5,
	@quantity_5,
	@component_id_6,
	@quantity_6,
	@component_id_7,
	@quantity_7,
	@component_id_8,
	@quantity_8
)
SET component_id_1 = IF(@component_id_1 = 'NA', NULL, @component_id_1),
	quantity_1 = IF(@quantity_1 = 'NA', NULL, @quantity_1),
	component_id_2 = IF(@component_id_2 = 'NA', NULL, @component_id_2),
	quantity_2 = IF(@quantity_2 = 'NA', NULL, @quantity_2),
	component_id_3 = IF(@component_id_3 = 'NA', NULL, @component_id_3),
	quantity_3 = IF(@quantity_3 = 'NA', NULL, @quantity_3),
	component_id_4 = IF(@component_id_4 = 'NA', NULL, @component_id_4),
	quantity_4 = IF(@quantity_4 = 'NA', NULL, @quantity_4),
	component_id_5 = IF(@component_id_5 = 'NA', NULL, @component_id_5),
	quantity_5 = IF(@quantity_5 = 'NA', NULL, @quantity_5),
	component_id_6 = IF(@component_id_6 = 'NA', NULL, @component_id_6),
	quantity_6 = IF(@quantity_6 = 'NA', NULL, @quantity_6),
	component_id_7 = IF(@component_id_7 = 'NA', NULL, @component_id_7),
	quantity_7 = IF(@quantity_7 = 'NA', NULL, @quantity_7),
	component_id_8 = IF(@component_id_8 = 'NA', NULL, @component_id_8),
	quantity_8 = IF(@quantity_8 = 'NA', NULL, @quantity_8);

LOAD DATA INFILE 'price_quote.csv' 
INTO TABLE cognitivo_AI.PRICE_QUOTE 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
IGNORE 1 LINES
(
	tube_assembly_id,
	supplier,
	@quote_date,
	@annual_usage,
	@min_order_quantit,
	@bracket_pricing,
	@quantity,
	@cost
)
SET quote_date = IF(@quote_date = 'NA', NULL, @quote_date),
	annual_usage = IF(@annual_usage = 'NA', NULL, @annual_usage),
	min_order_quantit = IF(@min_order_quantit = 'NA', NULL, @min_order_quantit),
	bracket_pricing = IF(@bracket_pricing = 'NA', NULL, @bracket_pricing),
	quantity = IF(@quantity = 'NA', NULL, @quantity),
	cost = IF(@cost = 'NA', NULL, @cost);