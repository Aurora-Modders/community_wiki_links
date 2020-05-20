UPDATE DIM_ResearchCategories
   SET NoteField = CASE Name
      WHEN 'General Science' THEN NoteField || ' Foo!'
      ELSE NoteField
      END