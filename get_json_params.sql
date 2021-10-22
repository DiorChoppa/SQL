--COPY (SELECT distinct json_object_keys((content#>> '{}')::json) FROM @NAME@ ORDER BY json_object_keys((content#>> '{}')::json) ASC) TO '..\json.txt'
SELECT json_object_keys((content#>> '{}')::json),
COUNT(*) FROM @NAME@
GROUP BY json_object_keys((content#>> '{}')::json)
ORDER BY count DESC
