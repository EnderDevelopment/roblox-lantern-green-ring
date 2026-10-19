-- Script de Servidor para receber o RemoteEvent 'AtivarAnel' e criar o escudo

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local remoteEvent = Instance.new("RemoteEvent")
remoteEvent.Name = "AtivarAnel"
remoteEvent.Parent = ReplicatedStorage

remoteEvent.OnServerEvent:Connect(function(player)
    local character = player.Character
    if character then
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            local shield = Instance.new("Part")
            shield.Name = "Escudo"
            shield.Shape = Enum.PartType.Ball
            shield.Material = Enum.Material.Neon
            shield.Color = Color3.fromRGB(0, 255, 0) -- Verde neon
            shield.Transparency = 0.5
            shield.Anchored = true
            shield.CanCollide = false
            shield.Size = Vector3.new(5, 5, 5)
            shield.Position = humanoidRootPart.Position + (humanoidRootPart.CFrame.LookVector * 5)
            shield.Parent = workspace
            
            -- Fazer o escudo sumir após 4 segundos
            task.delay(4, function()
                shield:Destroy()
            end)
        end
    end
end)