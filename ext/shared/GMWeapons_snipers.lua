class "GMWeapons_snipers"


function GMWeapons_snipers:Write(instance)
-- -----------------------------------------
-- Snipers -- (10)


	if (mmResources:IsLoaded('sks')) then

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('sks'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		mmResources:SetLoaded('sks', false)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Sniper: SKS (GM) ...')
	end
--

	if (mmResources:IsLoaded('sv98')) then
		mmResources:SetLoaded('sv98', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('sv98'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed Sniper: SV98 (GM) ...')
	end
--


	if (mmResources:IsLoaded('m98')) then
		mmResources:SetLoaded('m98', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('m98'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed Sniper: M98 (GM) ...')
	end

--

	if (mmResources:IsLoaded('mk11')) then
		mmResources:SetLoaded('mk11', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('mk11'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Sniper: MK11 (GM) ...')
	end


--

	if (mmResources:IsLoaded('l96')) then
		mmResources:SetLoaded('l96', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('l96'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Sniper: L96 (GM) ...')
	end


-- -----------------------------------------
	if (mmResources:IsLoaded('hk417')) then
		mmResources:SetLoaded('hk417', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('hk417'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Sniper: M417 (GM) ...')
	end


-- -----------------------------------------

	if (mmResources:IsLoaded('m40a5')) then
		mmResources:SetLoaded('m40a5', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('m40a5'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Sniper: M40A5 (GM) ...')
	end

-- -----------------------------------------

	if (mmResources:IsLoaded('jng90') ) then
		mmResources:SetLoaded('jng90', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('jng90'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed Sniper: JNG-90 (GM) ...')
	end

-- -----------------------------------------

	if (mmResources:IsLoaded('qbu88')) then
		mmResources:SetLoaded('qbu88', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('qbu88'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Sniper: QBU-88 (GM) ...')
	end

-- -----------------------------------------

	if (mmResources:IsLoaded('svd')) then
		mmResources:SetLoaded('svd', false)
		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('svd'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Sniper: SVD  (GM) ...')
	end

-- -----------------------------------------

function GMWeapons_snipers:OverrideGMMagSize(weaponData, newMagSize, newClipSize)

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


-- -----------------------------------------
end
return GMWeapons_snipers()

