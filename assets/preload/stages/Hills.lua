local xx = 600;
local yy = 750;
local xx2 = 1000;
local yy2 = 750;
local ofs = 30;
local followchars = true;

function onCreate()

    makeLuaSprite('Sky', 'EXE/Bodrionic.exe/LordXStage/CyclesBG/Sky', -1000, -700);
	setLuaSpriteScrollFactor('Sky', 0.25, 0.25);
    scaleObject('Sky', 1, 1)
	addLuaSprite('Sky', false);

    makeLuaSprite('Moon', 'EXE/Bodrionic.exe/LordXStage/CyclesBG/EyeMoon', -1000, -600);
	setLuaSpriteScrollFactor('Moon', 0.25, 0.25);
    scaleObject('Moon', 1, 1)
	addLuaSprite('Moon', false);

    makeLuaSprite('Hill', 'EXE/Bodrionic.exe/LordXStage/CyclesBG/Mountains', -1000, -600);
	setLuaSpriteScrollFactor('Hill', 0.5, 0.5);
    scaleObject('Hill', 1, 1)
	addLuaSprite('Hill', false);

    makeAnimatedLuaSprite('Water','EXE/Bodrionic.exe/LordXStage/CyclesBG/WaterAnim', -1015, 400)
	addAnimationByPrefix('Water', 'Corriente', 'WaterAnim' , 24, true)
	objectPlayAnimation('Water','Corriente' ,true)
    setLuaSpriteScrollFactor('Water', 0.5, 0.5);
    scaleObject('Water', 1.15, 1.15)
	addLuaSprite('Water', false)

    makeLuaSprite('BackFloor', 'EXE/Bodrionic.exe/LordXStage/CyclesBG/BackPlatforms', -1000, -800);
	setLuaSpriteScrollFactor('BackFloor', 0.75, 0.75);
    scaleObject('BackFloor', 1, 1)
	addLuaSprite('BackFloor', false);

    makeLuaSprite('Floor', 'EXE/Bodrionic.exe/LordXStage/CyclesBG/Floor', -800, 900);
	setLuaSpriteScrollFactor('Floor', 1.0, 1.0);
    scaleObject('Floor', 0.85, 0.85)
	addLuaSprite('Floor', false);

    makeLuaSprite('Bushes', 'EXE/Bodrionic.exe/LordXStage/CyclesBG/Bushes', -800, -100);
	setLuaSpriteScrollFactor('Bushes', 1.0, 1.0);
    scaleObject('Bushes', 1, 1)
	addLuaSprite('Bushes', false);

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