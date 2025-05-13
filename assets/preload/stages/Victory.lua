local xx = 350;
local yy = 400;
local xx2 = 450;
local yy2 = 400;
local ofs = 10;
local followchars = true;

function onCreate()

    makeAnimatedLuaSprite('NeonLight', 'Impostor/Jorsawsee/Victory/victorytext', -150, 50)
    addAnimationByPrefix('NeonLight', 'Neon', 'VICTORY', 24, false)
    objectPlayAnimation('NeonLight', 'Neon', false)
    addLuaSprite('NeonLight', false)

    makeAnimatedLuaSprite('Losers', 'Impostor/Jorsawsee/Victory/vic_bgchars', -700, 100)
    addAnimationByPrefix('Losers', 'Bop', 'lol thing', 24, false)
    objectPlayAnimation('Losers', 'Bop', false)
    addLuaSprite('Losers', false)

    makeLuaSprite('Nube1', 'Impostor/Jorsawsee/Victory/fog_back', -400, 500);
    scaleObject('Nube1', 1, 1)
    setProperty('Nube1.alpha', 0.3)
	addLuaSprite('Nube1', false);

    makeAnimatedLuaSprite('Warchief', 'Impostor/Jorsawsee/Victory/vic_war', 250, 300)
    addAnimationByPrefix('Warchief', 'Purple', 'warchiefbganim', 24, false)
    setProperty('Warchief.alpha', 0)
    objectPlayAnimation('Warchief', 'Purple', false)
    addLuaSprite('Warchief', false)

    makeAnimatedLuaSprite('Jelqer', 'Impostor/Jorsawsee/Victory/vic_jelq', 250, 300)
    addAnimationByPrefix('Jelqer', 'White', 'jelqeranim', 24, false)
    setProperty('Jelqer.alpha', 0)
    objectPlayAnimation('Jelqer', 'White', false)
    addLuaSprite('Jelqer', false)

    makeAnimatedLuaSprite('Jorsawsee', 'Impostor/Jorsawsee/Victory/vic_jor', 250, 300)
    addAnimationByPrefix('Jorsawsee', 'Blue', 'jorsawseebganim', 24, false)
    setProperty('Jorsawsee.alpha', 0)
    objectPlayAnimation('Jorsawsee', 'Blue', false)
    addLuaSprite('Jorsawsee', false)

    makeLuaSprite('Nube2', 'Impostor/Jorsawsee/Victory/fog_mid', -800, 500);
    scaleObject('Nube2', 1, 1)
    setProperty('Nube2.alpha', 0.3)
	addLuaSprite('Nube2', false);

    makeLuaSprite('Lights', 'Impostor/Jorsawsee/Victory/victory_spotlights', -500, -200);
    scaleObject('Lights', 1, 1)
    setProperty('Lights.alpha', 0.5)
	addLuaSprite('Lights', false);

    makeAnimatedLuaSprite('BluePulse', 'Impostor/Jorsawsee/Victory/victory_pulse', -1000, 100)
    addAnimationByPrefix('BluePulse', 'Pulse', 'animatedlight', 24, false)
    objectPlayAnimation('BluePulse', 'Pulse', false)
    addLuaSprite('BluePulse', true)

    makeLuaSprite('Nube3', 'Impostor/Jorsawsee/Victory/fog_front', -1600, 650);
    scaleObject('Nube3', 1, 1)
    setProperty('Nube3.alpha', 0.3)
	addLuaSprite('Nube3', true);

    makeLuaSprite('Black','minor mods/Entity/white', -800, -300)
    setProperty('Black.color', getColorFromHex('0x000000'))
    setProperty('Black.alpha', 0)
    scaleObject('Black', 10 ,10)
    addLuaSprite('Black',true)
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
            if getProperty('dad.animation.curAnim.name') == 'Hey' then
                triggerEvent('Camera Follow Pos',xx-ofs,yyh)
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

function onBeatHit()
	if curBeat % 2 == 0 then
        objectPlayAnimation('NeonLight', 'Neon', false)
        objectPlayAnimation('Losers', 'Bop', false)
        objectPlayAnimation('BluePulse', 'Pulse', false)
        objectPlayAnimation('Warchief', 'Purple', false)
        objectPlayAnimation('Jelqer', 'White', false)
        objectPlayAnimation('Jorsawsee', 'Blue', false)
    end
end