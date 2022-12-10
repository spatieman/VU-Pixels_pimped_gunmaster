-- load resource list
-- Needed if you want to pimp stuff
ebxEditUtils = require('__shared/EbxEditUtils')
Utils = require('__shared/Utils') 

-- This wil check if there is a new version on server startup.
require('__shared/UpdateCheck')  

-- this pimp the player a bit, dont get korky with the settings.
__init_Players = require('__shared/__init_Players')

mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- modules
GMWeapons_weapons = require('__shared/GMWeapons_weapons')
GMWeapons_handguns = require('__shared/GMWeapons_handguns')
GMWeapons_shotguns = require('__shared/GMWeapons_shotguns')
GMWeapons_rockets = require('__shared/GMWeapons_rockets')
GMWeapons_snipers = require('__shared/GMWeapons_snipers')


mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)
mmResources:AddLoadHandler(GMWeapons_weapons, GMWeapons_weapons.Write)
mmResources:AddLoadHandler(GMWeapons_handguns, GMWeapons_handguns.Write)
mmResources:AddLoadHandler(GMWeapons_shotguns, GMWeapons_shotguns.Write)
mmResources:AddLoadHandler(GMWeapons_rockets, GMWeapons_rockets.Write)
mmResources:AddLoadHandler(GMWeapons_snipers, GMWeapons_snipers.Write)
mmResources:RegisterInstanceLoadHandlers()  

-- This wil set the kills needed for each Gun Master preset
    print("Gamemode: Gun Master - Loading new kill counter presets ... ... ...")
__init_gm_loader = require('__shared/__init_gm_loader')



