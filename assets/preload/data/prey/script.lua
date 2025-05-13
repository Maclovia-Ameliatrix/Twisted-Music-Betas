local byeSonic = false
xx = 400
yy = 600
ww = 700
zz = 600
function onCreate()
    setProperty('dad.x',-700)

    makeAnimatedLuaSprite('MechaIThink','Custom Characters/EXE/Furnace_sheet',-1200,850)
    setProperty('MechaIThink.antialiasing',false)
    addAnimationByPrefix('MechaIThink','idle','Furnace idle',24,true)
    scaleObject('MechaIThink',6,6)


    makeLuaSprite('MechaIThink2','EXE/Bodrionic.exe/starved/furnace_gotcha',2200,430)
    precacheImage('furnace_gotcha')
    setProperty('MechaIThink2.flipX',true)
    setProperty('MechaIThink2.antialiasing',false)
    scaleObject('MechaIThink2',6,6)

    makeLuaSprite('wowBlack','',0,0)
    setObjectCamera('wowBlack','hud')
    makeGraphic('wowBlack',screenWidth,screenHeight,'0x000000')
    
end

function onStepHit()
    if curStep < 248 then
        setProperty('dad.alpha',0)
        for i = 0,7 do
            setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
        end
    end
    if curStep == 128 then
        setProperty('camZooming',true)
    elseif curStep == 143 then
        setProperty('camZooming',false)
    end
    if curStep == 248 then
        setProperty('dad.alpha',1)
        doTweenX('backMecha','dad',0,1,'quartOut')
    end

    if curStep == 256 then
        for i = 0,7 do
            noteTweenAlpha('HolaNotAgains'..i, i, 1, 0.25,'quartInOut')
        end
    end

    if curStep == 1508 then
        doTweenX('byeMechaRemastered','dad',-1200,2.5,'quartInOut')
        doTweenAngle('byeMechaRemasteredAngle','dad',-180,3.5,'quartInOut')

    end
    if curStep == 1546 then
        for i = 0,7 do
            noteTweenAlpha('AdiosNota'..i, i, 0, 0.25,'quartInOut')
        end
    end
    if curStep == 1788 then
        for i = 0,7 do
            noteTweenAlpha('HolaNota'..i, i, 1, 0.25,'quartInOut')
        end
    end
    if curStep == 1576 then
        doTweenX('helloEggHead','dad',1100,2,'quartOut')
        xx = 1000
        yy = 400
    end
    if curStep == 2448 then
        addLuaSprite('MechaIThink',false)
        doTweenX('rightMecha','MechaIThink',2200,5,'linear')
    end
    if curStep == 3328 then
        doTweenX('byeEggHead','dad',-1200,2.5,'quartInOut')
    end

    if curStep == 3335 then
        for i = 0,7 do
            noteTweenAlpha('AdiosNotaAgain'..i, i, 0, 0.25,'quartInOut')
        end
    end

    if curStep == 3364 then
        addLuaSprite('MechaIThink2',true)
        byeSonic = true
    end
    if curStep == 3367 then
        addLuaSprite('wowBlack')
        cameraFlash('other','0xff0000', 2)
        doTweenAlpha('redBye','wowRed',0,1.5,'linear')
        setProperty('camGame.visible', false)
    end
end
function onEvent(name,v1,v2)
    if name == 'Change Character' then
        if v2 == 'Starved Pixel' and v1 == 'dad' then
            setProperty('dad.x',-1200)
            setProperty('dad.y', 200)
        end
    end
end

function onUpdate()
    setProperty('gf.flipX', false)
    if byeSonic == true and getProperty('MechaIThink2.x') > getProperty('boyfriend.x') then
        setProperty('MechaIThink2.x',getProperty('MechaIThink2.x') - 80)
    end
    if mustHitSection == false then
        triggerEvent('Camera Follow Pos',xx,yy)
    else
        triggerEvent('Camera Follow Pos',ww,zz)
    end
end
function onTweenCompleted(tag)
    if tag == 'rightMecha' then
        removeLuaSprite('MechaIThink',true)
    end
end