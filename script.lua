spawn(function()
while wait() do
    for i,v in pairs(workspace.Gameplay.RegionsLoaded.ClassicEvent.CurrencyPickup.CurrencyHolder:GetChildren()) do
local args = {
    {
        v
    }
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CollectCurrencyPickup"):FireServer(unpack(args))
wait(1.5)
end
end
end)

spawn(function()
    while wait() do
       local args = {
            {
                workspace.Gameplay.RegionsLoaded.ClassicEvent.Boss.BossHolder:FindFirstChild("Boss") or nil
            }
        }
        game:GetService("Players").LocalPlayer.Character:WaitForChild("Lightning Striker"):WaitForChild("RemoteClick"):FireServer(unpack(args))

    end
end)


spawn(function()
    while wait(15) do
        local args = {
            "SpinEventWheel"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UIAction"):FireServer(unpack(args))
        wait(30)
        for i=1,6,1 do
           local args = {
                "TravelingMerchantBuyItem",
                i,
                (require(game:GetService("Players").LocalPlayer.PlayerScripts.MainClient.ClientDataManager).Data.TravelingMerchant.ResetDT or 0)
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UIAction"):FireServer(unpack(args))

        end
    end
end)
spawn(function()
while wait(240) do
local args = {
    "ClaimDailyReward"
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UIAction"):FireServer(unpack(args))
wait(5)
local args = {
    "ClaimDailyTimedReward"
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UIAction"):FireServer(unpack(args))

end
end)
spawn(function()
while wait(305) do
local args = {
    "EventObbyComplete"
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UIAction"):FireServer(unpack(args))
end
end)

local a=getconnections or get_signal_cons;if a then for b,c in pairs(a(game.Players.LocalPlayer.Idled))do if c["Disable"]then c["Disable"](c)elseif c["Disconnect"]then c["Disconnect"](c)end end else local d=cloneref(game:GetService("VirtualUser"))game.Players.LocalPlayer.Idled:Connect(function()d:CaptureController()d:ClickButton2(Vector2.new())end)end

game:GetService("Players").LocalPlayer.PlayerScripts.AutoTimeout:Destroy()

local que = queue_on_teleport or queueonteleport
que('loadstring("https://raw.githubusercontent.com/cosmicpsx/website/refs/heads/main/script.lua"))()')
