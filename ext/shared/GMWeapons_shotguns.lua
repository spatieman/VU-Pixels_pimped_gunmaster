class "GMWeapons_shotguns"

function GMWeapons_shotguns:Write(instance)
-- -----------------------------------------
-- SHOTGUNS --

	if (mmResources:IsLoaded('spas12')) then
		mmResources:SetLoaded('spas12', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('spas12'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Shotgun: Spas-12 (GM) ...')
	end
-- -----------------------------------------

	if (mmResources:IsLoaded('jackhammer')) then
		mmResources:SetLoaded('jackhammer', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('jackhammer'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Shotgun: Jackhammer (GM) ...')
	end
-- -----------------------------------------

	if (mmResources:IsLoaded('dao12')) then
		mmResources:SetLoaded('dao12', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('dao12'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Shotgun: DAO-12 (GM) ...')
	end
-- -----------------------------------------

	if (mmResources:IsLoaded('m1014')) then
		mmResources:SetLoaded('m1014', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('m1014'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Shotgun: M1014 (GM) ...')
	end
-- -----------------------------------------

	if (mmResources:IsLoaded('saiga12k')) then
		mmResources:SetLoaded('saiga12k', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('saiga12k'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Shotgun: SAIGA12K (GM) ...')
	end
-- -----------------------------------------

	if (mmResources:IsLoaded('870mcs')) then
		mmResources:SetLoaded('870mcs', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('870mcs'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Shotgun: 870MCS (GM) ...')
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

