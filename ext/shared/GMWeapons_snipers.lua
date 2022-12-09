class "GMWeapons_snipers"


function GMWeapons_snipers:Write(instance)
-- -----------------------------------------
-- Snipers --

	if (mmResources:IsLoaded('m40a5')) then
		mmResources:SetLoaded('m40a5', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('m40a5'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Sniper: M40A5 (GM) ...')
	end
--

	if (mmResources:IsLoaded('svd')) then
		mmResources:SetLoaded('svd', false)
		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('svd'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Sniper: SVD  (GM) ...')
	end

--

	if (mmResources:IsLoaded('hk417')) then
		mmResources:SetLoaded('hk417', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('hk417'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed Sniper: M417 (GM) ...')
	end

-- -----------------------------------------

	if (mmResources:IsLoaded('jng90') ) then
		mmResources:SetLoaded('jng90', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('jng90'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed Sniper: JNG-90 (GM) ...')
	end

--

	if (mmResources:IsLoaded('qbu88')) then
		mmResources:SetLoaded('qbu88', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('qbu88'))
		local weaponData = SoldierWeaponData(weaponBP.object)

--		self:ResetSwayData(ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.weaponSway'),
--			0.2,	-- minAngleMod
--			0.2,	-- maxAngleMod
--			0.2,	-- perShotMod
--			0.2,	-- recoilMod
--			0.2,	-- recoilHMod
--			0.2,	-- recoilIncMod
--			10		-- recoilDecMod
--		)

		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')
		fireData.fireLogic.rateOfFire = 900
		fireData.fireLogic.rateOfFireForBurst = 900
		fireData.fireLogic.fireLogicType = FireLogicType.fltBurstFire
		fireData.fireLogic.fireLogicTypeArray:add(FireLogicType.fltSingleFire)
		fireData.fireLogic.fireLogicTypeArray:add(FireLogicType.fltAutomaticFire)

		fireData.ammo.magazineCapacity = 250
		fireData.ammo.numberOfMagazines = -1

		fireData.shot.numberOfBulletsPerBurst = 3

		dprint('Changed Sniper: QBU-88 (GM) ...')
	end

--


--

	if (mmResources:IsLoaded('sks') and mmResources:IsLoaded('40mmlvg_grenade') and mmResources:IsLoaded('40mmlvgsound')) then
		mmResources:SetLoaded('sks', false)

		local grenadeData = GrenadeEntityData(mmResources:GetInstance('40mmlvg_grenade'))
		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('sks'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')
		fireData.fireLogic.rateOfFire = 300
		fireData.fireLogic.rateOfFireForBurst = 600
		fireData.fireLogic.fireLogicType = FireLogicType.fltBurstFire
		fireData.fireLogic.fireLogicTypeArray:add(FireLogicType.fltSingleFire)
		fireData.fireLogic.fireLogicTypeArray:add(FireLogicType.fltAutomaticFire)

		fireData.ammo.magazineCapacity = 250
		fireData.ammo.numberOfMagazines = -1

		fireData.shot.projectileData:MakeWritable()
		fireData.shot.projectileData = ProjectileEntityData(grenadeData)
		fireData.shot.initialSpeed.z = 55
		fireData.shot.numberOfBulletsPerShell = 1
		fireData.shot.numberOfBulletsPerBurst = 5

		fireData.sound = SoundPatchAsset(mmResources:GetInstance('40mmlvgsound'))

		dprint('Changed Sniper: SKS (GM) ...')
	end

--

	if (mmResources:IsLoaded('sv98') and mmResources:IsLoaded('sv98sway') and mmResources:IsLoaded('40mmsmk_grenade')) then
		mmResources:SetLoaded('sv98', false)
		mmResources:SetLoaded('sv98sway', false)

		local bulletData = BulletEntityData(mmResources:GetInstance('40mmsmk_grenade'))
		local fireData = FiringFunctionData(mmResources:GetInstance('sv98'))

--		self:ResetSwayData(ebxEditUtils:GetWritableInstance(mmResources:GetInstance('sv98sway')))

		fireData:MakeWritable()
		fireData.fireLogic.boltAction.boltActionTime = 0.01
		fireData.fireLogic.boltAction.holdBoltActionUntilFireRelease = false
		fireData.fireLogic.boltAction.holdBoltActionUntilZoomRelease = false
		fireData.fireLogic.boltAction.unZoomOnBoltAction = false

		fireData.fireLogic.rateOfFire = 800
		fireData.fireLogic.rateOfFireForBurst = 600
		fireData.fireLogic.holdOffReloadUntilFireRelease = false
		fireData.fireLogic.holdOffReloadUntilZoomRelease = false
		fireData.fireLogic.forceReloadActionOnFireTrigger = false

		fireData.ammo.magazineCapacity = 250
		fireData.ammo.numberOfMagazines = -1
		fireData.shot.initialSpeed.z = 450
		fireData.shot.projectileData:MakeWritable()
		fireData.shot.projectileData = ProjectileEntityData(bulletData)

		dprint('Changed Sniper: SV98 (GM) ...')
	end

--


	if (mmResources:IsLoaded('m98') and mmResources:IsLoaded('m98sway') and mmResources:IsLoaded('12gfrag')) then
		mmResources:SetLoaded('m98', false)
		mmResources:SetLoaded('m98sway', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('m98'))

--		self:ResetSwayData(ebxEditUtils:GetWritableInstance(mmResources:GetInstance('m98sway')))

		fireData:MakeWritable()
		fireData.fireLogic.boltAction.boltActionTime = 0.01
		fireData.fireLogic.boltAction.holdBoltActionUntilFireRelease = false
		fireData.fireLogic.boltAction.holdBoltActionUntilZoomRelease = false
		fireData.fireLogic.boltAction.unZoomOnBoltAction = false

		fireData.fireLogic.rateOfFire = 800
		fireData.fireLogic.rateOfFireForBurst = 600
		fireData.fireLogic.holdOffReloadUntilFireRelease = false
		fireData.fireLogic.holdOffReloadUntilZoomRelease = false
		fireData.fireLogic.forceReloadActionOnFireTrigger = false

		fireData.shot.initialSpeed.z = 9001
		fireData.ammo.magazineCapacity = 250
		fireData.ammo.numberOfMagazines = -1
		fireData.shot.projectileData:MakeWritable()
		fireData.shot.projectileData = ebxEditUtils:GetWritableInstance(mmResources:GetInstance('12gfrag'))

		dprint('Changed Sniper: M98 (GM) ...')
	end

--

	if (mmResources:IsLoaded('mk11') and mmResources:IsLoaded('40mmsmk_grenade')) then
		mmResources:SetLoaded('mk11', false)

		local bulletData = BulletEntityData(mmResources:GetInstance('40mmsmk_grenade'))
		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('mk11'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)




--		self:ResetSwayData(ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.weaponSway'))

		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')
		fireData.fireLogic.rateOfFire = 900
		fireData.fireLogic.rateOfFireForBurst = 1800
		fireData.fireLogic.fireLogicType = FireLogicType.fltBurstFire
		fireData.fireLogic.fireLogicTypeArray:add(FireLogicType.fltSingleFire)
		fireData.fireLogic.fireLogicTypeArray:add(FireLogicType.fltAutomaticFire)

--		fireData.ammo.magazineCapacity = 250
--		fireData.ammo.numberOfMagazines = -1

		fireData.shot.projectileData:MakeWritable()
		fireData.shot.projectileData = ProjectileEntityData(bulletData)
		fireData.shot.numberOfBulletsPerBurst = 4

		dprint('Changed Sniper: MK11 PIMPED (GM) ...')
	end


--

	if (mmResources:IsLoaded('l96') and mmResources:IsLoaded('l96sway')) then
		mmResources:SetLoaded('l96', false)
		mmResources:SetLoaded('l96sway', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('l96'))

--		self:ResetSwayData(ebxEditUtils:GetWritableInstance(mmResources:GetInstance('l96sway')))

		fireData:MakeWritable()
		fireData.fireLogic.boltAction.boltActionTime = 0.01
		fireData.fireLogic.boltAction.holdBoltActionUntilFireRelease = false
		fireData.fireLogic.boltAction.holdBoltActionUntilZoomRelease = false
		fireData.fireLogic.boltAction.unZoomOnBoltAction = false

		fireData.fireLogic.rateOfFire = 800
		fireData.fireLogic.rateOfFireForBurst = 600
		fireData.fireLogic.holdOffReloadUntilFireRelease = false
		fireData.fireLogic.holdOffReloadUntilZoomRelease = false
		fireData.fireLogic.forceReloadActionOnFireTrigger = false

		fireData.ammo.magazineCapacity = 250
		fireData.ammo.numberOfMagazines = -1

		dprint('Changed Sniper: L96 (GM) ...')
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

