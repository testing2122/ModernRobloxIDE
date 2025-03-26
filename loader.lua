--[[
    Modern Roblox IDE Loader
    A sleek, feature-rich code editor UI for Roblox
    
    https://github.com/testing2122/ModernRobloxIDE
]]

local ModernIDE = {}
ModernIDE.Version = "1.0.0"
ModernIDE.BaseUrl = "https://raw.githubusercontent.com/testing2122/ModernRobloxIDE/main/"

-- Configuration
ModernIDE.Config = {
    Theme = "dark", -- "dark" or "light"
    FontSize = 14,
    TabSize = 4,
    AutoSave = true,
    LineNumbers = true,
    Minimap = true,
    SyntaxHighlighting = true,
    CodeCompletion = true,
}

-- Load modules using HttpGet
local function loadModule(name)
    local success, result = pcall(function()
        return loadstring(game:HttpGet(ModernIDE.BaseUrl .. name .. ".lua"))()
    end)
    
    if not success then
        warn("Failed to load module: " .. name)
        warn(result)
        return nil
    end
    
    return result
end

-- Initialize the IDE
function ModernIDE.Init()
    print("Initializing Modern Roblox IDE v" .. ModernIDE.Version)
    
    -- Load core modules
    ModernIDE.UI = loadModule("main")
    ModernIDE.Syntax = loadModule("modules/syntax")
    ModernIDE.Completion = loadModule("modules/completion")
    ModernIDE.FileExplorer = loadModule("modules/fileExplorer")
    ModernIDE.Search = loadModule("modules/search")
    
    -- Load theme
    ModernIDE.Theme = loadModule("themes/" .. ModernIDE.Config.Theme)
    
    -- Initialize UI
    if ModernIDE.UI then
        ModernIDE.UI.Init(ModernIDE)
        return true
    else
        warn("Failed to initialize Modern Roblox IDE")
        return false
    end
end

-- Run the IDE
local success = ModernIDE.Init()
if success then
    print("Modern Roblox IDE loaded successfully!")
end

return ModernIDE