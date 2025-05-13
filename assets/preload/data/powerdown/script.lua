local playedIntro = false
local xx = 350;
local yy = -350;
local xx2 = 1400;
local yy2 = 300;
local ofs = 15;
local followchars = false;
function onCreate()
    triggerEvent('Alt Idle Animation', 'GF', '-alt')
    makeLuaSprite('intro','EXE/Mario Locuras/MX/mxscreen',0,0)
    setObjectCamera('intro','hud')
    scaleObject('intro',3,3)
    screenCenter('intro')

    setProperty('camGame.alpha',0)
    setProperty('camHUD.alpha',0)
    setProperty('intro.alpha',0)
    addLuaSprite('intro',true)

    makeLuaSprite('Oscuro', 'white', -300, -200);
    scaleObject('Oscuro', 10, 10)
    setObjectCamera('Oscuro', 'Hud')
    setProperty('Oscuro.alpha', 0)
    setProperty('Oscuro.color', getColorFromHex('0x000000'))
	addLuaSprite('Oscuro', false);

    makeAnimatedLuaSprite('MXDialogue','EXE/Mario Locuras/MX/MX_Dialogue_Asseta',200, 100)
    addAnimationByPrefix('MXDialogue','Talk','Innocence',42, false)
    setObjectCamera('MXDialogue', 'CamHUD')
    setProperty('MXDialogue.alpha',0)
    addLuaSprite('MXDialogue', false)

    makeAnimatedLuaSprite('powerGlitch','EXE/Mario Locuras/MX/Mario_static',0,0)
    addAnimationByPrefix('powerGlitch','anim','static play',24,true)
    setProperty('powerGlitch.alpha',0)
    setObjectCamera('powerGlitch','hud')
    addLuaSprite('powerGlitch',false)
end

function onTimerCompleted(tag)
    if tag == 'introAppears' then
        setProperty('camGame.alpha',1)
        setProperty('camHUD.alpha',1)
        setProperty('intro.alpha',1)
        runTimer('introExit',2)
    elseif tag == 'introExit' then
        doTweenAlpha('introAlpha','intro',0,0.5,'cubeIn')
        playedIntro = true
        startCountdown()
    end
end
function onStartCountdown()
   if not playedIntro then
        runTimer('introAppears',1)
        return Function_Stop;
   end 
end
function onSongStart()
    setProperty('camGame.alpha',1)
    setProperty('camHUD.alpha',1)
    cancelTween('introAlpha')
    removeLuaSprite('intro',true)
end
function onUpdate()
    if followchars == true then
       if mustHitSection == false then
        setProperty('defaultCamZoom', 0.3)
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
        setProperty('defaultCamZoom', 0.65)
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
function onStepHit()
    if curStep == 512 then
        doTweenAlpha('blackAlpha','Oscuro',1,1,'quadOut')
    end
    if curStep == 528 then
        setProperty('boyfriend.visible',false)
        setProperty('gf.visible',false)
        setProperty('dad.visible',false)
        setProperty('FakeBG.visible',false)
        setProperty('FakeLight.visible',false)
        setProperty('Oscuro.alpha', 0)
        setProperty('MXTransform.visible',true)
        objectPlayAnimation('MXTransform', 'Wahooo');
    end
    if curStep >= 544 then
        setProperty('boyfriend.x', 850)
        setProperty('gf.x', 1350)
        setProperty('gf.y', 50)
    end
    if curStep == 544 then
        followchars = true;
        removeLuaSprite('FakeBG')
        removeLuaSprite('FakeLight')
        removeLuaSprite('MXTransform')
        setProperty('boyfriend.visible',true)
        setProperty('MXTransform.visible',false)
        setProperty('gf.visible',true)
        setProperty('dad.visible',true)
        setProperty('BG.visible',true)
        setProperty('Nube.visible',true)
        setProperty('Ojos.visible',true)
        setProperty('LoDemas.visible',true)
        setProperty('LucasHead.visible',true)
        setProperty('Lucas.visible',true)
        setProperty('Toad.visible',true)
        setProperty('Arbustos.visible',true)
    end
    if curStep == 1912 then
        doTweenAlpha('blackAlpha','Oscuro',1,1,'quadOut')
    end
    if curStep == 1936 then
        doTweenAlpha('MXTalk','MXDialogue',1,0.5,'quadOut')
        objectPlayAnimation('MXDialogue','Talk');
    end
    if curStep == 1961 then
        doTweenAlpha('MXbye','MXDialogue',0,0.75,'quadOut')
    end
    if curStep == 1984 then
        removeLuaSprite('MXDialogue')
        setProperty('gf.visible',false)
        setProperty('TurboPapeada.visible',true)
        setProperty('Oscuro.alpha',0)
    end
    if curStep == 2248 then
        doTweenAlpha('glitchAlpha','powerGlitch',1,2,'linear')
    end
end