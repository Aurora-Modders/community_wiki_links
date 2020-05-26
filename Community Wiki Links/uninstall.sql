-- Please ensure that all queries in this file are idempotent, i.e. have the same result whether run once or multiple times
-- All strings are case-sensitive!

-- Clean links from 'Create Research Project' window
UPDATE DIM_ResearchCategories
   SET NoteField = substr(NoteField, 0, instr(NoteField, 'See http://'))
   WHERE instr(NoteFIeld, 'See http://') != 0;

-- Extra cleanup - in Vanilla this field is NULL where there isn't content
UPDATE DIM_ResearchCategories
   SET NoteField = NULL
   WHERE NoteField == '';

-- Clean links from Research tab in Economics window
Update FCT_TechSystem
   SET TechDescription = substr(TechDescription, 1, instr(TechDescription, ' (see http://'))
   WHERE instr(TechDescription, ' (see http://') != 0;

-- Clean links from Ground Combat Component names
Update DIM_GroundComponentType
   SET ComponentName = substr(ComponentName, 1, instr(ComponentName, ' (see http://'))
   WHERE instr(ComponentName, ' (see http://') != 0;
