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
    RonTrader.LoadCaravan(triggerArgs)
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

function RonTrader.OpenLoadoutMenu(triggerArgs)
    local screen = { Components = {} }
	screen.Name = "RonTrader.Loadout"

	if IsScreenOpen( screen.Name ) then
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
	SetColor({ Id = components.BackgroundDim.Id, Color = {0, 0, 0, 0.66} })
	components.Background = CreateScreenComponent({ Name = "rectangle01", Group = "RonTrader.Backing" })
	SetColor({ Id = components.Background.Id, Color = {0, 0, 0, 0} })


    components.CloseButton = CreateScreenComponent({ Name = "ButtonClose", Group = "RonTrader.Buttons", Scale = 0.7 })
	Attach({ Id = components.CloseButton.Id, DestinationId = components.Background.Id, OffsetX = 0, OffsetY = 440 })
	components.CloseButton.OnPressedFunctionName = "RonTrader.CloseLoadoutMenu"
    components.CloseButton.ControlHotkey = "Cancel"

    components.Bookbase = CreateScreenComponent({ Name = "CaravanBookBase",Scale = 0.5, Group="RonTrader.Images"})
    SetScaleY({ Id = components.Bookbase.Id, Fraction = 0.6})
    SetScaleX({ Id = components.Bookbase.Id, Fraction = 1})
	Attach({ Id = components.Bookbase.Id, DestinationId = components.Background.Id, OffsetX = 0, OffsetY = 250 })

    components.StarSymbol = CreateScreenComponent({ Name = "BlankObstacle", Scale = 0.4, Group="RonTrader.Images"})
	Attach({ Id = components.StarSymbol.Id, DestinationId = components.Background.Id, OffsetX = 0, OffsetY = -125 })
	SetAnimation({ Name = "CaravanStarSymbol", DestinationId = components.StarSymbol.Id})
   
    thread( HandleWASDInput, screen )
	HandleScreenInput( screen )
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