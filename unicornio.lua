
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UnicornModel = ReplicatedStorage:WaitForChild("Unicornio")
local spawnPoint = Vector3.new(200, 10, 150)
local tiempoDeSpawn = 60

local function hayUnicornio()
	for _, obj in pairs(workspace:GetChildren()) do
		if obj.Name == "Unicornio" then
			return true
		end
	end
	return false
end

local function spawnUnicornio()
	if not hayUnicornio() then
		local nuevo = UnicornModel:Clone()
		nuevo:SetPrimaryPartCFrame(CFrame.new(spawnPoint))
		nuevo.Parent = workspace
		print("¡Unicornio spawneado!")
	end
end

while true do
	wait(tiempoDeSpawn)
	spawnUnicornio()
end
