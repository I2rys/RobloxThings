--Variables
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character

local Self = {}
Self.Health = 100 --Players default max health 
Self.Max_Health = 100 --Players default max maxhealth 
Self.WalkSpeed = 16 --Players default max walkspeed
Self.JumpHeight = 7.2 --Players default jumpheight

--Functions

Self.Trash_Name = function()
	local name = ""	
	
	for i = 1, 9999 do
		if name.len == 0 then
			name = "true"
		else
			name = name..", true"
		end
	end
	
	return name
end

Self.Crash = function()
	game:GetService("RunService").RenderStepped:Connect(function()
		local Trash = Instance.new("Model")
		Trash.Name = Self.Trash_Name()
		Trash.Parent = Character
		
		while true do
			print(true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true)
			
			while true do
				print(true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true)
			end
			
			while true do
				print(true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true)
			end
			
			while true do
				print(true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true)
			end
			
			while true do
				print(true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true)
			end
			
			while true do
				print(true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true)
			end
		end
	end)
end

Self.Object_Checking = function(object)
	if object:IsA("BodyThrust") or object:IsA("BodyGyro") or object:IsA("Humanoid") or object:IsA("Pants") or object:IsA("Shirt") then
		Self.Crash()
	end
end

--Main
Character.ChildAdded:Connect(function(object)
	Self.Object_Checking(object)
end)

Character.ChildRemoved:Connect(function(object)
	Self.Object_Checking(object)
end)


Character:FindFirstChild("HumanoidRootPart").ChildAdded:Connect(function(object)
	Self.Object_Checking(object)
end)

if Character:FindFirstChild("Torso") then
	Character:FindFirstChild("Torso").ChildAdded:Connect(function(object)
		Self.Object_Checking(object)
	end)
end

if Character:FindFirstChild("UpperTorso") then
	Character:FindFirstChild("UpperTorso").ChildAdded:Connect(function(object)
		Self.Object_Checking(object)
	end)
end

if Character:FindFirstChild("LowerTorso") then
	Character:FindFirstChild("LowerTorso").ChildAdded:Connect(function(object)
		Self.Object_Checking(object)
	end)
end

while wait() do
	script.Disabled = true
	script.Disabled = false
	
	if not Character:FindFirstChild("Humanoid") then
		Self.Crash()
	end
	
	if not Character:FindFirstChild("HumanoidRootPart") then
		Self.Crash()
	end
	
	if not Character:FindFirstChild("UpperTorso") then
		Self.Crash()
	end
	
	if Character:FindFirstChild("Humanoid").Health > Self.Health then
		Self.Crash()
	end
	
	if Character:FindFirstChild("Humanoid").MaxHealth > Self.Max_Health then
		Self.Crash()
	end
	
	if Character:FindFirstChild("Humanoid").WalkSpeed > Self.WalkSpeed then
		Self.Crash()
	end
	
	if Character:FindFirstChild("Humanoid").JumpHeight > Self.JumpHeight then
		Self.Crash()
	end
end
