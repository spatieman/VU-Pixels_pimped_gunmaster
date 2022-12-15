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

	if (mmResources:IsLoaded('gm_m93r')) then
		mmResources:SetLoaded('gm_m93r', false)

		local weaponBP = ebxEditUtils:GetWritableInstance('Weapons/M93R/M93R_GM')
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)

		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData:MakeWritable()
		fireData.shot.initialSpeed.z = 380
		fireData.shot.numberOfBulletsPerBurst = 15
		fireData.fireLogic.rateOfFire = 900
		fireData.fireLogic.rateOfFireForBurst = 900
		dprint('Changed Handguns:  M93r (GM)...')
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

