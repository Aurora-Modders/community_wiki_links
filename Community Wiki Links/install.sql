UPDATE DIM_ResearchCategories
   SET NoteField = CASE Name
      WHEN 'Active Sensors / Missile Fire Control' THEN ' Foo!'
      ELSE NoteField
      END