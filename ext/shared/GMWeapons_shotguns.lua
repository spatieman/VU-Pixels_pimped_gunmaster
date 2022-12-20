-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

class "GMWeapons_shotguns"

function GMWeapons_shotguns:Write(instance)
-- -----------------------------------------
-- SHOTGUNS --

	if (mmResources:IsLoaded('jackhammer')) then
		mmResources:SetLoaded('jackhammer', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('jackhammer'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

--
	local fireData = {
			FiringFunctionData(mmResources:GetInstance('jackhammer', 'FireFunction1')),
			FiringFunctionData(mmResources:GetInstance('jackhammer', 'FireFunction2')),
			FiringFunctionData(mmResources:GetInstance('jackhammer', 'FireFunction3')),
			FiringFunctionData(mmResources:GetInstance('jackhammer', 'FireFunction4'))
		}

		for i=1, #fireData do
			fireData[i]:MakeWritable()
			fireData[i].fireLogic.rateOfFire = 300

			fireData[i].ammo.magazineCapacity = -1
		end

		fireData[1].shot.numberOfBulletsPerShell = 50 -- pellets
		fireData[2].shot.numberOfBulletsPerShell = 50 -- flechets
		fireData[3].shot.numberOfBulletsPerShell = 50 -- frags
		fireData[4].shot.numberOfBulletsPerShell = 50 -- slugs

		local bulletDataPellets = BulletEntityData(fireData[1].shot.projectileData)
		bulletDataPellets:MakeWritable()
		bulletDataPellets.gravity = 0
		bulletDataPellets.startDamage = 100
		bulletDataPellets.endDamage = 500
		bulletDataPellets.damageFalloffStartDistance = 0
		bulletDataPellets.damageFalloffEndDistance = 50

		local bulletDataFlechet = BulletEntityData(fireData[2].shot.projectileData)
		bulletDataFlechet:MakeWritable()
		bulletDataFlechet.gravity = 0
		bulletDataFlechet.startDamage = 100
		bulletDataFlechet.endDamage = 500
		bulletDataFlechet.damageFalloffStartDistance = 0
		bulletDataFlechet.damageFalloffEndDistance = 50
--

 	if (bEnable_announcement) == (true) then dprint('Changed Shotgun: Jackhammer (GM) ...')
	end
end

-- -----------------------------------------
	if (mmResources:IsLoaded('spas12')) then
		mmResources:SetLoaded('spas12', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('spas12'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

--
	local fireData = {
			FiringFunctionData(mmResources:GetInstance('spas12', 'FireFunction1')),
			FiringFunctionData(mmResources:GetInstance('spas12', 'FireFunction2')),
			FiringFunctionData(mmResources:GetInstance('spas12', 'FireFunction3')),
			FiringFunctionData(mmResources:GetInstance('spas12', 'FireFunction4'))
		}

		for i=1, #fireData do
			fireData[i]:MakeWritable()
			fireData[i].fireLogic.rateOfFire = 300

			fireData[i].ammo.magazineCapacity = -1
		end

		fireData[1].shot.numberOfBulletsPerShell = 50 -- pellets
		fireData[2].shot.numberOfBulletsPerShell = 50 -- flechets
		fireData[3].shot.numberOfBulletsPerShell = 50 -- frags
		fireData[4].shot.numberOfBulletsPerShell = 50 -- slugs

		local bulletDataPellets = BulletEntityData(fireData[1].shot.projectileData)
		bulletDataPellets:MakeWritable()
		bulletDataPellets.gravity = 0
		bulletDataPellets.startDamage = 100
		bulletDataPellets.endDamage = 500
		bulletDataPellets.damageFalloffStartDistance = 0
		bulletDataPellets.damageFalloffEndDistance = 50

		local bulletDataFlechet = BulletEntityData(fireData[2].shot.projectileData)
		bulletDataFlechet:MakeWritable()
		bulletDataFlechet.gravity = 0
		bulletDataFlechet.startDamage = 100
		bulletDataFlechet.endDamage = 500
		bulletDataFlechet.damageFalloffStartDistance = 0
		bulletDataFlechet.damageFalloffEndDistance = 50
--

	if (bEnable_announcement) == (true) then dprint('Changed Shotgun: Spas-12 (GM) ...')
	end
end
-- -----------------------------------------


	if (mmResources:IsLoaded('dao12')) then
		mmResources:SetLoaded('dao12', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('dao12'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

--
	local fireData = {
			FiringFunctionData(mmResources:GetInstance('dao12', 'FireFunction1')),
			FiringFunctionData(mmResources:GetInstance('dao12', 'FireFunction2')),
			FiringFunctionData(mmResources:GetInstance('dao12', 'FireFunction3')),
			FiringFunctionData(mmResources:GetInstance('dao12', 'FireFunction4'))
		}

		for i=1, #fireData do
			fireData[i]:MakeWritable()
			fireData[i].fireLogic.rateOfFire = 300

			fireData[i].ammo.magazineCapacity = -1
		end

		fireData[1].shot.numberOfBulletsPerShell = 50 -- pellets
		fireData[2].shot.numberOfBulletsPerShell = 50 -- flechets
		fireData[3].shot.numberOfBulletsPerShell = 50 -- frags
		fireData[4].shot.numberOfBulletsPerShell = 50 -- slugs

		local bulletDataPellets = BulletEntityData(fireData[1].shot.projectileData)
		bulletDataPellets:MakeWritable()
		bulletDataPellets.gravity = 0
		bulletDataPellets.startDamage = 100
		bulletDataPellets.endDamage = 500
		bulletDataPellets.damageFalloffStartDistance = 0
		bulletDataPellets.damageFalloffEndDistance = 50

		local bulletDataFlechet = BulletEntityData(fireData[2].shot.projectileData)
		bulletDataFlechet:MakeWritable()
		bulletDataFlechet.gravity = 0
		bulletDataFlechet.startDamage = 100
		bulletDataFlechet.endDamage = 500
		bulletDataFlechet.damageFalloffStartDistance = 0
		bulletDataFlechet.damageFalloffEndDistance = 50
--

 	if (bEnable_announcement) == (true) then dprint('Changed Shotgun: DAO-12 (GM) ...')
	end
end
-- -----------------------------------------

	if (mmResources:IsLoaded('m1014')) then
		mmResources:SetLoaded('m1014', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('m1014'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

--
	local fireData = {
			FiringFunctionData(mmResources:GetInstance('m1014', 'FireFunction1')),
			FiringFunctionData(mmResources:GetInstance('m1014', 'FireFunction2')),
			FiringFunctionData(mmResources:GetInstance('m1014', 'FireFunction3')),
			FiringFunctionData(mmResources:GetInstance('m1014', 'FireFunction4'))
		}

		for i=1, #fireData do
			fireData[i]:MakeWritable()
			fireData[i].fireLogic.rateOfFire = 300

			fireData[i].ammo.magazineCapacity = -1
		end

		fireData[1].shot.numberOfBulletsPerShell = 50 -- pellets
		fireData[2].shot.numberOfBulletsPerShell = 50 -- flechets
		fireData[3].shot.numberOfBulletsPerShell = 50 -- frags
		fireData[4].shot.numberOfBulletsPerShell = 50 -- slugs

		local bulletDataPellets = BulletEntityData(fireData[1].shot.projectileData)
		bulletDataPellets:MakeWritable()
		bulletDataPellets.gravity = 0
		bulletDataPellets.startDamage = 100
		bulletDataPellets.endDamage = 500
		bulletDataPellets.damageFalloffStartDistance = 0
		bulletDataPellets.damageFalloffEndDistance = 50

		local bulletDataFlechet = BulletEntityData(fireData[2].shot.projectileData)
		bulletDataFlechet:MakeWritable()
		bulletDataFlechet.gravity = 0
		bulletDataFlechet.startDamage = 100
		bulletDataFlechet.endDamage = 500
		bulletDataFlechet.damageFalloffStartDistance = 0
		bulletDataFlechet.damageFalloffEndDistance = 50
--

 	if (bEnable_announcement) == (true) then dprint('Changed Shotgun: M1014 (GM) ...')
	end
end
-- -----------------------------------------

	if (mmResources:IsLoaded('saiga12k')) then
		mmResources:SetLoaded('saiga12k', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('saiga12k'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

--
	local fireData = {
			FiringFunctionData(mmResources:GetInstance('saiga12k', 'FireFunction1')),
			FiringFunctionData(mmResources:GetInstance('saiga12k', 'FireFunction2')),
			FiringFunctionData(mmResources:GetInstance('saiga12k', 'FireFunction3')),
			FiringFunctionData(mmResources:GetInstance('saiga12k', 'FireFunction4'))
		}

		for i=1, #fireData do
			fireData[i]:MakeWritable()
			fireData[i].fireLogic.rateOfFire = 300

			fireData[i].ammo.magazineCapacity = -1
		end

		fireData[1].shot.numberOfBulletsPerShell = 50 -- pellets
		fireData[2].shot.numberOfBulletsPerShell = 50 -- flechets
		fireData[3].shot.numberOfBulletsPerShell = 50 -- frags
		fireData[4].shot.numberOfBulletsPerShell = 50 -- slugs

		local bulletDataPellets = BulletEntityData(fireData[1].shot.projectileData)
		bulletDataPellets:MakeWritable()
		bulletDataPellets.gravity = 0
		bulletDataPellets.startDamage = 100
		bulletDataPellets.endDamage = 500
		bulletDataPellets.damageFalloffStartDistance = 0
		bulletDataPellets.damageFalloffEndDistance = 50

		local bulletDataFlechet = BulletEntityData(fireData[2].shot.projectileData)
		bulletDataFlechet:MakeWritable()
		bulletDataFlechet.gravity = 0
		bulletDataFlechet.startDamage = 100
		bulletDataFlechet.endDamage = 500
		bulletDataFlechet.damageFalloffStartDistance = 0
		bulletDataFlechet.damageFalloffEndDistance = 50
--

 	if (bEnable_announcement) == (true) then dprint('Changed Shotgun: SAIGA12K (GM) ...')
	end
end
-- -----------------------------------------

	if (mmResources:IsLoaded('870mcs')) then
		mmResources:SetLoaded('870mcs', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('870mcs'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

--
	local fireData = {
			FiringFunctionData(mmResources:GetInstance('870mcs', 'FireFunction1')),
			FiringFunctionData(mmResources:GetInstance('870mcs', 'FireFunction2')),
			FiringFunctionData(mmResources:GetInstance('870mcs', 'FireFunction3')),
			FiringFunctionData(mmResources:GetInstance('870mcs', 'FireFunction4'))
		}

		for i=1, #fireData do
			fireData[i]:MakeWritable()
			fireData[i].fireLogic.rateOfFire = 300

			fireData[i].ammo.magazineCapacity = -1
		end

		fireData[1].shot.numberOfBulletsPerShell = 50 -- pellets
		fireData[2].shot.numberOfBulletsPerShell = 50 -- flechets
		fireData[3].shot.numberOfBulletsPerShell = 50 -- frags
		fireData[4].shot.numberOfBulletsPerShell = 50 -- slugs

		local bulletDataPellets = BulletEntityData(fireData[1].shot.projectileData)
		bulletDataPellets:MakeWritable()
		bulletDataPellets.gravity = 0
		bulletDataPellets.startDamage = 100
		bulletDataPellets.endDamage = 500
		bulletDataPellets.damageFalloffStartDistance = 0
		bulletDataPellets.damageFalloffEndDistance = 50

		local bulletDataFlechet = BulletEntityData(fireData[2].shot.projectileData)
		bulletDataFlechet:MakeWritable()
		bulletDataFlechet.gravity = 0
		bulletDataFlechet.startDamage = 100
		bulletDataFlechet.endDamage = 500
		bulletDataFlechet.damageFalloffStartDistance = 0
		bulletDataFlechet.damageFalloffEndDistance = 50
--

 	if (bEnable_announcement) == (true) then dprint('Changed Shotgun: 870MCS (GM) ...')
	end
end

-- ----------------------------------------------------

function GMWeapons_shotguns:OverrideGMMagSize(weaponData, newMagSize, newClipSize)

	if (weaponData == nil or weaponData.weaponModifierData == nil or #weaponData.weaponModifierData == 0) then
		return
	end

	for i=1, #weaponData.weaponModifierData do
		local weaponModData = WeaponModifierData(weaponData.weaponModifierData[i])
		if (weaponModData.unlockAsset:Is('UnlockAsset')) then
			local unlockAsset = UnlockAsset(weaponModData.unlockAsset)
			if (unlockAsset.name == 'Gameplay/XP2/GM_Deploytime') then
				for j=1, #weaponModData.modifiers do
					local unlockMod = weaponModData.modifiers[j]
					if (unlockMod:Is('WeaponMagazineModifier')) then
						local magMod = WeaponMagazineModifier(unlockMod)
						magMod:MakeWritable()
						magMod.magazineCapacity = newMagSize
						magMod.numberOfMagazines = newClipSize
					end
				end
			end
		end
	end
--end 
end


-- ----------------------------------------------------
end
return GMWeapons_shotguns()

