while wait() do
  local Self = script:Clone()
	Self.Parent = script.Parent
  
	script.Disabled = true
	script.Disabled = false
  
  wait(0.1)
	script:Destroy()
end
