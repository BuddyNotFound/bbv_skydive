Main = {
	Peds = {}
}

CreateThread(function()
	for k ,v in pairs(Config.SkyDive.Locations) do 
		Wrapper:LoadModel('s_m_m_pilot_02')

		RequestAnimDict("anim@heists@heist_corona@single_team")
		while not HasAnimDictLoaded("anim@heists@heist_corona@single_team") do
		Wait(1)
		end

		Main.Peds[k] =  CreatePed(4, 's_m_m_pilot_02',v.x,v.y,v.z -1, v.w,false)
		SetEntityHeading(Main.Peds[k], v.w)
		FreezeEntityPosition(Main.Peds[k], true)
		SetEntityInvincible(Main.Peds[k], true)
		SetBlockingOfNonTemporaryEvents(Main.Peds[k], true)
		TaskPlayAnim(Main.Peds[k],"anim@heists@heist_corona@single_team","single_team_loop_boss", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
		Wrapper:Target(k..'skydive',"Skydive",v,'bbv-skydive')
		Wrapper:Blip(k..'skydive','SkyDive',v,377,4,0.6)
	end
end)

RegisterNetEvent('bbv-skydive',function()
	player = PlayerPedId()
	GiveWeaponToPed(PlayerPedId(), GetHashKey("GADGET_PARACHUTE"), true)
	DoScreenFadeOut(1500)
	Wait(1600)
	Wrapper:LoadModel('dodo')
	Wrapper:LoadModel('s_m_m_pilot_02')
	vehicle = CreateVehicle('dodo', vector3(-813.27, -3320.25, 1500.94), 300.0, true)
	SetPedIntoVehicle(player, vehicle, 2)
	driver = CreatePedInsideVehicle(vehicle, 26, 's_m_m_pilot_02', -1, true, false)
	SetDriverAbility(driver, 1.0)
	SetDriverAggressiveness(driver, 0.0)
	TaskVehicleDriveToCoord(driver, vehicle, vector3(958.62, 6812.44, 1475.48), 230.0, 0, 1341619767, 4457279, 1, true)
	Wait(4500)
	DoScreenFadeIn(4000)
	Wait(120000)
	TaskLeaveVehicle(player, vehicle, 64)
	Wait(10000)
	DeleteVehicle(vehicle)
	DeletePed(driver)
end)

