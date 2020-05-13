-- SMB1 OSD script

-- go to the bottom of the file to disable the top bar / enemy bar

-- These are just a bunch of named memory values for everything smb happens to use, skip down about 450 lines
ObjectOffset           = 0x08
FrameCounter           = 0x09
SavedJoypadBits        = 0x06fc
SavedJoypad1Bits       = 0x06fc
SavedJoypad2Bits       = 0x06fd
JoypadBitMask          = 0x074a
JoypadOverride         = 0x0758
A_B_Buttons            = 0x0a
PreviousA_B_Buttons    = 0x0d
Up_Down_Buttons        = 0x0b
Left_Right_Buttons     = 0x0c
GameEngineSubroutine   = 0x0e
Mirror_PPU_CTRL_REG1   = 0x0778
Mirror_PPU_CTRL_REG2   = 0x0779
OperMode               = 0x0770
OperMode_Task          = 0x0772
ScreenRoutineTask      = 0x073c
GamePauseStatus        = 0x0776
GamePauseTimer         = 0x0777
DemoAction             = 0x0717
DemoActionTimer        = 0x0718
TimerControl           = 0x0747
IntervalTimerControl   = 0x077f
Timers                 = 0x0780
SelectTimer            = 0x0780
PlayerAnimTimer        = 0x0781
JumpSwimTimer          = 0x0782
RunningTimer           = 0x0783
BlockBounceTimer       = 0x0784
SideCollisionTimer     = 0x0785
JumpspringTimer        = 0x0786
GameTimerCtrlTimer     = 0x0787
ClimbSideTimer         = 0x0789
EnemyFrameTimer        = 0x078a
FrenzyEnemyTimer       = 0x078f
BowserFireBreathTimer  = 0x0790
StompTimer             = 0x0791
AirBubbleTimer         = 0x0792
ScrollIntervalTimer    = 0x0795
EnemyIntervalTimer     = 0x0796
BrickCoinTimer         = 0x079d
InjuryTimer            = 0x079e
StarInvincibleTimer    = 0x079f
ScreenTimer            = 0x07a0
WorldEndTimer          = 0x07a1
DemoTimer              = 0x07a2
Sprite_Data            = 0x0200
Sprite_Y_Position      = 0x0200
Sprite_Tilenumber      = 0x0201
Sprite_Attributes      = 0x0202
Sprite_X_Position      = 0x0203
ScreenEdge_PageLoc     = 0x071a
ScreenEdge_X_Pos       = 0x071c
ScreenLeft_PageLoc     = 0x071a
ScreenRight_PageLoc    = 0x071b
ScreenLeft_X_Pos       = 0x071c
ScreenRight_X_Pos      = 0x071d
PlayerFacingDir        = 0x33
DestinationPageLoc     = 0x34
VictoryWalkControl     = 0x35
ScrollFractional       = 0x0768
PrimaryMsgCounter      = 0x0719
SecondaryMsgCounter    = 0x0749
HorizontalScroll       = 0x073f
VerticalScroll         = 0x0740
ScrollLock             = 0x0723
ScrollThirtyTwo        = 0x073d
Player_X_Scroll        = 0x06ff
Player_Pos_ForScroll   = 0x0755
ScrollAmount           = 0x0775
AreaData               = 0xe7
AreaDataLow            = 0xe7
AreaDataHigh           = 0xe8
EnemyData              = 0xe9
EnemyDataLow           = 0xe9
EnemyDataHigh          = 0xea
AreaParserTaskNum      = 0x071f
ColumnSets             = 0x071e
CurrentPageLoc         = 0x0725
CurrentColumnPos       = 0x0726
BackloadingFlag        = 0x0728
BehindAreaParserFlag   = 0x0729
AreaObjectPageLoc      = 0x072a
AreaObjectPageSel      = 0x072b
AreaDataOffset         = 0x072c
AreaObjOffsetBuffer    = 0x072d
AreaObjectLength       = 0x0730
StaircaseControl       = 0x0734
AreaObjectHeight       = 0x0735
MushroomLedgeHalfLen   = 0x0736
EnemyDataOffset        = 0x0739
EnemyObjectPageLoc     = 0x073a
EnemyObjectPageSel     = 0x073b
MetatileBuffer         = 0x06a1
BlockBufferColumnPos   = 0x06a0
CurrentNTAddr_Low      = 0x0721
CurrentNTAddr_High     = 0x0720
AttributeBuffer        = 0x03f9
LoopCommand            = 0x0745
DisplayDigits          = 0x07d7
TopScoreDisplay        = 0x07d7
ScoreAndCoinDisplay    = 0x07dd
PlayerScoreDisplay     = 0x07dd
GameTimerDisplay       = 0x07f8
DigitModifier          = 0x0134
VerticalFlipFlag       = 0x0109
FloateyNum_Control     = 0x0110
ShellChainCounter      = 0x0125
FloateyNum_Timer       = 0x012c
FloateyNum_X_Pos       = 0x0117
FloateyNum_Y_Pos       = 0x011e
FlagpoleFNum_Y_Pos     = 0x010d
FlagpoleFNum_YMFDummy  = 0x010e
FlagpoleScore          = 0x010f
FlagpoleCollisionYPos  = 0x070f
StompChainCounter      = 0x0484
VRAM_Buffer1_Offset    = 0x0300
VRAM_Buffer1           = 0x0301
VRAM_Buffer2_Offset    = 0x0340
VRAM_Buffer2           = 0x0341
VRAM_Buffer_AddrCtrl   = 0x0773
Sprite0HitDetectFlag   = 0x0722
DisableScreenFlag      = 0x0774
DisableIntermediate    = 0x0769
ColorRotateOffset      = 0x06d4
TerrainControl         = 0x0727
AreaStyle              = 0x0733
ForegroundScenery      = 0x0741
BackgroundScenery      = 0x0742
CloudTypeOverride      = 0x0743
BackgroundColorCtrl    = 0x0744
AreaType               = 0x074e
AreaAddrsLOffset       = 0x074f
AreaPointer            = 0x0750
PlayerEntranceCtrl     = 0x0710
GameTimerSetting       = 0x0715
AltEntranceControl     = 0x0752
EntrancePage           = 0x0751
NumberOfPlayers        = 0x077a
WarpZoneControl        = 0x06d6
ChangeAreaTimer        = 0x06de
MultiLoopCorrectCntr   = 0x06d9
MultiLoopPassCntr      = 0x06da
FetchNewGameTimerFlag  = 0x0757
GameTimerExpiredFlag   = 0x0759
PrimaryHardMode        = 0x076a
SecondaryHardMode      = 0x06cc
WorldSelectNumber      = 0x076b
WorldSelectEnableFlag  = 0x07fc
ContinueWorld          = 0x07fd
CurrentPlayer          = 0x0753
PlayerSize             = 0x0754
PlayerStatus           = 0x0756
OnscreenPlayerInfo     = 0x075a
NumberofLives          = 0x075a --;used by current player
HalfwayPage            = 0x075b
LevelNumber            = 0x075c --;the actual dash number
Hidden1UpFlag          = 0x075d
CoinTally              = 0x075e
WorldNumber            = 0x075f
AreaNumber             = 0x0760 --;internal number used to find areas
CoinTallyFor1Ups       = 0x0748
OffscreenPlayerInfo    = 0x0761
OffScr_NumberofLives   = 0x0761 --;used by offscreen player
OffScr_HalfwayPage     = 0x0762
OffScr_LevelNumber     = 0x0763
OffScr_Hidden1UpFlag   = 0x0764
OffScr_CoinTally       = 0x0765
OffScr_WorldNumber     = 0x0766
OffScr_AreaNumber      = 0x0767
BalPlatformAlignment   = 0x03a0
Platform_X_Scroll      = 0x03a1
PlatformCollisionFlag  = 0x03a2
YPlatformTopYPos       = 0x0401
YPlatformCenterYPos    = 0x58
BrickCoinTimerFlag     = 0x06bc
StarFlagTaskControl    = 0x0746
PseudoRandomBitReg     = 0x07a7
WarmBootValidation     = 0x07ff
SprShuffleAmtOffset    = 0x06e0
SprShuffleAmt          = 0x06e1
SprDataOffset          = 0x06e4
Player_SprDataOffset   = 0x06e4
Enemy_SprDataOffset    = 0x06e5
Block_SprDataOffset    = 0x06ec
Alt_SprDataOffset      = 0x06ec
Bubble_SprDataOffset   = 0x06ee
FBall_SprDataOffset    = 0x06f1
Misc_SprDataOffset     = 0x06f3
SprDataOffset_Ctrl     = 0x03ee
Player_State           = 0x1d
Enemy_State            = 0x1e
Fireball_State         = 0x24
Block_State            = 0x26
Misc_State             = 0x2a
Player_MovingDir       = 0x45
Enemy_MovingDir        = 0x46
SprObject_X_Speed      = 0x57
Player_X_Speed         = 0x57
Enemy_X_Speed          = 0x58
Fireball_X_Speed       = 0x5e
Block_X_Speed          = 0x60
Misc_X_Speed           = 0x64
Jumpspring_FixedYPos   = 0x58
JumpspringAnimCtrl     = 0x070e
JumpspringForce        = 0x06db
SprObject_PageLoc      = 0x6d
Player_PageLoc         = 0x6d
Enemy_PageLoc          = 0x6e
Fireball_PageLoc       = 0x74
Block_PageLoc          = 0x76
Misc_PageLoc           = 0x7a
Bubble_PageLoc         = 0x83
SprObject_X_Position   = 0x86
Player_X_Position      = 0x86
Enemy_X_Position       = 0x87
Fireball_X_Position    = 0x8d
Block_X_Position       = 0x8f
Misc_X_Position        = 0x93
Bubble_X_Position      = 0x9c
SprObject_Y_Speed      = 0x9f
Player_Y_Speed         = 0x9f
Enemy_Y_Speed          = 0xa0
Fireball_Y_Speed       = 0xa6
Block_Y_Speed          = 0xa8
Misc_Y_Speed           = 0xac
SprObject_Y_HighPos    = 0xb5
Player_Y_HighPos       = 0xb5
Enemy_Y_HighPos        = 0xb6
Fireball_Y_HighPos     = 0xbc
Block_Y_HighPos        = 0xbe
Misc_Y_HighPos         = 0xc2
Bubble_Y_HighPos       = 0xcb
SprObject_Y_Position   = 0xce
Player_Y_Position      = 0xce
Enemy_Y_Position       = 0xcf
Fireball_Y_Position    = 0xd5
Block_Y_Position       = 0xd7
Misc_Y_Position        = 0xdb
Bubble_Y_Position      = 0xe4
SprObject_Rel_XPos     = 0x03ad
Player_Rel_XPos        = 0x03ad
Enemy_Rel_XPos         = 0x03ae
Fireball_Rel_XPos      = 0x03af
Bubble_Rel_XPos        = 0x03b0
Block_Rel_XPos         = 0x03b1
Misc_Rel_XPos          = 0x03b3
SprObject_Rel_YPos     = 0x03b8
Player_Rel_YPos        = 0x03b8
Enemy_Rel_YPos         = 0x03b9
Fireball_Rel_YPos      = 0x03ba
Bubble_Rel_YPos        = 0x03bb
Block_Rel_YPos         = 0x03bc
Misc_Rel_YPos          = 0x03be
SprObject_SprAttrib    = 0x03c4
Player_SprAttrib       = 0x03c4
Enemy_SprAttrib        = 0x03c5
SprObject_X_MoveForce  = 0x0400
Enemy_X_MoveForce      = 0x0401
SprObject_YMF_Dummy    = 0x0416
Player_YMF_Dummy       = 0x0416
Enemy_YMF_Dummy        = 0x0417
Bubble_YMF_Dummy       = 0x042c
SprObject_Y_MoveForce  = 0x0433
Player_Y_MoveForce     = 0x0433
Enemy_Y_MoveForce      = 0x0434
Block_Y_MoveForce      = 0x043c
DisableCollisionDet    = 0x0716
Player_CollisionBits   = 0x0490
Enemy_CollisionBits    = 0x0491
SprObj_BoundBoxCtrl    = 0x0499
Player_BoundBoxCtrl    = 0x0499
Enemy_BoundBoxCtrl     = 0x049a
Fireball_BoundBoxCtrl  = 0x04a0
Misc_BoundBoxCtrl      = 0x04a2
EnemyFrenzyBuffer      = 0x06cb
EnemyFrenzyQueue       = 0x06cd
Enemy_Flag             = 0x0f
Enemy_ID               = 0x16
PlayerGfxOffset        = 0x06d5
Player_XSpeedAbsolute  = 0x0700
FrictionAdderHigh      = 0x0701
FrictionAdderLow       = 0x0702
RunningSpeed           = 0x0703
SwimmingFlag           = 0x0704
Player_X_MoveForce     = 0x0705
DiffToHaltJump         = 0x0706
JumpOrigin_Y_HighPos   = 0x0707
JumpOrigin_Y_Position  = 0x0708
VerticalForce          = 0x0709
VerticalForceDown      = 0x070a
PlayerChangeSizeFlag   = 0x070b
PlayerAnimTimerSet     = 0x070c
PlayerAnimCtrl         = 0x070d
DeathMusicLoaded       = 0x0712
FlagpoleSoundQueue     = 0x0713
CrouchingFlag          = 0x0714
MaximumLeftSpeed       = 0x0450
MaximumRightSpeed      = 0x0456
SprObject_OffscrBits   = 0x03d0
Player_OffscreenBits   = 0x03d0
Enemy_OffscreenBits    = 0x03d1
FBall_OffscreenBits    = 0x03d2
Bubble_OffscreenBits   = 0x03d3
Block_OffscreenBits    = 0x03d4
Misc_OffscreenBits     = 0x03d6
EnemyOffscrBitsMasked  = 0x03d8
Cannon_Offset          = 0x046a
Cannon_PageLoc         = 0x046b
Cannon_X_Position      = 0x0471
Cannon_Y_Position      = 0x0477
Cannon_Timer           = 0x047d
Whirlpool_Offset       = 0x046a
Whirlpool_PageLoc      = 0x046b
Whirlpool_LeftExtent   = 0x0471
Whirlpool_Length       = 0x0477
Whirlpool_Flag         = 0x047d
VineFlagOffset         = 0x0398
VineHeight             = 0x0399
VineObjOffset          = 0x039a
VineStart_Y_Position   = 0x039d
Block_Orig_YPos        = 0x03e4
Block_BBuf_Low         = 0x03e6
Block_Metatile         = 0x03e8
Block_PageLoc2         = 0x03ea
Block_RepFlag          = 0x03ec
Block_ResidualCounter  = 0x03f0
Block_Orig_XPos        = 0x03f1
BoundingBox_UL_XPos    = 0x04ac
BoundingBox_UL_YPos    = 0x04ad
BoundingBox_DR_XPos    = 0x04ae
BoundingBox_DR_YPos    = 0x04af
BoundingBox_UL_Corner  = 0x04ac
BoundingBox_LR_Corner  = 0x04ae
EnemyBoundingBoxCoord  = 0x04b0
PowerUpType            = 0x39
FireballBouncingFlag   = 0x3a
FireballCounter        = 0x06ce
FireballThrowingTimer  = 0x0711
HammerEnemyOffset      = 0x06ae
JumpCoinMiscOffset     = 0x06b7
Block_Buffer_1         = 0x0500
Block_Buffer_2         = 0x05d0
HammerThrowingTimer    = 0x03a2
HammerBroJumpTimer     = 0x3c
Misc_Collision_Flag    = 0x06be
RedPTroopaOrigXPos     = 0x0401
RedPTroopaCenterYPos   = 0x58
XMovePrimaryCounter    = 0xa0
XMoveSecondaryCounter  = 0x58
CheepCheepMoveMFlag    = 0x58
CheepCheepOrigYPos     = 0x0434
BitMFilter             = 0x06dd
LakituReappearTimer    = 0x06d1
LakituMoveSpeed        = 0x58
LakituMoveDirection    = 0xa0
FirebarSpinState_Low   = 0x58
FirebarSpinState_High  = 0xa0
FirebarSpinSpeed       = 0x0388
FirebarSpinDirection   = 0x34
DuplicateObj_Offset    = 0x06cf
NumberofGroupEnemies   = 0x06d3
BlooperMoveCounter     = 0xa0
BlooperMoveSpeed       = 0x58
BowserBodyControls     = 0x0363
BowserFeetCounter      = 0x0364
BowserMovementSpeed    = 0x0365
BowserOrigXPos         = 0x0366
BowserFlameTimerCtrl   = 0x0367
BowserFront_Offset     = 0x0368
BridgeCollapseOffset   = 0x0369
BowserGfxFlag          = 0x036a
BowserHitPoints        = 0x0483
MaxRangeFromOrigin     = 0x06dc
BowserFlamePRandomOfs  = 0x0417
PiranhaPlantUpYPos     = 0x0417
PiranhaPlantDownYPos   = 0x0434
PiranhaPlant_Y_Speed   = 0x58
PiranhaPlant_MoveFlag  = 0xa0
FireworksCounter       = 0x06d7
ExplosionGfxCounter    = 0x58
ExplosionTimerCounter  = 0xa0
Squ2_NoteLenBuffer     = 0x07b3
Squ2_NoteLenCounter    = 0x07b4
Squ2_EnvelopeDataCtrl  = 0x07b5
Squ1_NoteLenCounter    = 0x07b6
Squ1_EnvelopeDataCtrl  = 0x07b7
Tri_NoteLenBuffer      = 0x07b8
Tri_NoteLenCounter     = 0x07b9
Noise_BeatLenCounter   = 0x07ba
Squ1_SfxLenCounter     = 0x07bb
Squ2_SfxLenCounter     = 0x07bd
Sfx_SecondaryCounter   = 0x07be
Noise_SfxLenCounter    = 0x07bf
PauseSoundQueue        = 0xfa
Square1SoundQueue      = 0xff
Square2SoundQueue      = 0xfe
NoiseSoundQueue        = 0xfd
AreaMusicQueue         = 0xfb
EventMusicQueue        = 0xfc
Square1SoundBuffer     = 0xf1
Square2SoundBuffer     = 0xf2
NoiseSoundBuffer       = 0xf3
AreaMusicBuffer        = 0xf4
EventMusicBuffer       = 0x07b1
PauseSoundBuffer       = 0x07b2
MusicData              = 0xf5
MusicDataLow           = 0xf5
MusicDataHigh          = 0xf6
MusicOffset_Square2    = 0xf7
MusicOffset_Square1    = 0xf8
MusicOffset_Triangle   = 0xf9
MusicOffset_Noise      = 0x07b0
NoteLenLookupTblOfs    = 0xf0
DAC_Counter            = 0x07c0
NoiseDataLoopbackOfs   = 0x07c1
NoteLengthTblAdder     = 0x07c4
AreaMusicBuffer_Alt    = 0x07c5
PauseModeFlag          = 0x07c6
GroundMusicHeaderOfs   = 0x07c7
AltRegContentFlag      = 0x07ca
GreenKoopa             = 0x00
BuzzyBeetle            = 0x02
RedKoopa               = 0x03
HammerBro              = 0x05
Goomba                 = 0x06
Bloober                = 0x07
BulletBill_FrenzyVar   = 0x08
GreyCheepCheep         = 0x0a
RedCheepCheep          = 0x0b
Podoboo                = 0x0c
PiranhaPlant           = 0x0d
GreenParatroopaJump    = 0x0e
RedParatroopa          = 0x0f
GreenParatroopaFly     = 0x10
Lakitu                 = 0x11
Spiny                  = 0x12
FlyCheepCheepFrenzy    = 0x14
FlyingCheepCheep       = 0x14
BowserFlame            = 0x15
Fireworks              = 0x16
BBill_CCheep_Frenzy    = 0x17
Stop_Frenzy            = 0x18
Bowser                 = 0x2d
PowerUpObject          = 0x2e
VineObject             = 0x2f
FlagpoleFlagObject     = 0x30
StarFlagObject         = 0x31
JumpspringObject       = 0x32
BulletBill_CannonVar   = 0x33
RetainerObject         = 0x35
TallEnemy              = 0x09


function max(a, b)
	if a > b then
		return a
	end
	return b
end

function min(a, b)
	if a > b then
		return b
	end
	return a
end


-- Map every Enemy_Id type to a unique name
ObjectNames = {}
ObjectNames[0x00] = "GreenKoopa";
ObjectNames[0x02] = "BuzzyBeetle";
ObjectNames[0x03] = "RedKoopa";
ObjectNames[0x05] = "HammerBro";
ObjectNames[0x06] = "Goomba";
ObjectNames[0x07] = "Bloober";
ObjectNames[0x08] = "BulletBill_FrenzyVar";
ObjectNames[0x0a] = "GreyCheepCheep";
ObjectNames[0x0b] = "RedCheepCheep";
ObjectNames[0x0c] = "Podoboo";
ObjectNames[0x0d] = "PiranhaPlant";
ObjectNames[0x0e] = "GreenParatroopaJump";
ObjectNames[0x0f] = "RedParatroopa";
ObjectNames[0x10] = "GreenParatroopaFly";
ObjectNames[0x11] = "Lakitu";
ObjectNames[0x12] = "Spiny";
ObjectNames[0x14] = "FlyCheepCheepFrenzy";
ObjectNames[0x14] = "FlyingCheepCheep";
ObjectNames[0x15] = "BowserFlame";
ObjectNames[0x16] = "Fireworks";
ObjectNames[0x17] = "BBill_CCheep_Frenzy";
ObjectNames[0x18] = "Stop_Frenzy";
ObjectNames[0x2d] = "Bowser";
ObjectNames[0x2e] = "PowerUpObject";
ObjectNames[0x2f] = "VineObject";
ObjectNames[0x30] = "FlagpoleFlagObject";
ObjectNames[0x31] = "StarFlagObject";
ObjectNames[0x32] = "JumpspringObject";
ObjectNames[0x33] = "BulletBill_CannonVar";
ObjectNames[0x35] = "RetainerObject";

function DisplayObjects(Y)
	-- loop through every enemy slot
	for enemy=0,5,1 do
		local color = "#ffffff"
		if memory.readbyte(Enemy_Flag + enemy) == 0 then
			-- if object active flag is 0, gray out the text
			color = "#999999"
		else
			-- find object position compared to screen position
			local enemyloc = memory.readbyte(Enemy_PageLoc + enemy) - memory.readbyte(ScreenLeft_PageLoc)
			local enemyx = min(0xFF, max(-2, 0xFF * (memory.readbyte(Enemy_PageLoc + enemy) - memory.readbyte(ScreenLeft_PageLoc)) - (memory.readbyte(ScreenLeft_X_Pos) - memory.readbyte(Enemy_X_Position + enemy))))
			local enemyy = min(0xFF, max(-2, memory.readbyte(Enemy_Y_Position + enemy) + 8))
			-- draw object id on enemy, or at the side of the screen
			gui.text(enemyx, enemyy, string.format("%d", enemy))
		end
		-- get the name of the object from the object list
		local name = ObjectNames[memory.readbyte(Enemy_ID + enemy)] or ""
		-- draw list of objects
		gui.text(0,Y + (enemy * 8),string.format("%d: %s", enemy, name), color)
	end
end

-- show top info bar
chars = "0123456789ABCDEFGHIJKLMNOP"
StarFlagTaskControlDisplay = -1
ScreenRoutineTaskDisplay = -1
ScreenEnterDisplay = 0
function DisplayPlayerInfo(Y)
	local vSprObject_Rel_XPos    = memory.readbyte(SprObject_Rel_XPos)
	local vSprObject_Y_MoveForce = memory.readbyte(SprObject_Y_MoveForce)
	local vSprObject_X_MoveForce = memory.readbyte(SprObject_X_MoveForce)
	local vSprObject_X_Position  = memory.readbyte(SprObject_X_Position)
	local vSprObject_PageLoc     = memory.readbyte(SprObject_PageLoc)
	local vSprObject_Y_Position  = memory.readbyte(SprObject_Y_Position)
	local vSprObject_X_Speed     = memory.readbyte(SprObject_X_Speed)
	local vSprObject_Y_Speed     = memory.readbyte(SprObject_Y_Speed)
	local vSprObject_Y_HighPos   = memory.readbyte(SprObject_Y_HighPos)
	local vPlayer_X_MoveForce    = memory.readbyte(Player_X_MoveForce)
	local vOperMode_Task         = memory.readbyte(OperMode_Task)
	local vStarFlagTaskControl   = memory.readbyte(StarFlagTaskControl)
	local vIntervalTimerControl  = memory.readbyte(IntervalTimerControl)
	local vScreenRoutineTask     = memory.readbyte(ScreenRoutineTask)

	-- Sockfolder number
	local sock = bit.lshift(vSprObject_PageLoc, 16)
		+ bit.lshift(vSprObject_X_Position, 8)
		+ vSprObject_X_MoveForce
		+ (bit.rshift(0xFF - vSprObject_Y_Position, 2) * 0x280)
	gui.text(0, Y, string.format('%06X', sock))

	-- Show interval timer remains counter at end of level
	if vStarFlagTaskControl == 0x4 then
		if StarFlagTaskControlDisplay == -1 then
			StarFlagTaskControlDisplay = vIntervalTimerControl
		end
		gui.text(0,Y+32,string.format("R:%02d", StarFlagTaskControlDisplay))
	else
		StarFlagTaskControlDisplay = -1
	end

	-- Show itnerval timer remains counter on warp zone transitions
	if vScreenRoutineTask == 0x7 then
		if ScreenRoutineTaskDisplay == -1 then
			ScreenRoutineTaskDisplay = vIntervalTimerControl
		end
		gui.text(0,Y+32,string.format("R:%02d", ScreenRoutineTaskDisplay))
	else
		ScreenRoutineTaskDisplay = -1
	end

	-- Update enter frame on area transition
	if vScreenRoutineTask == 0x4 and vOperMode_Task == 0x1 then
		ScreenEnterDisplay = string.sub(chars, vIntervalTimerControl + 1, vIntervalTimerControl + 1)
	end
	gui.text(0,Y+24,string.format("X:%s", ScreenEnterDisplay))

	-- Show screen scroll
	gui.text(0,Y+8,string.format("S:%02d", vSprObject_Rel_XPos))
	-- Show the players secondary moveforce (sprobject_x_moveforce is used for standard physics, secondary is used for player specific physics)
	gui.text(0,Y+16,string.format("F:%02X", vPlayer_X_MoveForce))
end

function OnFrame()
	-- Comment this out to hide the 'top bar' of player movement info
	DisplayPlayerInfo(0)
	
	-- Comment this out to hide the list of loaded objects
	-- DisplayObjects(48)
end

emu.registerafter(OnFrame)
