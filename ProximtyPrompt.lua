local NpcGui = script.Parent.Parent.Parent.Npc:Clone()
local Proximity = script.Parent

function Click(plr)
	Proximity.Enabled = false
	local Achar = plr.PlayerGui:FindFirstChild(NpcGui)
	if Achar then
		print("achei")
	elseif not Achar then
		print("não achei")
		local gui2 = NpcGui:Clone()
		local Namezis = Proximity.Parent.Parent.Name		
		gui2.NameUI.TextLabel.Text = Namezis
		gui2.Parent = plr.PlayerGui
		gui2.Butons.Yes.MouseButton1Click:Connect(function()
			wait(7.5)
			Proximity.Enabled = true
		end)
		gui2.Butons.No.MouseButton1Click:Connect(function()
			wait(7.5)
			Proximity.Enabled = true
		end)
	end
end

Proximity.Triggered:Connect(Click)

