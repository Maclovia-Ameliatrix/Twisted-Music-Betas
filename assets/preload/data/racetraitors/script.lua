local xx = 350;
local yy = 350;
local xx2 = 900;
local yy2 = 150;
local ofs = 15;
local followchars = true;

function onCreatePost()
    setProperty('dadGroup.x',2000) 
    makeAnimatedLuaSprite('UnknownBox','EXE/Mario Locuras/Races/cajamk',590,-250)
    addAnimationByPrefix('UnknownBox','anim','cajamk random',24,true)
    addAnimationByPrefix('UnknownBox','Bomb-obs','cajamk bomb',24,true)
    addAnimationByPrefix('UnknownBox','Ghost','cajamk ghost',24,true)
    addAnimationByPrefix('UnknownBox','Mushroom','cajamk mushroom',24,true)
    addAnimationByPrefix('UnknownBox','ShellRed','cajamk redshell',24,true)
    addAnimationByPrefix('UnknownBox','ShellGreen','cajamk greenshell',24,true)
    addAnimationByPrefix('UnknownBox','Banana','cajamk banana',24,true)
    addAnimationByPrefix('UnknownBox','Flower','cajamk flower',24,true)
    addAnimationByPrefix('UnknownBox','Infinite','cajamk infinite',24,true)
    setObjectCamera('UnknownBox', 'camHUD')
    setProperty('UnknownBox.alpha', 0)
    setProperty('camHUD.alpha', 0)
    addLuaSprite('UnknownBox',false)

    makeLuaSprite('Shell','EXE/Mario Locuras/Races/redshell',-100,600)
    setObjectCamera('Shell', 'camHUD')
    addLuaSprite('Shell',true)
end
function onStepHit()
    if curStep == 16 then
        doTweenX('dadX','dadGroup',-250,1,'expoOut')
    end
    if curStep == 80 then
        doTweenAlpha('racist','camHUD',1,1,'linear')
    end
    if curStep == 336 then
        doTweenY('box','UnknownBox',50,1,'quadIn')
        doTweenAlpha('Power','UnknownBox',1,1,'quadIn')
    end
    if curStep == 752 then
        objectPlayAnimation('UnknownBox','anim')
    end
    if curStep == 1042 then
        doTweenAlpha('racist','camHUD',0,0.5,'linear')
    end
    if curStep == 1051 then
        doTweenX('kratosX','kratos',460,0.5,'quadIn')
    end
    if curStep == 1056 then
        setProperty('camGame.visible', false)
    end
end
function onBeatHit()
    if curBeat >= 196 and curBeat <= 260 then
        triggerEvent('Add Camera Zoom','0.01','')
    end
end
function onUpdate()
    songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/80)
    doTweenY('boyfriendTweenY', 'boyfriend', -350+50*math.sin((currentBeat*0.35)*math.pi),0.001)
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

function onEvent(name,v1,v2)
    if name == 'Random Item' then
        if v1 == '1' or v1 == 'red shell' or v1 == 'caparazon rojo' then
            doTweenX('attack','Shell',getProperty('iconP2.x'),0.15,'linear')
            objectPlayAnimation('UnknownBox','ShellRed')
            for strums = 0,7 do --
                noteTweenAlpha('NoteAlphaStart'..strums,strums, 1, 0.75, 'linear')
            end
        elseif v1 == '2' or v1 == 'bomb' or v1 == 'bomba' then
            objectPlayAnimation('UnknownBox','Bomb-obs')
            for strums = 0,7 do
                noteTweenAlpha('NoteAlphaStart'..strums,strums, 1, 0.75, 'linear')
            end
        elseif v1 == '3' or v1 == 'ghost' or v1 == 'fantasma' then
            for strums = 0,7 do
                noteTweenAlpha('NoteAlphaStart'..strums,strums, 0.25, 0.75, 'linear')
            end
            objectPlayAnimation('UnknownBox','Ghost')
        elseif v1 == '4' or v1 == 'mushroom' or v1 == 'hongo' then
            for strums = 0,7 do
                noteTweenAlpha('NoteAlphaStart'..strums,strums, 1, 0.75, 'linear')
            end
            objectPlayAnimation('UnknownBox','Mushroom')
        elseif v1 == '5' or v1 == 'green shell' or v1 == 'caparazon verde' then
            for strums = 0,7 do
                noteTweenAlpha('NoteAlphaStart'..strums,strums, 1, 0.75, 'linear')
            end
            objectPlayAnimation('UnknownBox','ShellGreen')
        elseif v1 == '6' or v1 == 'banana' or v1 == 'platano' then
            for strums = 0,7 do
                noteTweenAlpha('NoteAlphaStart'..strums,strums, 1, 0.75, 'linear')
            end
            objectPlayAnimation('UnknownBox','Banana')
        elseif v1 == '7' or v1 == 'flower' or v1 == 'flor' then
            for strums = 0,7 do
                noteTweenAlpha('NoteAlphaStart'..strums,strums, 1, 0.75, 'linear')
            end
            objectPlayAnimation('UnknownBox','Flower')
        elseif v1 == '8' or v1 == 'infinite' or v1 == 'infinito' then
            for strums = 0,7 do
                noteTweenAlpha('NoteAlphaStart'..strums,strums, 1, 0.75, 'linear')
            end
            objectPlayAnimation('UnknownBox','Infinite')
        end
    end
end

function onTweenCompleted(tag)
    if tag == 'attack' then
        health = getProperty('health')
        setProperty('health', health - 0.3)
        playSound('Creepypastas/shellhit');
        doTweenX('ouch1','Shell',getProperty('Shell.x') - 200,0.15,'linear')
        doTweenY('ouch2','Shell',getProperty('Shell.y') - 100,0.15,'linear')
        doTweenAlpha('ouch3','Shell',0 ,0.15,'linear')
        doTweenAngle('ouch4','Shell', 360 , 1,'linear')
    elseif tag == 'ouch3' then
        cancelTween('ouch4')
        setProperty('Shell.alpha', 1)
        setProperty('Shell.x',-100)
        setProperty('Shell.y',600)
        setProperty('Shell.angle',0)
    end
end