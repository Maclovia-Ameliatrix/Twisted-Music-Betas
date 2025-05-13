local xx = 1000; 
local yy = 950; 
local xx2 = 1500; 
local yy2 = 950; 
local ofs = 15;
local followchars = true;

function onCreate()
	makeLuaSprite('NeoBack', 'Neo/alley/back', -250, 300);
	setScrollFactor('NeoBack', 1.0, 1.0);
	scaleObject('NeoBack', 1.2, 1.2);

	makeAnimatedLuaSprite('NeoNeon', 'Neo/alley/neon', 300, 300);
	addAnimationByPrefix('NeoNeon', 'idle', 'neon_tick', 24, true);
	setScrollFactor('NeoNeon', 1.0, 1.0);
	scaleObject('NeoNeon', 1.2, 1.2);
	setBlendMode('NeoNeon', 'screen');

	makeLuaSprite('NeoLightA', 'Neo/alley/blend_02', -250, 300);
	setScrollFactor('NeoLightA', 1.0, 1.0);
	scaleObject('NeoLightA', 1.2, 1.2);
    setBlendMode('NeoLightA', 'multiply');

	makeLuaSprite('NeoLightB', 'Neo/alley/blend_01', -250, 300);
	setScrollFactor('NeoLightB', 1.0, 1.0);
	scaleObject('NeoLightB', 1.2, 1.2);
    setBlendMode('NeoLightB', 'screen');

	makeLuaSprite('NeoFront', 'Neo/alley/front', -250, 300);
	setScrollFactor('NeoFront', 0.8, 0.8);
	scaleObject('NeoFront', 1.2, 1.2);

	addLuaSprite('NeoBack', false);
	addLuaSprite('NeoNeon', false);
	addLuaSprite('NeoLightA', true);
	addLuaSprite('NeoLightB', true);
	addLuaSprite('NeoFront', true);

    makeLuaSprite('Abajo', 'black', 0, -80);
    scaleObject('Abajo', 1.3,1.3)
    setObjectCamera('Abajo', 'camHUD')
	addLuaSprite('Abajo', false);

    makeLuaSprite('Arriba', 'black', 0, 660);
    scaleObject('Arriba', 1.3,1.3)
    setObjectCamera('Arriba', 'camHUD')
	addLuaSprite('Arriba', false);
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