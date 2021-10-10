local UIS = game:GetService("UserInputService")

UIS.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end

    if UIS:IsKeyDown(Enum.KeyCode.R) then
        print("Starting cloning services")
    end
end)