local xx = 0;
local yy = 0;
local xx2 = 0;
local yy2 = 0;
local ofs = 10;
local origin = 0;
local followchars = true;

function onCreate()
    if downscroll then
        origin = -375
    end
    makeLuaSprite('NintendoCartel','EXE/Mario Locuras/Piracy/HallyBG4',-700, origin)
    scaleObject('NintendoCartel', 1.5,1.5)
    addLuaSprite('NintendoCartel',false)
    makeLuaSprite('NintendoCartel2','EXE/Mario Locuras/Piracy/HallyBG4',-700, origin + getProperty('NintendoCartel.height'))
    scaleObject('NintendoCartel2', 1.5,1.5)
    addLuaSprite('NintendoCartel2',false)

    makeLuaSprite('Overlay','EXE/Mario Locuras/Piracy/HallyBG3',-675, origin)
    scaleObject('Overlay', 1.5,1.5)
    setProperty('Overlay.alpha', 0.75)
    addLuaSprite('Overlay',false)

    makeLuaSprite('HallybooCartel','EXE/Mario Locuras/Piracy/HallyBG2',-365,200)
    scaleObject('HallybooCartel', 1.55,1.55)
    setLuaSpriteScrollFactor('HallybooCartel', 0.5, 0.5)
    addLuaSprite('HallybooCartel',false)

    makeLuaSprite('Split','EXE/Mario Locuras/Piracy/HallyBG1',-680,15)
    scaleObject('Split', 1.5,1.5)
    addLuaSprite('Split',true)

    makeLuaSprite('YellowBox','EXE/Mario Locuras/Piracy/bgbottom',0,0)
    scaleObject('YellowBox', 2,2)
    setObjectCamera('YellowBox', 'camHUD')
    addLuaSprite('YellowBox',true)

    makeLuaSprite('YellowBox2','EXE/Mario Locuras/Piracy/bgbottom',0 + getProperty('YellowBox.width'),0)
    scaleObject('YellowBox2', 2,2)
    setObjectCamera('YellowBox2', 'camHUD')
    addLuaSprite('YellowBox2',true)

    makeLuaSprite('WhitPaper','EXE/Mario Locuras/Piracy/paper',10,15)
    scaleObject('WhitPaper', 2,2)
    setObjectCamera('WhitPaper', 'camHUD')
    addLuaSprite('WhitPaper',true)
    
    makeLuaSprite('Acorralado','EXE/Mario Locuras/Piracy/bfspotlight',-700,0)
    scaleObject('Acorralado', 1.15,1.15)
    setProperty('Acorralado.alpha', 0)
    addLuaSprite('Acorralado',true)

    makeLuaSprite('CriCriminal','EXE/Mario Locuras/Piracy/spotlight',-117,-135)
    scaleObject('CriCriminal', 1.15,1.15)
    setProperty('CriCriminal.flipY', true)
    setProperty('CriCriminal.alpha', 0)
    setObjectCamera('CriCriminal', 'camOther')
    addLuaSprite('CriCriminal',true)
    if downscroll then
        setProperty('CriCriminal.flipY', false)
        setProperty('Split.y', -375)
        setProperty('YellowBox.y', 337)
        setProperty('YellowBox2.y', 337)
        setProperty('WhitPaper.y', 515)
        setProperty('HallybooCartel.y', -250)
        setProperty('Acorralado.y',-375)
    end

    doTweenY('Up', 'NintendoCartel', origin - getProperty('NintendoCartel.height'), 6, 'linear')
    doTweenY('Above', 'NintendoCartel2', origin, 6, 'linear')

    doTweenX('Restart', 'YellowBox', 0 - getProperty('YellowBox.width'), 6, 'linear')
    doTweenX('Reboot', 'YellowBox2', 0, 6, 'linear')
end

function onStepHit()
    if curStep == 768 then
        doTweenAlpha('confesion', 'Acorralado', 1, 3, 'linear')
        doTweenZoom('zooom', 'camGame', 1.15, 3, 'linear')
        setProperty('defaultCamZoom', 1.15)
        xx2 = 100;
        yy2 = -25;
    end
    if curStep == 912 then
        setProperty('Acorralado.alpha', 0)
        setProperty('defaultCamZoom', 0.95)
    end
    if curStep == 976 then
        setProperty('CriCriminal.alpha', 1)
    end
    if curStep == 1104 then
        setProperty('CriCriminal.alpha', 0)
    end
end
function onTweenCompleted(tag) 	
    if tag == "Up" then
        setProperty('NintendoCartel.y', origin)
        setProperty('NintendoCartel2.y', origin + getProperty('NintendoCartel.height'))
        doTweenY('Up', 'NintendoCartel', origin - getProperty('NintendoCartel.height'), 6, 'linear')
        doTweenY('Above', 'NintendoCartel2', origin, 6, 'linear')
    end
    if tag == "Restart" then
        setProperty('YellowBox.x', 0)
        setProperty('YellowBox2.x', 0 + getProperty('YellowBox.width'))
        doTweenX('Restart', 'YellowBox', 0 - getProperty('YellowBox.width'), 6, 'linear')
        doTweenX('Reboot', 'YellowBox2', 0, 6, 'linear')
    end
end
function onUpdate()
    if downscroll then
        setProperty('dad.y', -210)
        setProperty('boyfriend.y', -460)
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
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
	        if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end