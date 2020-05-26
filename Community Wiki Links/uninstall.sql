UPDATE DIM_ResearchCategories
   SET NoteField = substr(NoteField, 0, instr(NoteField, 'See http://'))
   WHERE instr(NoteFIeld, 'See http://') != 0

-- Extra cleanup
UPDATE DIM_ResearchCategories
   SET NoteField = NULL
   WHERE NoteField == ''

Update DIM_GroundComponentType
   SET ComponentName = substr(ComponentName, 1, instr(ComponentName, ' (see http://'))
   WHERE instr(ComponentName, ' (see http://') != 0

Update FCT_TechSystem
   SET TechDescription = substr(TechDescription, 1, instr(TechDescription, ' (see http://'))
   WHERE instr(TechDescription, ' (see http://') != 0
