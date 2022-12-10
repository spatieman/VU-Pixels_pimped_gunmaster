-- This wil set the kills needed for each Gun Master preset
-- --------------------------------

    local partition_gunmaster = Guid ("F71EE45B-1BB0-4442-A46D-5B079A722230")
     local instance_gunmaster = Guid ("F0D72AE2-9243-43D4-9070-E97B53430FB8")
 
 ResourceManager:RegisterInstanceLoadHandler(partition_gunmaster, instance_gunmaster, function(loadedInstance)
     loadedInstance = GunMasterKillCounterEntityData(loadedInstance)
     loadedInstance:MakeWritable()
 
-- Standard rotation (0)
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[1].killsNeeded = 3 	-- GM_MP443
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[2].killsNeeded = 3 	-- GM_M93
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[3].killsNeeded = 3 	-- GM_T44
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[4].killsNeeded = 2 	-- GM_PP
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[5].killsNeeded = 2 	-- GM_P90
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[6].killsNeeded = 4 	-- GM_SPAS
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[7].killsNeeded = 4 	-- GM_Jackhammer
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[8].killsNeeded = 2 	-- GM_ACR
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[9].killsNeeded = 2 	-- GM_MTAR
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[10].killsNeeded = 2	-- GM_AUG
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[11].killsNeeded = 2	-- GM_SCAR
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[12].killsNeeded = 2	-- GM_LSAT
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[13].killsNeeded = 2	-- GM_L86
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[14].killsNeeded = 2	-- GM_M417
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[15].killsNeeded = 2	-- GM_JNG90
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[16].killsNeeded = 5	-- GM_M320 LVG
     loadedInstance.weaponsPreset[1].gunMasterLevelInfos[17].killsNeeded = 3	-- GM_Knife 


-- Standard rotation reversed (1)
     loadedInstance.weaponsPreset[2].gunMasterLevelInfos[1].killsNeeded = 2 	-- GM_JNG90
     loadedInstance.weaponsPreset[2].gunMasterLevelInfos[2].killsNeeded = 2 	-- GM_M417
     loadedInstance.weaponsPreset[2].gunMasterLevelInfos[3].killsNeeded = 2 	-- GM_L86
     loadedInstance.weaponsPreset[2].gunMasterLevelInfos[4].killsNeeded = 2 	-- GM_LSAT
     loadedInstance.weaponsPreset[2].gunMasterLevelInfos[5].killsNeeded = 2 	-- GM_SCAR
     loadedInstance.weaponsPreset[2].gunMasterLevelInfos[6].killsNeeded = 2 	-- GM_AUG
     loadedInstance.weaponsPreset[2].gunMasterLevelInfos[7].killsNeeded = 2 	-- GM_MTAR
     loadedInstance.weaponsPreset[2].gunMasterLevelInfos[8].killsNeeded = 2 	-- GM_ACR
     loadedInstance.weaponsPreset[2].gunMasterLevelInfos[9].killsNeeded = 4 	-- GM_Jackhammer
     loadedInstance.weaponsPreset[2].gunMasterLevelInfos[10].killsNeeded = 4	-- GM_SPAS
     loadedInstance.weaponsPreset[2].gunMasterLevelInfos[11].killsNeeded = 2	-- GM_P90
     loadedInstance.weaponsPreset[2].gunMasterLevelInfos[12].killsNeeded = 2	-- GM_PP
     loadedInstance.weaponsPreset[2].gunMasterLevelInfos[13].killsNeeded = 3	-- GM_T44
     loadedInstance.weaponsPreset[2].gunMasterLevelInfos[14].killsNeeded = 3	-- GM_M93
     loadedInstance.weaponsPreset[2].gunMasterLevelInfos[15].killsNeeded = 3	-- GM_MP443
     loadedInstance.weaponsPreset[2].gunMasterLevelInfos[16].killsNeeded = 5	-- GM_M320 LVG
     loadedInstance.weaponsPreset[2].gunMasterLevelInfos[17].killsNeeded = 3	-- GM_Knife 

-- Light Weight rotation (2)

     loadedInstance.weaponsPreset[3].gunMasterLevelInfos[1].killsNeeded = 3 	-- GM_M9_Premium
     loadedInstance.weaponsPreset[3].gunMasterLevelInfos[2].killsNeeded = 3 	-- GM_Glock17_Premium
     loadedInstance.weaponsPreset[3].gunMasterLevelInfos[3].killsNeeded = 3 	-- GM_M93_Premium
     loadedInstance.weaponsPreset[3].gunMasterLevelInfos[4].killsNeeded = 4 	-- GM_870_Premium
     loadedInstance.weaponsPreset[3].gunMasterLevelInfos[5].killsNeeded = 4 	-- GM_SAIGA12_Premium
     loadedInstance.weaponsPreset[3].gunMasterLevelInfos[6].killsNeeded = 4 	-- GM_SPAS-12_Premium
     loadedInstance.weaponsPreset[3].gunMasterLevelInfos[7].killsNeeded = 4 	-- GM_DAO-12_Premium
     loadedInstance.weaponsPreset[3].gunMasterLevelInfos[8].killsNeeded = 4 	-- GM_M1014_Premium
     loadedInstance.weaponsPreset[3].gunMasterLevelInfos[9].killsNeeded = 2 	-- GM_PP-2000_Premium
     loadedInstance.weaponsPreset[3].gunMasterLevelInfos[10].killsNeeded = 2 	-- GM_M5K_Premium
     loadedInstance.weaponsPreset[3].gunMasterLevelInfos[11].killsNeeded = 2 	-- GM_P90_Premium
     loadedInstance.weaponsPreset[3].gunMasterLevelInfos[12].killsNeeded = 6 	-- GM_MP7_Premium
     loadedInstance.weaponsPreset[3].gunMasterLevelInfos[13].killsNeeded = 2 	-- GM_ASVal_Premium
     loadedInstance.weaponsPreset[3].gunMasterLevelInfos[14].killsNeeded = 2 	-- GM_PP-19_Premium
     loadedInstance.weaponsPreset[3].gunMasterLevelInfos[15].killsNeeded = 6 	-- GM_UMP45_Premium
     loadedInstance.weaponsPreset[3].gunMasterLevelInfos[16].killsNeeded = 5 	-- GM_M320_GL_Premium
     loadedInstance.weaponsPreset[3].gunMasterLevelInfos[17].killsNeeded = 3 	-- XP2/GM_Knife_Razor


-- Heavy gear  (3)

     loadedInstance.weaponsPreset[4].gunMasterLevelInfos[1].killsNeeded = 3 	-- GM_MP12REX_Premium
     loadedInstance.weaponsPreset[4].gunMasterLevelInfos[2].killsNeeded = 3 	-- GM_T44_Premium
     loadedInstance.weaponsPreset[4].gunMasterLevelInfos[3].killsNeeded = 4 	-- GM_SPAS-12_Slugs_Premium
     loadedInstance.weaponsPreset[4].gunMasterLevelInfos[4].killsNeeded = 4 	-- GM_Jackhammer_Slugs_Premium
     loadedInstance.weaponsPreset[4].gunMasterLevelInfos[5].killsNeeded = 2 	-- GM_AK74M_Premium
     loadedInstance.weaponsPreset[4].gunMasterLevelInfos[6].killsNeeded = 2 	-- GM_F2000_Premium
     loadedInstance.weaponsPreset[4].gunMasterLevelInfos[7].killsNeeded = 2 	-- GM_G3A3_Premium
     loadedInstance.weaponsPreset[4].gunMasterLevelInfos[8].killsNeeded = 2 	-- GM_FAMAS_Premium
     loadedInstance.weaponsPreset[4].gunMasterLevelInfos[9].killsNeeded = 2 	-- GM_SCAR-L_Premium
     loadedInstance.weaponsPreset[4].gunMasterLevelInfos[10].killsNeeded = 2 	-- GM_AUG_Premium
     loadedInstance.weaponsPreset[4].gunMasterLevelInfos[11].killsNeeded = 2 	-- GM_M249_premium
     loadedInstance.weaponsPreset[4].gunMasterLevelInfos[12].killsNeeded = 6 	-- GM_M60_Premium
     loadedInstance.weaponsPreset[4].gunMasterLevelInfos[13].killsNeeded = 2 	-- GM_QBB-95_Premium
     loadedInstance.weaponsPreset[4].gunMasterLevelInfos[14].killsNeeded = 2 	-- GM_MG36_Premium
     loadedInstance.weaponsPreset[4].gunMasterLevelInfos[15].killsNeeded = 2 	-- GM_LSAT_Premium
     loadedInstance.weaponsPreset[4].gunMasterLevelInfos[16].killsNeeded = 8 	-- GM_C4_Premium
     loadedInstance.weaponsPreset[4].gunMasterLevelInfos[17].killsNeeded = 3 	-- GM_Knife_Razor


-- pistol run (4)

     loadedInstance.weaponsPreset[5].gunMasterLevelInfos[1].killsNeeded = 3 	-- GM_M9_Premium
     loadedInstance.weaponsPreset[5].gunMasterLevelInfos[2].killsNeeded = 3 	-- GM_MP443_Premium
     loadedInstance.weaponsPreset[5].gunMasterLevelInfos[3].killsNeeded = 3 	-- GM_Glock17_Premium
     loadedInstance.weaponsPreset[5].gunMasterLevelInfos[4].killsNeeded = 3 	-- GM_M9_Silenced_Premium
     loadedInstance.weaponsPreset[5].gunMasterLevelInfos[5].killsNeeded = 3 	-- GM_Glock17_Silenced_Premium
     loadedInstance.weaponsPreset[5].gunMasterLevelInfos[6].killsNeeded = 3 	-- GM_M1911_Premium
     loadedInstance.weaponsPreset[5].gunMasterLevelInfos[7].killsNeeded = 3 	-- GM_Glock18_Premium
     loadedInstance.weaponsPreset[5].gunMasterLevelInfos[8].killsNeeded = 3 	-- GM_M93_Premium
     loadedInstance.weaponsPreset[5].gunMasterLevelInfos[9].killsNeeded = 3 	-- GM_MP12REX_Premium
     loadedInstance.weaponsPreset[5].gunMasterLevelInfos[10].killsNeeded = 3 	-- GM_T44_Premium
     loadedInstance.weaponsPreset[5].gunMasterLevelInfos[11].killsNeeded = 3 	-- GM_Knife_Razor


-- Snipers heaven (5)

     loadedInstance.weaponsPreset[6].gunMasterLevelInfos[1].killsNeeded = 3 	-- GM_M9_Silenced_Premium
     loadedInstance.weaponsPreset[6].gunMasterLevelInfos[2].killsNeeded = 3 	-- GM_Glock17_Silenced_Premium
     loadedInstance.weaponsPreset[6].gunMasterLevelInfos[3].killsNeeded = 3 	-- GM_M1911_Silenced_Premium
     loadedInstance.weaponsPreset[6].gunMasterLevelInfos[4].killsNeeded = 2 	-- GM_SVD_Premium
     loadedInstance.weaponsPreset[6].gunMasterLevelInfos[5].killsNeeded = 2 	-- GM_SKS_Premium
     loadedInstance.weaponsPreset[6].gunMasterLevelInfos[6].killsNeeded = 2 	-- GM_MK11_Premium
     loadedInstance.weaponsPreset[6].gunMasterLevelInfos[7].killsNeeded = 2 	-- GM_QBU88_Premium
     loadedInstance.weaponsPreset[6].gunMasterLevelInfos[8].killsNeeded = 2 	-- GM_M417_Premium
     loadedInstance.weaponsPreset[6].gunMasterLevelInfos[9].killsNeeded = 2 	-- GM_M40A5_Premium
     loadedInstance.weaponsPreset[6].gunMasterLevelInfos[10].killsNeeded = 2 	-- GM_SV98_Premium
     loadedInstance.weaponsPreset[6].gunMasterLevelInfos[11].killsNeeded = 2 	-- GM_L96_Premium
     loadedInstance.weaponsPreset[6].gunMasterLevelInfos[12].killsNeeded = 2 	-- GM_JNG90_Premium
     loadedInstance.weaponsPreset[6].gunMasterLevelInfos[13].killsNeeded = 2 	-- GM_M98B_Premium
     loadedInstance.weaponsPreset[6].gunMasterLevelInfos[14].killsNeeded = 5 	-- GM_Crossbow_Bolt_Premium
     loadedInstance.weaponsPreset[6].gunMasterLevelInfos[15].killsNeeded = 3 	-- GM_Knife_Razor

-- US arms race (6)

     loadedInstance.weaponsPreset[7].gunMasterLevelInfos[1].killsNeeded = 3 	-- GM_M9_Premium
     loadedInstance.weaponsPreset[7].gunMasterLevelInfos[2].killsNeeded = 3 	-- GM_M1911_Premium
     loadedInstance.weaponsPreset[7].gunMasterLevelInfos[3].killsNeeded = 4 	-- GM_870_Premium
     loadedInstance.weaponsPreset[7].gunMasterLevelInfos[4].killsNeeded = 2 	-- GM_PDW-R_Premium
     loadedInstance.weaponsPreset[7].gunMasterLevelInfos[5].killsNeeded = 2 	-- GM_M4A1_Premium
     loadedInstance.weaponsPreset[7].gunMasterLevelInfos[6].killsNeeded = 2 	-- GM_M16_Premium
     loadedInstance.weaponsPreset[7].gunMasterLevelInfos[7].killsNeeded = 2 	-- GM_M249_premium
     loadedInstance.weaponsPreset[7].gunMasterLevelInfos[8].killsNeeded = 2 	-- GM_M240_Premium
     loadedInstance.weaponsPreset[7].gunMasterLevelInfos[9].killsNeeded = 2 	-- GM_MK11_Premium
     loadedInstance.weaponsPreset[7].gunMasterLevelInfos[10].killsNeeded = 2 	-- GM_M40A5_Premium
     loadedInstance.weaponsPreset[7].gunMasterLevelInfos[11].killsNeeded = 5 	-- GM_SMAW_Premium
     loadedInstance.weaponsPreset[7].gunMasterLevelInfos[12].killsNeeded = 3 	-- GM_Knife_Razor

-- RU arms race (7)

     loadedInstance.weaponsPreset[8].gunMasterLevelInfos[1].killsNeeded = 3 	-- GM_MP443_Premium
     loadedInstance.weaponsPreset[8].gunMasterLevelInfos[2].killsNeeded = 3 	-- GM_MP12REX_Premium
     loadedInstance.weaponsPreset[8].gunMasterLevelInfos[3].killsNeeded = 4 	-- GM_SAIGA12_Premium
     loadedInstance.weaponsPreset[8].gunMasterLevelInfos[4].killsNeeded = 2 	-- GM_PP-2000_Premium
     loadedInstance.weaponsPreset[8].gunMasterLevelInfos[5].killsNeeded = 2 	-- GM_PP-19_Premium
     loadedInstance.weaponsPreset[8].gunMasterLevelInfos[6].killsNeeded = 2 	-- GM_ASVal_Premium
     loadedInstance.weaponsPreset[8].gunMasterLevelInfos[7].killsNeeded = 2 	-- GM_AKS74u_Premium
     loadedInstance.weaponsPreset[8].gunMasterLevelInfos[8].killsNeeded = 2 	-- GM_AK74M
     loadedInstance.weaponsPreset[8].gunMasterLevelInfos[9].killsNeeded = 2 	-- GM_RPK74_premium
     loadedInstance.weaponsPreset[8].gunMasterLevelInfos[10].killsNeeded = 2 	-- GM_SVD_Premium
     loadedInstance.weaponsPreset[8].gunMasterLevelInfos[11].killsNeeded = 5 	-- GM_RPG7_Premium
     loadedInstance.weaponsPreset[8].gunMasterLevelInfos[12].killsNeeded = 3 	-- GM_Knife_Razor

-- EU arms race (8)

     loadedInstance.weaponsPreset[9].gunMasterLevelInfos[1].killsNeeded = 3 	-- GM_Glock17_Premium
     loadedInstance.weaponsPreset[9].gunMasterLevelInfos[2].killsNeeded = 3 	-- GM_M93_Premium
     loadedInstance.weaponsPreset[9].gunMasterLevelInfos[3].killsNeeded = 4 	-- GM_SPAS-12_Premium
     loadedInstance.weaponsPreset[9].gunMasterLevelInfos[4].killsNeeded = 6 	-- GM_MP7_Premium
     loadedInstance.weaponsPreset[9].gunMasterLevelInfos[5].killsNeeded = 6 	-- GM_UMP45_Premium
     loadedInstance.weaponsPreset[9].gunMasterLevelInfos[6].killsNeeded = 2 	-- GM_G36C_Premium
     loadedInstance.weaponsPreset[9].gunMasterLevelInfos[7].killsNeeded = 2 	-- GM_M416_Premium
     loadedInstance.weaponsPreset[9].gunMasterLevelInfos[8].killsNeeded = 2 	-- GM_L85_Premium
     loadedInstance.weaponsPreset[9].gunMasterLevelInfos[9].killsNeeded = 2 	-- GM_MG36_Premium
     loadedInstance.weaponsPreset[9].gunMasterLevelInfos[10].killsNeeded = 2 	-- GM_M417_Premium
     loadedInstance.weaponsPreset[9].gunMasterLevelInfos[11].killsNeeded = 5 	-- GM_M320_GL_Premium
     loadedInstance.weaponsPreset[9].gunMasterLevelInfos[12].killsNeeded = 3 	-- GM_Knife_Razor

	print("Gamemode: Gun Master - Changed kill counters ... ... ...")

end)
