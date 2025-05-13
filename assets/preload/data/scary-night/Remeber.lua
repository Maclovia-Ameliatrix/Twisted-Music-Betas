local followchars = true
local xx = 1200
local yy = 200
local xx2 = 1400
local yy2 = 400
local ofs = 20

function onCreate()
    setProperty('skipCountdown',true)
    makeAnimatedLuaSprite('Ondas', 'Mandela/waves', 0, 0)
    addAnimationByPrefix('Ondas', 'idle', 'idle', 24, true)
    scaleObject('Ondas', 5 ,5)
    setObjectCamera('Ondas', 'other')
    addLuaSprite('Ondas')
    setProperty('Ondas.alpha', 0)
end

function onUpdate()
  if followchars == true then
    if mustHitSection == false then
        setProperty('defaultCamZoom', 0.7)
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
        setProperty('defaultCamZoom', 0.5)
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
      if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
        triggerEvent('Camera Follow Pos',xx2,yy2)
      end
      if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
        triggerEvent('Camera Follow Pos',xx2,yy2)
      end
    end
  end
end

function onStepHit()

  if curStep == 1590 then
    doTweenAlpha('HipnoOndas','Ondas', 1, 6, 'circInOut')
    objectPlayAnimation('Ondas','idle',false)
  end

  if curStep == 1663 then
    followchars = false
    setProperty('defaultCamZoom', 0.9)
    doTweenAlpha('HipnoOndas','Ondas', 0, 6, 'circInOut')
    setProperty('White.visible', true)
    setProperty('boyfriend.visible', false)
    setProperty('stageback.visible', false)
    setProperty('Stairs.visible', false)
  end
  if curStep == 1663 then
    triggerEvent('Camera Follow Pos',1150,150)
  end

  if curStep == 2424 then
    doTweenAlpha('HipnoOndas','Ondas', 1, 1, 'linear')
    objectPlayAnimation('Ondas','idle',false)
  end

  if curStep == 2432 then
    followchars = true
    doTweenAlpha('HipnoOndas','Ondas', 0, 1, 'linear')
    setProperty('boyfriend.visible', true)
    setProperty('White.visible', false)
    setProperty('stageback.visible', true)
    setProperty('Stairs.visible', true)
    objectPlayAnimation('Ondas','idle',false)
  end
end