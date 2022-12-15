class "GMWeapons_shotguns_ammo"

function GMWeapons_shotguns_ammo:Write(instance)
-- -----------------------------------------
-- SHOTGUNS Ammo data--

-- also default shotgun FRAG data --
if (mmResources:IsLoaded('12gfragexp')) then
		mmResources:SetLoaded('12gfragexp', false)

		local fireData = VeniceExplosionEntityData(mmResources:GetInstance('12gfragexp'))
		fireData:MakeWritable()

		fireData.blastDamage = 300.0 -- Default = 25
		fireData.blastRadius = 5.0 -- Default = 2.5
		fireData.blastImpulse = 2000.0 -- Default = 400
		fireData.shockwaveDamage = 300.0 -- Default = 1
		fireData.shockwaveRadius = 5.0 -- Default = 3
		fireData.shockwaveImpulse = 2000.0 -- Default = 100

		dprint('Changed Handguns: MP412 Rex - Damage increased (GM) ...')
	end

if (mmResources:IsLoaded('12gfraggrav')) then
		mmResources:SetLoaded('12gfraggrav', false)

		local fireData = BulletEntityData(mmResources:GetInstance('12gfraggrav'))
		fireData:MakeWritable()

		fireData.initialSpeed = 500 -- default = 350.0
		fireData.timeToLive = 2 -- default = 3.0
		fireData.gravity = 0 -- default = -15
		fireData.startDamage = 100 -- default = 20
		fireData.endDamage = 100 -- default = 5

		dprint('Changed Shotgun Ammo: 12G Frag - Gravity modifier (GM) ...')
	end

--
-- 12g frag pump ammo --
if (mmResources:IsLoaded('12gfrag_pump_grav')) then
		mmResources:SetLoaded('12gfrag_pump_grav', false)

		local fireData = BulletEntityData(mmResources:GetInstance('12gfrag_pump_grav'))
		fireData:MakeWritable()

		fireData.initialSpeed = 500 -- default = 350.0
		fireData.timeToLive = 5 -- default = 3.0
		fireData.gravity = 0 -- default = -15
		fireData.startDamage = 100 -- default = 37.5
		fireData.endDamage = 100 -- default = 10

		dprint('Changed Shotgun Ammo: 12g Frag pump - Gravity modifier (GM) ...')
	end

if (mmResources:IsLoaded('12gfrag_pump_exp')) then
		mmResources:SetLoaded('12gfrag_pump_exp', false)

		local fireData = VeniceExplosionEntityData(mmResources:GetInstance('12gfrag_pump_exp'))
		fireData:MakeWritable()

		fireData.blastDamage = 300.0 -- Default = 25
		fireData.blastRadius = 5.0 -- Default = 2.5
		fireData.blastImpulse = 2000.0 -- Default = 400
		fireData.shockwaveDamage = 300.0 -- Default = 1
		fireData.shockwaveRadius = 5.0 -- Default = 3
		fireData.shockwaveImpulse = 2000.0 -- Default = 100

		dprint('Changed Shotgun Ammo: 12g Frag pump - Damage modifier (GM) ...')
	end

--
-- Buckshot Ammo --
if (mmResources:IsLoaded('buck_grav')) then
		mmResources:SetLoaded('buck_grav', false)

		local fireData = BulletEntityData(mmResources:GetInstance('buck_grav'))
		fireData:MakeWritable()

		fireData.initialSpeed = 500 -- default = 350.0
		fireData.timeToLive = 2 -- default = 1.0
		fireData.gravity = 0 -- default = -9.8
		fireData.startDamage = 100 -- default = 18
		fireData.endDamage = 100 -- default = 6

		dprint('Changed Shotgun Ammo: 12G buckshot - Gravity modifier (GM) ...')
	end

--
-- Flechette Ammo --
if (mmResources:IsLoaded('flech_grav')) then
		mmResources:SetLoaded('flech_grav', false)

		local fireData = BulletEntityData(mmResources:GetInstance('flech_grav'))
		fireData:MakeWritable()

		fireData.initialSpeed = 500 -- default = 350.0
		fireData.timeToLive = 2 -- default = 1.0
		fireData.gravity = 0 -- default = -9.8
		fireData.startDamage = 100 -- default = 18
		fireData.endDamage = 100 -- default = 6

		dprint('Changed Shotgun Ammo: 12g flechette - Gravity modifier (GM) ...')
	end

--
-- Slug Ammo --
if (mmResources:IsLoaded('slug_grav')) then
		mmResources:SetLoaded('slug_grav', false)

		local fireData = BulletEntityData(mmResources:GetInstance('slug_grav'))
		fireData:MakeWritable()

		fireData.initialSpeed = 500 -- default = 350.0
		fireData.timeToLive = 8 -- default = 5.0
		fireData.gravity = 0 -- default = -12
		fireData.startDamage = 100 -- default = 75
		fireData.endDamage = 100 -- default = 37.5

		dprint('Changed Shotgun Ammo: 12g slug - Gravity modifier (GM) ...')
	end

--
-- Slug Pump Ammo --
if (mmResources:IsLoaded('slug_pump_grav')) then
		mmResources:SetLoaded('slug_pump_grav', false)

		local fireData = BulletEntityData(mmResources:GetInstance('slug_pump_grav'))
		fireData:MakeWritable()

		fireData.initialSpeed = 500 -- default = 350.0
		fireData.timeToLive = 8 -- default = 5.0
		fireData.gravity = 0 -- default = -12
		fireData.startDamage = 100 -- default = 100
		fireData.endDamage = 100 -- default = 40

		dprint('Changed Shotgun Ammo: 12g slug pump - Gravity modifier (GM) ...')
	end

-- -----------------------------------------
end
return GMWeapons_shotguns_ammo()

