--COPY (SELECT distinct json_object_keys((content#>> '{}')::json) FROM vpct_chapters ORDER BY json_object_keys((content#>> '{}')::json) ASC) TO 'C:\Users\kdvoryadkin\Desktop\json.txt'
SELECT json_object_keys((content#>> '{}')::json),
COUNT(*) FROM vpct_chapters
GROUP BY json_object_keys((content#>> '{}')::json)
ORDER BY count DESC