class "GMWeapons_rockets"

function GMWeapons_rockets:Write(instance)
-- -----------------------------------------

if (mmResources:IsLoaded('smaw')) then
		mmResources:SetLoaded('smaw', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('smaw'))
		fireData:MakeWritable()
		fireData.shot.initialSpeed.z = 20
--		fireData.fireLogic.rateOfFire = 50
		fireData.fireLogic.reloadTime = 4
		fireData.ammo.magazineCapacity = -1
		fireData.ammo.numberOfMagazines = -1

		dprint('Changed SMAW (GM) ...')
	end
-- ---------------------------------------------------------------------------
if (mmResources:IsLoaded('rpg7')) then
		mmResources:SetLoaded('rpg7', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('rpg7'))
		fireData:MakeWritable()
		fireData.shot.initialSpeed.z = 20
--		fireData.fireLogic.rateOfFire = 50
		fireData.fireLogic.reloadTime = 4
		fireData.ammo.magazineCapacity = -1
		fireData.ammo.numberOfMagazines = -1

		dprint('Changed RPG7 (GM) ...')
	end
-- ---------------------------------------------------------------------------

if (mmResources:IsLoaded('smawgrav')) then
		mmResources:SetLoaded('smawgrav', false)

		local fireData = MissileEntityData(mmResources:GetInstance('smawgrav'))
		fireData:MakeWritable()

--		fireData.initialSpeed = 500.0
		fireData.timeToLive = 4
		fireData.gravity = 0

		dprint('Changed SMAW gravity (GM) ...')
	end
-- ---------------------------------------------------------------------------

if (mmResources:IsLoaded('rpg7grav')) then
		mmResources:SetLoaded('rpg7grav', false)

		local fireData = MissileEntityData(mmResources:GetInstance('rpg7grav'))
		fireData:MakeWritable()

--		fireData.initialSpeed = 500.0
		fireData.timeToLive = 4
		fireData.gravity = 0

		dprint('Changed RPG7 gravity (GM) ...')
	end

if (mmResources:IsLoaded('smawexp')) then
		mmResources:SetLoaded('smawexp', false)

		local fireData = VeniceExplosionEntityData(mmResources:GetInstance('smawexp'))
		fireData:MakeWritable()

		fireData.blastDamage = 3000.0 -- Default = 112
		fireData.blastRadius = 20.0 -- Default = 4
		fireData.blastImpulse = 8000.0 -- Default = 2000
		fireData.shockwaveDamage = 500.0 -- Default = 1
		fireData.shockwaveRadius = 20.0 -- Default = 10
		fireData.shockwaveImpulse = 4000.0 -- Default = 500
		fireData.shockwaveTime = 0.25 -- Default = 0.25

		dprint('Changed SMAW - Damage increased (GM) ...')
	end

-- ---------------------------------------------------------------------------


if (mmResources:IsLoaded('rpg7exp')) then
		mmResources:SetLoaded('rpg7exp', false)

		local fireData = VeniceExplosionEntityData(mmResources:GetInstance('rpg7exp'))
		fireData:MakeWritable()

		fireData.blastDamage = 3000.0 -- Default = 112
		fireData.blastRadius = 20.0 -- Default = 4
		fireData.blastImpulse = 8000.0 -- Default = 2000
		fireData.shockwaveDamage = 500.0 -- Default = 1
		fireData.shockwaveRadius = 20.0 -- Default = 10
		fireData.shockwaveImpulse = 4000.0 -- Default = 500
		fireData.shockwaveTime = 0.25 -- Default = 0.25

		dprint('Changed RPG7 - Damage increased (GM) ...')
	end
-- ----------------------------------------------------
end
return GMWeapons_rockets()

