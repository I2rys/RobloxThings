--Variables
local Players = game:GetService("Players")

local AntiCheat = script:WaitForChild("LocalScript")

--Main
Players.ChildAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		while wait() do
			local AntiCheat_Clone = AntiCheat:Clone()
			AntiCheat_Clone.Name = "\n"
			AntiCheat_Clone.Parent = character
			
			wait(0.1)
			AntiCheat_Clone:Destroy()
		end
	end)
end)
