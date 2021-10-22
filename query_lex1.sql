SELECT vpct_chapters.* FROM vpct_chapters WHERE vpct_chapters.type IN ('Vpct::Chapters::Article2Chapter1')
AND json_extract_path_text((content#>> '{}')::json, 'budget_code') SIMILAR TO '%(0|1|2|3|4|5|6|7|8|9)24(2|6)'
AND length(json_extract_path_text((content#>> '{}')::json, 'budget_code')) = 20