local xx = 100; 
local yy = 100; 
local ofs = 20;
local followchars = true;

function onCreate()
	makeLuaSprite('UncannyBG1', 'Hotline 024/ena/ENA-1', -800, -450);
    scaleObject('UncannyBG1', 1.25, 1.25)
    setScrollFactor('UncannyBG1',0.4,0.4)
	addLuaSprite('UncannyBG1', false);
	
	makeLuaSprite('UncannyBG2', 'Hotline 024/ena/ENA-2', -925, -525);
    scaleObject('UncannyBG2', 1.25, 1.25)
    setScrollFactor('UncannyBG2',0.6,0.6)
	addLuaSprite('UncannyBG2', false);

	makeLuaSprite('UncannyBG3', 'Hotline 024/ena/ENA-3', -1100, -600);
    scaleObject('UncannyBG3', 1.25, 1.25)
    setScrollFactor('UncannyBG3',0.8,0.8)
	addLuaSprite('UncannyBG3', false);

	makeLuaSprite('UncannyBG4', 'Hotline 024/ena/OERLAY-4', -1200, -700);
    scaleObject('UncannyBG4', 1.25, 1.25)
    setScrollFactor('UncannyBG4', 1, 1)
	addLuaSprite('UncannyBG4', true);

	makeLuaSprite('UncannyBG5', 'Hotline 024/ena/ENA-5', -1250, -800);
    scaleObject('UncannyBG5', 1.25, 1.25)
    setScrollFactor('UncannyBG5',1.2, 1.2)
	addLuaSprite('UncannyBG5', true);

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
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end

        else
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end