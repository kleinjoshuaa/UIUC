/* create procedure */
CREATE PROCEDURE QuerySchema(SelectedSchema varchar(8))

BEGIN
  DECLARE selected_schema varchar(8);
  
  SELECT upper(SelectedSchema) into selected_schema;
  
  IF selected_schema = 'TABLES' THEN 
	SELECT table_name, table_type, engine 
	FROM INFORMATION_SCHEMA.TABLES 
	WHERE table_schema='jklein1';
  ELSEIF selected_schema='COLUMNS' THEN 
	SELECT column_name, data_type, character_maximum_length 
	FROM INFORMATION_SCHEMA.COLUMNS 
	WHERE table_name='Products' AND table_schema='jklein1';
  ELSEIF selected_schema='VIEWS' THEN 
	SELECT table_name, is_updatable, substring(view_definition,27,50) AS definition 
	FROM INFORMATION_SCHEMA.VIEWS;
  ELSEIF selected_schema='ROUTINES' THEN 
	SELECT routine_name, routine_type, routine_definition 
	FROM INFORMATION_SCHEMA.ROUTINES;
  ELSE SELECT 'Error: Invalid Input' as SelectedSchema;
  END IF;
  
END;
//


/* Calling Tables */
CALL QuerySchema('TAbles');

/* Calling Columns */
CALL QuerySchema('Columns');

/* Calling Views */
CALL QuerySchema('VieWS');

/* Calling Routines */
CALL QuerySchema('routines');
