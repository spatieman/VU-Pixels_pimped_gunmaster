-- Events:Subscribe('Level:LoadResources', function()
--	if SharedUtils:GetCurrentGameMode() == "GunMaster0" then

class "MMWeapons"


function MMWeapons:Write(instance)

	if (mmResources:IsLoaded('gm_p90')) then
		mmResources:SetLoaded('gm_p90', false)

		local weaponBP = ebxEditUtils:GetWritableInstance('Weapons/P90/P90_GM')
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed P90 (GM)...')
	end



	if (mmResources:IsLoaded('gm_mp443')) then
		mmResources:SetLoaded('gm_mp443', false)

		local weaponBP = ebxEditUtils:GetWritableInstance('Weapons/MP443/MP443_GM')
		local fireData = ebxEditUtils:GetWritableContainer(weaponBP, 'Object.WeaponFiring.PrimaryFire')
		local bulletData = ebxEditUtils:GetWritableContainer(weaponBP, 'Object.WeaponFiring.PrimaryFire.shot.projectileData')

		self:OverrideGMMagSize(SoldierWeaponData(weaponBP.object), 250, -1)

		fireData.fireLogic.rateOfFire = 900
		dprint('Changed Mp443 (GM)...')
	end


	if (mmResources:IsLoaded('gm_m93r')) then
		mmResources:SetLoaded('gm_m93r', false)

		local weaponBP = ebxEditUtils:GetWritableInstance('Weapons/M93R/M93R_GM')
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData:MakeWritable()
		fireData.shot.initialSpeed.z = 380
		fireData.shot.numberOfBulletsPerBurst = 25
		fireData.fireLogic.rateOfFire = 900
		fireData.fireLogic.rateOfFireForBurst = 900
		dprint('Changed M93r (GM)...')
	end


	if (mmResources:IsLoaded('gm_magnum44') ) then
		mmResources:SetLoaded('gm_magnum44', false)

		local weaponBP = ebxEditUtils:GetWritableInstance('Weapons/Taurus44/Taurus44_GM')
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Magnum .44 (GM)...')
	end



	if (mmResources:IsLoaded('pp19')) then
		mmResources:SetLoaded('pp19', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('pp19'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed PP-19 Bizon...')
	end


	if (mmResources:IsLoaded('spas12')) then
		mmResources:SetLoaded('spas12', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('spas12'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData:MakeWritable()
		fireData.shot.initialSpeed.z = 380
		fireData.fireLogic.rateOfFire = 100
		dprint('Changed Spas-12 (GM) ...')
	end

	if (mmResources:IsLoaded('jackhammer')) then
		mmResources:SetLoaded('jackhammer', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('jackhammer'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		local fireData = {
			FiringFunctionData(mmResources:GetInstance('jackhammer', 'FireFunction1')),
			FiringFunctionData(mmResources:GetInstance('jackhammer', 'FireFunction2')),
			FiringFunctionData(mmResources:GetInstance('jackhammer', 'FireFunction3')),
			FiringFunctionData(mmResources:GetInstance('jackhammer', 'FireFunction4'))
		}

		for i=1, #fireData do
			fireData[i]:MakeWritable()
			fireData[i].fireLogic.rateOfFire = 500
		end

		dprint('Changed Jackhammer (GM) ...')
	end


	if (mmResources:IsLoaded('acwr') ) then
		mmResources:SetLoaded('acwr', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('acwr'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed ACW-R (GM)...')
	end


	if (mmResources:IsLoaded('mtar') ) then
		mmResources:SetLoaded('mtar', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('mtar'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed MTAR (GM) ...')
	end


	if (mmResources:IsLoaded('aug') ) then
		mmResources:SetLoaded('aug', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('aug'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed Steyr Aug (GM) ...')
	end


	if (mmResources:IsLoaded('scarl')) then
		mmResources:SetLoaded('scarl', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('scarl'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed Scar-L (GM) ...')

	end

	if (mmResources:IsLoaded('lsat') ) then
		mmResources:SetLoaded('lsat', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('lsat'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed LSAT (GM) ...')
	end

	if (mmResources:IsLoaded('l86') ) then
		mmResources:SetLoaded('l86', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('l86'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed L86 (GM) ...')
	end


	if (mmResources:IsLoaded('hk417')) then
		mmResources:SetLoaded('hk417', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('hk417'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed M417 (GM) ...')
	end




	if (mmResources:IsLoaded('jng90') ) then
		mmResources:SetLoaded('jng90', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('jng90'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed JNG-90 (GM) ...')
	end



	if (mmResources:IsLoaded('40mmlvg') and mmResources:IsLoaded('40mmlvgfire')) then
		mmResources:SetLoaded('40mmlvg', false)
		mmResources:SetLoaded('40mmlvgfire', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('40mmlvg'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 5, -1)

		local fireData = FiringFunctionData(mmResources:GetInstance('40mmlvgfire'))
		fireData:MakeWritable()
		fireData.shot.initialSpeed.z = 50
		fireData.shot.numberOfBulletsPerShell = 1

		dprint('Changed M320 LVG (GM) ...')
	end






-- ----------------------------------------------------
-- specific to GunMaster only
function MMWeapons:OverrideGMMagSize(weaponData, newMagSize, newClipSize)

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

end



return MMWeapons()

