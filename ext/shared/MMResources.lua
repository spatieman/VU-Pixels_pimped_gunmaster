class "MMResources"

function MMResources:__init()
	self.LoadHandlers = {}
	self.MMResources = {}


-- -------------------------------------------

	self.MMResources["gunmaster1"] = {}
	self.MMResources["gunmaster1"]["Partition"] = 'F71EE45B-1BB0-4442-A46D-5B079A722230'
	self.MMResources["gunmaster1"]["Instance"] = 'F0D72AE2-9243-43D4-9070-E97B53430FB8'

	self.MMResources["gunmaster2"] = {}
	self.MMResources["gunmaster2"]["Partition"] = 'F58C83A7-C753-4360-A9C0-4E44C79836F8'
	self.MMResources["gunmaster2"]["Instance"] = '2D869E35-5D5F-4256-B876-C85911F0A7D6'

-- -------------------------------------------
-- SHOTGUNS --
	self.MMResources["jackhammer"] = {}
	self.MMResources["jackhammer"]["Partition"] = '014C428F-9A3C-4EA0-9F0C-873058E72438'
	self.MMResources["jackhammer"]["Instance"] = 'C57F6902-E9BE-44B8-BCFA-9FFEB3A9A93C'

	self.MMResources["spas12"] = {}
	self.MMResources["spas12"]["Partition"] = '37F8F2ED-CAC0-42E8-B77B-2300A99C3B0F'
	self.MMResources["spas12"]["Instance"] = '27C36CA8-C16D-4D2B-B3DC-73E7AF91BE85'

	self.MMResources["dao12"] = {}
	self.MMResources["dao12"]["Partition"] = 'CE832020-046A-11E0-A970-FF10D557871E'
	self.MMResources["dao12"]["Instance"] = 'CA0D0869-3535-27A3-AF84-5E992D3C24A9'

	self.MMResources["m1014"] = {}
	self.MMResources["m1014"]["Partition"] = '460F1126-2578-11E0-96DC-FF63A5537869'
	self.MMResources["m1014"]["Instance"] = '707C6815-CFD6-FBE0-A5DE-915AFDA6350A'

	self.MMResources["saiga12k"] = {}
	self.MMResources["saiga12k"]["Partition"] = 'A119D627-257B-11E0-96DC-FF63A5537869'
	self.MMResources["saiga12k"]["Instance"] = '9CBF227A-BCD6-B540-622B-B70BBC85331F'

	self.MMResources["870mcs"] = {}
	self.MMResources["870mcs"]["Partition"] = '50F905EA-E32B-11DF-931B-DC6D3E613E0F'
	self.MMResources["870mcs"]["Instance"] = 'B76D7661-C812-64C2-322C-A269E40A1CD7'

-- Shotgun ammo --

-- this is shotgun ammo --
	self.MMResources["12gfragexp"] = {}
	self.MMResources["12gfragexp"]["Partition"] = '2A6FCD72-5842-41B4-AC48-56BAACA506A3'
	self.MMResources["12gfragexp"]["Instance"]  = '035DDB32-FB47-41CC-9F59-47D52F2CD685' --VED

	self.MMResources["12gfrag"] = {} -- Used for MP412REX
	self.MMResources["12gfrag"]["Partition"] = '2A6FCD72-5842-41B4-AC48-56BAACA506A3'
	self.MMResources["12gfrag"]["Instance"] = 'EF265029-3291-4544-8081-ABFFA09D3D96' --BED

	self.MMResources["12gfraggrav"] = {}
	self.MMResources["12gfraggrav"]["Partition"] = '2A6FCD72-5842-41B4-AC48-56BAACA506A3'
	self.MMResources["12gfraggrav"]["Instance"] = 'EF265029-3291-4544-8081-ABFFA09D3D96' --BED
-- ---

	self.MMResources["12gfrag_pump_exp"] = {}
	self.MMResources["12gfrag_pump_exp"]["Partition"] = '2FE9F5E2-A883-4C9A-BD26-0A343B698481'
	self.MMResources["12gfrag_pump_exp"]["Instance"] = '1D58A59C-4073-428F-A4CC-3B943E3AE182' --VED

	self.MMResources["12gfrag_pump_grav"] = {}
	self.MMResources["12gfrag_pump_grav"]["Partition"] = '2FE9F5E2-A883-4C9A-BD26-0A343B698481'
	self.MMResources["12gfrag_pump_grav"]["Instance"] = 'ED005E6A-A489-4C85-BA52-67EB7A4458FB' --BED
-- ---

	self.MMResources["buck_grav"] = {}
	self.MMResources["buck_grav"]["Partition"] = '730EC837-C59D-4E96-AFD5-01F3BDA2AE69'
	self.MMResources["buck_grav"]["Instance"] = '50ACD447-1BCD-4363-AB61-312840D5D28B' --BED
-- ---

	self.MMResources["flech_grav"] = {}
	self.MMResources["flech_grav"]["Partition"] = '6EF70B63-0941-456A-85A9-0C97484CEC15'
	self.MMResources["flech_grav"]["Instance"] = 'A4FA6C84-FD58-4A84-9CC1-82EA53ADE4E0' --BED
-- ---

	self.MMResources["slug_grav"] = {}
	self.MMResources["slug_grav"]["Partition"] = '377829C0-F684-4092-AC46-E7E609D0DE7C'
	self.MMResources["slug_grav"]["Instance"] = '679FD75F-EB49-4FD2-9496-9B54D73C87AC' --BED
-- ---

	self.MMResources["slug_pump_grav"] = {}
	self.MMResources["slug_pump_grav"]["Partition"] = 'E3251329-3AB3-4490-A488-54C3C1B870C2'
	self.MMResources["slug_pump_grav"]["Instance"] = '73906759-9C12-4B2B-91C3-F42DB8BE9A1B' --BED
-- ---
-- ---
-- ---
-- ---
-- ---
-- ---
-- ---















-- --------------------------------------------------
-- Handguns --

	self.MMResources["m1911"] = {}
	self.MMResources["m1911"]["Partition"] = '944B9E9B-279F-11E0-BCCD-BF5F79C336AA'
	self.MMResources["m1911"]["Instance"] = '46557D84-5C38-6642-E71A-E2430DE0C41B'

	self.MMResources["m9"] = {}
	self.MMResources["m9"]["Partition"] = '3080B817-349A-47EB-AEFB-C6128456021F'
	self.MMResources["m9"]["Instance"] = '663C6022-6D1C-4930-9D1C-C934252D181B'

	self.MMResources["m9sup"] = {}
	self.MMResources["m9sup"]["Partition"] = '94D0FEE8-E685-11DF-805B-F4FA4757ED08'
	self.MMResources["m9sup"]["Instance"] = 'A21D7964-7F3B-5D82-A414-2ABDE6644BFC'

	self.MMResources["g17"] = {}
	self.MMResources["g17"]["Partition"] = '3B3F9879-EB4B-11DF-8AA6-AE0344995412'
	self.MMResources["g17"]["Instance"] = 'B593E5A0-CFC8-6A46-88F8-FAE77EE27563'


	self.MMResources["mp412rex"] = {}
	self.MMResources["mp412rex"]["Partition"] = '2EB76B74-1F16-11E0-BE14-C6BC4F4ED27B'
	self.MMResources["mp412rex"]["Instance"] = '32CEB0E2-7D7E-7205-3DD4-BFC4AC041A92'

	self.MMResources["gm_magnum44"] = {}
	self.MMResources["gm_magnum44"]["Partition"] = '584C0B65-BC87-4853-AD28-7B7CEB21B336'
	self.MMResources["gm_magnum44"]["Instance"] = 'E93DB755-1B3D-4AE2-8358-1107A21DEC5A'

	self.MMResources["gm_mp443"] = {}
	self.MMResources["gm_mp443"]["Partition"] = 'ED5DEF93-B621-456F-8246-33BFC9E564C2'
	self.MMResources["gm_mp443"]["Instance"] = 'B41C9F21-D723-4607-B2BA-4B2C30677C51'

	self.MMResources["gm_m93r"] = {}
	self.MMResources["gm_m93r"]["Partition"] = '30870A1C-F7BE-494A-B65B-9B0EB380A93C'
	self.MMResources["gm_m93r"]["Instance"] = '08D76B3D-03BB-4B71-8BE3-406B9FDE6B4D'

-- --------------------------------------------------
-- Sniper stuff --

	self.MMResources["l96"] = {}
	self.MMResources["l96"]["Partition"] = '30710090-22F9-11E0-9B3A-DBCC579DBD38'
	self.MMResources["l96"]["Instance"] = 'C29D81C7-ACBC-39F5-356F-F1A49BA44294'

	self.MMResources["l96sway"] = {}
	self.MMResources["l96sway"]["Partition"] = '30710090-22F9-11E0-9B3A-DBCC579DBD38'
	self.MMResources["l96sway"]["Instance"] = '5B5B22C8-A9A4-4F1F-871D-5D6ECF438867'

	self.MMResources["sv98"] = {}
	self.MMResources["sv98"]["Partition"] = '0B551663-E80F-11DF-9138-C690837A65DF'
	self.MMResources["sv98"]["Instance"] = '9103D747-136E-B5AE-2331-50B8F8AA4BE9'

	self.MMResources["m40a5"] = {}
	self.MMResources["m40a5"]["Partition"] = '65B7D9D8-256F-11E0-96DC-FF63A5537869'
	self.MMResources["m40a5"]["Instance"] = 'A1970F1A-62F5-81EE-317E-F0A4FAB4C538'

	self.MMResources["m98"] = {}
	self.MMResources["m98"]["Partition"] = '84BA0CE7-1755-11E0-B7E4-E4E608316920'
	self.MMResources["m98"]["Instance"] = '70FD80DB-E445-CFED-6F9F-04B135BB54B2'
	
	self.MMResources["m39ebr"] = {}
	self.MMResources["m39ebr"]["Partition"] = '351A4849-F3F3-11DF-B48C-9F474D51EF2A'
	self.MMResources["m39ebr"]["Instance"] = '21312C58-0A52-F576-F13C-DC19735935F2'

	self.MMResources["hk417"] = {}
	self.MMResources["hk417"]["Partition"] = 'E9658C2B-DE00-413D-B63B-BC3504652373'
	self.MMResources["hk417"]["Instance"] = '77986281-3AE9-4DE1-89F4-E128CF510199'

	self.MMResources["qbu88"] = {}
	self.MMResources["qbu88"]["Partition"] = '62FBED30-927B-11E0-A920-988860D1D68B'
	self.MMResources["qbu88"]["Instance"] = '257D0FC4-B23F-4B4C-D9DC-7FC49769AE19'

	self.MMResources["jng90"] = {}
	self.MMResources["jng90"]["Partition"] = '8C663DDE-525E-4A4D-8D88-7CA1970E59D7'
	self.MMResources["jng90"]["Instance"] = 'D983A8A9-A0A5-45E4-920E-6A9B14EFE7C5'

	self.MMResources["mk11"] = {}
	self.MMResources["mk11"]["Partition"] = '0B82D738-09DF-11E0-9907-B7A8F369505D'
	self.MMResources["mk11"]["Instance"] = '62434DC8-4768-76D1-A6AB-71536E3310F5'

	self.MMResources["svd"] = {}
	self.MMResources["svd"]["Partition"] = 'C1A5290C-ED78-11DF-8D94-C4EBBBD642E1'
	self.MMResources["svd"]["Instance"] = 'A4443C30-20BF-DFD7-4071-6334B845331C'

	self.MMResources["sks"] = {}
	self.MMResources["sks"]["Partition"] = '409062B8-2AEF-11E0-9848-9E9BC51DCED8'
	self.MMResources["sks"]["Instance"] = '800540EA-0271-64A1-3199-91DBCCD09418'


-- --------------------------------------------------
-- Gadgets (used) --

-- used for mp412rex - 

	self.MMResources["defibvolabel"] = {}
	self.MMResources["defibvolabel"]["Partition"] = '2C4E5C83-B1BD-11DE-96E2-89FC67A5C271'
	self.MMResources["defibvolabel"]["Instance"] = '50999073-C1D2-4240-B50F-6EC1FC45BCE8'


-- -----------
	self.MMResources["smaw"] = {}
	self.MMResources["smaw"]["Partition"] = 'BCE98CA0-17EC-11E0-8CD8-85483A75A7C5'
	self.MMResources["smaw"]["Instance"]  = 'AB8577C5-D5F9-4A17-BEB2-2E153E171630'

	self.MMResources["smawexp"] = {}
	self.MMResources["smawexp"]["Partition"] = '168F529B-17F6-11E0-8CD8-85483A75A7C5'
	self.MMResources["smawexp"]["Instance"]  = 'F88F469B-E075-4770-AC03-42D9320CF000'

	self.MMResources["smawgrav"] = {}
	self.MMResources["smawgrav"]["Partition"] = '168F529B-17F6-11E0-8CD8-85483A75A7C5'
	self.MMResources["smawgrav"]["Instance"]  = '168F529C-17F6-11E0-8CD8-85483A75A7C5'

	self.MMResources["rpg7"] = {}
	self.MMResources["rpg7"]["Partition"] = 'E7F8EC1A-E8F5-11DF-AC96-84E6B0EFF32E'
	self.MMResources["rpg7"]["Instance"]  = '7584D16E-6B77-4A7B-BEEE-15DA5EF98E2E'

	self.MMResources["rpg7exp"] = {}
	self.MMResources["rpg7exp"]["Partition"] = '6C857FD9-6FB3-11DE-B35E-864CF572E1C4'
	self.MMResources["rpg7exp"]["Instance"]  = '663BA5C9-7511-4F7F-8736-8FE6172F28DE'

	self.MMResources["rpg7grav"] = {}
	self.MMResources["rpg7grav"]["Partition"] = '6C857FD9-6FB3-11DE-B35E-864CF572E1C4'
	self.MMResources["rpg7grav"]["Instance"]  = 'CDD3A384-8243-A258-E23D-239CC0D52698'

	self.MMResources["c4"] = {}
	self.MMResources["c4"]["Partition"] = '90D317AC-2554-11E0-9BE1-9E3A551FF0D1'
	self.MMResources["c4"]["Instance"] = '6CF717B6-188A-4AE7-A1D2-CC1A2333C0D7'

	self.MMResources["c4exp"] = {}
	self.MMResources["c4exp"]["Partition"] = '910AD7C5-2558-11E0-96DC-FF63A5537869'
	self.MMResources["c4exp"]["Instance"] = '5FE6E2AD-072E-4722-984A-5C52BC66D4C1'

	self.MMResources["c4expentity"] = {}
	self.MMResources["c4expentity"]["Partition"] = '910AD7C5-2558-11E0-96DC-FF63A5537869'
	self.MMResources["c4expentity"]["Instance"] = '09DCA5BB-BB2E-4EC6-B07F-5F74863EB458'

	self.MMResources["40mmlvg"] = {}
	self.MMResources["40mmlvg"]["Partition"] = 'A2BD3F80-0474-11E0-8A24-DDC0A9242026'
	self.MMResources["40mmlvg"]["Instance"] = 'DCFE8B49-493D-2586-0195-BD4F35BB8197'

	self.MMResources["40mmlvgfire"] = {} -- <--
	self.MMResources["40mmlvgfire"]["Partition"] = '0782833F-E28E-417F-8D25-350D504EBEAA'
	self.MMResources["40mmlvgfire"]["Instance"] = 'B287AFC7-2597-4C5A-A2B8-D0F8D43018C4'

	self.MMResources["40mmlvg_grenade"] = {}
	self.MMResources["40mmlvg_grenade"]["Partition"] = 'FD79A08F-F108-4751-B2C0-6C47397133B5'
	self.MMResources["40mmlvg_grenade"]["Instance"] = '393E4094-C2A2-4DF2-B977-F82E6974A8CB'

	self.MMResources["40mmsmk_grenade"] = {}
	self.MMResources["40mmsmk_grenade"]["Partition"] = 'A3E3C07B-2E9C-42D2-B540-7E70594293EC'
	self.MMResources["40mmsmk_grenade"]["Instance"] = '30AD5145-04AD-4C97-8D1B-B4FE0E1AD6F5'

	self.MMResources["40mmlvgsound"] = {}
	self.MMResources["40mmlvgsound"]["Partition"] = '7188E6E0-FB93-4277-8172-2FDA87317073'
	self.MMResources["40mmlvgsound"]["Instance"] = '4C9B46AB-C0C6-48C3-A376-FB76DBF8DF7A' 

	self.MMResources["rpgprojectile"] = {}
	self.MMResources["rpgprojectile"]["Partition"] = '6C857FD9-6FB3-11DE-B35E-864CF572E1C4'
	self.MMResources["rpgprojectile"]["Instance"] = 'CDD3A384-8243-A258-E23D-239CC0D52698' 


-- crossbow stuff --

	self.MMResources["crossboltsound"] = {}
	self.MMResources["crossboltsound"]["Partition"] = '591449E1-A47A-4768-A7A8-29DE293517E8'
	self.MMResources["crossboltsound"]["Instance"] = '3C39A1D9-F161-4A4B-A065-9C70D13DBB81'

	self.MMResources["crossbolt_he"] = {}
	self.MMResources["crossbolt_he"]["Partition"] = '07E407B3-A4FE-4CD1-BABA-D8F6EB59FAEA'
	self.MMResources["crossbolt_he"]["Instance"] = 'D09E04C4-4B06-4967-A7F5-1DE6D0912676'

	self.MMResources["crossbolt_he_exp"] = {}
	self.MMResources["crossbolt_he_exp"]["Partition"] = '07E407B3-A4FE-4CD1-BABA-D8F6EB59FAEA'
	self.MMResources["crossbolt_he_exp"]["Instance"] = 'B85B6C38-0D14-4079-932A-237984798ADF'


-- -------------

	self.MMResources["claymore"] = {}
	self.MMResources["claymore"]["Partition"] = '8709A814-1FF9-11E0-8A74-C88A4F19AAB4'
	self.MMResources["claymore"]["Instance"] = 'AA3BA4F5-2F8E-65FD-016A-D1E6F8C870FB' -- EPED

	self.MMResources["claymoreexp"] = {}
	self.MMResources["claymoreexp"]["Partition"] = '8709A814-1FF9-11E0-8A74-C88A4F19AAB4'
	self.MMResources["claymoreexp"]["Instance"] = '5120E4F0-CD8C-4926-A45C-DA4460865508' -- VED

	self.MMResources["claymore_havok"] = {}
	self.MMResources["claymore_havok"]["Partition"] = '8709A814-1FF9-11E0-8A74-C88A4F19AAB4'
	self.MMResources["claymore_havok"]["Instance"] = '426247C9-56D7-FBA7-539C-F6C6BD7FD07A' -- HA



-- --------------------------------------------------
-- Weapons --

	self.MMResources["qbb95"] = {}
	self.MMResources["qbb95"]["Partition"] = 'EC29F616-A358-481C-BD2E-EEAD692CAA49'
	self.MMResources["qbb95"]["Instance"] = '832FB13A-C7A0-482E-B883-CBA0BB878F28'

	self.MMResources["G3A3"] = {}
	self.MMResources["G3A3"]["Partition"] = '34347158-E5AA-11DF-99EB-E13A35414FEB'
	self.MMResources["G3A3"]["Instance"] = 'CA148E2E-7988-25A8-454D-B651B62F2705'

	self.MMResources["F2000"] = {}
	self.MMResources["F2000"]["Partition"] = 'B73816D2-F3B8-11DF-B48C-9F474D51EF2A'
	self.MMResources["F2000"]["Instance"] = '39F831E3-0AC3-F84A-8AB7-D72142849FE2'

	self.MMResources["g36c"] = {}
	self.MMResources["g36c"]["Partition"] = '00204E5D-09D2-11E0-9907-B7A8F369505D'
	self.MMResources["g36c"]["Instance"] = 'A19BB579-1B8A-C5CC-8A57-E7FB8B698F34'

	self.MMResources["m416"] = {}
	self.MMResources["m416"]["Partition"] = '88309FB2-3912-11E0-845E-D6BEC180D605'
	self.MMResources["m416"]["Instance"] = '8775DC85-7E41-5821-C9F8-D4A144884C5E'

	self.MMResources["l85"] = {}
	self.MMResources["l85"]["Partition"] = '197EE0EE-6190-46FF-982C-AA90A37439C7'
	self.MMResources["l85"]["Instance"] = '1ADEE986-9588-404A-9D26-D7862DF96AFA'

	self.MMResources["mg36"] = {}
	self.MMResources["mg36"]["Partition"] = '9AE12268-346F-4249-8E22-B5DB851332F2'
	self.MMResources["mg36"]["Instance"] = '2696504E-AAC6-4895-B730-F8DB7936602F'

	self.MMResources["aks74u"] = {}
	self.MMResources["aks74u"]["Partition"] = 'BC650B69-F196-11DF-B91B-D0A172B2A94A'
	self.MMResources["aks74u"]["Instance"] = 'A2997668-819D-9FB1-D176-EC387267A356'

	self.MMResources["ak74m"] = {}
	self.MMResources["ak74m"]["Partition"] = 'A7C73A1A-ECD7-11DF-9B09-83A1F299B70D'
	self.MMResources["ak74m"]["Instance"] = '3AC0B0C2-BA58-9D83-F5EC-102A37A550BF'

	self.MMResources["rpk74"] = {}
	self.MMResources["rpk74"]["Partition"] = '6D35134E-EDA8-11DF-81C7-E27FD45FBB2E'
	self.MMResources["rpk74"]["Instance"] = '0B2D1CF2-753F-46AC-BF3D-1406F142D9D7'

	self.MMResources["m4a1"] = {}
	self.MMResources["m4a1"]["Partition"] = 'E58B6AE6-E32E-11DF-8110-9522DC68C5EB'
	self.MMResources["m4a1"]["Instance"] = '8268288C-C2FB-2BC1-4DF5-3DAB81A1EE70'

	self.MMResources["m16"] = {}
	self.MMResources["m16"]["Partition"] = 'EA96401D-F166-11DF-A2F6-9139D3229269'
	self.MMResources["m16"]["Instance"] = '6BD02425-B874-AEBB-155C-D5C403E1E7C7'

	self.MMResources["m60a"] = {}
	self.MMResources["m60a"]["Partition"] = '99BD41C7-EDB0-11DF-A0C6-D95650B9E286'
	self.MMResources["m60a"]["Instance"] = '43231946-E7C9-711C-EE44-69162742CC7B'

	self.MMResources["famas"] = {}
	self.MMResources["famas"]["Partition"] = '706A1BD6-6DAB-4CEE-BFCA-82814251E2D8'
	self.MMResources["famas"]["Instance"] = '6DAED621-5AA7-4A49-910D-1076E1ECF4DF'

	self.MMResources["acwr"] = {}
	self.MMResources["acwr"]["Partition"] = 'E1DE3897-F570-11E0-B897-D25D16CBAAAF'
	self.MMResources["acwr"]["Instance"] = '80D1A454-CD95-2058-96F1-BA9AEE854748'

	self.MMResources["mtar"] = {}
	self.MMResources["mtar"]["Partition"] = '057A5DF0-209C-4C31-880F-479AF453884D'
	self.MMResources["mtar"]["Instance"] = '86687168-663F-4D33-AAD6-D6C5DE5E8F34'

	self.MMResources["aug"] = {}
	self.MMResources["aug"]["Partition"] = '91978925-827B-4DA2-82C1-307ECCB7B83B'
	self.MMResources["aug"]["Instance"] = '8DF97E42-C7F1-4E4D-826E-E9B90206C16E'

	self.MMResources["scarl"] = {}
	self.MMResources["scarl"]["Partition"] = '6695DE67-4178-4EA7-95F9-9D575EF95E2A'
	self.MMResources["scarl"]["Instance"] = '13EB2C92-DC45-4049-8F74-34192ECD2BBE'

	self.MMResources["lsat"] = {}
	self.MMResources["lsat"]["Partition"] = '75E9AE70-B8B5-4A63-BDCC-AAF2914277D2'
	self.MMResources["lsat"]["Instance"] = '1153E489-7C95-402B-BB66-F38D1C830C10'

	self.MMResources["l86"] = {}
	self.MMResources["l86"]["Partition"] = '0BF57B31-9632-484F-8922-0BD476C5FF62'
	self.MMResources["l86"]["Instance"] = 'AF6D3176-1825-4EAE-9496-B4CEAC61F238'

	self.MMResources["m249"] = {}
	self.MMResources["m249"]["Partition"] = 'F37DBC84-F61B-11DF-829C-95F94E7154E3'
	self.MMResources["m249"]["Instance"] = '404FF716-F1EE-DFE7-23A6-523EB354B9DD'

	self.MMResources["m240"] = {}
	self.MMResources["m240"]["Partition"] = '5D6FD6B8-E5BC-11DF-A152-D82BD29AC2ED'
	self.MMResources["m240"]["Instance"] = 'D73F46CB-E2BE-F757-BAE4-C5D628E1C561'

	self.MMResources["gm_p90"] = {}
	self.MMResources["gm_p90"]["Partition"] = 'C7D08BC3-04B6-440C-BF99-0E6D6A41D890'
	self.MMResources["gm_p90"]["Instance"] = '4C7904EB-0121-4BE4-B50B-D15E4505BC7E'

	self.MMResources["pp2000"] = {}
	self.MMResources["pp2000"]["Partition"] = '144442BD-173B-11E0-B7E4-E4E608316920'
	self.MMResources["pp2000"]["Instance"] = '4B357FE8-2B48-3238-D1CD-7DC2A200F5D5'

	self.MMResources["ump45"] = {}
	self.MMResources["ump45"]["Partition"] = '13D445F7-EBE3-11DF-91EC-895E59A6915B'
	self.MMResources["ump45"]["Instance"] = '6092F3DA-F72A-C1A6-995A-8B22DA1ABCF2'

	self.MMResources["pdwr"] = {}
	self.MMResources["pdwr"]["Partition"] = 'C47BFE6F-1F1E-11E0-AE3C-E30EAF72F572'
	self.MMResources["pdwr"]["Instance"] = 'F9AE571D-0CC3-1AF0-BEBF-1CBC08010325'

	self.MMResources["mp7"] = {}
	self.MMResources["mp7"]["Partition"] = '122FC693-ECA7-11DF-BD6E-C1427E3D6CAB'
	self.MMResources["mp7"]["Instance"] = '4256DDD4-BF48-3A95-340E-1A4E7E4F3162'

	self.MMResources["asval"] = {}
	self.MMResources["asval"]["Partition"] = '330F6EB9-1740-11E0-B7E4-E4E608316920'
	self.MMResources["asval"]["Instance"] = '22053930-04B1-826C-E0A1-D3308D940C9B'

	self.MMResources["pp19"] = {}
	self.MMResources["pp19"]["Partition"] = '983A236F-22EB-11E0-87CC-DAB15BD78BE2'
	self.MMResources["pp19"]["Instance"] = '68BC3068-5698-126B-4C51-3B30F30FEEFA'

	self.MMResources["pp19_bullet"] = {}
	self.MMResources["pp19_bullet"]["Partition"] = '034DE2CA-615D-415A-B94D-7E6BF78BF004'
	self.MMResources["pp19_bullet"]["Instance"] = '1DCD8041-89A8-439E-9914-45B5BB60578F'

	self.MMResources["mp5k"] = {}
	self.MMResources["mp5k"]["Partition"] = 'B0F05591-F4AE-4BFF-9570-8DB045590A72'
	self.MMResources["mp5k"]["Instance"] = '6B50743A-8C05-41FF-A099-BE69176D9ECB'

end
-- -----------------------------------------------------------

function MMResources:RegisterInstanceLoadHandlers()
	for resourceName, resourceData in pairs(self.MMResources) do
		if (resourceData.Partition and resourceData.Instance) then
			ResourceManager:RegisterInstanceLoadHandler(Guid(resourceData.Partition), Guid(resourceData.Instance), function(instance)
				self:SetLoaded(resourceName, true)
				self:CallLoadHandlers()
			end)
		end
	end
end

function MMResources:Register(resourceName, partition, guid)
	self.MMResources[resourceName] = {
		Partition = partition,
		Instance = guid,
		Loaded = false
	}
end

function MMResources:AddLoadHandler(context, callback)
	table.insert(self.LoadHandlers, { Context = context, Callback = callback })
end

function MMResources:CallLoadHandlers()
	for i=1, #self.LoadHandlers do
		self.LoadHandlers[i].Callback(self.LoadHandlers[i].Context, self)
	end
end


function MMResources:IsLoaded(resourceName)
	if not self.MMResources[resourceName] then
		print("Tried to check unregistered resource: "..tostring(resourceName))
		return false
	else
		return self.MMResources[resourceName].Loaded
	end
end

function MMResources:SetLoaded(resourceName, value)
	if not self.MMResources[resourceName] then
		print("Tried to set unregistered resource: "..tostring(resourceName))
	else
		if (value) then
			--dprint("Resource Loaded: "..tostring(resourceName))
		end
		self.MMResources[resourceName].Loaded = value
	end
end

function MMResources:Get(resourceName)
	if (resourceName ~= nil) then
		return self.MMResources[resourceName]
	else
		return self.MMResources
	end
end

function MMResources:GetMap(guid)
	if (guid ~= nil) then
		return self.MapLookup[guid:ToString('D')]
	else
		return self.MapLookup
	end
end

function MMResources:GetPartition(resourceName)
	return ResourceManager:FindDatabasePartition(Guid(self.MMResources[resourceName].Partition))
end

function MMResources:GetInstance(resourceName, secondaryResource)
	if (secondaryResource ~= nil) then
		return ResourceManager:FindInstanceByGuid(Guid(self.MMResources[resourceName].Partition), Guid(self.MMResources[resourceName][secondaryResource]))
	else
		return ResourceManager:FindInstanceByGuid(Guid(self.MMResources[resourceName].Partition), Guid(self.MMResources[resourceName].Instance))
	end
end

function MMResources:AddToPartition(resourceName, partition)
	if not self.MMResources[resourceName] then
		print("Tried to add unregistered resource to partition: "..tostring(resourceName))
		return
	end

    print('Adding '..resourceName..' instances to partition...')
    self.MMResources[resourceName].Register = true
	local resourceData = self.MMResources[resourceName]

	if (resourceData.Entities) then
        print("Adding Entities ["..resourceName.."]...")
        for i = 1, #resourceData.Entities do
            local res = ResourceManager:SearchForInstanceByGuid(Guid(resourceData.Entities[i]))
            if (res) then
                print("["..i.."] Added: "..res.typeInfo.name)
                partition:AddInstance(res)
            else
                print("["..i.."] Failed: "..resourceData.Entities[i])
            end
        end
    end
    if (resourceData.Blueprints) then
        print("Adding Blueprints ["..resourceName.."]...")
        for i = 1, #resourceData.Blueprints do
            local res = ResourceManager:SearchForInstanceByGuid(Guid(resourceData.Blueprints[i]))
            if (res) then
                print("["..i.."] Added: "..res.typeInfo.name)
                partition:AddInstance(res)
            else
                print("["..i.."] Failed: "..resourceData.Blueprints[i])
            end
        end
    end
    if (resourceData.LogicReferrence) then
        print("Adding Logic Referrences ["..resourceName.."]...")
        for i = 1, #resourceData.LogicReferrence do
            local res = ResourceManager:SearchForInstanceByGuid(Guid(resourceData.LogicReferrence[i]))
            if (res) then
                print("["..i.."] Added: "..res.typeInfo.name)
                partition:AddInstance(res)
            else
                print("["..i.."] Failed: "..resourceData.LogicReferrence[i])
            end
        end
    end
end

function MMResources:CreateRegistryContainer()
	local resourceContainer = RegistryContainer()
    
    print('Creating instance registry...')
    local registrySize = 0

    for resourceName, resourceData in pairs(self.MMResources) do
    	if (resourceData.Register) then 
	        if (resourceData.Entities) then
	            print("Adding Entities ["..resourceName.."]...")
	            for i = 1, #resourceData.Entities do
	                local res = ResourceManager:SearchForInstanceByGuid(Guid(resourceData.Entities[i]))
	                if (res) then
	                    print("["..i.."] Added: "..res.typeInfo.name)
	                    resourceContainer.entityRegistry:add(res)
	                    registrySize = registrySize+1
	                else
	                    print("["..i.."] Failed: "..resourceData.Entities[i])
	                end
	            end
	        end
	        if (resourceData.Blueprints) then
	            print("Adding Blueprints ["..resourceName.."]...")
	            for i = 1, #resourceData.Blueprints do
	                local res = ResourceManager:SearchForInstanceByGuid(Guid(resourceData.Blueprints[i]))
	                if (res) then
	                    print("["..i.."] Added: "..res.typeInfo.name)
	                    resourceContainer.blueprintRegistry:add(res)
	                    registrySize = registrySize+1
	                else
	                    print("["..i.."] Failed: "..resourceData.Blueprints[i])
	                end
	            end
	        end
	        if (resourceData.LogicReferrence) then
	            print("Adding Logic Referrences ["..resourceName.."]...")
	            for i = 1, #resourceData.LogicReferrence do
	                local res = ResourceManager:SearchForInstanceByGuid(Guid(resourceData.LogicReferrence[i]))
	                if (res) then
	                    print("["..i.."] Added: "..res.typeInfo.name)
	                    resourceContainer.referenceObjectRegistry:add(res)
	                    registrySize = registrySize+1
	                else
	                    print("["..i.."] Failed: "..resourceData.LogicReferrence[i])
	                end
	            end
	        end
	    end
    end
    if (registrySize > 0) then
    	return resourceContainer
    else
    	return
    end
end


function MMResources:IsSturdifyBlacklisted(instance)
	if (instance:Is('VehicleEntityData')) then
		local vehicleData = VehicleEntityData(instance)

		return (self.SturdifyBlacklist[instance.instanceGuid:ToString('D')] == true or vehicleData.nameSid == '' or self.SturdifyBlacklist[vehicleData.nameSid] == true)
	else
		return self.SturdifyBlacklist[instance.instanceGuid:ToString('D')] == true
	end
end

function MMResources:IsHelicopter(instance)
	local vehicleBlueprint = VehicleBlueprint(instance)
	return self.HeliLookup[vehicleBlueprint.name] == true
end

function MMResources:ScaleTransforms(transformList, scale)

	if (transformList == nil or #transformList < 1) then 
		return
	end
	if (scale == nil) then 
		scale = 1
	end

	for i=1, #transformList do

		local transform = nil

		if (transformList[i].typeInfo.name ~= 'LinearTransform' and transformList[i].transform) then 
			transform = transformList[i].transform
		else 
			transform = transformList[i]
		end

		if (transform.left == nil) then
			transform.right = transform.right * scale
		else
			transform.left.x = scale
		end

		transform.up.y = scale
		transform.forward.z = scale

		transform.trans.x = transform.trans.x * scale
		transform.trans.y = transform.trans.y * scale
		transform.trans.z = transform.trans.z * scale
	end

end

return MMResources()