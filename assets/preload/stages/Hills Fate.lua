local xx = 800
local yy = -200
local xx2 = 800
local yy2 = -200
local ofs = 30
local followchars = true

function onCreate()
    setProperty('defaultCamZoom', 0.8)
    makeLuaSprite('StartSky', 'EXE/Bodrionic.exe/LordXStage/CyclesBG/Sky', -1000, -700)
	setLuaSpriteScrollFactor('StartSky', 0.25, 0.25)
    scaleObject('StartSky', 1, 1)

    makeLuaSprite('StartMoon', 'EXE/Bodrionic.exe/LordXStage/CyclesBG/EyeMoon', -1000, -600)
	setLuaSpriteScrollFactor('StartMoon', 0.25, 0.25)
    scaleObject('StartMoon', 1, 1)

    makeLuaSprite('StartHill', 'EXE/Bodrionic.exe/LordXStage/CyclesBG/Mountains', -1000, -600)
	setLuaSpriteScrollFactor('StartHill', 0.5, 0.5)
    scaleObject('StartHill', 1, 1)

    makeAnimatedLuaSprite('StartWater','EXE/Bodrionic.exe/LordXStage/CyclesBG/WaterAnim', -1015, 400)
	addAnimationByPrefix('StartWater', 'Corriente', 'WaterAnim' , 24, true)
	objectPlayAnimation('StartWater','Corriente' ,true)
    setLuaSpriteScrollFactor('StartWater', 0.5, 0.5)
    scaleObject('StartWater', 1.15, 1.15)

    makeLuaSprite('StartBackFloor', 'EXE/Bodrionic.exe/LordXStage/CyclesBG/BackPlatforms', -1000, -800)
	setLuaSpriteScrollFactor('StartBackFloor', 0.75, 0.75)
    scaleObject('StartBackFloor', 1, 1)

    makeLuaSprite('StartFloor', 'EXE/Bodrionic.exe/LordXStage/CyclesBG/Floor', -800, 900)
	setLuaSpriteScrollFactor('StartFloor', 1.0, 1.0)
    scaleObject('StartFloor', 0.85, 0.85)

    makeLuaSprite('StartBushes', 'EXE/Bodrionic.exe/LordXStage/CyclesBG/Bushes', -800, -100)
	setLuaSpriteScrollFactor('StartBushes', 1.0, 1.0)
    scaleObject('StartBushes', 1, 1)

	addLuaSprite('StartSky', false)
	addLuaSprite('StartMoon', false)
	addLuaSprite('StartHill', false)
	addLuaSprite('StartWater', false)
	addLuaSprite('StartBackFloor', false)
    addLuaSprite('StartFloor', false)
	addLuaSprite('StartBushes', false)

----mountains
    makeLuaSprite('Sky', 'EXE/Bodrionic.exe/LordXStage/MountainsBG/SkyMountains', -1000, -700)
	setLuaSpriteScrollFactor('Sky', 0.4, 0.4)
    scaleObject('Sky', 1.5, 1.5)

    makeAnimatedLuaSprite('Moon','EXE/Bodrionic.exe/LordXStage/MountainsBG/eyemoon', -500, -700)
	addAnimationByPrefix('Moon', 'lookboth', 'LookatLX-alt' , 24, false)
	objectPlayAnimation('Moon','lookboth' ,false)
    setLuaSpriteScrollFactor('Moon', 0.5, 0.5)
    scaleObject('Moon', 1.5, 1.5)

    makeLuaSprite('Mountains', 'EXE/Bodrionic.exe/LordXStage/MountainsBG/BackgroundMountains2', -1000, -600)
	setLuaSpriteScrollFactor('Mountains', 0.7, 0.7)
    scaleObject('Mountains', 1.5, 1.5)

    makeLuaSprite('CloudsBig', 'EXE/Bodrionic.exe/LordXStage/MountainsBG/CloudSpiral2', -1000, -400)
	setLuaSpriteScrollFactor('CloudsBig', 0.85, 0.85)
    scaleObject('CloudsBig', 1.5, 1.5)

    makeLuaSprite('Floorop', 'EXE/Bodrionic.exe/LordXStage/MountainsBG/PillarO', -1100, -400)
	setLuaSpriteScrollFactor('Floorop', 1, 1)
    scaleObject('Floorop', 1.5, 1.5)

    makeLuaSprite('Floorpl', 'EXE/Bodrionic.exe/LordXStage/MountainsBG/PillarP', -1000, -400)
	setLuaSpriteScrollFactor('Floorpl', 1, 1)
    scaleObject('Floorpl', 1.5, 1.5)

    makeLuaSprite('Lightpl', 'spotlight', 1000, -100)
	setLuaSpriteScrollFactor('Lightpl', 1, 1)
    scaleObject('Lightpl', 1.75, 1.75)
    setProperty('Lightpl.alpha', 0)

    makeLuaSprite('Lightop', 'spotlight', -200, -100)
	setLuaSpriteScrollFactor('Lightop', 1, 1)
    scaleObject('Lightop', 1.75, 1.75)
    setProperty('Lightop.alpha', 0)

    makeLuaSprite('CloudsSmall', 'EXE/Bodrionic.exe/LordXStage/MountainsBG/CloudSpiral1', -600, 100)
	setLuaSpriteScrollFactor('CloudsSmall', 1.1, 1.1)
    scaleObject('CloudsSmall', 1, 1)

    makeLuaSprite('Hill', 'EXE/Bodrionic.exe/LordXStage/MountainsBG/Mountains', -1000, -200)
	setLuaSpriteScrollFactor('Hill', 1.2, 1.2)
    scaleObject('Hill', 1.5, 1.5)

---Cave
    makeLuaSprite('Space', 'EXE/Bodrionic.exe/LordXStage/Hellbent/space', -2200, -800)
	setLuaSpriteScrollFactor('Space', 0.4, 0.4)
    scaleObject('Space', 1.5, 1.5)

    makeLuaSprite('Cave', 'EXE/Bodrionic.exe/LordXStage/Hellbent/bg', -2150, -550)
	setLuaSpriteScrollFactor('Cave', 1, 1)
    scaleObject('Cave', 1.5, 1.5)

    makeLuaSprite('Front', 'EXE/Bodrionic.exe/LordXStage/Hellbent/omg', -2250, -550)
	setLuaSpriteScrollFactor('Front', 1.2, 1.2)
    scaleObject('Front', 1.5, 1.5)
---Hills Pixel
    makeLuaSprite('Orange', 'white', -5000, -700)
    setLuaSpriteScrollFactor('Orange', 0, 0)
    setProperty('Orange.color', getColorFromHex('0xFFA040'))
    scaleObject('Orange', 6, 6)

    makeLuaSprite('Clouds1', 'EXE/Bodrionic.exe/LordXStage/Hill/clouds1', -3000, 250)
    setLuaSpriteScrollFactor('Clouds1', 1.0, 1.0)
    scaleObject('Clouds1', 6, 6)
    setProperty('Clouds1.antialiasing', false)

    makeLuaSprite('Clouds2', 'EXE/Bodrionic.exe/LordXStage/Hill/clouds2', -3000, 250)
    setLuaSpriteScrollFactor('Clouds2', 1.0, 1.0)
    scaleObject('Clouds2', 6, 6)
    setProperty('Clouds2.antialiasing', false)

    makeLuaSprite('Clouds3', 'EXE/Bodrionic.exe/LordXStage/Hill/clouds3', -3000, 250)
    setLuaSpriteScrollFactor('Clouds3', 1.0, 1.0)
    scaleObject('Clouds3', 6, 6)
    setProperty('Clouds3.antialiasing', false)

    makeLuaSprite('BG', 'EXE/Bodrionic.exe/LordXStage/Hill/bg', -3000, 500)
    setLuaSpriteScrollFactor('BG', 1.0, 1.0)
    scaleObject('BG', 6, 6)
    setProperty('BG.antialiasing', false)

    makeAnimatedLuaSprite('BGWater','EXE/Bodrionic.exe/LordXStage/Hill/bgwater', -3000, 500)
    addAnimationByPrefix('BGWater', 'caida', 'bgwater' , 12, true)
    objectPlayAnimation('BGWater','caida', true)
    setLuaSpriteScrollFactor('BGWater', 1.0, 1.0)
    scaleObject('BGWater', 6, 6)
    setProperty('BGWater.antialiasing', false)

    makeAnimatedLuaSprite('Water1','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet', -3000, 1000)
    addAnimationByPrefix('Water1', 'Corriente', '1line' , 12, true)
    objectPlayAnimation('Water1','Corriente', true)
    setLuaSpriteScrollFactor('Water1', 1.0, 1.0)
    scaleObject('Water1', 6, 6)
    setProperty('Water1.antialiasing', false)
    
    makeAnimatedLuaSprite('Water2','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet', -3000, 1025)
    addAnimationByPrefix('Water2', 'Corriente', '2line' , 12, true)
    objectPlayAnimation('Water2','Corriente', true)
    setLuaSpriteScrollFactor('Water2', 1.0, 1.0)
    scaleObject('Water2', 6, 6)
    setProperty('Water2.antialiasing', false)

    makeAnimatedLuaSprite('Water3','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet', -3000, 1050)
    addAnimationByPrefix('Water3', 'Corriente', '3line' , 12, true)
    objectPlayAnimation('Water3','Corriente', true)
    setLuaSpriteScrollFactor('Water3', 1.0, 1.0)
    scaleObject('Water3', 6, 6)
    setProperty('Water3.antialiasing', false)

    makeAnimatedLuaSprite('Water4','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet', -3000, 1075)
    addAnimationByPrefix('Water4', 'Corriente', '4line' , 12, true)
    objectPlayAnimation('Water4','Corriente', true)
    setLuaSpriteScrollFactor('Water4', 1.0, 1.0)
    scaleObject('Water4', 6, 6)
    setProperty('Water4.antialiasing', false)

    makeAnimatedLuaSprite('Water5','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet', -3000, 1100)
    addAnimationByPrefix('Water5', 'Corriente', '5line' , 12, true)
    objectPlayAnimation('Water5','Corriente', true)
    setLuaSpriteScrollFactor('Water5', 1.0, 1.0)
    scaleObject('Water5', 6, 6)
    setProperty('Water5.antialiasing', false)

    makeAnimatedLuaSprite('Water6','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet', -3000, 1125)
    addAnimationByPrefix('Water6', 'Corriente', '6line' , 12, true)
    objectPlayAnimation('Water6','Corriente', true)
    setLuaSpriteScrollFactor('Water6', 1.0, 1.0)
    scaleObject('Water6', 6, 6)
    setProperty('Water6.antialiasing', false)

    makeAnimatedLuaSprite('Water7','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet', -3000, 1150)
    addAnimationByPrefix('Water7', 'Corriente', '7line' , 12, true)
    objectPlayAnimation('Water7','Corriente', true)
    setLuaSpriteScrollFactor('Water7', 1.0, 1.0)
    scaleObject('Water7', 6, 6)
    setProperty('Water7.antialiasing', false)

    makeAnimatedLuaSprite('Water8','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet', -3000, 1175)
    addAnimationByPrefix('Water8', 'Corriente', '8line' , 12, true)
    objectPlayAnimation('Water8','Corriente', true)
    setLuaSpriteScrollFactor('Water8', 1.0, 1.0)
    scaleObject('Water8', 6, 6)
    setProperty('Water8.antialiasing', false)

    makeLuaSprite('Treesback', 'EXE/Bodrionic.exe/LordXStage/Hill/treesback', -3000, 15)
    setLuaSpriteScrollFactor('Treesback', 1.0, 1.0)
    scaleObject('Treesback', 6, 6)
    setProperty('Treesback.antialiasing', false)

    makeLuaSprite('Animalsback', 'EXE/Bodrionic.exe/LordXStage/Hill/treesback', -3000, 15)
    setLuaSpriteScrollFactor('Animalsback', 1.0, 1.0)
    scaleObject('Animalsback', 6, 6)
    setProperty('Animalsback.antialiasing', false)

    makeLuaSprite('Ground', 'EXE/Bodrionic.exe/LordXStage/Hill/ground', -3000, 15)
    setLuaSpriteScrollFactor('Ground', 1.0, 1.0)
    scaleObject('Ground', 6, 6)
    setProperty('Ground.antialiasing', false)

    makeAnimatedLuaSprite('Flower','EXE/Bodrionic.exe/LordXStage/Hill/scrollingbgassets', -3000, 15)
    addAnimationByPrefix('Flower', 'Eat', 'eatingflower' , 12, true)
    objectPlayAnimation('Flower','Eat', true)
    setLuaSpriteScrollFactor('Flower', 1.0, 1.0)
    scaleObject('Flower', 6, 6)
    setProperty('Flower.antialiasing', false)

    makeAnimatedLuaSprite('Finger','EXE/Bodrionic.exe/LordXStage/Hill/scrollingbgassets', -3000, 15)
    addAnimationByPrefix('Finger', 'Dance', 'finger' , 12, true)
    objectPlayAnimation('Finger','Dance', true)
    setLuaSpriteScrollFactor('Finger', 1.0, 1.0)
    scaleObject('Finger', 6, 6)
    setProperty('Finger.antialiasing', false)

    makeAnimatedLuaSprite('Eye','EXE/Bodrionic.exe/LordXStage/Hill/scrollingbgassets', -3000, 15)
    addAnimationByPrefix('Eye', 'Whink', 'idle' , 12, true)
    objectPlayAnimation('Eye','Whink', true)
    setLuaSpriteScrollFactor('Eye', 1.0, 1.0)
    scaleObject('Eye', 6, 6)
    setProperty('Eye.antialiasing', false)

    makeLuaSprite('Treesfront', 'EXE/Bodrionic.exe/LordXStage/Hill/treesfront', -3000, 15)
    setLuaSpriteScrollFactor('Treesback', 1.0, 1.0)
    scaleObject('Treesfront', 6, 6)
    setProperty('Treesfront.antialiasing', false)

    makeLuaSprite('Animalsfront', 'EXE/Bodrionic.exe/LordXStage/Hill/animalsfront', -3000, 15)
    setLuaSpriteScrollFactor('Animalsfront', 1.0, 1.0)
    scaleObject('Animalsfront', 6, 6)
    setProperty('Animalsfront.antialiasing', false)

    makeLuaSprite('Clouds1b', 'EXE/Bodrionic.exe/LordXStage/Hill/clouds1',-3000 + getProperty('Clouds1.width'), 250)
    setLuaSpriteScrollFactor('Clouds1b', 1.0, 1.0)
    scaleObject('Clouds1b', 6, 6)
    setProperty('Clouds1b.antialiasing', false)

    makeLuaSprite('Clouds2b', 'EXE/Bodrionic.exe/LordXStage/Hill/clouds2',-3000 + getProperty('Clouds2.width'), 250)
    setLuaSpriteScrollFactor('Clouds2b', 1.0, 1.0)
    scaleObject('Clouds2b', 6, 6)
    setProperty('Clouds2b.antialiasing', false)

    makeLuaSprite('Clouds3b', 'EXE/Bodrionic.exe/LordXStage/Hill/clouds3',-3000 + getProperty('Clouds3.width'), 250)
    setLuaSpriteScrollFactor('Clouds3b', 1.0, 1.0)
    scaleObject('Clouds3b', 6, 6)
    setProperty('Clouds3b.antialiasing', false)

    makeLuaSprite('BGb', 'EXE/Bodrionic.exe/LordXStage/Hill/bg',-3000 + getProperty('BG.width'), 500)
    setLuaSpriteScrollFactor('BG', 1.0, 1.0)
    scaleObject('BGb', 6, 6)
    setProperty('BGb.antialiasing', false)

    makeAnimatedLuaSprite('BGWaterb','EXE/Bodrionic.exe/LordXStage/Hill/bgwater',-3000 + getProperty('BGWater.width'), 500)
    addAnimationByPrefix('BGWaterb', 'caida', 'bgwater' , 12, true)
    objectPlayAnimation('BGWaterb','caida', true)
    setLuaSpriteScrollFactor('BGWaterb', 1.0, 1.0)
    scaleObject('BGWaterb', 6, 6)
    setProperty('BGWaterb.antialiasing', false)

    makeAnimatedLuaSprite('Water1b','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet', -3000 + getProperty('Water1.width'), 1000)
    addAnimationByPrefix('Water1b', 'Corriente', '1line' , 12, true)
    objectPlayAnimation('Water1b','Corriente', true)
    setLuaSpriteScrollFactor('Water1b', 1.0, 1.0)
    scaleObject('Water1b', 6, 6)
    setProperty('Water1b.antialiasing', false)
    
    makeAnimatedLuaSprite('Water2b','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet',-3000 + getProperty('Water2.width'), 1025)
    addAnimationByPrefix('Water2b', 'Corriente', '2line' , 12, true)
    objectPlayAnimation('Water2b','Corriente', true)
    setLuaSpriteScrollFactor('Water2b', 1.0, 1.0)
    scaleObject('Water2b', 6, 6)
    setProperty('Water2b.antialiasing', false)

    makeAnimatedLuaSprite('Water3b','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet',-3000 + getProperty('Water3.width'), 1050)
    addAnimationByPrefix('Water3b', 'Corriente', '3line' , 12, true)
    objectPlayAnimation('Water3b','Corriente', true)
    setLuaSpriteScrollFactor('Water3b', 1.0, 1.0)
    scaleObject('Water3b', 6, 6)
    setProperty('Water3b.antialiasing', false)

    makeAnimatedLuaSprite('Water4b','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet',-3000 + getProperty('Water4.width'), 1075)
    addAnimationByPrefix('Water4b', 'Corriente', '4line' , 12, true)
    objectPlayAnimation('Water4b','Corriente', true)
    setLuaSpriteScrollFactor('Water4b', 1.0, 1.0)
    scaleObject('Water4b', 6, 6)
    setProperty('Water4b.antialiasing', false)

    makeAnimatedLuaSprite('Water5b','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet',-3000 + getProperty('Water5.width'), 1100)
    addAnimationByPrefix('Water5b', 'Corriente', '5line' , 12, true)
    objectPlayAnimation('Water5b','Corriente', true)
    setLuaSpriteScrollFactor('Water5b', 1.0, 1.0)
    scaleObject('Water5b', 6, 6)
    setProperty('Water5b.antialiasing', false)

    makeAnimatedLuaSprite('Water6b','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet',-3000 + getProperty('Water6.width'), 1125)
    addAnimationByPrefix('Water6b', 'Corriente', '6line' , 12, true)
    objectPlayAnimation('Water6b','Corriente', true)
    setLuaSpriteScrollFactor('Water6b', 1.0, 1.0)
    scaleObject('Water6b', 6, 6)
    setProperty('Water6b.antialiasing', false)

    makeAnimatedLuaSprite('Water7b','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet',-3000 + getProperty('Water7.width'), 1150)
    addAnimationByPrefix('Water7b', 'Corriente', '7line' , 12, true)
    objectPlayAnimation('Water7b','Corriente', true)
    setLuaSpriteScrollFactor('Water7b', 1.0, 1.0)
    scaleObject('Water7b', 6, 6)
    setProperty('Water7b.antialiasing', false)

    makeAnimatedLuaSprite('Water8b','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet',-3000 + getProperty('Water8.width'), 1175)
    addAnimationByPrefix('Water8b', 'Corriente', '8line' , 12, true)
    objectPlayAnimation('Water8b','Corriente', true)
    setLuaSpriteScrollFactor('Water8b', 1.0, 1.0)
    scaleObject('Water8b', 6, 6)
    setProperty('Water8b.antialiasing', false)

    makeLuaSprite('Treesbackb', 'EXE/Bodrionic.exe/LordXStage/Hill/treesback',-3000 + getProperty('Treesback.width'), 15)
    setLuaSpriteScrollFactor('Treesbackb', 1.0, 1.0)
    scaleObject('Treesbackb', 6, 6)
    setProperty('Treesbackb.antialiasing', false)

    makeLuaSprite('Animalsbackb', 'EXE/Bodrionic.exe/LordXStage/Hill/treesback',-3000 + getProperty('Animalsback.width'), 15)
    setLuaSpriteScrollFactor('Animalsbackb', 1.0, 1.0)
    scaleObject('Animalsbackb', 6, 6)
    setProperty('Animalsbackb.antialiasing', false)

    makeLuaSprite('Groundb', 'EXE/Bodrionic.exe/LordXStage/Hill/ground',-3000 + getProperty('Ground.width'), 15)
    setLuaSpriteScrollFactor('Groundb', 1.0, 1.0)
    scaleObject('Groundb', 6, 6)
    setProperty('Groundb.antialiasing', false)

    makeAnimatedLuaSprite('Flowerb','EXE/Bodrionic.exe/LordXStage/Hill/scrollingbgassets',-3000 + getProperty('Flower.width'), 15)
    addAnimationByPrefix('Flowerb', 'Eat', 'eatingflower' , 12, true)
    objectPlayAnimation('Flowerb','Eat', true)
    setLuaSpriteScrollFactor('Flowerb', 1.0, 1.0)
    scaleObject('Flowerb', 6, 6)
    setProperty('Flowerb.antialiasing', false)

    makeAnimatedLuaSprite('Fingerb','EXE/Bodrionic.exe/LordXStage/Hill/scrollingbgassets',-3000 + getProperty('Finger.width'), 15)
    addAnimationByPrefix('Fingerb', 'Dance', 'finger' , 12, true)
    objectPlayAnimation('Fingerb','Dance', true)
    setLuaSpriteScrollFactor('Fingerb', 1.0, 1.0)
    scaleObject('Fingerb', 6, 6)
    setProperty('Fingerb.antialiasing', false)

    makeAnimatedLuaSprite('Eyeb','EXE/Bodrionic.exe/LordXStage/Hill/scrollingbgassets',-3000 + getProperty('Eye.width'), 15)
    addAnimationByPrefix('Eyeb', 'Whink', 'idle' , 12, true)
    objectPlayAnimation('Eyeb','Whink', true)
    setLuaSpriteScrollFactor('Eyeb', 1.0, 1.0)
    scaleObject('Eyeb', 6, 6)
    setProperty('Eyeb.antialiasing', false)

    makeLuaSprite('Treesfrontb', 'EXE/Bodrionic.exe/LordXStage/Hill/treesfront',-3000 + getProperty('Treesfront.width'), 15)
    setLuaSpriteScrollFactor('Treesbackb', 1.0, 1.0)
    scaleObject('Treesfrontb', 6, 6)
    setProperty('Treesfrontb.antialiasing', false)

    makeLuaSprite('Animalsfrontb', 'EXE/Bodrionic.exe/LordXStage/Hill/animalsfront', -3000 + getProperty('Animalsfront.width'), 15)
    setLuaSpriteScrollFactor('Animalsfrontb', 1.0, 1.0)
    scaleObject('Animalsfrontb', 6, 6)
    setProperty('Animalsfrontb.antialiasing', false)

----Angel Island
    makeLuaSprite('WClouds1', 'EXE/Bodrionic.exe/LordXStage/Withered/wghclouds1', -3000, 250)
    setLuaSpriteScrollFactor('WClouds1', 1.0, 1.0)
    scaleObject('WClouds1', 6, 6)
    setProperty('WClouds1.antialiasing', false)

    makeLuaSprite('WClouds2', 'EXE/Bodrionic.exe/LordXStage/Withered/wghclouds2', -3000, 250)
    setLuaSpriteScrollFactor('WClouds2', 1.0, 1.0)
    scaleObject('WClouds2', 6, 6)
    setProperty('WClouds2.antialiasing', false)

    makeLuaSprite('WBG', 'EXE/Bodrionic.exe/LordXStage/Withered/wghmountains', -3000, 500)
    setLuaSpriteScrollFactor('WBG', 1.0, 1.0)
    scaleObject('WBG', 6, 6)
    setProperty('WBG.antialiasing', false)

    makeLuaSprite('WGround', 'EXE/Bodrionic.exe/LordXStage/Withered/wghground', -3000, 15)
    setLuaSpriteScrollFactor('WGround', 1.0, 1.0)
    scaleObject('WGround', 6, 6)
    setProperty('WGround.antialiasing', false)

    makeLuaSprite('WClouds1b', 'EXE/Bodrionic.exe/LordXStage/Withered/wghclouds1', -3000 + getProperty('WClouds1.width'), 250)
    setLuaSpriteScrollFactor('WClouds1b', 1.0, 1.0)
    scaleObject('WClouds1b', 6, 6)
    setProperty('WClouds1b.antialiasing', false)

    makeLuaSprite('WClouds2b', 'EXE/Bodrionic.exe/LordXStage/Withered/wghclouds2', -3000 + getProperty('WClouds2.width'), 250)
    setLuaSpriteScrollFactor('WClouds2b', 1.0, 1.0)
    scaleObject('WClouds2b', 6, 6)
    setProperty('WClouds2b.antialiasing', false)

    makeLuaSprite('WBGb', 'EXE/Bodrionic.exe/LordXStage/Withered/wghmountains', -3000 + getProperty('WBG.width'), 500)
    setLuaSpriteScrollFactor('WBGb', 1.0, 1.0)
    scaleObject('WBGb', 6, 6)
    setProperty('WBGb.antialiasing', false)

    makeLuaSprite('WGroundb', 'EXE/Bodrionic.exe/LordXStage/Withered/wghground', -3000 + getProperty('WGround.width'), 15)
    setLuaSpriteScrollFactor('WGroundb', 1.0, 1.0)
    scaleObject('WGroundb', 6, 6)
    setProperty('WGroundb.antialiasing', false)

----Castle
    makeAnimatedLuaSprite('Wall','EXE/Bodrionic.exe/LordXStage/Castle/castleassets',-3000, 75)
    addAnimationByPrefix('Wall', 'move', 'castleassets castlebg' , 12, true)
    objectPlayAnimation('Wall','move', true)
    setLuaSpriteScrollFactor('Wall', 1, 1)
    scaleObject('Wall', 6, 6)
    setProperty('Wall.antialiasing', false)

    makeLuaSprite('Floor', 'EXE/Bodrionic.exe/LordXStage/Castle/castleground', -3000, 75)
    setLuaSpriteScrollFactor('Floor', 1.0, 1.0)
    scaleObject('Floor', 6, 6)
    setProperty('Floor.antialiasing', false)

    makeAnimatedLuaSprite('Wallb','EXE/Bodrionic.exe/LordXStage/Castle/castleassets',-3000 + getProperty('Wall.width'), 75)
    addAnimationByPrefix('Wallb', 'move', 'castleassets castlebg' , 12, true)
    objectPlayAnimation('Wallb','move', true)
    setLuaSpriteScrollFactor('Wallb', 1, 1)
    scaleObject('Wallb', 6, 6)
    setProperty('Wallb.antialiasing', false)

    makeLuaSprite('Floorb', 'EXE/Bodrionic.exe/LordXStage/Castle/castleground', -3000 + getProperty('Floor.width'), 75)
    setLuaSpriteScrollFactor('Floorb', 1.0, 1.0)
    scaleObject('Floorb', 6, 6)
    setProperty('Floorb.antialiasing', false)

----other

    makeLuaSprite('Blackbox', 'white', -2000, -2000)
    setProperty('Blackbox.color', getColorFromHex('0x000000'))
    scaleObject('Blackbox', 10, 10)
    setObjectCamera('Blackbox', 'camHUD')
    addLuaSprite('Blackbox', false)

    makeLuaSprite('RedImage','EXE/Bodrionic.exe/RedVG',0,0)
    setObjectCamera('RedImage','other')
    setProperty('RedImage.alpha',0)
    addLuaSprite('RedImage',false)

    makeLuaSprite('FaceA', 'EXE/Bodrionic.exe/LordXStage/Faces/face1', 175, 25)
    scaleObject('FaceA', 3, 3)
    setProperty('FaceA.antialiasing', false)
    setObjectCamera('FaceA', 'HUD')

    makeLuaSprite('FaceB', 'EXE/Bodrionic.exe/LordXStage/Faces/face2', 175, 25)
    scaleObject('FaceB', 3, 3)
    setProperty('FaceB.antialiasing', false)
    setObjectCamera('FaceB', 'HUD')

    makeLuaSprite('FaceC', 'EXE/Bodrionic.exe/LordXStage/Faces/face3', 175, 25)
    scaleObject('FaceC', 3, 3)
    setProperty('FaceC.antialiasing', false)
    setObjectCamera('FaceC', 'HUD')

    makeLuaSprite('FaceD', 'EXE/Bodrionic.exe/LordXStage/Faces/face4', 175, 25)
    scaleObject('FaceD', 3, 3)
    setProperty('FaceD.antialiasing', false)
    setObjectCamera('FaceD', 'HUD')

    makeLuaSprite('FaceE', 'EXE/Bodrionic.exe/LordXStage/Faces/face5', 175, 25)
    scaleObject('FaceE', 3, 3)
    setProperty('FaceE.antialiasing', false)
    setObjectCamera('FaceE', 'HUD')

    makeLuaSprite('Eyes', 'EXE/Bodrionic.exe/LordXStage/Faces/eface2', 175, 25)
    scaleObject('Eyes', 3, 3)
    setProperty('Eyes.antialiasing', false)
    setObjectCamera('Eyes', 'HUD')

    makeLuaSprite('Windows', 'JumpScares/Blue Screen', -25, -25)
    scaleObject('Windows', 1.3, 1.3)
    setObjectCamera('Windows', 'camOther')
end
function onCreatePost()
    setProperty('boyfriend.visible', false)
    setProperty('dad.visible', false)
    setProperty('StartFloor.visible', false)
    setProperty('StartBushes.visible', false)
end
function onStepHit()
    if curStep == 1 then
        doTweenZoom('start','camGame', 0.5, 21, 'linear')   
        doTweenAlpha('inicio','Blackbox', 0, 21, 'linear')   
        setProperty('defaultCamZoom', 0.5)  
    end
    if curStep == 140 or curStep == 446 then
        setProperty('camOther.visible', false)
        setProperty('camGame.visible', false)
        setProperty('camHUD.visible', false)
    end
    if curStep == 144 or curStep == 448 then
        setProperty('camOther.visible', true)
        setProperty('camGame.visible', true)
        setProperty('camHUD.visible', true)
    end

    if curStep == 144 then
        setProperty('defaultCamZoom', 0.45)  
        setProperty('boyfriend.visible', true)
        setProperty('dad.visible', true)
        setProperty('StartFloor.visible', true)
        setProperty('StartBushes.visible', true)
        xx = 600
        yy = 750
        xx2 = 1000
        yy2 = 750
    end

    if curStep == 436 then
        addLuaSprite('Windows', false)
        xx = 200
        yy = 500
        xx2 = 200
        yy2 = 500
    end

    if curStep == 448 then
        --windows blue screen
        doTweenZoom('Mylord','camGame', 0.4, 4.5, 'linear')
        setProperty('defaultCamZoom', 0.4)
        setProperty('boyfriend.alpha', 0)
        removeLuaSprite('Windows')
        addLuaSprite('Space', false)
        addLuaSprite('Cave', false)
        addLuaSprite('Front', true)

        removeLuaSprite('StartSky', false)
        removeLuaSprite('StartMoon', false)
        removeLuaSprite('StartHill', false)
        removeLuaSprite('StartWater', false)
        removeLuaSprite('StartBackFloor', false)
        removeLuaSprite('StartFloor', false)
        removeLuaSprite('StartBushes', false)
    end
    if curStep == 736 then
        setProperty('defaultCamZoom', 0.45)
        setProperty('boyfriend.alpha', 1)
        removeLuaSprite('Space', false)
        removeLuaSprite('Cave', false)
        removeLuaSprite('Front', true)

        addLuaSprite('Sky', false)
        addLuaSprite('Moon', false)
        addLuaSprite('Mountains', false)
        addLuaSprite('CloudsBig', false)
        addLuaSprite('Floorop', false)
        addLuaSprite('Floorpl', false)
        addLuaSprite('Lightpl', true)
        addLuaSprite('Lightop', true)
        addLuaSprite('CloudsSmall', true)
        addLuaSprite('Hill', true)
        xx = 600
        yy = 750
        xx2 = 1000
        yy2 = 750
    end
    if curStep == 864 then
        doTweenZoom('medium','camGame', 0.75, 5, 'quintOut')   
        setProperty('defaultCamZoom', 0.75)
        xx = 300
        yy = 850
        xx2 = 1500
        yy2 = 850
    end
    if curStep == 1014 then
        doTweenAlpha('desvanecer','Blackbox', 1, 3, 'linear')   
    end

    if curStep == 1048 then
        doTweenAlpha('aparecer','Blackbox', 0.25, 2, 'linear')  
        setProperty('Lightpl.alpha', 0.25)
        setProperty('Sky.color', getColorFromHex('0x000000'))
        setProperty('Moon.color', getColorFromHex('0x000000'))
        setProperty('Mountains.color', getColorFromHex('0x000000'))
        setProperty('CloudsBig.color', getColorFromHex('0x000000'))
        setProperty('CloudsSmall.color', getColorFromHex('0x000000'))
        setProperty('Hill.color', getColorFromHex('0x000000'))
        setProperty('Floorop.alpha', 0)
        setProperty('dad.alpha', 0)
    end

    if curStep == 1168 then 
        doTweenAlpha('inicio','Blackbox', 1, 0.75, 'linear')  
    end
    if curStep == 1187 then
        --Contdown
    end
    if curStep == 1200 then
        --His World
        setProperty('Sky.color', getColorFromHex('0xffffff'))
        setProperty('Moon.color', getColorFromHex('0xffffff'))
        setProperty('Mountains.color', getColorFromHex('0xffffff'))
        setProperty('CloudsBig.color', getColorFromHex('0xffffff'))
        setProperty('Floorop.color', getColorFromHex('0xffffff'))
        setProperty('CloudsSmall.color', getColorFromHex('0xffffff'))
        setProperty('Hill.color', getColorFromHex('0xffffff'))
        setProperty('Blackbox.alpha', 0)
    end
    if curStep == 1232 then
        setProperty('defaultCamZoom', 0.45)  
        setProperty('dad.alpha', 1)
        setProperty('Floorop.alpha', 1)
        setProperty('Lightop.alpha', 0.25)
        xx = 800
        yy = 750
        xx2 = 800
        yy2 = 750
    end
    if curStep == 1296 then
        setProperty('cameraSpeed', 5)
        setProperty('defaultCamZoom', 0.65)
        ofs = 10
        xx = 500
        yy = 850
        xx2 = 1300
        yy2 = 850
    end
    if curStep == 1424 then
        --persecusion en Hills
        setProperty('defaultCamZoom', 0.8)
        setProperty('cameraSpeed', 1)
        removeLuaSprite('Sky', false)
        removeLuaSprite('Moon', false)
        removeLuaSprite('Mountains', false)
        removeLuaSprite('CloudsBig', false)
        removeLuaSprite('Floorop', false)
        removeLuaSprite('Floorpl', false)
        removeLuaSprite('Lightpl', true)
        removeLuaSprite('Lightop', true)
        removeLuaSprite('CloudsSmall', true)
        removeLuaSprite('Hill', true)
        addLuaSprite('Orange', false)
        addLuaSprite('Clouds1', false)
        addLuaSprite('Clouds1b', false)
        addLuaSprite('Clouds2', false)
        addLuaSprite('Clouds2b', false)
        addLuaSprite('Clouds3', false)
        addLuaSprite('Clouds3b', false)
        addLuaSprite('BG', false)
        addLuaSprite('BGb', false)
        addLuaSprite('BGWater', false)
        addLuaSprite('BGWaterb', false)
        addLuaSprite('Water1', false)
        addLuaSprite('Water1b', false)
        addLuaSprite('Water2', false)
        addLuaSprite('Water2b', false)
        addLuaSprite('Water3', false)
        addLuaSprite('Water3b', false)
        addLuaSprite('Water4', false)
        addLuaSprite('Water4b', false)
        addLuaSprite('Water5', false)
        addLuaSprite('Water5b', false)
        addLuaSprite('Water6', false)
        addLuaSprite('Water6b', false)
        addLuaSprite('Water7', false)
        addLuaSprite('Water7b', false)
        addLuaSprite('Water8', false)
        addLuaSprite('Water8b', false)
        addLuaSprite('Treesback', false)
        addLuaSprite('Treesbackb', false)
        addLuaSprite('Animalsback', false)
        addLuaSprite('Animalsbackb', false)
        addLuaSprite('Ground', false)
        addLuaSprite('Groundb', false)
        addLuaSprite('Flower', false)
        addLuaSprite('Flowerb', false)
        addLuaSprite('Finger', false)
        addLuaSprite('Fingerb', false)
        addLuaSprite('Eye', false)
        addLuaSprite('Eyeb', false)
        addLuaSprite('Treesfront', true)
        addLuaSprite('Treesfrontb', true)
        addLuaSprite('Animalsfront', true)
        addLuaSprite('Animalsfrontb', true)
        xx = 1150
        yy = 950
        xx2 = 1150
        yy2 = 950
    end
    if curStep == 1425 then
        setProperty('dad.x', 700)
        setProperty('dad.y', getProperty('dad.y') + 25)
        doTweenY('up', 'dad', getProperty('dad.y') - 25, 1, 'quadInOut')
        doTweenX('moveClouda1', 'Clouds1', -3000 - getProperty('Clouds1.width'), 34, 'linear')
        doTweenX('moveClouda2', 'Clouds1b', -3000, 34, 'linear')
        doTweenX('moveCloudb1', 'Clouds2', -3000 - getProperty('Clouds2.width'), 32, 'linear')
        doTweenX('moveCloudb2', 'Clouds2b', -3000, 22, 'linear')
        doTweenX('moveCloudc1', 'Clouds3', -3000 - getProperty('Clouds3.width'), 30, 'linear')
        doTweenX('moveCloudc2', 'Clouds3b', -3000, 30, 'linear')
        doTweenX('moveBG1', 'BG', -3000 - getProperty('BG.width'), 24, 'linear')
        doTweenX('moveBG2', 'BGb', -3000, 24, 'linear')
        doTweenX('moveBGWater1', 'BGWater', -3000 - getProperty('BGWater.width'), 24, 'linear')
        doTweenX('moveBGWater2', 'BGWaterb', -3000, 24, 'linear')
        doTweenX('moveWatera1', 'Water1', -3000 - getProperty('Water1.width'), 24, 'linear')
        doTweenX('moveWatera2', 'Water1b', -3000, 24, 'linear')
        doTweenX('moveWaterb1', 'Water2', -3000 - getProperty('Water2.width'), 22, 'linear')
        doTweenX('moveWaterb2', 'Water2b', -3000, 22, 'linear')
        doTweenX('moveWaterc1', 'Water3', -3000 - getProperty('Water3.width'), 20, 'linear')
        doTweenX('moveWaterc2', 'Water3b', -3000, 20, 'linear')
        doTweenX('moveWaterd1', 'Water4', -3000 - getProperty('Water4.width'), 18, 'linear')
        doTweenX('moveWaterd2', 'Water4b', -3000, 18, 'linear')
        doTweenX('moveWatere1', 'Water5', -3000 - getProperty('Water5.width'), 16, 'linear')
        doTweenX('moveWatere2', 'Water5b', -3000, 16, 'linear')
        doTweenX('moveWaterf1', 'Water6', -3000 - getProperty('Water6.width'), 14, 'linear')
        doTweenX('moveWaterf2', 'Water6b', -3000, 14, 'linear')
        doTweenX('moveWaterg1', 'Water7', -3000 - getProperty('Water7.width'), 12, 'linear')
        doTweenX('moveWaterg2', 'Water7b', -3000, 12, 'linear')
        doTweenX('moveWaterh1', 'Water8', -3000 - getProperty('Water8.width'), 10, 'linear')
        doTweenX('moveWaterh2', 'Water8b', -3000, 10, 'linear')
        doTweenX('moveTreesback1', 'Treesback', -3000 - getProperty('Treesback.width'), 10, 'linear')
        doTweenX('moveTreesback2', 'Treesbackb', -3000, 10, 'linear')
        doTweenX('moveAnimalsback1', 'Animalsback', -3000 - getProperty('Animalsback.width'), 10, 'linear')
        doTweenX('moveAnimalsback2', 'Animalsbackb', -3000, 10, 'linear')
        doTweenX('moveGround1', 'Ground', -3000 - getProperty('Ground.width'), 10, 'linear')
        doTweenX('moveGround2', 'Groundb', -3000, 10, 'linear')
        doTweenX('moveFlower1', 'Flower', -3000 - getProperty('Flower.width'), 10, 'linear')
        doTweenX('moveFlower2', 'Flowerb', -3000, 10, 'linear')
        doTweenX('moveFinger1', 'Finger', -3000 - getProperty('Finger.width'), 10, 'linear')
        doTweenX('moveFinger2', 'Fingerb', -3000, 10, 'linear')
        doTweenX('moveEye1', 'Eye', -3000 - getProperty('Eye.width'), 10, 'linear')
        doTweenX('moveEye2', 'Eyeb', -3000, 10, 'linear')
        doTweenX('moveTreesfront1', 'Treesfront', -3000 - getProperty('Treesfront.width'), 10, 'linear')
        doTweenX('moveTreesfront2', 'Treesfrontb', -3000, 10, 'linear')
        doTweenX('moveAnimalsfront1', 'Animalsfront', -3000 - getProperty('Animalsfront.width'), 10, 'linear')
        doTweenX('moveAnimalsfront2', 'Animalsfrontb', -3000, 10, 'linear')
    end
    if curStep == 1688 then
        for i = 0,7 do
            noteTweenAlpha('AdiosNota'..i, i, 0, 1,'quartInOut')
        end
    end
    if curStep == 1760 then
        --persecusion en angel island
        setProperty('Orange.color', getColorFromHex('0x250100'))
        setProperty('Clouds1.alpha', 0)
        setProperty('Clouds1b.alpha', 0)
        setProperty('Clouds2.alpha', 0)
        setProperty('Clouds2b.alpha', 0)
        setProperty('Clouds3.alpha', 0)
        setProperty('Clouds3b.alpha', 0)
        setProperty('BG.alpha', 0)
        setProperty('BGb.alpha', 0)
        setProperty('BGWater.alpha', 0)
        setProperty('BGWaterb.alpha', 0)
        setProperty('Water1.alpha', 0)
        setProperty('Water1b.alpha', 0)
        setProperty('Water2.alpha', 0)
        setProperty('Water2b.alpha', 0)
        setProperty('Water3.alpha', 0)
        setProperty('Water3b.alpha', 0)
        setProperty('Water4.alpha', 0)
        setProperty('Water4b.alpha', 0)
        setProperty('Water5.alpha', 0)
        setProperty('Water5b.alpha', 0)
        setProperty('Water6.alpha', 0)
        setProperty('Water6b.alpha', 0)
        setProperty('Water7.alpha', 0)
        setProperty('Water7b.alpha', 0)
        setProperty('Water8.alpha', 0)
        setProperty('Water8b.alpha', 0)
        setProperty('Treesback.alpha', 0)
        setProperty('Treesbackb.alpha', 0)
        setProperty('Animalsback.alpha', 0)
        setProperty('Animalsbackb.alpha', 0)
        setProperty('Ground.alpha', 0)
        setProperty('Groundb.alpha', 0)
        setProperty('Flower.alpha', 0)
        setProperty('Flowerb.alpha', 0)
        setProperty('Finger.alpha', 0)
        setProperty('Fingerb.alpha', 0)
        setProperty('Eye.alpha', 0)
        setProperty('Eyeb.alpha', 0)
        setProperty('Treesfront.alpha', 0)
        setProperty('Treesfrontb.alpha', 0)
        setProperty('Animalsfront.alpha', 0)
        setProperty('Animalsfrontb.alpha', 0)
        addLuaSprite('WClouds1', false)
        addLuaSprite('WClouds1b', false)
        addLuaSprite('WClouds2', false)
        addLuaSprite('WClouds2b', false)
        addLuaSprite('WBG', false)
        addLuaSprite('WBGb', false)
        addLuaSprite('WGround', false)
        addLuaSprite('WGroundb', false)
    end
    if curStep == 1761 then
        doTweenX('moveWCloud1', 'WClouds1', -3000 - getProperty('WClouds1.width'), 16, 'linear')
        doTweenX('moveWCloud1b', 'WClouds1b', -3000, 16, 'linear')
        doTweenX('moveWCloud2', 'WClouds2', -3000 - getProperty('WClouds2.width'), 15, 'linear')
        doTweenX('moveWCloud2b', 'WClouds2b', -3000, 15, 'linear')
        doTweenX('moveWBG', 'WBG', -3000 - getProperty('WBG.width'), 12, 'linear')
        doTweenX('moveWBGb', 'WBGb', -3000, 12, 'linear')
        doTweenX('moveWGround', 'WGround', -3000 - getProperty('WGround.width'), 5, 'linear')
        doTweenX('moveWGroundb', 'WGroundb', -3000, 5, 'linear')
    end
    if curStep == 1808 then
        setProperty('camGame.alpha', 0)
        addLuaSprite('FaceA', true)
        doTweenAlpha('Jumpscar1', 'FaceA', 0, 0.25, 'linear')
    end
    if curStep == 1811 then
        addLuaSprite('FaceB', true)
        doTweenAlpha('Jumpscar2', 'FaceB', 0, 0.25, 'linear')
    end
    if curStep == 1814 then
        addLuaSprite('FaceC', true)
        doTweenAlpha('Jumpscar3', 'FaceC', 0, 0.25, 'linear')
    end
    if curStep == 1817 then
        addLuaSprite('FaceD', true)
        doTweenAlpha('Jumpscar4', 'FaceD', 0, 0.25, 'linear')
    end
    if curStep == 1820 then
        addLuaSprite('FaceE', true)
    end
    if curStep == 1824 then
        for i = 0,7 do
            noteTweenAlpha('AdiosNota'..i, i, 1, 0.1,'quartInOut')
        end
        setProperty('Orange.alpha', 0)
        setProperty('WClouds1.alpha', 0)
        setProperty('WClouds1b.alpha', 0)
        setProperty('WClouds2.alpha', 0)
        setProperty('WClouds2b.alpha', 0)
        setProperty('WBG.alpha', 0)
        setProperty('WBGb.alpha', 0)
        setProperty('WGround.alpha', 0)
        setProperty('WGroundb.alpha', 0)
        addLuaSprite('Wall', false)
        addLuaSprite('Wallb', false)
        addLuaSprite('Floor', false)
        addLuaSprite('Floorb', false)
    end
    if curStep == 1825 then
        setProperty('camGame.alpha', 1)
        removeLuaSprite('FaceE', true)
        doTweenX('moveFloor', 'Floor', -3000 - getProperty('Floor.width'), 3, 'linear')
        doTweenX('moveFloorb', 'Floorb', -3000, 3, 'linear')
        doTweenX('moveWall', 'Wall', -3000 - getProperty('Wall.width'), 4, 'linear')
        doTweenX('moveWallb', 'Wallb', -3000, 4, 'linear')
    end
    if curStep == 1947 then
        doTweenAlpha('desvanecer','Blackbox', 1, 0.75, 'linear')   
    end
    if curStep == 1960 then
        setProperty('Blackbox.alpha', 0)
        --super sonic
    end
    if curStep == 2276 then
        doTweenX('final', 'dad', getProperty('dad.x') + 600, 0.5, 'backIn')
    end
    if curStep == 2281 then
        for i = 0,7 do
			setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
		end
        setProperty('scoreTxt.alpha', 0);
	    setProperty('timeTxt.alpha', 0);
	    setProperty('timeBar.alpha', 0);
	    setProperty('iconP1.alpha', 0);
	    setProperty('iconP2.alpha', 0);
        setProperty('healthBar.alpha', 0);
        setProperty('healthBarBG.alpha', 0);
        setProperty('camGame.alpha', 0)
        addLuaSprite('Eyes', true)
        setProperty('FaceB.alpha', 1)
    end
    if curStep == 2296 then
        doTweenAlpha('The', 'FaceB', 0, 1, 'linear')
    end
    if curStep == 2312 then
        doTweenAlpha('End', 'Eyes', 0, 1, 'linear')
    end
end

function onTweenCompleted(tag) 	
    if tag == "up" then
        doTweenY('down', 'dad', getProperty('dad.y') + 25, 1, 'quadInOut')
    end
    if tag == "down" then
        doTweenY('up', 'dad', getProperty('dad.y') - 25, 1, 'quadInOut')
    end
    if tag == "moveClouda1" then
        setProperty('Clouds1.x', -3000)
        setProperty('Clouds1b.x', -3000 + getProperty('Clouds1.width'))
        doTweenX('moveClouda1', 'Clouds1', -3000 - getProperty('Clouds1.width'), 34, 'linear')
        doTweenX('moveClouda2', 'Clouds1b', -3000, 34, 'linear')
    end 
    if tag == "moveCloudb1" then
        setProperty('Clouds2.x', -3000)
        setProperty('Clouds2b.x', -3000 + getProperty('Clouds2.width'))
        doTweenX('moveCloudb1', 'Clouds2', -3000 - getProperty('Clouds2.width'), 32, 'linear')
        doTweenX('moveCloudb2', 'Clouds2b', -3000, 32, 'linear')
    end 
    if tag == "moveCloudc1" then
        setProperty('Clouds3.x', -3000)
        setProperty('Clouds3b.x', -3000 + getProperty('Clouds3.width'))
        doTweenX('moveCloudc1', 'Clouds3', -3000 - getProperty('Clouds3.width'), 30, 'linear')
        doTweenX('moveCloudc2', 'Clouds3b', -3000, 30, 'linear')
    end 
    if tag == "moveBG1" then
        setProperty('BG.x', -3000)
        setProperty('BGb.x', -3000 + getProperty('BG.width'))
        doTweenX('moveBG1', 'BG', -3000 - getProperty('BG.width'), 24, 'linear')
        doTweenX('moveBG2', 'BGb', .3000, 24, 'linear')
    end 
    if tag == "moveBGWater1" then
        setProperty('BGWater.x', -3000)
        setProperty('BGWaterb.x', -3000 + getProperty('BGWater.width'))
        doTweenX('moveBGWater1', 'BGWater', -3000 - getProperty('BGWater.width'), 24, 'linear')
        doTweenX('moveBGWater2', 'BGWaterb', -3000, 24, 'linear')
    end 
    if tag == "moveWatera1" then
        setProperty('Water1.x', -3000)
        setProperty('Water1b.x', -3000 + getProperty('Water1.width'))
        doTweenX('moveWatera1', 'Water1', -3000 - getProperty('Water1.width'), 24, 'linear')
        doTweenX('moveWatera2', 'Water1b', -3000, 24, 'linear')
    end 
    if tag == "moveWaterb1" then
        setProperty('Water2.x', -3000)
        setProperty('Water2b.x', -3000 + getProperty('Water2.width'))
        doTweenX('moveWaterb1', 'Water2', -3000 - getProperty('Water2.width'), 22, 'linear')
        doTweenX('moveWaterb2', 'Water2b', -3000, 22, 'linear')
    end 
    if tag == "moveWaterc1" then
        setProperty('Water3.x', -3000)
        setProperty('Water3b.x', -3000 + getProperty('Water3.width'))
        doTweenX('moveWaterc1', 'Water3', -3000 - getProperty('Water3.width'), 20, 'linear')
        doTweenX('moveWaterc2', 'Water3b', -3000, 20, 'linear')
    end 
    if tag == "moveWaterd1" then
        setProperty('Water4.x', -3000)
        setProperty('Water4b.x', -3000 + getProperty('Water4.width'))
        doTweenX('moveWaterd1', 'Water4', -3000 - getProperty('Water4.width'), 18, 'linear')
        doTweenX('moveWaterd2', 'Water4b', -3000, 18, 'linear')
    end 
    if tag == "moveWatere1" then
        setProperty('Water5.x', -3000)
        setProperty('Water5b.x', -3000 + getProperty('Water5.width'))
        doTweenX('moveWatere1', 'Water5', -3000 - getProperty('Water5.width'), 16, 'linear')
        doTweenX('moveWatere2', 'Water5b', -3000, 16, 'linear')
    end 
    if tag == "moveWaterf1" then
        setProperty('Water6.x', -3000)
        setProperty('Water6b.x', -3000 + getProperty('Water6.width'))
        doTweenX('moveWaterf1', 'Water6', -3000 - getProperty('Water6.width'), 14, 'linear')
        doTweenX('moveWaterf2', 'Water6b', -3000, 14, 'linear')
    end 
    if tag == "moveWaterg1" then
        setProperty('Water7.x', -3000)
        setProperty('Water7b.x', -3000 + getProperty('Water7.width'))
        doTweenX('moveWaterg1', 'Water7', -3000 - getProperty('Water7.width'), 12, 'linear')
        doTweenX('moveWaterg2', 'Water7b', -3000, 12, 'linear')
    end 
    if tag == "moveWaterh1" then
        setProperty('Water8.x', -3000)
        setProperty('Water8b.x', -3000 + getProperty('Water8.width'))
        doTweenX('moveWaterh1', 'Water8', -3000 - getProperty('Water8.width'), 10, 'linear')
        doTweenX('moveWaterh2', 'Water8b', -3000, 10, 'linear')
    end 
    if tag == "moveTreesback1" then
        setProperty('Treesback.x', -3000)
        setProperty('Treesbackb.x', -3000 + getProperty('Treesback.width'))
        doTweenX('moveTreesback1', 'Treesback', -3000 - getProperty('Treesback.width'), 10, 'linear')
        doTweenX('moveTreesback2', 'Treesbackb', -3000, 10, 'linear')
    end 
    if tag == "moveAnimalsback1" then
        setProperty('Animalsback.x', -3000)
        setProperty('Animalsbackb.x', -3000 + getProperty('Animalsback.width'))
        doTweenX('moveAnimalsback1', 'Animalsback', -3000 - getProperty('Animalsback.width'), 10, 'linear')
        doTweenX('moveAnimalsback2', 'Animalsbackb', -3000, 10, 'linear')
    end 
    if tag == "moveGround1" then
        setProperty('Ground.x', -3000)
        setProperty('Groundb.x', -3000 + getProperty('Ground.width'))
        doTweenX('moveGround1', 'Ground', -3000 - getProperty('Ground.width'), 10, 'linear')
        doTweenX('moveGround2', 'Groundb', -3000, 10, 'linear')
    end 
    if tag == "moveFlower1" then
        setProperty('Flower.x', -3000)
        setProperty('Flowerb.x', -3000 + getProperty('Flower.width'))
        doTweenX('moveFlower1', 'Flower', -3000 - getProperty('Flower.width'), 10, 'linear')
        doTweenX('moveFlower2', 'Flowerb', -3000, 10, 'linear')
    end 
    if tag == "moveFinger1" then
        setProperty('Finger.x', -3000)
        setProperty('Fingerb.x', -3000 + getProperty('Finger.width'))
        doTweenX('moveFinger1', 'Finger', -3000 - getProperty('Finger.width'), 10, 'linear')
        doTweenX('moveFinger2', 'Fingerb', -3000, 10, 'linear')
    end 
    if tag == "moveEye1" then
        setProperty('Eye.x', -3000)
        setProperty('Eyeb.x', -3000 + getProperty('Eye.width'))
        doTweenX('moveEye1', 'Eye', -3000 - getProperty('Eye.width'), 10, 'linear')
        doTweenX('moveEye2', 'Eyeb', -3000, 10, 'linear')
    end
    if tag == "moveTreesfront1" then
        setProperty('Treesfront.x', -3000)
        setProperty('Treesfrontb.x', -3000 + getProperty('Treesfront.width'))
        doTweenX('moveTreesfront1', 'Treesfront', -3000 - getProperty('Treesfront.width'), 10, 'linear')
        doTweenX('moveTreesfront2', 'Treesfrontb', -3000, 10, 'linear')
    end
    if tag == "moveAnimalsfront1" then
        setProperty('Animalsfront.x', -3000)
        setProperty('Animalsfrontb.x', -3000 + getProperty('Animalsfront.width'))
        doTweenX('moveAnimalsfront1', 'Animalsfront', -3000 - getProperty('Animalsfront.width'), 10, 'linear')
        doTweenX('moveAnimalsfront2', 'Animalsfrontb', -3000, 10, 'linear')
    end
    if tag == "moveWCloud1" then
        setProperty('WClouds1.x', -3000)
        setProperty('WClouds1b.x', -3000 + getProperty('WClouds1.width'))
        doTweenX('moveWCloud1', 'WClouds1', -3000 - getProperty('WClouds1.width'), 16, 'linear')
        doTweenX('moveWCloud1b', 'WClouds1b', -3000, 16, 'linear')
    end
    if tag == "moveWCloud2" then
        setProperty('WClouds2.x', -3000)
        setProperty('WClouds2b.x', -3000 + getProperty('WClouds2.width'))
        doTweenX('moveWCloud2', 'WClouds2', -3000 - getProperty('WClouds2.width'), 15, 'linear')
        doTweenX('moveWCloud2b', 'WClouds2b', -3000, 15, 'linear')
    end
    if tag == "moveWBG" then
        setProperty('WBG.x', -3000)
        setProperty('WBGb.x', -3000 + getProperty('WBG.width'))
        doTweenX('moveWBG', 'WBG', -3000 - getProperty('WBG.width'), 12, 'linear')
        doTweenX('moveWBGb', 'WBGb', -3000, 12, 'linear')
    end
    if tag == "moveWGround" then
        setProperty('WGround.x', -3000)
        setProperty('WGroundb.x', -3000 + getProperty('WGround.width'))
        doTweenX('moveWGround', 'WGround', -3000 - getProperty('WGround.width'), 5, 'linear')
        doTweenX('moveWGroundb', 'WGroundb', -3000, 5, 'linear')
    end
    if tag == "moveFloor" then
        setProperty('Floor.x', -3000)
        setProperty('Floorb.x', -3000 + getProperty('Floor.width'))
        doTweenX('moveFloor', 'Floor', -3000 - getProperty('Floor.width'), 3, 'linear')
        doTweenX('moveFloorb', 'Floorb', -3000, 3, 'linear')
    end
    if tag == "moveWall" then
        setProperty('Wall.x', -3000)
        setProperty('Wallb.x', -3000 + getProperty('Wall.width'))
        doTweenX('moveWall', 'Wall', -3000 - getProperty('Wall.width'), 4, 'linear')
        doTweenX('moveWallb', 'Wallb', -3000, 4, 'linear')
    end
end
function onEvent(name,v1, v2)
    if name == 'Screen Shake' then
        if v2 == '' then
            setProperty('RedImage.alpha',1)
            doTweenAlpha('desvanecer','RedImage', 0, 0.5, 'linear') 
        end  
    end
end
function onUpdate()
    if followchars == true then
        if mustHitSection == false then           
            setProperty('Moon.flipX', false)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            setProperty('Moon.flipX', true)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end

end