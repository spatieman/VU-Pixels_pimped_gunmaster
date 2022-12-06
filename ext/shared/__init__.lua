-- Needed if you want to pimp stuff
ebxEditUtils = require('__shared/EbxEditUtils')
Utils = require('__shared/Utils') 
--
-- This wil check if there is a new version on server startup.
require('__shared/UpdateCheck')  

    print("Gamemode: Gun Master - Loading new kill counter presets ... ... ...")
    print("** Patching weapons for Gun Master mode **")

-- --------------------------------
__init_gm_loader = require('__shared/__init_gm_loader')

