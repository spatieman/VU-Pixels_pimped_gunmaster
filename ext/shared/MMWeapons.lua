-- Events:Subscribe('Level:LoadResources', function()
--	if SharedUtils:GetCurrentGameMode() == "GunMaster0" then

class "MMWeapons"


function MMWeapons:Write(instance)
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
-- -----------------------------------------
-- Snipers --

--	if (mmResources:IsLoaded('m40a5') and mmResources:IsLoaded('m40a5sway') and mmResources:IsLoaded('12gfrag')) then
	if (mmResources:IsLoaded('m40a5')) then
		mmResources:SetLoaded('m40a5', false)
--		mmResources:SetLoaded('m40a5sway', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('m40a5'))
		self:OverrideGMMagSize(weaponData, 200, -1)

--		self:ResetSwayData(ebxEditUtils:GetWritableInstance(mmResources:GetInstance('m40a5sway')))

--		fireData:MakeWritable()
--		fireData.weaponDispersion.standDispersion.minAngle = 0
--		fireData.weaponDispersion.standDispersion.maxAngle = 2
--		fireData.weaponDispersion.standDispersion.increasePerShot = 5
--		fireData.weaponDispersion.crouchDispersion.minAngle = 0
--		fireData.weaponDispersion.crouchDispersion.maxAngle = 1.5
--		fireData.weaponDispersion.crouchDispersion.increasePerShot = 5
--		fireData.weaponDispersion.proneDispersion.minAngle = 0
--		fireData.weaponDispersion.proneDispersion.maxAngle = 0
--		fireData.weaponDispersion.proneDispersion.increasePerShot = 5
--
--		fireData.fireLogic.boltAction.boltActionTime = 0.01
--		fireData.fireLogic.boltAction.holdBoltActionUntilFireRelease = false
--		fireData.fireLogic.boltAction.holdBoltActionUntilZoomRelease = false
--		fireData.fireLogic.boltAction.unZoomOnBoltAction = false
--
--		fireData.fireLogic.rateOfFire = 800
--		fireData.fireLogic.rateOfFireForBurst = 600
--		fireData.fireLogic.holdOffReloadUntilFireRelease = false
--		fireData.fireLogic.holdOffReloadUntilZoomRelease = false
--		fireData.fireLogic.forceReloadActionOnFireTrigger = false
--
--		fireData.ammo.magazineCapacity = 250
--		fireData.ammo.numberOfMagazines = -1
--		fireData.shot.initialSpeed.z = 450
--		fireData.shot.numberOfBulletsPerShell = 5
--
--		fireData.shot.projectileData:MakeWritable()
--		fireData.shot.projectileData = ebxEditUtils:GetWritableInstance(mmResources:GetInstance('12gfrag'))

		dprint('Changed M40A5...')
	end
--






-- -----------------------------------------
-- Handguns --

-- M9 need ammo fix

	if (mmResources:IsLoaded('m9')) then
		mmResources:SetLoaded('m9', false)

		self:OverrideGMMagSize(weaponData, 200, -1)

--		local fireData = ebxEditUtils:GetWritableContainer(mmResources:GetInstance('m9'), 'object.WeaponFiring.PrimaryFire')
--		fireData.ammo.magazineCapacity = 250
--		fireData.fireLogic.rateOfFire = 900
--
--		local fireDataGM = ebxEditUtils:GetWritableContainer(mmResources:GetInstance('m9'), 'object.WeaponModifierData.4.Modifiers.2')
--		fireDataGM.magazineCapacity = 250
		dprint('Changed M9...')
	end
--

	if (mmResources:IsLoaded('g17')) then
		mmResources:SetLoaded('g17', false)

		self:OverrideGMMagSize(weaponData, 200, -1)

--		local fireData = ebxEditUtils:GetWritableContainer(mmResources:GetInstance('m9'), 'object.WeaponFiring.PrimaryFire')
--		fireData.ammo.magazineCapacity = 250
--		fireData.fireLogic.rateOfFire = 900
--
--		local fireDataGM = ebxEditUtils:GetWritableContainer(mmResources:GetInstance('m9'), 'object.WeaponModifierData.4.Modifiers.2')
--		fireDataGM.magazineCapacity = 250
		dprint('Changed G17 ...')
	end
--


-- -----------------------------------------
-- Weapons --

	if (mmResources:IsLoaded('asval')) then
		mmResources:SetLoaded('asval', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('asval'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
--		self:ResetSwayData(ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.weaponSway'))

--		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
--		fireData.ammo.magazineCapacity = 250
--		fireData.ammo.numberOfMagazines = -1

		dprint('Changed AS-Val...')
	end

--

	if (mmResources:IsLoaded('pp2000')) then
		mmResources:SetLoaded('pp2000', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('pp2000'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)

--		fireData.weaponDispersion.standDispersion.minAngle = 3
--		fireData.weaponDispersion.standDispersion.maxAngle = 3
--		fireData.weaponDispersion.standDispersion.increasePerShot = 5
--		fireData.weaponDispersion.crouchDispersion.minAngle = 2.5
--		fireData.weaponDispersion.crouchDispersion.maxAngle = 2.5
--		fireData.weaponDispersion.crouchDispersion.increasePerShot = 5
--		fireData.weaponDispersion.proneDispersion.minAngle = 1.5
--		fireData.weaponDispersion.proneDispersion.maxAngle = 1.5
--		fireData.weaponDispersion.proneDispersion.increasePerShot = 5
--
--		fireData.ammo.magazineCapacity = 250
--		fireData.ammo.numberOfMagazines = -1
--		fireData.shot.numberOfBulletsPerShell = 5
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 250

		dprint('Changed PP-2000...')
	end










-- -----------------------------------------
--

	if (mmResources:IsLoaded('c4')) then
		mmResources:SetLoaded('c4', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('c4'))
		fireData:MakeWritable()
		fireData.ammo.numberOfMagazines = 25
		fireData.ammo.autoReplenishDelay = 0.1
		fireData.ammo.ammoBagPickupDelayMultiplier = 0.1

		fireData.fireLogic.rateOfFire = 250.0
		dprint('Changed C4...')
	end

	if (mmResources:IsLoaded('c4expentity')) then
		mmResources:SetLoaded('c4expentity', false)

		local expEntityData = ExplosionPackEntityData(mmResources:GetInstance('c4expentity'))
		expEntityData:MakeWritable()
		expEntityData.health = 1
		expEntityData.maxCount = 25
		dprint('Changed C4 Entity...')
	end

	if (mmResources:IsLoaded('c4exp')) then
		mmResources:SetLoaded('c4exp', false)

		local expData = VeniceExplosionEntityData(mmResources:GetInstance('c4exp'))
		expData:MakeWritable()
		expData.blastDamage = 500
		expData.blastRadius = 40
		expData.blastImpulse = 900
		expData.shockwaveDamage = 500
		expData.shockwaveRadius = 40
		expData.shockwaveImpulse = 900
		expData.shockwaveTime = 0
		expData.triggerImpairedHearing = false
		expData.isCausingSuppression = false
		dprint('Changed C4 Explosion...')
	end
--


	if (mmResources:IsLoaded('famas')) then
		mmResources:SetLoaded('famas', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('famas'))
		fireData:MakeWritable()
		fireData.ammo.magazineCapacity = 250
		fireData.ammo.numberOfMagazines = -1
		fireData.shot.numberOfBulletsPerBurst = 25
		fireData.fireLogic.rateOfFire = 3500
		fireData.fireLogic.rateOfFireForBurst = 7500

		dprint('Changed Famas...')
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

		dprint('Changed L96...')
	end

--

	if (mmResources:IsLoaded('m1911')) then
		mmResources:SetLoaded('m1911', false)

		local fireData = ebxEditUtils:GetWritableContainer(mmResources:GetInstance('m1911'), 'object.WeaponFiring.PrimaryFire')
		fireData.ammo.magazineCapacity = 250
		fireData.ammo.numberOfMagazines = -1
		fireData.fireLogic.rateOfFire = 900

		local fireDataGM = ebxEditUtils:GetWritableContainer(mmResources:GetInstance('m1911'), 'object.WeaponModifierData.3.Modifiers.2')
		fireData.ammo.magazineCapacity = 250
		fireData.ammo.numberOfMagazines = -1

		dprint('Changed M1911...')
	end

--

--

	if (mmResources:IsLoaded('m240')) then
		mmResources:SetLoaded('m240', false)

		local fireData = ebxEditUtils:GetWritableInstance(mmResources:GetInstance('m240'))
		fireData.fireLogic.rateOfFire = 900
		fireData.ammo.magazineCapacity = 250
		fireData.ammo.numberOfMagazines = -1
		dprint('Changed M240...')
	end

	if (mmResources:IsLoaded('m240_extended')) then
		mmResources:SetLoaded('m240_extended', false)

		local magMod = ebxEditUtils:GetWritableInstance(mmResources:GetInstance('m240_extended'))
		magMod.magazineCapacity = 500
		dprint('Changed M240 EX Mag...')
	end

	if (mmResources:IsLoaded('m240_swag')) then
		mmResources:SetLoaded('m240_swag', false)

--		self:ResetSwayData(ebxEditUtils:GetWritableInstance(mmResources:GetInstance('m240_swag')))

		dprint('Changed M240 Gun Sway...')
	end

--

	if (mmResources:IsLoaded('m249')) then
		mmResources:SetLoaded('m249', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('m249'))
		fireData:MakeWritable()
		
		fireData.weaponDispersion.standDispersion.minAngle = 5
		fireData.weaponDispersion.standDispersion.maxAngle = 7
		fireData.weaponDispersion.standDispersion.increasePerShot = 0.8
		fireData.weaponDispersion.crouchDispersion.minAngle = 5
		fireData.weaponDispersion.crouchDispersion.maxAngle = 7
		fireData.weaponDispersion.crouchDispersion.increasePerShot = 0.8
		fireData.weaponDispersion.proneDispersion.minAngle = 5
		fireData.weaponDispersion.proneDispersion.maxAngle = 7
		fireData.weaponDispersion.proneDispersion.increasePerShot = 0.8

		fireData.shot.initialSpeed.z = 30
		fireData.shot.numberOfBulletsPerShell = 5

		fireData.ammo.magazineCapacity = 250
		fireData.ammo.numberOfMagazines = -1
		dprint('Changed M249...')
	end


--




--

	if (mmResources:IsLoaded('m60') and mmResources:IsLoaded('crossbolt_he') and mmResources:IsLoaded('crossboltsound')) then
		mmResources:SetLoaded('m60', false)
		mmResources:SetLoaded('crossbolt_he', false)
		-- swap m60 for crossbolt_he bullets
		local fireData = FiringFunctionData(mmResources:GetInstance('m60'))
		local bulletData = BulletEntityData(mmResources:GetInstance('crossbolt_he'))

		bulletData:MakeWritable()
		bulletData.gravity = -2.5
		bulletData.startDamage = 100
		bulletData.endDamage = 9001
		bulletData.damageFalloffStartDistance = 1
		bulletData.damageFalloffEndDistance = 30
		bulletData.timeToLive = 15
		bulletData.impactImpulse = -50000
		dprint('Changed Crossbow Bolt HE Projectile...')

		fireData:MakeWritable()
		fireData.sound = SoundPatchAsset(mmResources:GetInstance('crossboltsound'))
		fireData.shot.projectileData:MakeWritable()
		fireData.shot.projectileData = ProjectileEntityData(bulletData)
		fireData.shot.initialSpeed.z = 50
		fireData.ammo.magazineCapacity = 250
		fireData.ammo.numberOfMagazines = -1
		fireData.fireLogic.reloadTime = 3.7
		dprint('Changed M60...')
	end
--

	if (mmResources:IsLoaded('mk11') and mmResources:IsLoaded('40mmsmk_grenade')) then
		mmResources:SetLoaded('mk11', false)

		local bulletData = BulletEntityData(mmResources:GetInstance('40mmsmk_grenade'))
		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('mk11'))
		local weaponData = SoldierWeaponData(weaponBP.object)

--		self:ResetSwayData(ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.weaponSway'))

		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')
		fireData.fireLogic.rateOfFire = 900
		fireData.fireLogic.rateOfFireForBurst = 1800
		fireData.fireLogic.fireLogicType = FireLogicType.fltBurstFire
		fireData.fireLogic.fireLogicTypeArray:add(FireLogicType.fltSingleFire)
		fireData.fireLogic.fireLogicTypeArray:add(FireLogicType.fltAutomaticFire)

		fireData.ammo.magazineCapacity = 250
		fireData.ammo.numberOfMagazines = -1

		fireData.shot.projectileData:MakeWritable()
		fireData.shot.projectileData = ProjectileEntityData(bulletData)
		fireData.shot.numberOfBulletsPerBurst = 4

		dprint('Changed MK11...')
	end


--


	if (mmResources:IsLoaded('mp412rex') and mmResources:IsLoaded('defibvolabel') and mmResources:IsLoaded('12gfrag')) then
		mmResources:SetLoaded('mp412rex', false)
		mmResources:SetLoaded('defibvolabel', false)

		local voData = ebxEditUtils:GetWritableContainer(mmResources:GetInstance('mp412rex'), 'object.VoiceOverInfo')
		voData.labels:clear()
		voData.labels:add(ebxEditUtils:GetWritableInstance(mmResources:GetInstance('defibvolabel')))

		local fireData = ebxEditUtils:GetWritableContainer(mmResources:GetInstance('mp412rex'), 'object.WeaponFiring.PrimaryFire')
		fireData.ammo.magazineCapacity = 250
		fireData.ammo.numberOfMagazines = -1
		fireData.fireLogic.rateOfFire = 900

		fireData.shot.projectileData = ebxEditUtils:GetWritableInstance(mmResources:GetInstance('12gfrag'))

		local fireDataGM = ebxEditUtils:GetWritableContainer(mmResources:GetInstance('mp412rex'), 'object.WeaponModifierData.1.Modifiers.2')
		fireDataGM.magazineCapacity = -1

		dprint('Changed MP412 Rex...')
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

		dprint('Changed M98...')
	end

--



--

	if (mmResources:IsLoaded('pdwr')) then
		mmResources:SetLoaded('pdwr', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('pdwr'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		fireData.weaponDispersion.standDispersion.minAngle = 4
		fireData.weaponDispersion.standDispersion.maxAngle = 4
		fireData.weaponDispersion.standDispersion.increasePerShot = 5
		fireData.weaponDispersion.crouchDispersion.minAngle = 3
		fireData.weaponDispersion.crouchDispersion.maxAngle = 3
		fireData.weaponDispersion.crouchDispersion.increasePerShot = 5
		fireData.weaponDispersion.proneDispersion.minAngle = 2
		fireData.weaponDispersion.proneDispersion.maxAngle = 2
		fireData.weaponDispersion.proneDispersion.increasePerShot = 5

		fireData.ammo.magazineCapacity = 250
		fireData.ammo.numberOfMagazines = -1
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 250
		fireData.shot.numberOfBulletsPerShell = 6

		dprint('Changed PDW-R...')
	end

--


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

		dprint('Changed QBU-88...')
	end

--

	if (mmResources:IsLoaded('smaw')) then
		mmResources:SetLoaded('smaw', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('smaw'))
		fireData:MakeWritable()
		fireData.shot.initialSpeed.z = 250
		fireData.fireLogic.rateOfFire = 500
		fireData.fireLogic.reloadTime = 0
		fireData.ammo.magazineCapacity = -1
		fireData.ammo.numberOfMagazines = -1
		dprint('Changed SMAW...')
	end

--

if (mmResources:IsLoaded('rpg7')) then
		mmResources:SetLoaded('rpg7', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('rpg7'))
		fireData:MakeWritable()
		fireData.shot.initialSpeed.z = 20
		fireData.fireLogic.rateOfFire = 500
		fireData.fireLogic.reloadTime = 0
		fireData.ammo.magazineCapacity = -1
		fireData.ammo.numberOfMagazines = -1

		dprint('Changed RPG7...')
	end

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

		dprint('Changed SKS...')
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

		dprint('Changed SV98...')
	end

--

	if (mmResources:IsLoaded('svd') and mmResources:IsLoaded('12gfrag')) then
		mmResources:SetLoaded('svd', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('svd'))
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
		fireData.fireLogic.rateOfFire = 350
		fireData.fireLogic.rateOfFireForBurst = 700
		fireData.fireLogic.fireLogicType = FireLogicType.fltBurstFire
		fireData.fireLogic.fireLogicTypeArray:add(FireLogicType.fltSingleFire)
		fireData.fireLogic.fireLogicTypeArray:add(FireLogicType.fltAutomaticFire)

		fireData.ammo.magazineCapacity = 250
		fireData.ammo.numberOfMagazines = -1

		fireData.shot.projectileData:MakeWritable()
		fireData.shot.projectileData = ProjectileEntityData(mmResources:GetInstance('12gfrag'))
		fireData.shot.numberOfBulletsPerBurst = 3

		dprint('Changed SVD...')
	end


--













-- -----------------------------------------
-- Extra needed


-- -----------------------------------------
-- -----------------------------------------
-- -----------------------------------------
-- -----------------------------------------
-- -----------------------------------------
-- -----------------------------------------
-- -----------------------------------------
-- -----------------------------------------
-- -----------------------------------------
-- -----------------------------------------

	if (mmResources:IsLoaded('gm_p90')) then
		mmResources:SetLoaded('gm_p90', false)

		local weaponBP = ebxEditUtils:GetWritableInstance('Weapons/P90/P90_GM')
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed P90 (GM)...')
	end

-- -----------------------------------------


	if (mmResources:IsLoaded('gm_mp443')) then
		mmResources:SetLoaded('gm_mp443', false)

		local weaponBP = ebxEditUtils:GetWritableInstance('Weapons/MP443/MP443_GM')
		local fireData = ebxEditUtils:GetWritableContainer(weaponBP, 'Object.WeaponFiring.PrimaryFire')
		local bulletData = ebxEditUtils:GetWritableContainer(weaponBP, 'Object.WeaponFiring.PrimaryFire.shot.projectileData')

		self:OverrideGMMagSize(SoldierWeaponData(weaponBP.object), 250, -1)

		fireData.fireLogic.rateOfFire = 900
		dprint('Changed Mp443 (GM)...')
	end

-- -----------------------------------------

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
-- -----------------------------------------


	if (mmResources:IsLoaded('gm_magnum44') ) then
		mmResources:SetLoaded('gm_magnum44', false)

		local weaponBP = ebxEditUtils:GetWritableInstance('Weapons/Taurus44/Taurus44_GM')
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed Magnum .44 (GM)...')
	end
-- -----------------------------------------



	if (mmResources:IsLoaded('pp19')) then
		mmResources:SetLoaded('pp19', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('pp19'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed PP-19 Bizon...')
	end
-- -----------------------------------------




	if (mmResources:IsLoaded('acwr') ) then
		mmResources:SetLoaded('acwr', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('acwr'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed ACW-R (GM)...')
	end
-- -----------------------------------------


	if (mmResources:IsLoaded('mtar') ) then
		mmResources:SetLoaded('mtar', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('mtar'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed MTAR (GM) ...')
	end
-- -----------------------------------------


	if (mmResources:IsLoaded('aug') ) then
		mmResources:SetLoaded('aug', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('aug'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed Steyr Aug (GM) ...')
	end
-- -----------------------------------------


	if (mmResources:IsLoaded('scarl')) then
		mmResources:SetLoaded('scarl', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('scarl'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed Scar-L (GM) ...')

	end
-- -----------------------------------------

	if (mmResources:IsLoaded('lsat') ) then
		mmResources:SetLoaded('lsat', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('lsat'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed LSAT (GM) ...')
	end
-- -----------------------------------------

	if (mmResources:IsLoaded('l86') ) then
		mmResources:SetLoaded('l86', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('l86'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed L86 (GM) ...')
	end
-- -----------------------------------------


	if (mmResources:IsLoaded('hk417')) then
		mmResources:SetLoaded('hk417', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('hk417'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed M417 (GM) ...')
	end
-- -----------------------------------------




	if (mmResources:IsLoaded('jng90') ) then
		mmResources:SetLoaded('jng90', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('jng90'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		self:OverrideGMMagSize(weaponData, 200, -1)

		dprint('Changed JNG-90 (GM) ...')
	end
-- -----------------------------------------



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
-- -----------------------------------------

-- pimped  but low ammo 

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

		dprint('Changed MP7 ... (pimped ) ...')
	end

--
	if (mmResources:IsLoaded('mp5k')) then
		mmResources:SetLoaded('mp5k', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('mp5k'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

		self:OverrideGMMagSize(weaponData, 200, -1)
		dprint('Changed MP5K...')
	end

--

	if (mmResources:IsLoaded('ump45') and mmResources:IsLoaded('40mmsmk_grenade')) then
		mmResources:SetLoaded('ump45', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('ump45'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local bulletData = BulletEntityData(mmResources:GetInstance('40mmsmk_grenade'))
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')

--		fireData.weaponDispersion.standDispersion.minAngle = 2
--		fireData.weaponDispersion.standDispersion.maxAngle = 2
--		fireData.weaponDispersion.standDispersion.increasePerShot = 5
--		fireData.weaponDispersion.crouchDispersion.minAngle = 1.25
--		fireData.weaponDispersion.crouchDispersion.maxAngle = 1.25
--		fireData.weaponDispersion.crouchDispersion.increasePerShot = 5
--		fireData.weaponDispersion.proneDispersion.minAngle = 0.5
--		fireData.weaponDispersion.proneDispersion.maxAngle = 0.5
--		fireData.weaponDispersion.proneDispersion.increasePerShot = 5

		self:OverrideGMMagSize(SoldierWeaponData(weaponBP.object), 250, -1)

--		fireData.ammo.magazineCapacity = 250
--		fireData.ammo.numberOfMagazines = -1
--		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 250
--		fireData.shot.numberOfBulletsPerShell = 3
		fireData.shot.projectileData:MakeWritable()
		fireData.shot.projectileData = ProjectileEntityData(bulletData)

		dprint('Changed UMP45 (pimped) ...')
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

