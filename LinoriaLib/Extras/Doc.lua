--New Window:
repo = 'https://raw.githubusercontent.com/zachisfunny/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'Example menu',
    Center = true, 
    AutoShow = true,
})

--New Tab:
Main = Window:AddTab('Main'), 

--Add a tooltip:
name:AddTooltip('')

--New Label:
LeftGroupBox:AddLabel('This is a label')

--New Divider:
name:AddDivider()

--Set anything to a certain value:
Options/Toggles.name:SetValue({'Value', 'ValueTwo'})

-- for a value do this
Options/Toggles.ESp:SetValue(false)

--New Left Group Box:
local name = Tabs.Main:AddLeftGroupbox('')

--New Right Group Box:
local name = Tabs.Main:AddRightGroupbox('')

--New Tab Box:
local name = Tabs.Main:AddRightTabbox()

--New Tab Box Tab
local name = name:AddTab('')

--New Toggle:
name:AddToggle('', {
    Text = '',
    Default = false,
    Tooltip = '',
})

Toggles.name:OnChanged(function()

end)

--New Button:
local name = name:AddButton('', function()

end)

--New Slider:
name:AddSlider('', {
    Text = '',
        
    Default = 0,
    Min = 0,
    Max = 5,
    Rounding = 1,

    Compact = false,
})

local Number = Options.name.Value
Options.name:OnChanged(function()

end)

--New Text Box:
name:AddInput('', {
    Default = '',
    Numeric = false, -- true / false, only allows numbers
    Finished = false, -- true / false, only calls callback when you press enter

    Text = '',
    Tooltip = '',

    Placeholder = '',

})

Options.name:OnChanged(function()

end)

--New Dropdown:
name:AddDropdown('', {
    Values = {'Option', 'OptionTwo'},
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = '',
    Tooltip = '',
})

Options.name:OnChanged(function()

end)

--New Multi Dropdown:
name:AddDropdown('', {

    Values = { 'Option', 'OptionTwo'},
    Default = 1, 
    Multi = true,

    Text = '',
    Tooltip = '',
})

Options.name:OnChanged(function()

end)

--New Color Picker:
name:AddColorPicker('ColorPicker', {
    Default = Color3.new(0, 1, 0),
    Title = '',
})

Options.name:OnChanged(function()

end)

--New Key Bind:
name:AddKeyPicker('', {

    Default = 'MB2',
    SyncToggleState = false, 
        
    Mode = 'Toggle', -- Modes: Always, Toggle, Hold
        
    Text = '',
    NoUI = false, -- true = not on keybind menu
})

Options.KeyPicker:OnClick(function()

end)

--New Water Mark:
Library:SetWatermarkVisibility(true) -- false for no watermark
Library:SetWatermark('')
