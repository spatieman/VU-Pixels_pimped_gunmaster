class "GMWeapons_handguns"

function GMWeapons_handguns:Write(instance)
-- -----------------------------------------
-- MP412 Rex Pimped --
	if (mmResources:IsLoaded('mp412rex') and mmResources:IsLoaded('defibvolabel') and mmResources:IsLoaded('12gfrag')) then
		mmResources:SetLoaded('mp412rex', false)
		mmResources:SetLoaded('defibvolabel', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('mp412rex'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		local voData = ebxEditUtils:GetWritableContainer(mmResources:GetInstance('mp412rex'), 'object.VoiceOverInfo')
		voData.labels:clear()
		voData.labels:add(ebxEditUtils:GetWritableInstance(mmResources:GetInstance('defibvolabel')))

		local fireData = ebxEditUtils:GetWritableContainer(mmResources:GetInstance('mp412rex'), 'object.WeaponFiring.PrimaryFire')
		fireData.ammo.magazineCapacity = -1
		fireData.fireLogic.rateOfFire = 900

		fireData.shot.projectileData = ebxEditUtils:GetWritableInstance(mmResources:GetInstance('12gfrag'))

		local fireDataGM = ebxEditUtils:GetWritableContainer(mmResources:GetInstance('mp412rex'), 'object.WeaponModifierData.1.Modifiers.2')
		fireDataGM.magazineCapacity = -1
		self:OverrideGMMagSize(weaponData, 50, -1)

		dprint('Changed Handguns: MP412 Rex (GM) Pimped ...')
	end
-- -----------------------------------------
-- -----------------------------------------
-- -----------------------------------------

-- -----------------------------------------
-- -----------------------------------------
-- -----------------------------------------
-- -----------------------------------------
-- -----------------------------------------
-- Handguns --

	if (mmResources:IsLoaded('gm_mp443')) then
		mmResources:SetLoaded('gm_mp443', false)

		local weaponBP = ebxEditUtils:GetWritableInstance('Weapons/MP443/MP443_GM')
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)

		fireData.fireLogic.rateOfFire = 900
		dprint('Changed Handguns:  Mp443 (GM)...')
	end

-- -----------------------------------------

-- GM93r Pimped
	if (mmResources:IsLoaded('gm_m93r')  and mmResources:IsLoaded('crossbolt_scan') and mmResources:IsLoaded('crossbolt_he_exp_scarl') and mmResources:IsLoaded('crossboltsound_scarl')) then
		mmResources:SetLoaded('gm_m93r', false)
		mmResources:SetLoaded('crossbolt_scan', false)

		local weaponBP = ebxEditUtils:GetWritableInstance('Weapons/M93R/M93R_GM')
		local weaponData = SoldierWeaponData(weaponBP.object)
		local bulletData = BulletEntityData(mmResources:GetInstance('crossbolt_scan'))
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')
		local expData = VeniceExplosionEntityData(mmResources:GetInstance('crossbolt_scan_LE'))

		self:OverrideGMMagSize(weaponData, 150, -1)

		bulletData:MakeWritable()
		bulletData.gravity = 0
		bulletData.timeToLive = 5
		bulletData.impactImpulse = 500

		expData:MakeWritable()
		expData.blastDamage = 15 -- Normal = 0
		expData.blastRadius = 5 -- Normal = 10
		expData.blastImpulse = 50 -- Normal = 0
		expData.shockwaveDamage = 15 -- Normal = 0
		expData.shockwaveRadius = 5 -- Normal = 10
		expData.shockwaveImpulse = 50 -- Normal = 0
		dprint('Changed Handguns: M93R - Low pimped EXP Bolt damage (GM) ...')


		fireData.shot.initialSpeed.z = 15
		fireData.shot.projectileData:MakeWritable()
		fireData.shot.projectileData = ProjectileEntityData(bulletData)
		dprint('Changed Handguns:  M93r (GM) pimped ...')
	end

-- -----------------------------------------

	if (mmResources:IsLoaded('gm_magnum44') ) then
		mmResources:SetLoaded('gm_magnum44', false)

		local weaponBP = ebxEditUtils:GetWritableInstance('Weapons/Taurus44/Taurus44_GM')
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Handguns:  Magnum .44 (GM)...')
	end

-- -----------------------------------------

	if (mmResources:IsLoaded('m9')) then
		mmResources:SetLoaded('m9', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('m9'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Handguns:  M9 (GM) ...')
	end
--
-- -----------------------------------------

	if (mmResources:IsLoaded('m9sup')) then
		mmResources:SetLoaded('m9sup', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('m9sup'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Handguns:  M9 Silencer (GM) ...')
	end

-- -----------------------------------------

	if (mmResources:IsLoaded('g17')) then
		mmResources:SetLoaded('g17', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('g17'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Handguns:  G17 (GM) ...')
	end

-- ----------------------------------------------

	if (mmResources:IsLoaded('m1911')) then
		mmResources:SetLoaded('m1911', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('m1911'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Handguns:  M1911 (GM) ...')
	end


-- ----------------------------------------------------

function GMWeapons_handguns:OverrideGMMagSize(weaponData, newMagSize, newClipSize)

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
end

-- ----------------------------------------------------
end
return GMWeapons_handguns()

