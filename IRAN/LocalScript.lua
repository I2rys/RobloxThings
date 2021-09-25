--Variables
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character

local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
local UpperTorso = Character:FindFirstChild("UpperTorso")
local Humanoid = Character:FindFirstChild("Humanoid")
local Torso = Character:FindFirstChild("Torso")

--Main
Character.ChildAdded:Connect(function(object)
	if object:IsA("Humanoid") then
		LocalPlayer:Kick("Double jump.")
	end
end)

HumanoidRootPart.ChildAdded:Connect(function(object)
	if object:IsA("BodyGyro") then
		LocalPlayer:Kick("No flying.")
	end
end)

UpperTorso.ChildAdded:Connect(function(object)
	if object:IsA("BodyGyro") then
		LocalPlayer:Kick("No flying.")
	end
end)

if Torso then
	Torso.ChildAdded:Connect(function(object)
		if object:IsA("BodyGyro") then
			LocalPlayer:Kick("No flying.")
		end
	end)
end

while wait() do
	script.Disabled = true
	script.Disabled = false
	
	if Humanoid.WalkSpeed > 16 then
		LocalPlayer:Kick("Walk speed.")
	end
	
	if Humanoid.Health > 100 then
		LocalPlayer:Kick("God mode/Infinite health.")
	end
	
	if Humanoid.MaxHealth > 100 then
		LocalPlayer:Kick("God mode/Infinite health.")
	end
end
