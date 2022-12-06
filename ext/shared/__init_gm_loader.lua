-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- modules
mmWeapons = require('__shared/MMWeapons')

mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)
mmResources:AddLoadHandler(mmWeapons, mmWeapons.Write)
mmResources:RegisterInstanceLoadHandlers()  

-- --------------------------------

    local partition_gunmaster = Guid ("F71EE45B-1BB0-4442-A46D-5B079A722230") -- 
     local instance_gunmaster = Guid ("F0D72AE2-9243-43D4-9070-E97B53430FB8") --
 
 ResourceManager:RegisterInstanceLoadHandler(partition_gunmaster, instance_gunmaster, function(loadedInstance)
     loadedInstance = GunMasterKillCounterEntityData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[1].killsNeeded = 1 	-- GM_MP443
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[2].killsNeeded = 1 	-- GM_M93
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[3].killsNeeded = 1 	-- GM_T44
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[4].killsNeeded = 1 	-- GM_PP
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[5].killsNeeded = 1 	-- GM_P90
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[6].killsNeeded = 1 	-- GM_SPAS
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[7].killsNeeded = 1 	-- GM_Jackhammer
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[8].killsNeeded = 1 	-- GM_ACR
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[9].killsNeeded = 1 	-- GM_MTAR
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[10].killsNeeded = 1	-- GM_AUG
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[11].killsNeeded = 1	-- GM_SCAR
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[12].killsNeeded = 1	-- GM_LSAT
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[13].killsNeeded = 1	-- GM_L86
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[14].killsNeeded = 1	-- GM_M417
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[15].killsNeeded = 1	-- GM_JNG90
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[16].killsNeeded = 1	-- GM_M320 LVG
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[17].killsNeeded = 1	-- GM_Knife 

	print("Gamemode: Gun Master - Changed kill counters ... ... ...")

end)
