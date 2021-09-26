while wait() do
	local Self = script:Clone()
	Self.Parent = script.Parent
	
	wait(0.1)
	script:Destroy()
end
