local xx = -25;
local yy = 0;
local xx2 = 25;
local yy2 = 0;
local ofs = 10;
local followchars = true;

function onCreate()

    makeLuaSprite('Orange', 'white', -2500, -700);
	setLuaSpriteScrollFactor('Orange', 0, 0);
    setProperty('Orange.color', getColorFromHex('0xFFA040'))
    scaleObject('Orange', 6, 6)
	addLuaSprite('Orange', false);
    
    makeLuaSprite('Clouds1', 'EXE/Bodrionic.exe/LordXStage/Hill/clouds1', -2500, -700);
	setLuaSpriteScrollFactor('Clouds1', 1.0, 1.0);
    scaleObject('Clouds1', 6, 6)
    setProperty('Clouds1.antialiasing', false)
	addLuaSprite('Clouds1', false);

    makeLuaSprite('Clouds2', 'EXE/Bodrionic.exe/LordXStage/Hill/clouds2', -2500, -700);
	setLuaSpriteScrollFactor('Clouds2', 1.0, 1.0);
    scaleObject('Clouds2', 6, 6)
    setProperty('Clouds2.antialiasing', false)
	addLuaSprite('Clouds2', false);

    makeLuaSprite('Clouds3', 'EXE/Bodrionic.exe/LordXStage/Hill/clouds3', -2500, -700);
	setLuaSpriteScrollFactor('Clouds3', 1.0, 1.0);
    scaleObject('Clouds3', 6, 6)
    setProperty('Clouds3.antialiasing', false)
	addLuaSprite('Clouds3', false);

    makeLuaSprite('BG', 'EXE/Bodrionic.exe/LordXStage/Hill/bg', -2500, -400);
	setLuaSpriteScrollFactor('BG', 1.0, 1.0);
    scaleObject('BG', 6, 6)
    setProperty('BG.antialiasing', false)
	addLuaSprite('BG', false);

    makeAnimatedLuaSprite('BGWater','EXE/Bodrionic.exe/LordXStage/Hill/bgwater', -2500, -400)
	addAnimationByPrefix('BGWater', 'caida', 'bgwater' , 12, true)
	objectPlayAnimation('BGWater','caida', true)
    setLuaSpriteScrollFactor('BGWater', 1.0, 1.0);
    scaleObject('BGWater', 6, 6);
    setProperty('BGWater.antialiasing', false)
    addLuaSprite('BGWater', false)

    makeAnimatedLuaSprite('Water1','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet', -2500, 100)
	addAnimationByPrefix('Water1', 'Corriente', '1line' , 12, true)
	objectPlayAnimation('Water1','Corriente', true)
    setLuaSpriteScrollFactor('Water1', 1.0, 1.0);
    scaleObject('Water1', 6, 6);
    setProperty('Water1.antialiasing', false)
    addLuaSprite('Water1', false)
    makeAnimatedLuaSprite('Water2','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet', -2500, 125)
	addAnimationByPrefix('Water2', 'Corriente', '2line' , 12, true)
	objectPlayAnimation('Water2','Corriente', true)
    setLuaSpriteScrollFactor('Water2', 1.0, 1.0);
    scaleObject('Water2', 6, 6);
    setProperty('Water2.antialiasing', false)
    addLuaSprite('Water2', false)
    makeAnimatedLuaSprite('Water3','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet', -2500, 150)
	addAnimationByPrefix('Water3', 'Corriente', '3line' , 12, true)
	objectPlayAnimation('Water3','Corriente', true)
    setLuaSpriteScrollFactor('Water3', 1.0, 1.0);
    scaleObject('Water3', 6, 6);
    setProperty('Water3.antialiasing', false)
    addLuaSprite('Water3', false)

    makeAnimatedLuaSprite('Water4','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet', -2500, 175)
	addAnimationByPrefix('Water4', 'Corriente', '4line' , 12, true)
	objectPlayAnimation('Water4','Corriente', true)
    setLuaSpriteScrollFactor('Water4', 1.0, 1.0);
    scaleObject('Water4', 6, 6);
    setProperty('Water4.antialiasing', false)
    addLuaSprite('Water4', false)

    makeAnimatedLuaSprite('Water5','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet', -2500, 200)
	addAnimationByPrefix('Water5', 'Corriente', '5line' , 12, true)
	objectPlayAnimation('Water5','Corriente', true)
    setLuaSpriteScrollFactor('Water5', 1.0, 1.0);
    scaleObject('Water5', 6, 6);
    setProperty('Water5.antialiasing', false)
    addLuaSprite('Water5', false)
    
    makeAnimatedLuaSprite('Water6','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet', -2500, 225)
	addAnimationByPrefix('Water6', 'Corriente', '6line' , 12, true)
	objectPlayAnimation('Water6','Corriente', true)
    setLuaSpriteScrollFactor('Water6', 1.0, 1.0);
    scaleObject('Water6', 6, 6);
    setProperty('Water6.antialiasing', false)
    addLuaSprite('Water6', false)

    makeAnimatedLuaSprite('Water7','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet', -2500, 250)
	addAnimationByPrefix('Water7', 'Corriente', '7line' , 12, true)
	objectPlayAnimation('Water7','Corriente', true)
    setLuaSpriteScrollFactor('Water7', 1.0, 1.0);
    scaleObject('Water7', 6, 6);
    setProperty('Water7.antialiasing', false)
    addLuaSprite('Water7', false)

    makeAnimatedLuaSprite('Water8','EXE/Bodrionic.exe/LordXStage/Hill/water_sheet', -2500, 250)
	addAnimationByPrefix('Water8', 'Corriente', '8line' , 12, true)
	objectPlayAnimation('Water8','Corriente', true)
    setLuaSpriteScrollFactor('Water8', 1.0, 1.0);
    scaleObject('Water8', 6, 6);
    setProperty('Water8.antialiasing', false)
    addLuaSprite('Water8', false)

    makeLuaSprite('Treesback', 'EXE/Bodrionic.exe/LordXStage/Hill/treesback', -2500, -900);
	setLuaSpriteScrollFactor('Treesback', 1.0, 1.0);
    scaleObject('Treesback', 6, 6)
    setProperty('Treesback.antialiasing', false)
	addLuaSprite('Treesback', false);

    makeLuaSprite('Animalsback', 'EXE/Bodrionic.exe/LordXStage/Hill/treesback', -2500, -900);
	setLuaSpriteScrollFactor('Animalsback', 1.0, 1.0);
    scaleObject('Animalsback', 6, 6)
    setProperty('Animalsback.antialiasing', false)
	addLuaSprite('Animalsback', false);

    makeLuaSprite('Ground', 'EXE/Bodrionic.exe/LordXStage/Hill/ground', -2500, -900);
	setLuaSpriteScrollFactor('Ground', 1.0, 1.0);
    scaleObject('Ground', 6, 6)
    setProperty('Ground.antialiasing', false)
	addLuaSprite('Ground', false);
    
    makeLuaSprite('Groundw', 'EXE/Bodrionic.exe/LordXStage/Hill/ground', -2500 - getProperty('Ground.width'), -900);
	setLuaSpriteScrollFactor('Groundw', 1.0, 1.0);
    scaleObject('Groundw', 6, 6)
    setProperty('Groundw.antialiasing', false)
	addLuaSprite('Groundw', false);

    makeAnimatedLuaSprite('Flower','EXE/Bodrionic.exe/LordXStage/Hill/scrollingbgassets', -2500, -900)
	addAnimationByPrefix('Flower', 'Eat', 'eatingflower' , 12, true)
	objectPlayAnimation('Flower','Eat', true)
    setLuaSpriteScrollFactor('Flower', 1.0, 1.0);
    scaleObject('Flower', 6, 6);
    setProperty('Flower.antialiasing', false)
    addLuaSprite('Flower', false)

    makeAnimatedLuaSprite('Finger','EXE/Bodrionic.exe/LordXStage/Hill/scrollingbgassets', -2500, -900)
	addAnimationByPrefix('Finger', 'Dance', 'finger' , 12, true)
	objectPlayAnimation('Finger','Dance', true)
    setLuaSpriteScrollFactor('Finger', 1.0, 1.0);
    scaleObject('Finger', 6, 6);
    setProperty('Finger.antialiasing', false)
    addLuaSprite('Finger', false)

    makeAnimatedLuaSprite('Eye','EXE/Bodrionic.exe/LordXStage/Hill/scrollingbgassets', -2500, -900)
	addAnimationByPrefix('Eye', 'Whink', 'idle' , 12, true)
	objectPlayAnimation('Eye','Whink', true)
    setLuaSpriteScrollFactor('Eye', 1.0, 1.0);
    scaleObject('Eye', 6, 6);
    setProperty('Eye.antialiasing', false)
    addLuaSprite('Eye', false)

    makeLuaSprite('Treesfront', 'EXE/Bodrionic.exe/LordXStage/Hill/treesfront', -2500, -900);
	setLuaSpriteScrollFactor('Treesback', 1.0, 1.0);
    scaleObject('Treesfront', 6, 6)
    setProperty('Treesfront.antialiasing', false)
	addLuaSprite('Treesfront', true);

    makeLuaSprite('Animalsfront', 'EXE/Bodrionic.exe/LordXStage/Hill/animalsfront', -2500, -900);
	setLuaSpriteScrollFactor('Animalsfront', 1.0, 1.0);
    scaleObject('Animalsfront', 6, 6)
    setProperty('Animalsfront.antialiasing', false)
	addLuaSprite('Animalsfront', true);
end

function onUpdate()
    if followchars == true then
        if mustHitSection == false then
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