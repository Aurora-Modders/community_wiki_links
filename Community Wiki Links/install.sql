-- Notes from FCT_TechSystem show in research window
-- Notes from DIM_ResearchCategories show in 'Create Research Project' window
-- Could potentially add additional info with a FCT_MapLabel
-- Could potentially add to descriptions in DIM_ComponentType, DIM_GroundComponentType, DIM_GroundUnitCapability (short link only)

-- Get race id (from FCT_Race WHERE NPR = 0?)

UPDATE DIM_ResearchCategories
   SET NoteField = CASE Name
      WHEN 'Lasers' THEN 'See http://aurorawiki.pentarch.org/index.php?title=C-Beam_Weapons for more info'
      WHEN 'Missile Launchers' THEN 'See http://aurorawiki.pentarch.org/index.php?title=C-Missiles#Missile_Launcher for more info'
      WHEN 'Missiles' THEN 'See http://aurorawiki.pentarch.org/index.php?title=C-Missiles for more info'
      WHEN 'Power Plants' THEN 'See http://aurorawiki.pentarch.org/index.php?title=C-Ship_Modules#Power_Plant for more info'
      WHEN 'Engines' THEN 'NULL'
      WHEN 'Industry' THEN 'NULL'
      WHEN 'Basic Systems' THEN 'NULL'
      WHEN 'Shield Generators' THEN 'See http://aurorawiki.pentarch.org/index.php?title=C-Ship_Modules#Shields for more info'
      WHEN 'Active Sensors / Missile Fire Control' THEN 'Sensor Range = Sensor Strength x Size x SQRT(Resolution) x EM Sensitivity x 10,000 km'
      WHEN 'Thermal Sensors' THEN 'See http://aurorawiki.pentarch.org/index.php?title=C-Ship_Modules#New_Passive_Sensor_Model for more info'
      WHEN 'Electronic Warfare' THEN 'NULL'
      WHEN 'Jump Engines' THEN 'See http://aurorawiki.pentarch.org/index.php?title=C-Ship_Modules#Jump_Engines for more info'
      WHEN 'Beam Fire Control' THEN 'The fire control has a % chance to hit equal to (maximum range - target distance) / maximum range'
      WHEN 'Particle Beam' THEN 'See http://aurorawiki.pentarch.org/index.php?title=C-Beam_Weapons#Particle_Lance for more info'
      WHEN 'Meson Cannon' THEN 'See http://aurorawiki.pentarch.org/index.php?title=C-Beam_Weapons#Mesons for more info'
      WHEN 'Railgun' THEN 'NULL'
      WHEN 'Plasma Carronade' THEN 'See http://aurorawiki.pentarch.org/index.php?title=C-Beam_Weapons#Plasma_Carronades for more info'
      WHEN 'Survey Sensors' THEN 'NULL'
      WHEN 'Transport & Industry' THEN 'NULL'
      WHEN 'Planetary Combat' THEN 'See http://aurorawiki.pentarch.org/index.php?title=C-Ground_Combat for more info'
      WHEN 'EM Detection Sensors' THEN 'See http://aurorawiki.pentarch.org/index.php?title=C-Ship_Modules#New_Passive_Sensor_Model for more info'
      WHEN 'High Power Microwave' THEN 'NULL'
      WHEN 'Gauss Cannon' THEN 'NULL'
      WHEN 'Cloaking Device' THEN 'NULL'
      WHEN 'Magazine' THEN 'See http://aurorawiki.pentarch.org/index.php?title=C-Ship_Modules#Magazines for more info'
      WHEN 'CIWS' THEN 'See http://aurorawiki.pentarch.org/index.php?title=CIWS for more info'
      WHEN 'New Species' THEN 'Not yet supported!'
      WHEN 'Missile Engines' THEN 'Missile Drives are solid-fuelled. Because of their one-use nature, they have double the racial maximum power modification'
      WHEN 'Fighter Pod Bay' THEN 'See http://aurorawiki.pentarch.org/index.php?title=C-Missiles#Fighter_Pods_for_Ground_Combat for more info'
      ELSE NoteField
      END

UPDATE FCT_TechSystem
   SET TechDescription = CASE Name
      WHEN 'Cargo Hold - Small' THEN 'Allows ship to transport 5000 cargo points. 1 ton of minerals = 2.5 CP, Infrastructure = 2500 CP, Factory or Mine = 25,000 CP. See http://aurorawiki.pentarch.org/index.php?title=C-Ship_Modules#Cargo_Shuttle_Bays_and_Cargo_Handling_Systems for more info.'
      ELSE TechDescription
      END