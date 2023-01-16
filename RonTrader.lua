ModUtil.RegisterMod("RonTrader")

ObstacleData.RonTrader = {
    InheritFrom = { "NPC_Neutral" },
    UseText = "UseRon",
    UsePromptOffsetX = 65,
    UsePromptOffsetY = -50,
    InteractTextLineSets =
    {
        -- RonFirstMeeting =
        -- {
        --     StatusAnimation = "StatusIconWantsToTalk",
        --     Name = "RonFirstMeeting",
        --     SuperPriority = true,
        --     PlayOnce = true,
        --     UseableOffSource = true,
        --     GiftableOffSource = true,
        --     InitialGiftableOffSource = true,
        --     UseInitialInteractSetup = true,
        --     -- Partner = "NPC_Hades_01",
        --     { PreLineWait = 0.35, Portrait = "Portrait_Ron_01_dark", Speaker="NPC_Ron_Unknown", Emote="PortraitEmoteSleep",
        --         Text = "Esenticc qwoish ... para guaitais, malo melenoshinfais. Henhe, uh-uh eeee mistandenta. Sim fwoish? Ahhh hempfowounka taleimiet." },
        --     { Portrait = "Portrait_Zag_Empathetic_01", Speaker = "CharProtag",
        --         Text = "Who are you? Show yourself. Did father send for you?" },
        --     {  Portrait = "Portrait_Ron_01", Speaker="NPC_Ron_01", Emote = "SleepingZs",
        --         Text = "Ehhh? Well me and Papi just wandered in, followed the stars and all. Oh hey there Mr. Skelly!" },
        --     { Portrait = "Portrait_Skelly_Default_01", Speaker = "TrainingMelee",
        --         Text = "Heyo Ron, how's it going?" },
        --     -- { Emote = "PortraitEmoteAnger", Text = "You lie, blackguard! You'll see just how powerful I am soon, you foul pustule!" },
        --     { Portrait = "Portrait_Ron_01", Speaker = "NPC_Ron_01",
        --         Text = "Got a ton of customers as always, you know." },
        --     { Portrait = "Portrait_Zag_Default_01", Speaker = "CharProtag",
        --         Text = "Skelly, who is this?" },
        --     { Portrait = "Portrait_Skelly_Default_01", Speaker = "TrainingMelee",
        --         Text = "This is my old bud Falcon Ron. He's got some {#DialogueItalicFormat}interesting{#PreviousFormat} wares if you want to take a little look." },
        --     { Portrait = "Portrait_Ron_01", Speaker = "NPC_Ron_01",
        --         Text = "Extra-special stuff for extra-special customers. Titan-stars, talismans, stardust and all that, yup." },
        --     { Portrait = "Portrait_Zag_Defiant_01", Speaker = "CharProtag", Emote = "PortraitEmoteAnger",
        --         Text = "Titans! What do you have to do with them! Must I call my father's wrath upon you?" },
        --     { Portrait = "Portrait_Skelly_Default_01", Speaker = "TrainingMelee", 
        --         Text = "Don't get your bones all rattled boyo. These are different titans, all long dead by now." },
        --     { Portrait = "Portrait_Zag_Default_01", Speaker = "CharProtag",
        --         Text = "Show me and I will decide that for myself." },
        -- },
        RonEveryMeeting =
        {
            StatusAnimation = "StatusIconWantsToTalk",
            Name = "RonEveryMeeting",
            SuperPriority = true,
            PlayOnce = false,
            UseableOffSource = true,
            GiftableOffSource = true,
            InitialGiftableOffSource = true,
            UseInitialInteractSetup = true,
            -- Partner = "NPC_Hades_01",
            { PreLineWait = 0.35, Portrait = "Portrait_Ron_01", Speaker="NPC_Ron_01", PostLineFunctionName = "RonTrader.LoadCaravan",
                Text = "Hey Mr. Zagreus. Come on in." },
        }
    }
}


RoomData.CaravanInterior =
{
    InheritFrom = { "BaseTartarus" },
    LegalEncounters = { "Empty" },
    UnthreadedEvents = EncounterSets.EncounterEventsNonCombat,

    GameStateRequirements =
    {
        -- None
    },

    RequiresLinked = true,
    NextRoomSet = { "Asphodel", },
    RichPresence = "#RichPresence_PostBoss",
    IgnoreMusic = true,
    UseBiomeMap = true,
    BlockRunProgressUI = true,
    Ambience = "/Leftovers/Ambience/CreepyHauntedWindLoop",
    EntranceDirection = "Right",
    NoReward = true,
    NoReroll = true,
    ZoomFraction = 1.3,
    NumExits = 1,
    FlipHorizontalChance = 0.0,
    IntroSequenceDuration = 0.9,

    SkipLastKillPresentation = true,
    ChallengeSpawnChance = 0.0,
    WellShopSpawnChance = 1.0,
    SellTraitShopChance = 1.0,
    ForceWellShop = true,
    ForceSellTraitShop = true,
    WellShopRequirements =
    {
        -- None
    },
    SecretSpawnChance = 0.0,
    SellTraitShrineUpgrade = true,

   
    EnterVoiceLines =
    {
        {
            PreLineWait = 6.8,
            RandomRemaining = true,
            BreakIfPlayed = true,
            SuccessiveChanceToPlay = 0.5,

            -- OK...
            { Cue = "/VO/ZagreusField_0258", RequiredPlayed = { "/VO/ZagreusField_0888" }, },
            -- Got to keep going.
            { Cue = "/VO/ZagreusField_0259", RequiredPlayed = { "/VO/ZagreusField_0888" }, },
            -- Well, Father? I'm trespassing through your secret hall, and going up.
            { Cue = "/VO/ZagreusField_0887", RequiredPlayed = { "/VO/ZagreusField_0888" }, RequiredFalseTextLines = { "Ending01" }, },
            -- Don't mind me, Father.
            { Cue = "/VO/ZagreusField_0888" },
            -- I'll just be a moment, Father.
            { Cue = "/VO/ZagreusField_0891", PreLineWait = 1.5, RequiredPlayed = { "/VO/ZagreusField_0888" }, },
            -- Off to Asphodel.
            { Cue = "/VO/ZagreusField_1504", RequiredPlayed = { "/VO/ZagreusField_0888" }, },
            -- Let's hear it, Father.
            { Cue = "/VO/ZagreusField_1505", PreLineWait = 1.2, RequiredPlayed = { "/VO/ZagreusField_0888" }, },
            -- Well, Father?
            { Cue = "/VO/ZagreusField_1506", PreLineWait = 1.25, RequiredPlayed = { "/VO/ZagreusField_0888" }, },
            -- Moving on.
            { Cue = "/VO/ZagreusField_1507", RequiredPlayed = { "/VO/ZagreusField_0888" }, },
            -- Next stop, Asphodel.
            { Cue = "/VO/ZagreusField_1508", RequiredPlayed = { "/VO/ZagreusField_0888" }, },
        },
    },
    ExitVoiceLines =
    {
        PreLineWait = 0.5,
        RandomRemaining = true,
        BreakIfPlayed = true,
        
        -- Up we go then.
        { Cue = "/VO/ZagreusField_0260" },
        -- I'll just go on up.
        { Cue = "/VO/ZagreusField_0889" },
        -- Going up.
        { Cue = "/VO/ZagreusField_0890" },
        -- Let's go up.
        { Cue = "/VO/ZagreusField_1588" },
        -- See you, Tartarus.
        { Cue = "/VO/ZagreusField_1589" },
        -- Heading up.
        { Cue = "/VO/ZagreusField_1590" },
        -- That's enough Tartarus.
        { Cue = "/VO/ZagreusField_4386" },
        -- So much for Tartarus.
        { Cue = "/VO/ZagreusField_4387" },
        -- Broke out of Tartarus.
        { Cue = "/VO/ZagreusField_4388" },
        -- Till next time, Tartarus.
        { Cue = "/VO/ZagreusField_4389" },
        -- Nowhere to go but up.
        { Cue = "/VO/ZagreusField_4390" },
        -- Closer to the surface.
        { Cue = "/VO/ZagreusField_4391" },
        -- Next floor.
        { Cue = "/VO/ZagreusField_4392" },
        -- Up we go.
        { Cue = "/VO/ZagreusField_4393" },
    },
    ObstacleData = {
        [1] = {
            Name = "CaravanLoadout",
            InteractDistance = 150,
            InteractOffsetX = 0,
            InteractOffsetY = 0,
            UseText = "UseMarket",
            -- UseSound = "/Leftovers/World Sounds/CaravanCreak",
            OnUsedFunctionName = "RonTrader.OpenLoadoutMenu",
            EmoteOffsetZ = 100,
        }
    }
}

OverwriteTableKeys( RoomData, RoomSetData.Tartarus )

ModUtil.WrapBaseFunction( "SetupMap", function(baseFunc)
    DebugPrint({Text = "@RonTrader Trying to load package RonImages.pkg"})
    LoadPackages({Name = "RonImages"})

    if GetMapName({}) == "CaravanInterior" then
        local Packages = {
            "DeathArea"
        }
        for k,v in pairs(Packages) do
            LoadPackages({Name = v})
        end
    end

    return baseFunc()
end)

OnUsed{"RonTrader", function(triggerArgs)
    PlayFirstEligibleTextLines(triggerArgs.TriggeredByTable, triggerArgs.TriggeredByTable.InteractTextLineSets)
end}

function RonTrader.LoadCaravan(triggerArgs)
    DebugPrint({Text="Load"})
	LoadMap({ Name = "CaravanInterior", ResetBinks = true})



	-- LoadMap({ Name = "DeathAreaBedroom" })
	-- DeathAreaSwitchRoom(triggerArgs, { Name = "CaravanInterior", ResetBinks = true, ResetWeaponBinks = true })
    -- DeathAreaSwitchRoom(triggerArgs,  { Name = "CaravanInterior" })
end

OnAnyLoad{"CaravanInterior", function(triggerArgs)
    -- RonTrader.StartCaravanPresentation(CurrentRun, CurrentRun.CurrentRoom)
    -- SwapAnimation({ Name = "FireFootstepL-Spawner", DestinationName = CurrentRun.CurrentRoom.FootstepAnimationL })
    -- SwapAnimation({ Name = "FireFootstepR-Spawner", DestinationName =  CurrentRun.CurrentRoom.FootstepAnimationR })
    -- SwapAnimation({ Name = "DashCrack", DestinationName =  CurrentRun.CurrentRoom.FootstepAnimationR })

    LockCamera({ Id = 40013, Duration = 0 })
    Teleport({ Id = 40000, DestinationId = 40009, CaravanZoomOverride = true })
    thread(function()
        thread( MoveHeroToRoomPosition, { DestinationId = 400012, DisableCollision =  true, UseDefaultSpeed = true } )
        wait(0.1)
        AdjustZoom({ Fraction = 1.25, LerpTime = 0, CaravanZoomOverride = true})
    end)

	TeleportCursor({ OffsetX = ScreenCenterX, OffsetY = ScreenCenterY })

    for id, obstacleData in pairs( RoomData.CaravanInterior.ObstacleData ) do
        local obstacle = DeepCopyTable( obstacleData )
        obstacle.ObjectId = id
        Activate({ Id = obstacle.ObjectId })
        SetAlpha({ Id = obstacle.ObjectId, Fraction = 1 })
        SetupObstacle( obstacle )
    end

end}

OnControlPressed{"Shout", function(triggerArgs)
    -- RonTrader.LoadCaravan(triggerArgs)
    RonTrader.OpenLoadoutMenu()
end}


ModUtil.WrapBaseFunction("FocusCamera", function(baseFunc, args)
    if GetMapName({}) == "CaravanInterior" and args.CaravanZoomOverride == nil then
        return
    end
    return baseFunc(args)
end, RonTrader)

ModUtil.WrapBaseFunction("AdjustZoom", function(baseFunc, args)
    if GetMapName({}) == "CaravanInterior" and args.CaravanZoomOverride == nil then
        return
    end
    return baseFunc(args)
end, RonTrader)

ModUtil.WrapBaseFunction("SwapAnimation", function(baseFunc, args)
    if GetMapName({}) == "CaravanInterior" and args.CaravanZoomOverride == nil then
        return
    end
    return baseFunc(args)
end, RonTrader)

RonTrader.CurrentTeam = 1
function RonTrader.OpenLoadoutMenu(triggerArgs)
    local screen = { Components = {} }
	screen.Name = "RonTrader.Loadout"

	if IsScreenOpen( screen.Name ) then
        RonTrader.CloseLoadoutMenu(screen)
        return
	end
    OnScreenOpened({ Flag = screen.Name, PersistCombatUI = false })
	FreezePlayerUnit()
    HideCombatUI("RonTrader")
	EnableShopGamepadCursor()
	SetConfigOption({ Name = "FreeFormSelectWrapY", Value = false })
	SetConfigOption({ Name = "FreeFormSelectStepDistance", Value = 8 })
	SetConfigOption({ Name = "FreeFormSelectSuccessDistanceStep", Value = 8 })
	SetConfigOption({ Name = "FreeFormSelectRepeatDelay", Value = 0.6 })
	SetConfigOption({ Name = "FreeFormSelectRepeatInterval", Value = 0.1 })
	SetConfigOption({ Name = "FreeFormSelecSearchFromId", Value = 0 })

	PlaySound({ Name = "/SFX/Menu Sounds/ContractorMenuOpen" })
	local components = screen.Components

	components.BackgroundDim = CreateScreenComponent({ Name = "rectangle01", Group = "RonTrader.Backing" })
    SetScale({ Id = components.BackgroundDim.Id, Fraction = 4 })
	SetColor({ Id = components.BackgroundDim.Id, Color = {0, 0, 0, 1} })
	components.Background = CreateScreenComponent({ Name = "rectangle01", Group = "RonTrader.Backing" })
	SetColor({ Id = components.Background.Id, Color = {0, 0, 0, 0} })

    components.BackgroundImage = CreateScreenComponent({Name = "BlankObstacle", Scale = 0.75, Group = "RonTrader.Images"})
	Attach({ Id = components.BackgroundImage.Id, DestinationId = components.Background.Id, OffsetX = -315, OffsetY = -90})
    SetAnimation({ Name = "GUI\\Screens\\CaravanEquip\\Background", DestinationId = components.BackgroundImage.Id})
    SetAlpha({Id = components.BackgroundImage.Id, Fraction = 0.65})


    components.CloseButton = CreateScreenComponent({ Name = "ButtonClose", Group = "RonTrader.Buttons", Scale = 0.7 })
	Attach({ Id = components.CloseButton.Id, DestinationId = components.Background.Id, OffsetX = 0, OffsetY = 440 })
	components.CloseButton.OnPressedFunctionName = "RonTrader.CloseLoadoutMenu"
    components.CloseButton.ControlHotkey = "Cancel"

    components.Bookbase = CreateScreenComponent({ Name = "CaravanBookBase",Scale = 0.5, Group="RonTrader.Images"})
    SetScaleY({ Id = components.Bookbase.Id, Fraction = 0.6})
    SetScaleX({ Id = components.Bookbase.Id, Fraction = 1})
	Attach({ Id = components.Bookbase.Id, DestinationId = components.Background.Id, OffsetX = -325, OffsetY = 250 })


    components.StarSymbol = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.4, Group="RonTrader.Images"})
	Attach({ Id = components.StarSymbol.Id, DestinationId = components.Background.Id, OffsetX = -325, OffsetY = -125 })
	SetAnimation({ Name = "CaravanStarSymbol", DestinationId = components.StarSymbol.Id})

    SetAlpha({Id = components.StarSymbol, Fraction = 0.9})

    RonTrader.CreateStarSymbols(screen)

    RonTrader.CreateSigilFlames(screen)

    components.NamePlate = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.9, Group="RonTrader.Images"})
	Attach({ Id = components.NamePlate.Id, DestinationId = components.Background.Id, OffsetX = 575, OffsetY = -400 })
    SetScaleY({Id = components.NamePlate.Id, Fraction = 0.9})
	SetAnimation({ Name = "GUI\\Screens\\CaravanEquip\\NamePlate", DestinationId = components.NamePlate.Id})

	-- components.NamePlateText = CreateScreenComponent({ Name = "BlankObstacle", Group = "BoonSelector", Scale = 0.3 })
	CreateTextBox({ Id = components.NamePlate.Id, Text = "",
		FontSize = 27, OffsetX = 5, OffsetY = 43, Width = 720, Color = Color.DarkGray, Font = "SpectralSCLightTitling",
		ShadowColor = {0, 0, 0, 128}, ShadowOffset = {0, 2}, ShadowBlur = 0, Justification = "CENTER",
        OutlineThickness = 6, OutlineColor = Color.DarkGray,
	})


    RonTrader.SelectTeam(screen, RonTrader.CurrentTeam)

    components.ArrowAngleTargetLeft = CreateScreenComponent({Name = "BlankObstacle", Group="RonTrader.Scripting"})
	Attach({ Id = components.ArrowAngleTargetLeft.Id, DestinationId = components.Background.Id, OffsetX = 515, OffsetY = -300 })

    components.LeftArrow = CreateScreenComponent({Name = "ButtonCodexUp", Scale = 1, Group = "RonTrader.Buttons"})
	Attach({ Id = components.LeftArrow.Id, DestinationId = components.Background.Id, OffsetX = 515, OffsetY = -280 })
	components.LeftArrow.OnPressedFunctionName = "RonTrader.SelectPrevTeam"
	AngleTowardTarget({ Id = components.LeftArrow.Id, DestinationId = components.ArrowAngleTargetLeft.Id })

    components.ArrowAngleTargetRight = CreateScreenComponent({Name = "BlankObstacle", Group="RonTrader.Scripting"})
	Attach({ Id = components.ArrowAngleTargetRight.Id, DestinationId = components.Background.Id, OffsetX = 635, OffsetY = -300 })

    components.RightArrow = CreateScreenComponent({Name = "ButtonCodexDown", Scale = 1, Group = "RonTrader.Buttons"})
	Attach({ Id = components.RightArrow.Id, DestinationId = components.Background.Id, OffsetX = 635, OffsetY = -280 })
	components.RightArrow.OnPressedFunctionName = "RonTrader.SelectNextTeam"
	AngleTowardTarget({ Id = components.RightArrow.Id, DestinationId = components.ArrowAngleTargetRight.Id })

    thread( HandleWASDInput, screen )
	HandleScreenInput( screen )
end

function RonTrader.SelectPrevTeam(screen, button)
    RonTrader.CurrentTeam = RonTrader.CurrentTeam - 1
    if RonTrader.CurrentTeam < 1 then
        RonTrader.CurrentTeam = 8
    end
    RonTrader.SelectTeam(screen, RonTrader.CurrentTeam)
end
function RonTrader.SelectNextTeam(screen, button)
    RonTrader.CurrentTeam = RonTrader.CurrentTeam + 1
    if RonTrader.CurrentTeam > 8 then
        RonTrader.CurrentTeam = 1
    end
    RonTrader.SelectTeam(screen, RonTrader.CurrentTeam)
end


RonTrader.Teams = {
    {
        Name = "tempers",
        Color = "Green",
        RGB =  {0.58039215686,0.83921568627,0.05882352941},
        Offset = {-70, 220},
        Archetype = "Demon",
        ArchetypePosition = {660, 150}
    },
    { --perfect
        Name = "dissidents",
        Color = "Orange",
        RGB = {0.596078,0.364706,0.066666667},
        Offset = {-70, 28},
        Archetype = "Cur"
    },
    { --perfect
        Name = "pyrehearts",
        Color = "Teal",
        RGB = {0.470588,0.756863,0.494118},
        Offset = {-77, -123},
        Archetype = "Wyrm",
        ArchetypePosition = {720, 90},
        ArchetypeScale = 0.9
    },
    { --perfect
        Name = "chastity",
        Color = "Pink",
        RGB = {1.0,0.552941,0.984314},
        Offset = {125, 170},
        Archetype = "Sap",
        ArchetypePosition = {720, 90},
    },
    { --perfect
        Name = "accusers",
        Color = "Yellow",
        RGB = {0.996078,0.92549,0.223529},
        Offset = {-171, 20},
        Archetype = "Nomad",
        ArchetypeScale = 0.7
    },
    { --nearly perfect
        Name = "nightwings",
        Color = "Red",
        RGB = {0.858824,0.192157,0.192157},
        Offset = {163, -45},
        Archetype = "Imp",
        ArchetypeScale = 1.3
    },
    { --good dont change
        Name = "fate",
        Color = "Purple",
        RGB = {0.368627,0.192157,0.803922},
        Offset = {48, 69},
        SelectedScale = 1.29,
        Archetype = "Savage"
    },
    { --good dont change
        Name = "essence",
        Color = "Blue",
        RGB = {0.0980392,0.53333333,0.780392},
        Offset = {48, -223},
        Archetype = "Harp",
        ArchetypePosition = {700, 150}
    }
}

function RonTrader.SelectTeam(screen, teamId)
    local components = screen.Components

    local team = RonTrader.Teams[teamId]

    ModifyTextBox({ Id = components.NamePlate.Id, Text = team.Name })

    local symbolKey = "StarSymbol" .. team.Color
    for _, team in pairs(RonTrader.Teams) do
        local k = "StarSymbol" .. team.Color
        if k ~= symbolKey then
            SetScale({Id = components[k].Id, Fraction = 0.43, Duration = 0.1})
            SetAlpha({Id = components[k].Id, Fraction = 0.67, Duration = 0.1})
        end
    end
    SetScale({Id = components[symbolKey].Id, Fraction = team.SelectedScale or 0.86, Duration = 0.1})
    SetAlpha({Id = components[symbolKey].Id, Fraction = 1, Duration = 0.1})

    -- symbolKey = "StarSymbolBlue"
    -- SetScale({Id = components[symbolKey].Id, Fraction = 0.8, Duration = 3.0})
end
function RonTrader.CreateStarSymbols(screen)
	local components = screen.Components
    for _, team in pairs(RonTrader.Teams) do
        local symbolKey = "StarSymbol" .. team.Color
        components[symbolKey] = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.43, Group="RonTrader.Images", 
                                X = ScreenCenterX-325 + team.Offset[1],
                                Y = ScreenCenterY-125 + team.Offset[2]
                            })
        SetAnimation({ Name = "CaravanStarSymbol" .. team.Color, DestinationId = components[symbolKey].Id})
        SetAlpha({Id = components[symbolKey].Id, Fraction = 0.67, Duration = 0.1})
    end
end

function RonTrader.CreateSigilFlames(screen)
    local components = screen.Components

    components.FlameYellow = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.25, Group="RonTrader.Flames"})
	Attach({ Id = components.FlameYellow.Id, DestinationId = components.Background.Id, OffsetX = -395, OffsetY = 230 })
	SetAnimation({ Name = "ShadeNaked_Idle", DestinationId = components.FlameYellow.Id})
    SetColor({ Id = components.FlameYellow.Id, Color = {0.996078,0.92549,0.223529,0.5} })

    components.FlameYellowHighlight = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.5, Group="RonTrader.Flames"})
	Attach({ Id = components.FlameYellowHighlight.Id, DestinationId = components.Background.Id, OffsetX = -395, OffsetY = 250 })
    SetScaleY({Id = components.FlameYellowHighlight.Id, Fraction = 0.67})
	SetAnimation({ Name = "ShadeSpotlight", DestinationId = components.FlameYellowHighlight.Id})
    SetColor({ Id = components.FlameYellowHighlight.Id, Color = {0.996078,0.92549,0.223529,0.25} })

    components.FlameRed = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.25, Group="RonTrader.Flames"})
	Attach({ Id = components.FlameRed.Id, DestinationId = components.Background.Id, OffsetX = -322, OffsetY = 235 })
	SetAnimation({ Name = "ShadeNaked_Idle", DestinationId = components.FlameRed.Id})
    SetColor({ Id = components.FlameRed.Id, Color = {0.858824,0.192157,0.192157,0.5} })

    components.FlameRedHighlight = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.5, Group="RonTrader.Flames"})
	Attach({ Id = components.FlameRedHighlight.Id, DestinationId = components.Background.Id, OffsetX = -322, OffsetY = 255 })
    SetScaleY({Id = components.FlameRedHighlight.Id, Fraction = 0.67})
	SetAnimation({ Name = "ShadeSpotlight", DestinationId = components.FlameRedHighlight.Id})
    SetColor({ Id = components.FlameRedHighlight.Id, Color = {0.858824,0.192157,0.192157,0.5} })

    components.FlamePurple = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.25, Group="RonTrader.Flames"})
	Attach({ Id = components.FlamePurple.Id, DestinationId = components.Background.Id, OffsetX = -250, OffsetY = 227 })
	SetAnimation({ Name = "ShadeNaked_Idle", DestinationId = components.FlamePurple.Id})
    SetColor({ Id = components.FlamePurple.Id, Color = {0.368627,0.192157,0.803922,0.5} })

    components.FlamePurpleHighlight = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.5, Group="RonTrader.Flames"})
	Attach({ Id = components.FlamePurpleHighlight.Id, DestinationId = components.Background.Id, OffsetX = -250, OffsetY = 247 })
    SetScaleY({Id = components.FlamePurpleHighlight.Id, Fraction = 0.67})
	SetAnimation({ Name = "ShadeSpotlight", DestinationId = components.FlamePurpleHighlight.Id})
    SetColor({ Id = components.FlamePurpleHighlight.Id, Color = {0.368627,0.192157,0.803922,0.5} })

    components.FlameTeal = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.25, Group="RonTrader.Flames"})
	Attach({ Id = components.FlameTeal.Id, DestinationId = components.Background.Id, OffsetX = -217, OffsetY = 210 })
	SetAnimation({ Name = "ShadeNaked_Idle", DestinationId = components.FlameTeal.Id})
    SetColor({ Id = components.FlameTeal.Id, Color = {0.470588,0.756863,0.494118,0.5} })

    components.FlameTealHighlight = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.5, Group="RonTrader.Flames"})
	Attach({ Id = components.FlameTealHighlight.Id, DestinationId = components.Background.Id, OffsetX = -217, OffsetY = 230 })
    SetScaleY({Id = components.FlameTealHighlight.Id, Fraction = 0.67})
	SetAnimation({ Name = "ShadeSpotlight", DestinationId = components.FlameTealHighlight.Id})
    SetColor({ Id = components.FlameTealHighlight.Id, Color = {0.470588,0.756863,0.494118,0.5} })

    components.FlameOrange = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.25, Group="RonTrader.Flames"})
	Attach({ Id = components.FlameOrange.Id, DestinationId = components.Background.Id, OffsetX = -250, OffsetY = 187 })
	SetAnimation({ Name = "ShadeNaked_Idle", DestinationId = components.FlameOrange.Id})
    SetColor({ Id = components.FlameOrange.Id, Color = {0.596078,0.364706,0.066666667,0.5} })

    components.FlameOrangeHighlight = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.5, Group="RonTrader.Flames"})
	Attach({ Id = components.FlameOrangeHighlight.Id, DestinationId = components.Background.Id, OffsetX = -250, OffsetY = 207 })
    SetScaleY({Id = components.FlameOrangeHighlight.Id, Fraction = 0.67})
	SetAnimation({ Name = "ShadeSpotlight", DestinationId = components.FlameOrangeHighlight.Id})
    SetColor({ Id = components.FlameOrangeHighlight.Id, Color = {0.596078,0.364706,0.066666667,0.5} })

    components.FlameGreen = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.25, Group="RonTrader.Flames"})
	Attach({ Id = components.FlameGreen.Id, DestinationId = components.Background.Id, OffsetX = -322, OffsetY = 185 })
	SetAnimation({ Name = "ShadeNaked_Idle", DestinationId = components.FlameGreen.Id})
    SetColor({ Id = components.FlameGreen.Id, Color = {0.58039215686,0.83921568627,0.05882352941,0.5} })

    components.FlameGreenHighlight = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.5, Group="RonTrader.Flames"})
	Attach({ Id = components.FlameGreenHighlight.Id, DestinationId = components.Background.Id, OffsetX = -322, OffsetY = 205 })
    SetScaleY({Id = components.FlameGreenHighlight.Id, Fraction = 0.67})
	SetAnimation({ Name = "ShadeSpotlight", DestinationId = components.FlameGreenHighlight.Id})
    SetColor({ Id = components.FlameGreenHighlight.Id, Color = {0.58039215686,0.83921568627,0.05882352941,0.5} })

    components.FlamePink = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.25, Group="RonTrader.Flames"})
	Attach({ Id = components.FlamePink.Id, DestinationId = components.Background.Id, OffsetX = -395, OffsetY = 195 })
	SetAnimation({ Name = "ShadeNaked_Idle", DestinationId = components.FlamePink.Id})
    SetColor({ Id = components.FlamePink.Id, Color = {1.0,0.552941,0.984314,0.5} })

    components.FlamePinkHighlight = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.5, Group="RonTrader.Flames"})
	Attach({ Id = components.FlamePinkHighlight.Id, DestinationId = components.Background.Id, OffsetX = -395, OffsetY = 215 })
    SetScaleY({Id = components.FlamePinkHighlight.Id, Fraction = 0.67})
	SetAnimation({ Name = "ShadeSpotlight", DestinationId = components.FlamePinkHighlight.Id})
    SetColor({ Id = components.FlamePinkHighlight.Id, Color = {1.0,0.552941,0.984314,0.5} })

    components.FlameBlue = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.25, Group="RonTrader.Flames"})
	Attach({ Id = components.FlameBlue.Id, DestinationId = components.Background.Id, OffsetX = -435, OffsetY = 210 })
	SetAnimation({ Name = "ShadeNaked_Idle", DestinationId = components.FlameBlue.Id})
    SetColor({ Id = components.FlameBlue.Id, Color = {0.0980392,0.53333333,0.780392,0.5} })

    components.FlameBlueHighlight = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.5, Group="RonTrader.Flames"})
	Attach({ Id = components.FlameBlueHighlight.Id, DestinationId = components.Background.Id, OffsetX = -435, OffsetY = 230 })
    SetScaleY({Id = components.FlameBlue.Id, Fraction = 0.67})
	SetAnimation({ Name = "ShadeSpotlight", DestinationId = components.FlameBlueHighlight.Id})
    SetColor({ Id = components.FlameBlueHighlight.Id, Color = {0.0980392,0.53333333,0.780392,0.5} })
end

function RonTrader.CloseLoadoutMenu( screen, button )
	DisableShopGamepadCursor()
	SetConfigOption({ Name = "FreeFormSelectStepDistance", Value = 16 })
	SetConfigOption({ Name = "FreeFormSelectSuccessDistanceStep", Value = 8 })
	SetConfigOption({ Name = "FreeFormSelectRepeatDelay", Value = 0.0 })

	PlaySound({ Name = "/SFX/Menu Sounds/ContractorMenuClose" })
	CloseScreen( GetAllIds( screen.Components ) )

	UnfreezePlayerUnit()
	screen.KeepOpen = false
	OnScreenClosed({ Flag = screen.Name })
    ShowCombatUI("RonTrader")

end