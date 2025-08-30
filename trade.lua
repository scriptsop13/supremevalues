-- Pantalla de bienvenida pequeña con fade out
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Crear ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui
screenGui.IgnoreGuiInset = true
screenGui.ResetOnSpawn = false

-- Cuadro negro centrado
local background = Instance.new("Frame")
background.Size = UDim2.new(0.5, 0, 0.3, 0) -- más pequeño (50% ancho, 30% alto)
background.Position = UDim2.new(0.25, 0, 0.35, 0) -- centrado
background.BackgroundColor3 = Color3.new(0, 0, 0)
background.BackgroundTransparency = 0
background.Parent = screenGui
background.AnchorPoint = Vector2.new(0, 0)

-- Texto principal
local mainText = Instance.new("TextLabel")
mainText.Size = UDim2.new(1, -20, 0.7, 0) -- ocupa 70% del cuadro
mainText.Position = UDim2.new(0, 10, 0, 10)
mainText.BackgroundTransparency = 1
mainText.Text = "Gracias por usar mi script para Tradeos"
mainText.TextColor3 = Color3.new(1, 1, 1)
mainText.TextScaled = true
mainText.Font = Enum.Font.GothamBold
mainText.Parent = background

-- Marca abajo pequeña
local smallText = Instance.new("TextLabel")
smallText.Size = UDim2.new(1, -20, 0.2, 0) -- ocupa 20% del cuadro
smallText.Position = UDim2.new(0, 10, 0.75, 0)
smallText.BackgroundTransparency = 1
smallText.Text = "tiktok: scriptzmm2.web"
smallText.TextColor3 = Color3.new(1, 1, 1)
smallText.TextScaled = true
smallText.Font = Enum.Font.Gotham
smallText.TextXAlignment = Enum.TextXAlignment.Left
smallText.Parent = background

-- Fade out
local TweenService = game:GetService("TweenService")
task.delay(5, function()
    local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

    TweenService:Create(background, tweenInfo, {BackgroundTransparency = 1}):Play()
    TweenService:Create(mainText, tweenInfo, {TextTransparency = 1}):Play()
    TweenService:Create(smallText, tweenInfo, {TextTransparency = 1}):Play()

    task.wait(2.2)
    screenGui:Destroy()
end)

local ancientValues = {
	["Corrupt"] = 825,
    ["Gingerscope"] = 10800,
    ["Traveler's Axe"] = 6900,
    ["Harvester"] = 525,
    ["Celestial"] = 925,
    ["Icepiercer"] = 400,
    ["Vampire's Axe"] = 600,
    ["Icebreaker"] = 125,
    ["Swirly Axe"] = 75,
    ["Batwing"] = 60,
    ["Elderwood Scythe"] = 65,
    ["Hallowscythe"] = 48,
    ["Logchopper"] = 22,
    ["Icewing"] = 5,
	["Traveler's Gun"] = 3700,
	["Evergun"] = 2650,
	["Turkey"] = 2000,
	["Evergreen"] = 1125,
	["Blossom"] = 900,
	["Sakura"] = 890,
	["Vampire's Gun"] = 800,
	["Constellation"] = 1025,
	["Bauble"] = 500,
	["Sunrise"] = 500,
	["Darkshot"] = 630,
	["Darksword"] = 625,
    ["Bloom"] = 170,
    ["Flora"] = 170,
	["Bat"] = 290,
	["Rainbow Gun"] = 250,
	["Rainbow"] = 245,
	["Sunset"] = 225,
	["Candy"] = 185,
	["Heartblade"] = 130,
	["Flowerwood Gun"] = 150,
	["Ocean"] = 165,
	["Soul"] = 200,
	["Spirit"] = 200,
	["Flowerwood"] = 145,
	["Waves"] = 160,
	["Borealis"] = 110,
	["Sugar"] = 80,
	["Australis"] = 105,
	["Luger"] = 70,
	["Red Luger"] = 60,
	["Swirly Gun"] = 55,
	["Iceblaster"] = 65,
	["Candleflame"] = 65,
	["Elderwood Blade"] = 65,
	["Makeshift"] = 65,
	["Watergun"] = 120,
	["Pearl"] = 65,
	["Pearlshine"] = 65,
	["Darkbringer"] = 60,
	["Elderwood Revolver"] = 60,
	["Phantom"] = 60,
	["Spectre"] = 60,
	["Lightbringer"] = 55,
	["Swirly Blade"] = 40,
	["Green Luger"] = 40,
	["Hallowgun"] = 27,
	["Laser"] = 30,
	["Icebeam"] = 28,
	["Iceflake"] = 28,
	["Plasmabeam"] = 28,
	["Plasmablade"] = 28,
	["Amerilaser"] = 28,
	["Blaster"] = 25,
	["Nightblade"] = 25,
	["Old Glory"] = 25,
	["Nebula"] = 23,
	["Shark"] = 27,
	["Virtual"] = 23,
	["Cookiecane"] = 23,
	["Gingermint"] = 23,
	["Gemstone"] = 25,
	["Clockwork"] = 22,
	["Eternalcane"] = 23,
	["Ginger Luger"] = 23,
	["Lugercane"] = 23,
	["Pixel"] = 23,
	["Slasher"] = 23,
	["Gingerblade"] = 22,
	["Heat"] = 20,
	["BattleAxe II"] = 18,
	["Deathshard"] = 20,
	["Minty"] = 20,
	["Tides"] = 15,
	["Fang"] = 18,
	["Jinglegun"] = 17,
	["Spider"] = 17,
	["Chill"] = 17,
	["Bioblade"] = 15,
	["Vampire's Edge"] = 15,
	["Pumpking"] = 12,
	["Frostsaber"] = 15,
	["BattleAxe"] = 13,
	["Flames"] = 10,
	["Hallow's Edge"] = 10,
	["Ice Dragon"] = 10,
	["Ice Shard"] = 12,
	["Winter's Edge"] = 12,
	["Xmas"] = 12,
	["Hallow's Blade"] = 10,
	["Handsaw"] = 10,
	["Eternal"] = 8,
	["Eternal II"] = 8,
	["Eternal III"] = 10,
	["Eternal IV"] = 10,
	["Boneblade"] = 7,
	["Ghostblade"] = 7,
	["Eggblade"] = 7,
	["Frostbite"] = 7,
	["Prismatic"] = 7,
	["Saw"] = 7,
	["Snowflake"] = 7,
	["Peppermint"] = 5,
	["Cookieblade"] = 4,
	["Blue Seer"] = 3,
	["Purple Seer"] = 3,
	["Red Seer"] = 3,
	["Seer"] = 3,
	["Orange Seer"] = 2,
	["Yellow Seer"] = 2,
	["Chroma Traveler's Gun"] = 170000,
    ["Chroma Evergun"] = 57000,
    ["Chroma Evergreen"] = 26000,
    ["Chroma Vampire's Gun"] = 19500,
    ["Chroma Bauble"] = 14500,
    ["Chroma Constellation"] = 12500,
	["Chroma Sunrise"] = 5000,
	["Chroma Sunset"] = 3000,
    ["Chroma Watergun"] = 2700,
    ["Chroma Darkbringer"] = 95,
    ["Chroma Lightbringer"] = 90,
    ["Chroma Luger"] = 85,
    ["Chroma Laser"] = 70,
    ["Chroma Candleflame"] = 68,
    ["Chroma Elderwood Blade"] = 65,
    ["Chroma Swirly Gun"] = 65,
    ["Chroma Cookiecane"] = 64,
    ["Chroma Deathshard"] = 60,
    ["Chroma Heat"] = 60,
    ["Chroma Shark"] = 55,
    ["Chroma Slasher"] = 60,
    ["Chroma Tides"] = 60,
    ["Chroma Fang"] = 60,
    ["Chroma Gemstone"] = 55,
    ["Chroma Gingerblade"] = 50,
    ["Chroma Seer"] = 55,
    ["Chroma Boneblade"] = 40,
    ["Chroma Saw"] = 45,
	["Ghost"] = 12,
    ["America"] = 8,
    ["Blood"] = 10,
    ["Phaser"] = 7,
    ["Shadow"] = 6,
    ["Prince"] = 5,
    ["Cowboy"] = 4,
    ["Golden"] = 4,
    ["Splitter"] = 3,
    ["JD"] = 50,
    ["Latte Gun"] = 150,
    ["Latte Knife"] = 15,
    ["Cotton Candy"] = 50,
    ["Beach"] = 15,
    ["Cavern Knife"] = 13,
    ["Witched"] = 6,
    ["Skulls"] = 6,
    ["Icedriller"] = 8,
    ["Spectral Knife"] = 8,
    ["Vampire Gun"] = 8,
    ["Green Elite"] = 7,
    ["Santa's Spirit"] = 7,
    ["Aurora Gun"] = 8,
    ["Ginger Gun"] = 6,
    ["Blue Elite"] = 6,
    ["Ghost Knife"] = 6,
    ["Traveler Gun"] = 5,
    ["Broken"] = 5,
    ["Santa's Magic"] = 5,
    ["Red Scratch"] = 4,
    ["Red Fire"] = 3,
    ["Arctic Gun"] = 2,
    ["Icecracker"] = 2,
    ["Nightsky"] = 2,
    ["Blue Scratch"] = 2,
    ["Ghost Gun"] = 2,
    ["Rupture"] = 1,
    ["Tree Gun"] = 1,
    ["Tree Knife"] = 1,
    ["Web"] = 1,
    ["Chromatic Knife"] = 1,
    ["Cursed Knife"] = 1,
    ["Frostfade Knife"] = 1,
    ["Vampire Knife"] = 1,
    ["Cavern Gun"] = 1,
    ["Cane"] = 575,
    ["Silent Night"] = 60,
    ["Aurora"] = 28,
    ["Icicles"] = 25,
    ["Dungeon"] = 20,
    ["Candy Swirl"] = 20,
    ["Toxic"] = 20,
    ["Vampire"] = 20,
    ["Snakebite"] = 17,
    ["Monster"] = 17,
    ["Magma"] = 10,
    ["Bats"] = 7,
    ["Green Marble"] = 7,
    ["Jack"] = 4,
    ["Orange Marble"] = 3,
    ["Floral"] = 2,
    ["Starry"] = 2,
    ["Darkknife"] = 1,
    ["Gingerbread"] = 1,
    ["Mummy"] = 1,
	["Zombified Knife"] = 55,
    ["Bones"] = 50,
    ["Gingerbread Knife"] = 50,
    ["Brains"] = 40,
    ["Sweater Knife"] = 35,
    ["Branches"] = 25,
    ["Frozen Gun"] = 22,
    ["Lights Gun"] = 20,
    ["Mummy Gun"] = 20,
    ["Zombie Gun"] = 20,
    ["Potion Knife"] = 17,
    ["Zombified Gun"] = 15,
    ["Potion"] = 6,
    ["Void"] = 8,
    ["Frozen Knife"] = 5,
    ["Gingerbread Gun"] = 5,
    ["Zombie Knife"] = 5,
    ["Lights Knife"] = 4,
    ["Mummy Knife"] = 4,
    ["Moons"] = 4,
    ["Webs"] = 3,
    ["Holly Gun"] = 3,
    ["Snowflake"] = 3,
    ["Wolf"] = 3,
    ["Vampire"] = 3,
    ["Nutcracker"] = 1,
    ["Snowman Gun"] = 1,
    ["Snowman Knife"] = 1,
    ["Snowy"] = 1,
    ["Wrapped Gun"] = 1,
    ["Wrapped Knife"] = 1,
    ["Gifted"] = 1,
    ["Cane"] = 575,
    ["Silent Night"] = 60,
    ["Aurora"] = 28,
    ["Icicles"] = 25,
    ["Dungeon"] = 20,
    ["Candy Swirl"] = 20,
    ["Toxic"] = 20,
    ["Snakebite"] = 17,
    ["Monster"] = 17,
    ["Magma"] = 10,
    ["Bats"] = 7,
    ["Green Marble"] = 7,
    ["Jack"] = 4,
    ["Orange Marble"] = 3,
    ["Floral"] = 2,
    ["Starry"] = 2,
    ["Darkknife"] = 1,
    ["Mummy"] = 1,
    ["Glitch2"] = 60,
    ["Glitch1"] = 60,
    ["Bats"] = 170,
    ["Gifts"] = 140,
    ["Pine"] = 140,
    ["Sparkle9"] = 35,
    ["Sparkle8"] = 25,
    ["Sparkle10"] = 25,
    ["Ghoulish"] = 25,
    ["Skool"] = 20,
    ["Sparkle7"] = 20,
    ["RIP"] = 18,
    ["Tailslide"] = 17,
    ["Coal"] = 15,
    ["Ollie"] = 15,
    ["Sidewinder"] = 15,
    ["Sparkle5"] = 13,
    ["Elf"] = 13,
    ["Grave"] = 12,
    ["CandyCorn"] = 10,
    ["Sparkle4"] = 8,
    ["Asteroid"] = 8,
    ["Euro"] = 8,
    ["Slime"] = 7,
    ["Grind"] = 6,
    ["Haunted"] = 5,
    ["Combat II"] = 5,
    ["Prism"] = 4,
    ["Zombie"] = 4,
    ["Snowman"] = 3,
    ["Wrapped"] = 3,
    ["Bones"] = 3,
    ["Brains"] = 3,
    ["Neon"] = 3,
    ["Ecto"] = 3,
    ["Witch"] = 3,
    ["Indy"] = 3,
    ["Hearts"] = 2,
    ["Tulip"] = 2,
    ["Goo"] = 2,
    ["Patrick"] = 2,
    ["Reptile"] = 2,
    ["Bunny"] = 1,
    ["Choco"] = 1,
    ["Roses"] = 1,
    ["Alex"] = 1,
    ["Corl"] = 1,
    ["Denis"] = 1,
    ["Ornament"] = 1,
    ["Ornament1"] = 1,
    ["Ornament2"] = 1,
    ["Passion"] = 1,
    ["Sketchy"] = 1,
    ["Sub"] = 1,
    ["Sweetheart"] = 1,
    ["Valentine"] = 1,
    ["2015"] = 1,
    ["Santa"] = 1,
    ["Infected"] = 1,
    ["TNL"] = 1,
	["Zombie Dog"] = 200,
    ["Elf"] = 120,
    ["Blue Pumpkin"] = 75,
    ["Black Cat"] = 60,
    ["Dogey"] = 60,
    ["Red Pumpkin"] = 55,
    ["Green Pumpkin"] = 45,
    ["Santa"] = 35,
    ["Jetstream"] = 35,
    ["Purple Pumpkin"] = 30,
    ["Vampire Bat"] = 30,
    ["Rudolph"] = 25,
    ["Red Pumpkin"] = 25, -- Duplicate name, kept the first one
    ["Eyeball"] = 25,
    ["Overseer Eye"] = 25,
    ["Nobledragon"] = 25,
    ["Pumpkin"] = 20,
    ["Piggy"] = 20,
    ["Green Pumpkin"] = 20, -- Duplicate name, kept the first one
    ["Reindeer"] = 20,
    ["Fairy"] = 20,
    ["Seahorsey"] = 18,
    ["Chilly"] = 17,
    ["Pengy"] = 17,
    ["Tankie"] = 15,
    ["<3"] = 12,
    ["Mechbug"] = 8,
    ["UFO"] = 7,
    ["Red Pumpkin"] = 5, -- Duplicate name, kept the first one
    ["Deathspeaker"] = 5,
    ["Blue Pumpkin"] = 4, -- Duplicate name, kept the first one
    ["Phoenix"] = 4,
    ["Frostbird"] = 3,
    ["Green Pumpkin"] = 2, -- Duplicate name, kept the first one
    ["Electro"] = 2,
    ["Sammy"] = 2,
    ["Steambird"] = 2,
    ["Badger"] = 1,
    ["Ice Phoenix"] = 1,
    ["Skelly"] = 1,
    ["Traveller"] = 1,
    ["Fire Bat"] = 1,
    ["Fire Cat"] = 1,
    ["Fire Bear"] = 1,
    ["Fire Bunny"] = 1,
    ["Fire Dog"] = 1,
    ["Fire Fox"] = 1,
    ["Fire Pig"] = 1,
    ["Ghosty"] = 1,
	["Chroma Fire Bunny"] = 20,
    ["Chroma Fire Cat"] = 20,
    ["Chroma Fire Dog"] = 18,
    ["Chroma Fire Fox"] = 17,
    ["Chroma Fire Bat"] = 15,
    ["Chroma Fire Pig"] = 13,
    ["Chroma Fire Bear"] = 12,
}
-- =======================
-- FUNCIONES BASE
-- =======================
local function GET_ITEM_VALUE(ITEM_NAME, IS_CHROMA)
    if IS_CHROMA then
        local CHROMA_NAME = "Chroma " .. ITEM_NAME
        if ancientValues[CHROMA_NAME] then
            return ancientValues[CHROMA_NAME]
        end
    end
    return ancientValues[ITEM_NAME]
end

local function UPDATE_OFFER_VALUES(YOC, YOT, TOC, TOT)
    if not (YOC and YOT and TOC and TOT) then return end

    local YOUR_TOTAL_VALUE, THEIR_TOTAL_VALUE = 0, 0

    -- YOUR OFFER
    for I = 1, 4 do
        local NEW_ITEM = YOC:FindFirstChild("NewItem" .. I)
        if NEW_ITEM and NEW_ITEM.Visible then
            local ITEM_NAME_OBJ = NEW_ITEM:FindFirstChild("ItemName")
            local AMOUNT_CONT = NEW_ITEM:FindFirstChild("Container")
            local TAGS = NEW_ITEM:FindFirstChild("Tags")
            local CHROMA_TAG = TAGS and TAGS:FindFirstChild("Chroma")

            if ITEM_NAME_OBJ and AMOUNT_CONT and CHROMA_TAG then
                local ITEM_NAME_LBL = ITEM_NAME_OBJ:FindFirstChild("Label")
                local AMOUNT_LBL = AMOUNT_CONT:FindFirstChild("Amount")
                local IS_CHROMA = CHROMA_TAG.Visible

                if ITEM_NAME_LBL and ITEM_NAME_LBL.Text ~= "" then
                    local ITEM_NAME = ITEM_NAME_LBL.Text
                    local AMOUNT = 1
                    if AMOUNT_LBL and AMOUNT_LBL.Text ~= "" then
                        local AMOUNT_TEXT = AMOUNT_LBL.Text
                        if string.sub(AMOUNT_TEXT, 1, 1) == "x" then
                            AMOUNT = tonumber(string.sub(AMOUNT_TEXT, 2)) or 1
                        end
                    end
                    local ITEM_VALUE = GET_ITEM_VALUE(ITEM_NAME, IS_CHROMA)
                    if ITEM_VALUE then
                        YOUR_TOTAL_VALUE += ITEM_VALUE * AMOUNT
                    end
                end
            end
        end
    end

    -- THEIR OFFER
    for I = 1, 4 do
        local NEW_ITEM = TOC:FindFirstChild("NewItem" .. I)
        if NEW_ITEM and NEW_ITEM.Visible then
            local ITEM_NAME_OBJ = NEW_ITEM:FindFirstChild("ItemName")
            local AMOUNT_CONT = NEW_ITEM:FindFirstChild("Container")
            local TAGS = NEW_ITEM:FindFirstChild("Tags")
            local CHROMA_TAG = TAGS and TAGS:FindFirstChild("Chroma")

            if ITEM_NAME_OBJ and AMOUNT_CONT and CHROMA_TAG then
                local ITEM_NAME_LBL = ITEM_NAME_OBJ:FindFirstChild("Label")
                local AMOUNT_LBL = AMOUNT_CONT:FindFirstChild("Amount")
                local IS_CHROMA = CHROMA_TAG.Visible

                if ITEM_NAME_LBL and ITEM_NAME_LBL.Text ~= "" then
                    local ITEM_NAME = ITEM_NAME_LBL.Text
                    local AMOUNT = 1
                    if AMOUNT_LBL and AMOUNT_LBL.Text ~= "" then
                        local AMOUNT_TEXT = AMOUNT_LBL.Text
                        if string.sub(AMOUNT_TEXT, 1, 1) == "x" then
                            AMOUNT = tonumber(string.sub(AMOUNT_TEXT, 2)) or 1
                        end
                    end
                    local ITEM_VALUE = GET_ITEM_VALUE(ITEM_NAME, IS_CHROMA)
                    if ITEM_VALUE then
                        THEIR_TOTAL_VALUE += ITEM_VALUE * AMOUNT
                    end
                end
            end
        end
    end

    YOT.Text = "Value: " .. YOUR_TOTAL_VALUE
    TOT.Text = "Value: " .. THEIR_TOTAL_VALUE

    if THEIR_TOTAL_VALUE > 0 then
        local PROFIT = THEIR_TOTAL_VALUE - YOUR_TOTAL_VALUE
        YOT.Text ..= " (Profit: " .. PROFIT .. ")"
    end
end

local function HOOK_TRADE(TG)
    if not TG then return end
    local CONT = TG:WaitForChild("Container", 5)
    if not CONT then return end
    local TR = CONT:WaitForChild("Trade", 5)
    if not TR then return end

    local YO = TR:WaitForChild("YourOffer", 5)
    local YOC = YO:WaitForChild("Container", 5)
    local YOT = YO:WaitForChild("Title", 5)

    local TO = TR:WaitForChild("TheirOffer", 5)
    local TOC = TO:WaitForChild("Container", 5)
    local TOT = TO:WaitForChild("Title", 5)

    -- Conexiones
    local function Update()
        UPDATE_OFFER_VALUES(YOC, YOT, TOC, TOT)
    end

    Update()

    for I = 1, 4 do
        local NEW_ITEM = YOC:FindFirstChild("NewItem" .. I)
        if NEW_ITEM then
            NEW_ITEM:GetPropertyChangedSignal("Visible"):Connect(Update)
        end
    end
    for I = 1, 4 do
        local NEW_ITEM = TOC:FindFirstChild("NewItem" .. I)
        if NEW_ITEM then
            NEW_ITEM:GetPropertyChangedSignal("Visible"):Connect(Update)
        end
    end
end

-- =======================
-- INICIO
-- =======================
local LP = game:GetService("Players").LocalPlayer
local PG = LP:WaitForChild("PlayerGui", 5)
if not PG then return end

-- PC
HOOK_TRADE(PG:FindFirstChild("TradeGUI"))
-- Móvil
HOOK_TRADE(PG:FindFirstChild("TradeGUI_Phone"))
