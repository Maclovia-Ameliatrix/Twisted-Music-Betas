local zoomin = 0.9
local zoomout = 0.6
function onCreate()
    setProperty('boyfriend.alpha', 0)
    setProperty('gf.alpha', 0)
	makeLuaSprite('Black', 'white', -650, -450)
    setProperty('Black.color', getColorFromHex('0x000000'))
	addLuaSprite('Black', true)
end
function onStepHit()
    if curStep == 1 then
        doTweenAlpha('Fade', 'Black', 0, 6, 'linear')
    end
    if curStep == 240 or curStep == 752 or curStep == 1264 or curStep == 1776 or curStep == 3376 then
        setProperty('dad.color', getColorFromHex('0x000000'))
        setProperty('BadApple.alpha', 1)
    end
    if curStep == 256 or curStep == 768 or curStep == 1280 or curStep == 1792 or curStep == 3392 then
        setProperty('dad.color', getColorFromHex('0xffffff'))
        setProperty('BadApple.alpha', 0)
    end
    if curStep == 2080 then
        setProperty('dad.color', getColorFromHex('0x000000'))
        setProperty('Black.alpha', 1)
        setProperty('Basement.alpha', 0)
        doTweenAlpha('Fade', 'Black', 0, 6, 'linear')
    end
    if curStep == 2200 then
        doTweenZoom('zoomi','camGame',1,0.0001,'linear')
        setProperty('defaultCamZoom', 1)
    end
    if curStep == 2204 then
        doTweenZoom('zoomi','camGame',1.1,0.0001,'linear')
        setProperty('defaultCamZoom', 1.1)
    end
    if curStep == 2208 then
        setProperty('dad.color', getColorFromHex('0xffffff'))
        setProperty('BadApple.alpha', 1)
        setProperty('defaultCamZoom', 0.9)
    end
    if curStep == 2368 then
        setProperty('Bars.alpha', 1)
        setProperty('dad.alpha', 0)
        setProperty('BadApple.alpha', 0)
        setProperty('BlackDown.alpha', 0)
        setProperty('TV.alpha', 0)
        setProperty('camHUD.alpha', 0)
    end
    if curStep == 2465 then
        setProperty('boyfriend.alpha', 1)
        setProperty('Room.alpha', 1)
    end
    if curStep == 2516 then
        setProperty('gf.alpha', 1)
        setProperty('Car.alpha', 1)
        setProperty('Chair.alpha', 1)
    end
    if curStep == 2864 then
        setProperty('gf.alpha', 0)
        setProperty('boyfriend.alpha', 0)
        setProperty('Room.alpha', 0)
        setProperty('Car.alpha', 0)
        setProperty('Chair.alpha', 0)
        setProperty('Bars.alpha', 0)
    end
    if curStep == 2880 then
        setProperty('TV.alpha', 1)
        setProperty('dad.alpha', 1)
        setProperty('BlackDown.alpha', 1)
        setProperty('DoYouUnderstand.alpha', 1)
        setProperty('camHUD.alpha', 1)
    end
    if curStep == 3680 then
        setProperty('camGame.alpha', 0)
        setProperty('camHUD.alpha', 0)
    end
end
function onUpdate()
    if curStep >= 256 and curStep <= 2080 or curStep >= 2880 and curStep <= 3520 then
        if mustHitSection == false then
            setProperty('defaultCamZoom', zoomin)
        else
            setProperty('defaultCamZoom', zoomout)
        end
    end
end
