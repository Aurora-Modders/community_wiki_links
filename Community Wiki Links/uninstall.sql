UPDATE DIM_ResearchCategories
   SET NoteField = CASE Name
      WHEN 'Active Sensors / Missile Fire Control' THEN 'Sensor Range = Sensor Strength x Size x SQRT(Resolution) x EM Sensitivity x 10,000 km'
      ELSE NoteField
      END