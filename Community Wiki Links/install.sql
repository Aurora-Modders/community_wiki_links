-- Notes from FCT_TechSystem show in research window
-- Notes from DIM_ResearchCategories show in 'Create Research Project' window
-- Could potentially add additional info with a FCT_MapLabel
-- Could potentially add to descriptions in DIM_ComponentType, DIM_GroundComponentType, DIM_GroundUnitCapability (short link only)

-- Get race id (from FCT_Race WHERE NPR = 0?)

UPDATE DIM_ResearchCategories
   SET NoteField = CASE Name
      WHEN 'Lasers' THEN COALESCE(NoteField, '') || 'See http://aurorawiki.pentarch.org/index.php?title=C-Beam_Weapons for more info'
      WHEN 'Missile Launchers' THEN COALESCE(NoteField, '') || 'See http://aurorawiki.pentarch.org/index.php?title=C-Missiles#Missile_Launcher for more info'
      WHEN 'Missiles' THEN COALESCE(NoteField, '') || 'See http://aurorawiki.pentarch.org/index.php?title=C-Missiles for more info'
      WHEN 'Power Plants' THEN COALESCE(NoteField, '') || 'See http://aurorawiki.pentarch.org/index.php?title=C-Ship_Modules#Power_Plant for more info'
      WHEN 'Engines' THEN NoteField
      WHEN 'Industry' THEN NoteField
      WHEN 'Basic Systems' THEN NoteField
      WHEN 'Shield Generators' THEN COALESCE(NoteField, '') || 'See http://aurorawiki.pentarch.org/index.php?title=C-Ship_Modules#Shields for more info'
      WHEN 'Active Sensors / Missile Fire Control' THEN COALESCE(NoteField, '') || '. See http://aurorawiki.pentarch.org/index.php?title=C-Ship_Modules#New_Active_Sensor_Model for more info.'
      WHEN 'Thermal Sensors' THEN COALESCE(NoteField, '') || 'See http://aurorawiki.pentarch.org/index.php?title=C-Ship_Modules#New_Passive_Sensor_Model for more info'
      WHEN 'Electronic Warfare' THEN NoteField
      WHEN 'Jump Engines' THEN COALESCE(NoteField, '') || 'See http://aurorawiki.pentarch.org/index.php?title=C-Ship_Modules#Jump_Engines for more info'
      WHEN 'Beam Fire Control' THEN NoteField
      WHEN 'Particle Beam' THEN COALESCE(NoteField, '') || 'See http://aurorawiki.pentarch.org/index.php?title=C-Beam_Weapons#Particle_Lance for more info'
      WHEN 'Meson Cannon' THEN COALESCE(NoteField, '') || 'See http://aurorawiki.pentarch.org/index.php?title=C-Beam_Weapons#Mesons for more info'
      WHEN 'Railgun' THEN NoteField
      WHEN 'Plasma Carronade' THEN COALESCE(NoteField, '') || 'See http://aurorawiki.pentarch.org/index.php?title=C-Beam_Weapons#Plasma_Carronades for more info'
      WHEN 'Survey Sensors' THEN NoteField
      WHEN 'Transport & Industry' THEN NoteField
      WHEN 'Planetary Combat' THEN COALESCE(NoteField, '') || 'See http://aurorawiki.pentarch.org/index.php?title=C-Ground_Combat for more info'
      WHEN 'EM Detection Sensors' THEN COALESCE(NoteField, '') || 'See http://aurorawiki.pentarch.org/index.php?title=C-Ship_Modules#New_Passive_Sensor_Model for more info'
      WHEN 'High Power Microwave' THEN NoteField
      WHEN 'Gauss Cannon' THEN NoteField
      WHEN 'Cloaking Device' THEN NoteField
      WHEN 'Magazine' THEN COALESCE(NoteField, '') || 'See http://aurorawiki.pentarch.org/index.php?title=C-Ship_Modules#Magazines for more info'
      WHEN 'CIWS' THEN COALESCE(NoteField, '') || 'See http://aurorawiki.pentarch.org/index.php?title=CIWS for more info'
      WHEN 'New Species' THEN COALESCE(NoteField, '') || 'Not yet supported!'
      WHEN 'Missile Engines' THEN NoteField
      WHEN 'Fighter Pod Bay' THEN COALESCE(NoteField, '') || 'See http://aurorawiki.pentarch.org/index.php?title=C-Missiles#Fighter_Pods_for_Ground_Combat for more info'
      ELSE NoteField
      END

Update DIM_GroundComponentType
   SET ComponentName = ComponentName || " (see http://aurorawiki.pentarch.org/index.php?title=C-GU_Components for more info)";

UPDATE FCT_TechSystem
   SET TechDescription = TechDescription || " (see http://aurorawiki.pentarch.org/index.php?title=C-Ship_Modules#Cargo_Shuttle_Bays_and_Cargo_Handling_Systems for more info)"
   WHERE (SELECT Description FROM DIM_TechType WHERE DIM_TechType.TechTypeID = FCT_TechSystem.TechTypeID AND DIM_TechType.Description = "Cargo Hold") IS NOT NULL
