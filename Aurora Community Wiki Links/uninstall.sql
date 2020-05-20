UPDATE DIM_ResearchCategories
   SET NoteField = CASE Name
      WHEN 'General Science' THEN NULL
      ELSE NoteField
      END