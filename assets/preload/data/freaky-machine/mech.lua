local xx = 700;
local yy = 600;
local xx2 = 900;
local yy2 = 600;
local ofs = 15;
local followchars = true;

function onCreate()
    makeLuaSprite('dark', 'white',0,0);
    scaleObject('dark', 5, 5)
    setProperty('dark.color', getColorFromHex('0x000000'))
	setProperty('dark.alpha', 0)
    setObjectCamera('dark','other')
    addLuaSprite('dark', false);
end

function onUpdate()
	if curStep == 672 then
		characterPlayAnim('dad','Transformation',false)
		doTweenAlpha('blk','dark', 1, 1, 'linear')
	end
	if curStep == 704 then
		yy = 350;
		doTweenAlpha('blk','dark', 0, 0.1, 'linear')
		doTweenX('cur1','left', -1200, 0.75, 'linear')
		doTweenX('cur2','right', 1200, 0.75, 'linear')
	end
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
			if getProperty('dad.animation.curAnim.name') == 'idle' or getProperty('dad.animation.curAnim.name') == 'transformation' then
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