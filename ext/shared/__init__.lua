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
--GMWeapons_tweak = require('__shared/GMWeapons_tweak') -- This should be disabled normaly, TEST setup only
GMMap_loader1 = require('__shared/GMMap_loader1')
GMMap_loader2 = require('__shared/GMMap_loader2')
GMWeapons_weapons = require('__shared/GMWeapons_weapons')
GMWeapons_handguns = require('__shared/GMWeapons_handguns')
GMWeapons_rockets = require('__shared/GMWeapons_rockets')
GMWeapons_snipers = require('__shared/GMWeapons_snipers')
GMWeapons_shotguns = require('__shared/GMWeapons_shotguns')
GMWeapons_shotguns_ammo = require('__shared/GMWeapons_shotguns_ammo')
GMWeapons_shotguns_recoil = require('__shared/GMWeapons_shotguns_recoil')


mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)
--mmResources:AddLoadHandler(GMWeapons_tweak, GMWeapons_tweak.Write) -- This should be disabled normaly, TEST setup only
mmResources:AddLoadHandler(GMWeapons_weapons, GMWeapons_weapons.Write)
mmResources:AddLoadHandler(GMWeapons_handguns, GMWeapons_handguns.Write)
mmResources:AddLoadHandler(GMWeapons_rockets, GMWeapons_rockets.Write)
mmResources:AddLoadHandler(GMWeapons_snipers, GMWeapons_snipers.Write)
--
mmResources:AddLoadHandler(GMWeapons_shotguns, GMWeapons_shotguns.Write)
mmResources:AddLoadHandler(GMWeapons_shotguns_ammo, GMWeapons_shotguns_ammo.Write)
mmResources:RegisterInstanceLoadHandlers()  



