local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AfgMS/Simga345/main/SigmaDev.lua", true))()
local CoreGui = game:WaitForChild("CoreGui")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local localPlayer = game.Players.LocalPlayer

--Function
local function LibraryCheck()
    local SigmaCheck = CoreGui:FindFirstChild("Sigma")
    local SigmaVisualCheck = CoreGui:FindFirstChild("SigmaVisualStuff")
    
    if not SigmaCheck then
        print("Error: Sigma ScreenGui not found in CoreGui.")
    elseif SigmaCheck then
        print("Debug: SigmaCheck Found")
    elseif not SigmaVisualCheck then
        print("Error: SigmaVisualStuff ScreenGui not found in CoreGui.")
    elseif SigmaVisualCheck then
        print("Debug: SigmaVisualCheck Found")
        local ArraylistCheck = SigmaVisualCheck:FindFirstChild("ArrayListHolder")
        if not ArraylistCheck then
            print("Error: ArrayList Holder not found in SigmaVisualStuff.")
        elseif ArraylistCheck then
            print("Debug: ArrayList Found")
            return
        end
    end
end

-- local sliderStuff = ActiveMods:Slider({
--     title = "ExampleSliders",
--     min = 5,
--     max = 10,
--     default = 5,
--     callback = function(value)
--         print("current value rn is" .. value)
--     end
-- })

-- local toggleInsideUI1 = ActiveMods:ToggleButtonInsideUI({
--     name = "ExampleMiniToggle",
--     callback = function(enabled)
--         if enabled then
--             print("hello")
--         end
--     end
-- })

-- local dropdown = ActiveMods:Dropdown({
--     name = "ExampleDropdown",
--     default = "Test",
--     list = {"Walk", "Run", "Sprint"},
--     callback = function(selectedItem)
--         print("Movement type set to:", selectedItem)
--     end
-- })

--SigmaUI
Library:createScreenGui()
LibraryCheck()
createnotification("Sigma5", "Loaded Successfully", 1, true)

local tab1 = Library:createTabs(CoreGui.Sigma, "Gui")

--ActiveMods
local ActiveMods = tab1:ToggleButton({
    name = "ActiveMods",
    info = "Render active mods",
    callback = function(enabled)
            CoreGui.SigmaVisualStuff.ArrayListHolder.Visible = not CoreGui.SigmaVisualStuff.ArrayListHolder.Visible
    end
})
--TabGUI
local TabGUI = tab1:ToggleButton({
    name = "TabGUI",
    info = "Just decorations",
    callback = function(enabled)
            CoreGui.SigmaVisualStuff.TabHolder.Visible = not CoreGui.SigmaVisualStuff.TabHolder.Visible
    end
})
--Cords
local Cords = tab1:ToggleButton({
    name = "Cords",
    info = "Display positions",
    callback = function(enabled)
            CoreGui.SigmaVisualStuff.Cordinate.Visible = not CoreGui.SigmaVisualStuff.Cordinate.Visible
    end
})
--Uninject
local Uninject = tab1:ToggleButton({
    name = "UninjectTest",
    info = "Fuck Sigma",
    callback = function(enabled)
        if enabled then
            CoreGui.Sigma:Destroy()
            print("Destroyed Main")
            CoreGui.SigmaVisualStuff:Destroy()
            print("Destroyed Notif")
        end
    end
})
