local xx = 900;
local yy = 500;
local xx2 = 1100;
local yy2 = 500;
local ofs = 0;
local followchars = true;


function onCreate()

    makeLuaSprite('Background', 'Doki Doki/wilt/DokiMenuBG', -900, -600);
	scaleObject('Background', 5, 5);
    setScrollFactor('Background', 0, 0)
	addLuaSprite('Background', false);

    makeLuaSprite('Pixel', 'Doki Doki/wilt/bg', 0, 0);
	scaleObject('Pixel', 1.35, 1.35);
	addLuaSprite('Pixel', false);

    makeLuaSprite('Unpixel', 'Doki Doki/wilt/bg2', 0, 0);
	scaleObject('Unpixel', 1.35, 1.35);
    setProperty('Unpixel.alpha', 0)
	addLuaSprite('Unpixel', false);

    makeLuaSprite('Games', 'Doki Doki/wilt/p1', 0, 0);
	scaleObject('Games', 1.35, 1.35);
	addLuaSprite('Games', true);

    makeLuaSprite('Hames', 'Doki Doki/wilt/p2', 0, 0);
	scaleObject('Hames', 1.35, 1.35);
    setProperty('Hames.alpha', 0)
	addLuaSprite('Hames', true);

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