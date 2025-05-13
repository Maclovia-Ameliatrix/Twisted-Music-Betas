local xx = -200;
local yy = 350;
local xx2 = 1000;
local yy2 = 350;
local xx3 = 1050;
local yy3 = 350;
local ofs = 25;
local followchars = true;

function onCreate()
    makeLuaSprite('Bar', 'EXE/Mickey/leakers/bg', -2200, -500);
	scaleObject('Bar', 1.2, 1.2)
	addLuaSprite('Bar', false);

    makeLuaSprite('Mesa1', 'EXE/Mickey/leakers/mesa1', -700, 0);
	addLuaSprite('Mesa1', false);

    makeLuaSprite('Mesa2', 'EXE/Mickey/leakers/mesa2', -1000, 250);
	addLuaSprite('Mesa2', false);

    makeAnimatedLuaSprite('EsclavosXD','EXE/Mickey/leakers/Devs', -325, -125)
	addAnimationByPrefix('EsclavosXD', 'Decepcionados', 'DEVS' ,24, false)
	addLuaSprite('EsclavosXD', false)
	scaleObject('EsclavosXD', 1.2, 1.2)
	objectPlayAnimation('EsclavosXD','Decepcionados', false)

    makeAnimatedLuaSprite('Oswald','EXE/Mickey/leakers/oswald', 1250, -50);
    addAnimationByPrefix('Oswald','idle', 'mesa OSWALD', 24, true);
    addAnimationByPrefix('Oswald','Fail', 'OSWALD MANCO NO PUSO PARED', 24, false);
    addLuaSprite('Oswald',false)

    makeLuaSprite('Mesa3', 'EXE/Mickey/leakers/mesa3', 1600, 400);
	addLuaSprite('Mesa3', true);

    makeLuaSprite('Mesa4', 'EXE/Mickey/leakers/mesa4', -1700, 400);
	addLuaSprite('Mesa4', true);

    makeAnimatedLuaSprite('Demons','EXE/Mickey/leakers/DEMONS_DANCE', 75, 325);
    addAnimationByPrefix('Demons','Dance', 'DEMONS IDLE', 24, true);
    addAnimationByPrefix('Demons','Trompeta', 'DEMONS TROMPETA', 22, false);
    scaleObject('Demons', 1.2, 1.2)
    addLuaSprite('Demons',false)

    makeAnimatedLuaSprite('Retro', 'EXE/Mickey/grain', 0, 0)
    addAnimationByPrefix('Retro', 'grain', 'grain', 24, true)
    scaleObject('Retro', 1.25, 1.25)
    objectPlayAnimation('Retro', 'grain', true)
    setObjectCamera('Retro', 'other')
    addLuaSprite('Retro', true)
end
function onUpdate()
    if getProperty('Demons.animation.curAnim.name') == 'Trompeta' and getProperty('Demons.animation.curAnim.finished') == true then
        objectPlayAnimation('Demons','Dance')
    end
    if curStep == 2007 then
        objectPlayAnimation('Oswald','Fail')
        setProperty('leakersOswald.offset.x',64)
        setProperty('leakersOswald.offset.y',109)
    end
end

function onBeatHit()
    if curBeat % 1 == 0 then
		objectPlayAnimation('EsclavosXD','Decepcionados', false);
    end
end

function onEvent(name)
    if name == 'Trompeta Diablo Leakers' then
        objectPlayAnimation('Demons','Trompeta',true)
    end

    if name == 'Idle Diablo Leakers' then
        objectPlayAnimation('Demons','Dance',true)
    end
end
--960 camera fix
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
            if getProperty('dad.animation.curAnim.name') == 'idle' or getProperty('dad.animation.curAnim.name') == 'BurlaXD' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if gfSection == true then
                if getProperty('gf.animation.curAnim.name') == 'singLEFT' then
                    triggerEvent('Camera Follow Pos',xx3-ofs,yy3)
                end
                if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                    triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
                end
                if getProperty('gf.animation.curAnim.name') == 'singUP' then
                    triggerEvent('Camera Follow Pos',xx3,yy3-ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                    triggerEvent('Camera Follow Pos',xx3,yy3+ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'idle' then
                    triggerEvent('Camera Follow Pos',xx3,yy3)
                end
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
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                    triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    setObjectOrder('momGroup',6);
end