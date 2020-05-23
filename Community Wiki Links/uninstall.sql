UPDATE DIM_ResearchCategories
   SET NoteField = CASE Name
      WHEN 'Lasers' THEN 'NULL'
      WHEN 'Missile Launchers' THEN 'NULL'
      WHEN 'Missiles' THEN 'NULL'
      WHEN 'Power Plants' THEN 'NULL'
      WHEN 'Engines' THEN 'NULL'
      WHEN 'Industry' THEN 'NULL'
      WHEN 'Basic Systems' THEN 'NULL'
      WHEN 'Shield Generators' THEN 'NULL'
      WHEN 'Active Sensors / Missile Fire Control' THEN 'Sensor Range = Sensor Strength x Size x SQRT(Resolution) x EM Sensitivity x 10,000 km'
      WHEN 'Thermal Sensors' THEN 'NULL'
      WHEN 'Electronic Warfare' THEN 'NULL'
      WHEN 'Jump Engines' THEN 'NULL'
      WHEN 'Beam Fire Control' THEN 'The fire control has a % chance to hit equal to (maximum range - target distance) / maximum range'
      WHEN 'Particle Beam' THEN 'NULL'
      WHEN 'Meson Cannon' THEN 'NULL'
      WHEN 'Railgun' THEN 'NULL'
      WHEN 'Plasma Carronade' THEN 'NULL'
      WHEN 'Survey Sensors' THEN 'NULL'
      WHEN 'Transport & Industry' THEN 'NULL'
      WHEN 'Planetary Combat' THEN 'NULL'
      WHEN 'EM Detection Sensors' THEN 'NULL'
      WHEN 'High Power Microwave' THEN 'NULL'
      WHEN 'Gauss Cannon' THEN 'NULL'
      WHEN 'Cloaking Device' THEN 'NULL'
      WHEN 'Magazine' THEN 'NULL'
      WHEN 'CIWS' THEN 'NULL'
      WHEN 'New Species' THEN 'NULL'
      WHEN 'Missile Engines' THEN 'Missile Drives are solid-fuelled. Because of their one-use nature, they have double the racial maximum power modification'
      WHEN 'Fighter Pod Bay' THEN 'NULL'
      ELSE NoteField
      END

UPDATE FCT_TechSystem
   SET TechDescription = CASE Name
      WHEN 'Cargo Hold - Small' THEN 'Allows ship to transport 5000 cargo points. 1 ton of minerals = 2.5 CP, Infrastructure = 2500 CP, Factory or Mine = 25,000 CP'
      ELSE TechDescription
      END