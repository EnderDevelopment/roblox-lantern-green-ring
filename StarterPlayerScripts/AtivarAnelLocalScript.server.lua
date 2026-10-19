-- LocalScript para detectar a tecla 'E' e disparar o RemoteEvent 'AtivarAnel'

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local remoteEvent = Instance.new("RemoteEvent")
remoteEvent.Name = "AtivarAnel"
remoteEvent.Parent = player

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.E then
        remoteEvent:FireServer()
    end
end)