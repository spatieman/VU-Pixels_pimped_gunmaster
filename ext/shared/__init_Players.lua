-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

-- Player instances
-- yump instance
var_yump_heigt = 3
var_yump_size = 5

-- pose_stand instance
var_stand_velocity = 4.5  -- 4.5
var_stand_multiplier = 3

-- pose_standair instance (jumping while running)
var_air_velocity = 6
var_air_miltiplier = 3

-- pose_swimming instance
var_swimming_velocity = 15

-- pose_climbing instance
var_climbing_velocity = 2
var_climbing_multiplier = 2

-- pose_chute instance
var_chute_velocity = 80

local Partition_yump = Guid ("235CD1DA-8B06-4A7F-94BE-D50DA2D077CE")
 local Instance_yump = Guid ("3129BCFE-000E-4001-9F8F-316E5835C9FC")

local Partition_pose_stand = Guid ("235CD1DA-8B06-4A7F-94BE-D50DA2D077CE")
 local Instance_pose_stand = Guid ("69A866A2-DF7C-4BAD-B55F-99536F2551F6")

local Partition_pose_standair = Guid ("235CD1DA-8B06-4A7F-94BE-D50DA2D077CE")
 local Instance_pose_standair = Guid ("DF7475F9-216E-48C3-AED1-5483EFA3BB15")

local Partition_pose_swimming = Guid ("235CD1DA-8B06-4A7F-94BE-D50DA2D077CE")
 local Instance_pose_swimming = Guid ("C3755191-6B9F-4B88-8677-59488AFC7530")

local Partition_pose_climbing = Guid ("235CD1DA-8B06-4A7F-94BE-D50DA2D077CE")
 local Instance_pose_climbing = Guid ("AF7A12E9-D79A-4856-8C03-3C88DF1ED8A6")

local Partition_pose_chute = Guid ("235CD1DA-8B06-4A7F-94BE-D50DA2D077CE")
 local Instance_pose_chute = Guid ("F39A8591-BA69-4BE9-B289-B2A0B336A7EE")
-- -------------------------------------------------------------------------------
ResourceManager:RegisterInstanceLoadHandler(Partition_yump, Instance_yump, function(loadedInstance)

    loadedInstance = JumpStateData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.jumpHeight = var_yump_heigt
    loadedInstance.jumpEffectSize = var_yump_size
	if (bEnable_announcement) == (true) then print('Changed Player Jump...')
end
end)

ResourceManager:RegisterInstanceLoadHandler(Partition_pose_stand, Instance_pose_stand, function(loadedInstance)

    loadedInstance = CharacterStatePoseInfo(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.velocity = var_stand_velocity
    loadedInstance.sprintMultiplier = var_stand_multiplier
	if (bEnable_announcement) == (true) then print('Changed Player Stand Pose...')
end
end)

ResourceManager:RegisterInstanceLoadHandler(Partition_pose_standair, Instance_pose_standair, function(loadedInstance)

    loadedInstance = CharacterStatePoseInfo(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.velocity = var_air_velocity
    loadedInstance.sprintMultiplier = var_air_miltiplier
	if (bEnable_announcement) == (true) then print('Changed Player Stand air Pose...')
end
end)

ResourceManager:RegisterInstanceLoadHandler(Partition_pose_swimming, Instance_pose_swimming, function(loadedInstance)

    loadedInstance = CharacterStatePoseInfo(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.velocity = var_swimming_velocity
	if (bEnable_announcement) == (true) then print('Changed Player Swim Pose...')
end
end)

ResourceManager:RegisterInstanceLoadHandler(Partition_pose_climbing, Instance_pose_climbing, function(loadedInstance)

    loadedInstance = CharacterStatePoseInfo(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.velocity = var_climbing_velocity
    loadedInstance.sprintMultiplier = var_climbing_multiplier
	if (bEnable_announcement) == (true) then print('Changed Player Climb Pose...')
end
end)

ResourceManager:RegisterInstanceLoadHandler(Partition_pose_chute, Instance_pose_chute, function(loadedInstance)

    loadedInstance = CharacterStatePoseInfo(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.velocity = var_climbing_velocity
    loadedInstance.velocity = var_chute_velocity
	if (bEnable_announcement) == (true) then print('Changed Player Parachute Pose...')
end
end)

