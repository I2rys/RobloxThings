--Variables
local Self = {}

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

--Main
Self.Crash()
