--Variables
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character

--Main
while wait() do
	if Character:FindFirstChild("Humanoid").WalkSpeed > 16 then
		LocalPlayer:Kick("Walkspeed hax.")
	end
	
	if Character:FindFirstChild("Humanoid").JumpHeight > 7.2 then
		LocalPlayer:Kick("Jump boost hax.")
	end
	
	if Character:FindFirstChild("Humanoid").Health > 100 then
		LocalPlayer:Kick("Infinite health hax.")
	end
	
	if Character:FindFirstChild("Humanoid").MaxHealth > 100 then
		LocalPlayer:Kick("Infinite health hax.")
	end
	
	if not Character:FindFirstChild("Humanoid") then
		LocalPlayer:Kick("God mode hax.")
	end
end
