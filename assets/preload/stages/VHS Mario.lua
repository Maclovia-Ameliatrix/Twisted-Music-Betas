local xx = 450;
local yy = 850;
local xx2 = 1050;
local yy2 = 850;
local ofs = 10;
local followchars = true;
function onCreate()
    makeLuaSprite('CosaGris', 'EXE/Mario Locuras/Costume/PedacitoDeGris', -1000, -500);
	setLuaSpriteScrollFactor('CosaGris', 0.5, 0.5);
	addLuaSprite('CosaGris', false);

    makeLuaSprite('MueblesGrises', 'EXE/Mario Locuras/Costume/Floor and Courtains', -1000, -400);
	addLuaSprite('MueblesGrises', false);

    makeLuaSprite('MesaGris', 'EXE/Mario Locuras/Costume/mesa mesa mesa que mas aplauda', -1000, -400);
	addLuaSprite('MesaGris', false);

    makeLuaSprite('LamparaGris', 'EXE/Mario Locuras/Costume/Lamp', -1000, -400);
	addLuaSprite('LamparaGris', false);

    makeLuaSprite('LoDemasGris', 'EXE/Mario Locuras/Costume/Foreground', -800, -400);
	setLuaSpriteScrollFactor('LoDemasGris', 1.4, 1.4);
	addLuaSprite('LoDemasGris', true);

    makeLuaSprite('Vingette','EXE/vignette', 0, 0)
    setObjectCamera('Vingette', 'Other')
    scaleObject('Vingette',0.67,0.67)
    addLuaSprite('Vingette', true)
end

function onUpdate()
    if curStep == 240 then
        xx = 550;
        yy = 700;
        yy2 = 800;
    end
    if curStep == 1184 then
        yy = 850;
        xx = 450;
    end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' or getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' or getProperty('dad.animation.curAnim.name') == 'idle-alt' then
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