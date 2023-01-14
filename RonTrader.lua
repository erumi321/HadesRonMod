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
	LoadMap({ Name = "CaravanInterior"})



	-- LoadMap({ Name = "DeathAreaBedroom" })
	-- DeathAreaSwitchRoom(triggerArgs, { Name = "CaravanInterior", ResetBinks = true, ResetWeaponBinks = true })
    -- DeathAreaSwitchRoom(triggerArgs,  { Name = "CaravanInterior" })
end

OnAnyLoad{"CaravanInterior", function(triggerArgs)
    RonTrader.StartCaravanPresentation(CurrentRun, CurrentRun.CurrentRoom)
end}

OnControlPressed{"Shout", function(triggerArgs)
    RonTrader.LoadCaravan(triggerArgs)
end}

function RonTrader.StartCaravanPresentation( currentRun, currentRoom, metaPointsAwarded )
	ShowingCombatUI = nil
	ZeroMouseTether( "StartRoomPresentation" )
	local prevRoom = GetPreviousRoom( currentRun )

	-- SetConfigOption({ Name = "FullscreenEffectGroup", Value = currentRoom.FullscreenEffectGroup or "Vignette" })

	GatherRoomPresentationObjects( currentRun, currentRoom )

	-- if currentRoom.CameraZoomWeights ~= nil then
	-- 	for id, weight in pairs( currentRoom.CameraZoomWeights ) do
	-- 		SetCameraZoomWeight({ Id = id, Weight = weight, ZoomSpeed = 1.0 })
	-- 	end
	-- end

	local roomIntroSequenceDuration = currentRoom.IntroSequenceDuration or 0.8
	if not currentRoom.IgnoreClamps then
		local cameraClamps = currentRoom.CameraClamps or GetDefaultClampIds()
		DebugAssert({ Condition = #cameraClamps ~= 1, Text = "Exactly one camera clamp on a map is non-sensical" })
		SetCameraClamp({ Ids = cameraClamps, SoftClamp = currentRoom.SoftClamp })
	end

	if currentRoom.CameraStartPoint ~= nil and currentRoom.CameraStartPoint > 0 then
		LockCamera({ Id = currentRoom.CameraStartPoint, Duration = 0 })
	else
		LockCamera({ Id = currentRun.Hero.ObjectId })
	end
	if currentRoom.HeroStartPoint ~= nil then
		Teleport({ Id = currentRun.Hero.ObjectId, DestinationId = currentRoom.HeroStartPoint })
	end

	-- StartRoomAmbience( currentRun, currentRoom )
	thread( StartRoomMusic, currentRun, currentRoom )

	if AsphodelBoatSoundId ~= nil and currentRoom.EntranceFunctionName ~= "AsphodelEnterRoomPresentation" and currentRoom.EntranceFunctionName ~= "RoomEntranceBossHydra" then -- @hack
		--DebugPrint({ Text = "Stopping AsphodelBoatSoundId for currentRoom.EntranceFunctionName = "..tostring(currentRoom.EntranceFunctionName) })
		StopSound({ Id = AsphodelBoatSoundId, Duration = 0.2 })
		AsphodelBoatSoundId = nil
	end

    SetUnitProperty({ DestinationId = currentRun.Hero.ObjectId, Property = "CollideWithObstacles", Value = false })
    SetUnitProperty({ DestinationId = currentRun.Hero.ObjectId, Property = "CollideWithUnits", Value = false })

    thread( MoveHeroToRoomPosition, { DestinationId = currentRoom.HeroEndPoint, DisableCollision =  true, UseDefaultSpeed = true } )
    AdjustZoom({ Fraction = 1.25, LerpTime = 0, CaravanZoomOverride = true})

	TeleportCursor({ OffsetX = ScreenCenterX, OffsetY = ScreenCenterY })
end

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