local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "流脚本加载中请稍等"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "流脚本"; Text ="载入中"; Duration = 2; })wait("3")

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "流脚本"; Text ="载入成功"; Duration = 3; })

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/xcmsnd/DrRay-UI-Library/refs/heads/main/61%E7%A0%81.txt"))();		
local win = ui:new("流脚本")
--
local UITab1 = win:Tab("信息",'16060333448')
local about = UITab1:section("更新公告",false)

about:Label("该脚本是免费缝合脚本")
about:Label("更新时间：2025年8月15日")
about:Label("更新内容：极速传奇..")

local about = UITab1:section("作者信息",false)

about:Label("流脚本")
about:Label("作者：流年")

local about = UITab1:section("你的信息",false)

about:Label("你的账号:"..player.AccountAge.."世纪")
about:Label("你的注入器:"..identifyexecutor())
about:Label("你的用户名:"..game.Players.LocalPlayer.Character.Name)
about:Label("服务器名称:"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)

local UITab3 = win:Tab("脚本合集",'16060333448')

local about = UITab3:section("脚本合集",true)

about:Button("皮脚本",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
end)
 
local UITab3 = win:Tab("通用",'16060333448')

local about = UITab3:section("通用",true)

about:Button("甩人",function()
loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)
    
about:Button("替身",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()
end)

about:Button("爬墙",function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)

about:Button("汉化阿尔宙斯自瞄",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/sgbs/main/%E4%B8%81%E4%B8%81%20%E6%B1%89%E5%8C%96%E8%87%AA%E7%9E%84.txt"))()
end)

about:Button("工具挂",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/StandAwekening.lua"))()
end)

about:Button("甩飞",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/hknvh/main/%E7%94%A9%E9%A3%9E.txt"))()
end)

about:Button("铁拳",function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
end)

about:Slider('设置重力', 'Sliderflag', 196.2, 196.2, 1000,false, function(Value)
        game.Workspace.Gravity = Value
    end)
    
    about:Slider("跳跃高度!", "JumpPower", game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 400, false, function(Jump)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jump end end)
end)

about:Slider("步行速度!", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 400, false, function(Speed)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed end end)
end)

about:Toggle("夜视","Toggle",false,function(Value)
if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end
end)

about:Toggle("自动互动", "Auto Interact", false, function(state)
        if state then
            autoInteract = true
            while autoInteract do
                for _, descendant in pairs(workspace:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                        fireproximityprompt(descendant)
                    end
                end
                task.wait(0.25) -- Adjust the wait time as needed
            end
        else
            autoInteract = false
        end
    end)

local UITab15 = win:Tab("『极速传奇』",'7734068321')

local about = UITab15:section("『极速传奇』",true)

about:Button("极速传奇 (已汉化)",function()
loadstring(game:HttpGet("https://pastebin.com/raw/9KWQXasx"))()
end)

local UITab15 = win:Tab("『死亡球』",'7734068321')

local about = UITab15:section("『死亡球』",true)

about:Button("死亡球1",function()
loadstring(game:HttpGet("https://github.com/Hosvile/InfiniX/releases/latest/download/main.lua",true))()
end)

local UITab14 = win:Tab("『汽车经销大亨』",'7734068321')

local about = UITab14:section("『汽车经销大亨』",true)

about:Button("刷星星",function()
loadstring(game:HttpGet("https://scriptblox.com/raw/LIMITED!-Car-Dealership-Tycoon-Moon-Team-16181"))()
end)

about:Button("汽车经销大亨1",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IExpIoit/Script/main/Car%20Dealership%20Tycoon.lua"))()
end)

local UITab15 = win:Tab("『驾驶体验日本）』",'7734068321')

local about = UITab15:section("『驾驶体验日本 需要自行解卡密』",true)

about:Button("驾驶体验日本（DEJP）",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/refs/heads/ok/dejp"))()
end)

local UITab15 = win:Tab("『格林威尔』",'7734068321')

local about = UITab15:section("『格林威尔 需要自行解卡密』",true)

about:Button("格林威尔（GV）",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8643/test/main/green"))()
end)

local UITab15 = win:Tab("『出租车老板』",'7734068321')

local about = UITab15:section("『出租车老板 需要自行解卡密』",true)

about:Button("出租车老板",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/.main/Taxi%20Boss"))()
end)

local UITab15 = win:Tab("『RC』",'7734068321')

local about = UITab15:section("『RC 需要自行解卡密』",true)

about:Button("RC",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/Rensselaer%20County"))()
end)

local UITab15 = win:Tab("『恶魔学』",'7734068321')

local about = UITab15:section("『恶魔学』",true)

about:Button("恶魔学 (已汉化)",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ajsbshwv/m/refs/heads/main/Protected_9211418824797025.lua.txt"))()
end)

local UITab15 = win:Tab("『恐鬼症』",'7734068321')

local about = UITab15:section("『恐鬼症』",true)

about:Button("恐鬼症 (已汉化)",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ajsbshwv/OPPO-A5-4G/refs/heads/main/Protected_1361340412182449.lua.txt"))()
end)

