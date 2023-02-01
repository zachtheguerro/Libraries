UISettings = Window:AddTab('UI Settings')
Library:OnUnload(function()
    print('Unloaded!')
    Library.Unloaded = true
end)

local MenuGroup = UISettings:AddLeftGroupbox('Menu')

MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = false, Text = 'Menu keybind' }) 
MenuGroup:AddToggle('kbframevisible', {
    Text = 'Show Keybinds',
    Default = true,
    Tooltip = 'Shows your Keybinds',
})

Toggles.kbframevisible:OnChanged(function()
Library.KeybindFrame.Visible = Toggles.kbframevisible.Value
end)

Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings() 

SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 

ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')

SaveManager:BuildConfigSection(Tabs.UISettings) 

ThemeManager:ApplyToTab(Tabs.UISettings)
