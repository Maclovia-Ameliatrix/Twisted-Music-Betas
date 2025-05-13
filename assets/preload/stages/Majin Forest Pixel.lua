local xx = -25;
local yy = 0;
local xx2 = 25;
local yy2 = 0;
local ofs = 10;
local followchars = true;

function onCreate()
    
    makeLuaSprite('PixelSky', 'EXE/Bodrionic.exe/FunInfiniteStage/Pixel Sky', -600, -300);
	setLuaSpriteScrollFactor('PixelSky', 1.0, 1.0);
    scaleObject('PixelSky', 0.65, 0.65)
    setProperty('PixelSky.antialiasing', false)
	addLuaSprite('PixelSky', false);

    makeLuaSprite('PixelBush', 'EXE/Bodrionic.exe/FunInfiniteStage/Pixel Bush', -600, -300);
	setLuaSpriteScrollFactor('PixelBush', 1.0, 1.0);
    scaleObject('PixelBush', 0.65, 0.65)
    setProperty('PixelBush.antialiasing', false)
	addLuaSprite('PixelBush', false);

    makeLuaSprite('PixelFloor', 'EXE/Bodrionic.exe/FunInfiniteStage/Pixel Floor', -600, -300);
	setLuaSpriteScrollFactor('PixelFloor', 1.0, 1.0);
    scaleObject('PixelFloor', 0.65, 0.65)
    setProperty('PixelFloor.antialiasing', false)
	addLuaSprite('PixelFloor', false);

    makeLuaSprite('PixelMajins', 'EXE/Bodrionic.exe/FunInfiniteStage/Pixel Majins', -600, -300);
	setLuaSpriteScrollFactor('PixelMajins', 1.0, 1.0);
    scaleObject('PixelMajins', 3.75, 3.75)
    setProperty('PixelMajins.antialiasing', false)
	addLuaSprite('PixelMajins', false);

    makeLuaSprite('PixelMajins2', 'EXE/Bodrionic.exe/FunInfiniteStage/Pixel Majin Front', -600, -300);
	setLuaSpriteScrollFactor('PixelMajins2', 1.0, 1.0);
    scaleObject('PixelMajins2', 0.65, 0.65)
    setProperty('PixelMajins2.antialiasing', false)
	addLuaSprite('PixelMajins2', true);

    makeLuaSprite('Overlay', 'EXE/Bodrionic.exe/FunInfiniteStage/blueVg', 0, 0);
	setLuaSpriteScrollFactor('Overlay', 1.0, 1.0);
    setObjectCamera('Overlay', 'hud')
--    scaleObject('Overlay', 6, 6)
	addLuaSprite('Overlay', false);

end

function onUpdate()
    setProperty('boyfriend.color', getColorFromHex('0x6644bb'))
    setProperty('dad.color', getColorFromHex('0x6644bb'))
    setProperty('timeBar.color', getColorFromHex('0x0000BB'))
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
            if getProperty('dad.animation.curAnim.name') == 'danceLeft' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'danceRight' then
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