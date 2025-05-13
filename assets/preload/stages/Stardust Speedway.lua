local bgSpeed = 55
local skyX = -600
local songsEnabled = {'Prey'}
local preyStage = {}
local foundedSong = false
local state = 0
function onCreate()

	for songsEnabledLength = 1,#songsEnabled do
		if songName == songsEnabled[songsEnabledLength]  then
			foundedSong = true
		end
	end
	for starvedBg = 0,2 do
		if starvedBg == 0 then
			makeLuaSprite('StarvedBG'..starvedBg,'EXE/Bodrionic.exe/starved/stardustBg',skyX,-1100)
			makeLuaSprite('StarvedGround'..starvedBg,'EXE/Bodrionic.exe/starved/stardustFloor',skyX,-1465)
		else
			makeLuaSprite('StarvedBG'..starvedBg,'EXE/Bodrionic.exe/starved/stardustBg',getProperty('StarvedBG0.width') * starvedBg,-1100)
			makeLuaSprite('StarvedGround'..starvedBg,'EXE/Bodrionic.exe/starved/stardustFloor',getProperty('StarvedGround0.width') * starvedBg,-1465)
		end
		table.insert(preyStage,'StarvedBG'..starvedBg)
		table.insert(preyStage,'StarvedGround'..starvedBg)
		addLuaSprite('StarvedBG'..starvedBg)
		addLuaSprite('StarvedGround'..starvedBg,true)
		if foundedSong == true and curBeat < 32 then
			setProperty('StarvedBG'..starvedBg..'.visible',false)
			setProperty('StarvedGround'..starvedBg..'.visible',false)
		end
	end
end

function onUpdate()
	if curBeat < 32 and foundedSong == true then
		setProperty('boyfriend.alpha',0.25 * state)
		setProperty('gf.alpha',0.25 * state)
		setProperty('dad.alpha',0.25 * state)
	end
	if getProperty('boyfriend.curCharacter') == 'Peelout Sonic Pixel' then
		bgSpeed = 85
	end
	for bgCount = 0,2 do
		setProperty('StarvedBG'..bgCount..'.x',getProperty('StarvedBG'..bgCount..'.x') - (bgSpeed/2))
		setProperty('StarvedGround'..bgCount..'.x',getProperty('StarvedGround'..bgCount..'.x') - bgSpeed)
	end
	if getProperty('StarvedBG1.x') < skyX - getProperty('StarvedBG1.width') then
		for backPosition = 0,2 do
			setProperty('StarvedBG'..backPosition..'.x',skyX + (getProperty('StarvedBG'..backPosition..'.width') * backPosition))
		end
	end
	if getProperty('StarvedGround1.x') < skyX - getProperty('StarvedGround0.width')then
		for backGroundPosition = 0,2 do
			setProperty('StarvedGround'..backGroundPosition..'.x',-600 + (getProperty('StarvedGround'..backGroundPosition..'.width') * backGroundPosition))
		end
	end
end
function onBeatHit()
	if curBeat % 8 == 0 and foundedSong == true then
		if curBeat < 32 then
			state = state + 1
			triggerEvent('Add Camera Zoom','','0')
		end
		if curBeat == 32 then
			setProperty('boyfriend.alpha',1)
			setProperty('gf.alpha',1)
			setProperty('dad.alpha',1)
			for starvedBg = 0,2 do
				setProperty('StarvedBG'..starvedBg..'.visible',true)
				setProperty('StarvedGround'..starvedBg..'.visible',true)
			end
		end
		if curStep == 3367 then
			for stageLength = 1,#preyStage do
				removeLuaSprite(preyStage[stageLength],true)
			end
		end
	end
end