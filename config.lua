Config = {}
Config.Debug = false

QBCore = exports['qb-core']:GetCoreObject()  -- uncomment if you use QBCore
-- ESX = exports["es_extended"]:getSharedObject() -- uncomment if you use ESX


Config.Settings = {
	Framework = "QB", -- QB/ESX/ST
	Target = "OX" -- QB/OX/BT
}

Config.SkyDive = {
	Locations = {
		vector4(-928.82, -2543.67, 15.36, 90.26),
		vector4(1724.85, 3288.67, 41.17, 256.24),
		vector4(134.28, 6640.36, 31.76, 225.58)
	}
}