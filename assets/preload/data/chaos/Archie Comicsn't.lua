local xx = 1050;
local yy = 750;
local xx2 = 2100;
local yy2 = 800;
local ofs = 30;
local followchars = true;

function onCreate()
    dadX = getProperty('dad.x')
    dadY = getProperty('dad.y')
    setProperty('camHUD.alpha',0)
    setProperty('skipCountdown',true)
end
function onCreatePost()
    setProperty('dad.x',getProperty('Chamber.x') + getProperty('Chamber.width')/2 - 250)
    setProperty('dad.y',getProperty('Chamber.y') + getProperty('Chamber.height')/2.5 + 50)
end

function onStepHit()
    if curStep == 9 then
        xx = 1050;
        yy = 400;
        doTweenY('sonicFleetwayY','dad',dadY,1.25,'quartOut')
        doTweenX('sonicFleetwayX','dad',dadX,1.25,'quartOut')
    end
    if curStep == 60 then
        doTweenAlpha('backHUD','camHUD',1,0.5,'linear')
    end
    if curStep == 993 then
        playSound('Creepypastas/SUPERBF')
        doTweenY('fly', 'boyfriend', getProperty('dad.y') - 25, 1, 'quadInOut')
    end
end
function onUpdate()
    songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/80)
    if curStep >= 20 then
        doTweenY('dadTweenY', 'dad', -85-50*math.sin((currentBeat*0.25)*math.pi),0.001)
        
    end

    if curStep >= 993 then
        doTweenY('BFTweenY', 'boyfriend', 450-50*math.sin((currentBeat*0.25)*math.pi),0.001)
    end

    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' or getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' or getProperty('dad.animation.curAnim.name') == 'Growl' or getProperty('dad.animation.curAnim.name') == 'AAAA' or getProperty('dad.animation.curAnim.name') == 'Ill show you' or getProperty('dad.animation.curAnim.name') == 'Step it up' or getProperty('dad.animation.curAnim.name') == 'Shut up' or getProperty('dad.animation.curAnim.name') == 'fatphobia' or getProperty('dad.animation.curAnim.name') == 'Finished' or getProperty('dad.animation.curAnim.name') == 'Grrr' or getProperty('dad.animation.curAnim.name') == 'WHAT' or getProperty('dad.animation.curAnim.name') == 'lmao' then
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

end

