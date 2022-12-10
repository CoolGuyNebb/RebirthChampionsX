local Key = "E"
local Toggle = false

wait(0.1)
game.StarterGui:SetCore("SendNotification", {
Title = "By Nebb#8764";
Text = "Press E to toggle.";
Duration = 5;
})

game:GetService("UserInputService").InputBegan:Connect(function(keyobject, variable)
  if keyobject.KeyCode == Enum.KeyCode[Key] and not variable then
      Toggle = not Toggle
  end
end)


game:GetService('RunService').Stepped:connect(function()
    
if Toggle then
        wait()
        game:GetService("ReplicatedStorage").Events.Click3:FireServer()
        local args = {
        [1] = 12
    }
    game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
    local args = {
    [1] = "95M"
}

game:GetService("ReplicatedStorage").Events.WorldBoost:FireServer(unpack(args))
end
end)