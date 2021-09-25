--Variables
local Players = game:GetService("Players")

local AntiCheat = script:WaitForChild("LocalScript")

--Main
Players.ChildAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		while wait() do
			local Self_AntiCheat = AntiCheat:Clone()
			Self_AntiCheat.Parent = character
			Self_AntiCheat.Name = "\n"

			wait(0.1)
			Self_AntiCheat:Destroy()
		end
	end)
end)
