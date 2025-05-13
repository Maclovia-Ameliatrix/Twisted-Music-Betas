local xx = 600;
local yy = 600;
local xx2 = 1000;
local yy2 = 650;
local ofs = 10;
local followchars = true;

function onCreate()

    makeLuaSprite('BG', 'EXE/Bodrionic.exe/FunInfiniteStage/pajinslol', -800, -400);
	setLuaSpriteScrollFactor('BG', 1.0, 1.0);
    scaleObject('BG', 2.5, 2.5)
	addLuaSprite('BG', false);
    
    makeLuaSprite('Mountains', 'EXE/Bodrionic.exe/FunInfiniteStage/mountains', -800, -400);
	setLuaSpriteScrollFactor('Mountains', 1.0, 1.0);
    scaleObject('Mountains', 2.5, 2.5)
	addLuaSprite('Mountains', false);

    makeLuaSprite('Floor', 'EXE/Bodrionic.exe/FunInfiniteStage/floor', -800, -400);
	setLuaSpriteScrollFactor('Floor', 1.0, 1.0);
    scaleObject('Floor', 2.5, 2.5)
	addLuaSprite('Floor', false);

    makeLuaSprite('Lights', 'EXE/Bodrionic.exe/FunInfiniteStage/lights', -800, -400);
	setLuaSpriteScrollFactor('Lights', 1.0, 1.0);
    scaleObject('Lights', 2.5, 2.5)
	addLuaSprite('Lights', true);
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