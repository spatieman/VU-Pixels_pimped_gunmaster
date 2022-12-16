class "GMWeapons"
-- Pimped weapons - UMP45 - M60e - MP7 - 
-- Gadgets pimped - C4 - M320 lvg - 

function GMWeapons:Write(instance)

-- -----------------------------------------
	if (mmResources:IsLoaded('gm_p90') and mmResources:IsLoaded('12gfrag')) then
		mmResources:SetLoaded('gm_p90', false)

		local weaponBP = ebxEditUtils:GetWritableInstance('Weapons/P90/P90_GM')
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 250, -1)

		local bulletData = BulletEntityData(mmResources:GetInstance('12gfrag'))
		bulletData:MakeWritable()
		bulletData.gravity = -4.5
		bulletData.startDamage = 404
		bulletData.endDamage = 4004
		bulletData.damageFalloffStartDistance = 0
		bulletData.damageFalloffEndDistance = 100
		bulletData.timeToLive = 5
		bulletData.impactImpulse = 40000
		dprint('Changed 12G Frag Projectile...')

		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData:MakeWritable()
		fireData.shot.projectileData:MakeWritable()
		fireData.shot.projectileData = ProjectileEntityData(bulletData)
		fireData.ammo.magazineCapacity = 500
		dprint('Changed Weapons: P90 (GM) Pimped ...')
	end
-- -----------------------------------------

	if (mmResources:IsLoaded('scarl')) then
		mmResources:SetLoaded('scarl', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('scarl'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: scarl (GM) ...')
	end



-- -----------------------------------------



-- Pimped - 	
	if (mmResources:IsLoaded('m60a') and mmResources:IsLoaded('crossbolt_he') and mmResources:IsLoaded('crossbolt_he_exp') and mmResources:IsLoaded('crossboltsound')) then
		mmResources:SetLoaded('m60a', false)
		mmResources:SetLoaded('crossbolt_he', false)

		-- swap m60 for crossbolt_he bullets
		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('m60a'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local bulletData = BulletEntityData(mmResources:GetInstance('crossbolt_he'))
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')
		local expData = VeniceExplosionEntityData(mmResources:GetInstance('crossbolt_he_exp'))

		self:OverrideGMMagSize(weaponData, 25, -1)

		bulletData:MakeWritable()
		bulletData.gravity = 0
		bulletData.timeToLive = 5
		bulletData.impactImpulse = 500

		expData:MakeWritable()
		expData.blastDamage = 150 -- Normal = 56
		expData.blastRadius = 20 -- Normal = 2
		expData.blastImpulse = 1500 -- Normal = 500
		expData.shockwaveDamage = 150 -- Normal = 1
		expData.shockwaveRadius = 20 -- Normal = 7
		expData.shockwaveImpulse = 500 -- Normal = 100
		dprint('Changed Weapons: M60 - Pimped HE Bolt damage (GM) ...')


		fireData.shot.initialSpeed.z = 20
		fireData.shot.projectileData:MakeWritable()
		fireData.shot.projectileData = ProjectileEntityData(bulletData)

		fireData:MakeWritable()
		fireData.sound = SoundPatchAsset(mmResources:GetInstance('crossboltsound'))
		dprint('Changed Weapons: M60 - Pimped (GM) ...')
	end 

-- -----------------------------------------
-- -----------------------------------------
-- ----------------------------------------------------

	if (mmResources:IsLoaded('c4')) then
		mmResources:SetLoaded('c4', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('c4'))
		fireData:MakeWritable()
		fireData.ammo.numberOfMagazines = 5
		fireData.ammo.autoReplenishDelay = 0.1
		fireData.ammo.ammoBagPickupDelayMultiplier = 0.1

		fireData.fireLogic.rateOfFire = 250.0
		dprint('Changed Weapons: C4...')
	end

	if (mmResources:IsLoaded('c4expentity')) then
		mmResources:SetLoaded('c4expentity', false)

		local expEntityData = ExplosionPackEntityData(mmResources:GetInstance('c4expentity'))
		expEntityData:MakeWritable()
		expEntityData.health = 1
		expEntityData.maxCount = 5
		dprint('Changed Weapons: C4 Entity...')
	end

	if (mmResources:IsLoaded('c4exp')) then
		mmResources:SetLoaded('c4exp', false)

		local expData = VeniceExplosionEntityData(mmResources:GetInstance('c4exp'))
		expData:MakeWritable()
		expData.blastDamage = 1000 -- Default = 500
		expData.blastRadius = 10 -- Default = 5
		expData.blastImpulse = 9000 -- Default = 6000
		expData.shockwaveDamage = 200 -- Default = 1
		expData.shockwaveRadius = 10 -- Default = 6
		expData.shockwaveImpulse = 2000 -- Default = 2000
		expData.shockwaveTime = 0 -- Default = 0.14
		expData.triggerImpairedHearing = false
		expData.isCausingSuppression = false
		dprint('Changed Weapons: C4 Explosion...')
	end

-- -----------------------------------------

	if (mmResources:IsLoaded('m4a1')) then
		mmResources:SetLoaded('m4a1', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('m4a1'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: M4A1 (GM) ...')
	end

-- ----------------------------------------------------

	if (mmResources:IsLoaded('m16')) then
		mmResources:SetLoaded('m16', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('m16'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: M16 (GM) ...')
	end

-- ----------------------------------------------------

	if (mmResources:IsLoaded('g36c')) then
		mmResources:SetLoaded('g36c', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('g36c'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: G36C (GM) ...')
	end

-- ----------------------------------------------------

	if (mmResources:IsLoaded('m416')) then
		mmResources:SetLoaded('m416', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('m416'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: M416 (GM) ...')
	end

-- ----------------------------------------------------

	if (mmResources:IsLoaded('l85')) then
		mmResources:SetLoaded('l85', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('l85'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: L85 (GM) ...')
	end

-- ----------------------------------------------------

	if (mmResources:IsLoaded('mg36')) then
		mmResources:SetLoaded('mg36', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('mg36'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: MG36 (GM) ...')
	end

-- ----------------------------------------------------

	if (mmResources:IsLoaded('aks74u')) then
		mmResources:SetLoaded('aks74u', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('aks74u'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: AKS74U (GM) ...')
	end

-- ----------------------------------------------------

	if (mmResources:IsLoaded('ak74m')) then
		mmResources:SetLoaded('ak74m', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('ak74m'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: AK74M (GM) ...')
	end

-- ----------------------------------------------------

	if (mmResources:IsLoaded('rpk74')) then
		mmResources:SetLoaded('rpk74', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('rpk74'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: RPK74 (GM) ...')
	end
-- ----------------------------------------------------

	if (mmResources:IsLoaded('asval')) then
		mmResources:SetLoaded('asval', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('asval'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: AS-Val (GM) ...')
	end

-- ----------------------------------------------------

	if (mmResources:IsLoaded('pp2000')) then
		mmResources:SetLoaded('pp2000', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('pp2000'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: PP-2000 (GM) ...')
	end

-- ----------------------------------------------------

	if (mmResources:IsLoaded('pdwr')) then
		mmResources:SetLoaded('pdwr', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('pdwr'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: PDW-R (GM) ...')
	end


-- ----------------------------------------------------

	if (mmResources:IsLoaded('m240')) then
		mmResources:SetLoaded('m240', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('m240'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: M240 (GM) ...')
	end

-- -----------------------------------------

	if (mmResources:IsLoaded('m249')) then
		mmResources:SetLoaded('m249', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('m249'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: M249 (GM) ...')
	end

-- -----------------------------------------


	if (mmResources:IsLoaded('pp19')) then
		mmResources:SetLoaded('pp19', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('pp19'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: PP-19 Bizon (GM) ...')
	end

-- -----------------------------------------

	if (mmResources:IsLoaded('acwr') ) then
		mmResources:SetLoaded('acwr', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('acwr'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: ACW-R (GM)...')
	end

-- -----------------------------------------

	if (mmResources:IsLoaded('mtar') ) then
		mmResources:SetLoaded('mtar', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('mtar'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: MTAR (GM) ...')
	end

-- -----------------------------------------

	if (mmResources:IsLoaded('aug') ) then
		mmResources:SetLoaded('aug', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('aug'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: Steyr Aug (GM) ...')
	end

-- -----------------------------------------


	if (mmResources:IsLoaded('lsat') ) then
		mmResources:SetLoaded('lsat', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('lsat'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: LSAT (GM) ...')
	end

-- -----------------------------------------

	if (mmResources:IsLoaded('l86') ) then
		mmResources:SetLoaded('l86', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('l86'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: L86 (GM) ...')
	end

-- ----------------------------------------------------

	if (mmResources:IsLoaded('mp5k')) then
		mmResources:SetLoaded('mp5k', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('mp5k'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: MP5K (GM) ...')
	end

-- ----------------------------------------------------

	if (mmResources:IsLoaded('famas')) then
		mmResources:SetLoaded('famas', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('famas'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: Famas (GM) ...')
	end
-- ----------------------------------------------------

	if (mmResources:IsLoaded('F2000')) then
		mmResources:SetLoaded('F2000', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('F2000'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: F2000 (GM) ...')
	end
-- ----------------------------------------------------

	if (mmResources:IsLoaded('G3A3')) then
		mmResources:SetLoaded('G3A3', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('G3A3'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: G3A3 (GM) ...')
	end
-- ----------------------------------------------------

	if (mmResources:IsLoaded('qbb95')) then
		mmResources:SetLoaded('qbb95', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('qbb95'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Weapons: qbb95 (GM) ...')
	end

-- ----------------------------------------------------

-- Pimped - but lesser ammo
	if (mmResources:IsLoaded('ump45') and mmResources:IsLoaded('40mmsmk_grenade')) then
		mmResources:SetLoaded('ump45', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('ump45'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local bulletData = BulletEntityData(mmResources:GetInstance('40mmsmk_grenade'))
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(SoldierWeaponData(weaponBP.object), 25, -1)

		fireData.shot.projectileData:MakeWritable()
		fireData.shot.projectileData = ProjectileEntityData(bulletData)
		dprint('Changed Weapons: UMP45 (GM)  (pimped) ...')
	end
-- ----------------------------------------------------

-- Pimped - plops more LVG's --

	if (mmResources:IsLoaded('40mmlvg') and mmResources:IsLoaded('40mmlvgfire')) then
		mmResources:SetLoaded('40mmlvg', false)
		mmResources:SetLoaded('40mmlvgfire', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('40mmlvg'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 15, -1)

		local fireData = FiringFunctionData(mmResources:GetInstance('40mmlvgfire'))
		fireData:MakeWritable()
		fireData.shot.initialSpeed.z = 40
		fireData.shot.numberOfBulletsPerShell = 5

		fireData.weaponDispersion.standDispersion.minAngle = 5
		fireData.weaponDispersion.standDispersion.maxAngle = 7
		fireData.weaponDispersion.standDispersion.increasePerShot = 0.8
		fireData.weaponDispersion.crouchDispersion.minAngle = 5
		fireData.weaponDispersion.crouchDispersion.maxAngle = 7
		fireData.weaponDispersion.crouchDispersion.increasePerShot = 0.8
		fireData.weaponDispersion.proneDispersion.minAngle = 5
		fireData.weaponDispersion.proneDispersion.maxAngle = 7
		fireData.weaponDispersion.proneDispersion.increasePerShot = 0.8

		dprint('Changed Weapons: M320 LVG (GM) ...')
	end
-- -----------------------------------------

-- pimped  but set with lower ammo --

	if (mmResources:IsLoaded('mp7') and mmResources:IsLoaded('40mmlvg_grenade')) then
		mmResources:SetLoaded('mp7', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('mp7'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local bulletData = GrenadeEntityData(mmResources:GetInstance('40mmlvg_grenade'))
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 25, -1)

		fireData.shot.initialSpeed.z = 50
		fireData.shot.projectileData:MakeWritable()
		fireData.shot.projectileData = ProjectileEntityData(bulletData)

		dprint('Changed Weapons: MP7 (GM) ... (pimped ) ...')
	end

-- ----------------------------------------------------

function GMWeapons:OverrideGMMagSize(weaponData, newMagSize, newClipSize)

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
return GMWeapons()

