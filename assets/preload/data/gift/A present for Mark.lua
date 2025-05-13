local xx = 600; 
local yy = 1100; 
local xx2 = 700; 
local yy2 = 1175; 
local ofs = 10;
local followchars = true;
function onCreate()
    setProperty('gf.visible', false)
	setProperty('skipCountdown',true)
	makeLuaSprite('thedeathofmarkheathcliff', 'white', -550, -100);
	setProperty('thedeathofmarkheathcliff.color', getColorFromHex('0xFF0000'))
	addLuaSprite('thedeathofmarkheathcliff', true);
	scaleObject('thedeathofmarkheathcliff', 2.4, 8.4);
	setProperty('thedeathofmarkheathcliff.alpha', 0)

	makeLuaText('dead', '3:33', '300', 590, 19)
    setTextAlignment('dead', 'left')
    setTextSize('dead', '34')
    setObjectCamera('dead', 'camHud')
	addLuaText('dead', true)
	doTweenAlpha('dead', 'dead', 0, 0.00001, 'linear')

	makeLuaText('error', 'ERRORCODE: 333 | Combo Breaks: 333 | Accuracy: 3.33%', '700', 300, 675)
    setTextAlignment('error', 'left')
    setTextSize('error', '20')
    setObjectCamera('error', 'camHud')
	addLuaText('error', true)
	doTweenAlpha('error', 'error', 0, 0.00001, 'linear')

end
function onStepHit()
	if curStep == 1024 then
		setProperty('Table.alpha', 0)
	end
	if curStep == 1280 then
	setProperty('health',0.000000001)
	setProperty('timeTxt.visible', false)
	setProperty('scoreTxt.visible', false)
	doTweenAlpha('thedeathofmarkheathcliff', 'thedeathofmarkheathcliff', 1, 0.00001, 'linear')
	doTweenAlpha('dead', 'dead', 1, 0.00001, 'linear')
	doTweenAlpha('error', 'error', 1, 0.00001, 'linear')
	end
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
    end
end