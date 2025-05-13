local xx = 1000;
local yy = 700;
local xx2 = 1000;
local yy2 = 700;
local ofs = 10;
local followchars = true;

function onCreate()

    makeAnimatedLuaSprite('Simps','Minor Mods/New Public/FS/bg', 0, -100)
    addAnimationByPrefix('Simps', 'Admiradores', 'crowd' ,24, true)
    scaleObject('Simps', 1, 1)
    addLuaSprite('Simps', false);

	makeLuaSprite('Fondo','Minor Mods/New Public/FS/front', 0, 900)
	scaleObject('Fondo', 1, 1)
	addLuaSprite('Fondo', false)

    makeLuaSprite('Lights','Minor Mods/New Public/New/grad', 50, -100)
	scaleObject('Lights', 1.25, 1.25)
    setProperty('Lights.alpha', 0.5)
    setBlendMode('Lights', 'add')
	addLuaSprite('Lights', true)

    makeLuaSprite('Abajo', 'black', 0, -60);
    scaleObject('Abajo', 1.3,1.3)
    setObjectCamera('Abajo', 'camHUD')
	addLuaSprite('Abajo', false);

    makeLuaSprite('Arriba', 'black', 0, 660);
    scaleObject('Arriba', 1.3,1.3)
    setObjectCamera('Arriba', 'camHUD')
	addLuaSprite('Arriba', false);
end

function onUpdate()
    for i = 0,3 do
		setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
	end

	setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 -320);
	setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 -320);
	setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 -320);
	setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 -320);
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