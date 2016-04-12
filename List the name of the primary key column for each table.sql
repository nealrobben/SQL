
SELECT     kc.name,     c.NAME 
FROM      sys.key_constraints kc 
	INNER JOIN      sys.index_columns ic ON kc.parent_object_id = ic.object_id 
	INNER JOIN      sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id 
WHERE     kc.type = 'PK' 