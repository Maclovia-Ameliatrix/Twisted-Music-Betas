function onCreate()
    setProperty('skipCountdown',true)
    makeLuaSprite('ExpurSpringfield','intro', -1450, -4650)
    scaleObject('ExpurSpringfield', 1.85, 1.85)
    addLuaSprite('ExpurSpringfield',false)
    setProperty('isCameraOnForcedPos',true)
    setProperty('camFollow.y',-4000)
    doTweenY('camTweenY','camFollow',-3000,20,'linear')
    doTweenY('LogoTweenY','ExpurSpringfield',-3050,30,'linear')
    setProperty('camHUD.alpha',0)
    setProperty('mom.alpha',0)
    setProperty('pico.alpha',0)
    setProperty('gf.alpha',0)
    setProperty('camGame.alpha',0)
    setProperty('ExpurSpringfield.alpha',0)
end
function onCreatePost()
    addCharacterToList('Bowser', 'bf')
    addCharacterToList('Mr Sys', 'bf')
    addCharacterToList('Duck Hunt', 'bf')
    addCharacterToList('Ruv', 'mom')
    addCharacterToList('Sarvente Demonical', 'Dad')
    addCharacterToList('Selever', 'GF')
    addCharacterToList('Whitty Crazy Neo', 'Dad')
    addCharacterToList('Hex', 'Mom')
    addCharacterToList('Carol Angel', 'GF')

end

function onStepHit()
    if curStep == 16 then
        doTweenAlpha('ShowGame','camGame',1,10,'linear')
    end
    if curStep == 64 then
        doTweenAlpha('ShowLogo','ExpurSpringfield',1,3,'quadOut')
    end
    if curStep == 112 then
        setProperty('isCameraOnForcedPos',false)
        cancelTween('camTweenY')
    end
    if curStep == 128 then
        cancelTween('LogoTweenY')
        removeLuaSprite('ExpurSpringfield')
        doTweenAlpha('ShowHUD','camHUD',1,0.75,'linear')
    end
    if curStep == 256 then
        setProperty('gf.alpha',1)
        triggerEvent('Change Character', 'Dad', 'Cassette Girl');
        triggerEvent('Change Character', 'BF', 'Sayori');
    end
    if curStep == 384 then
        triggerEvent('Change Character', 'Dad', 'Tankman');
        triggerEvent('Change Character', 'BF', 'BF B3');
    end
    if curStep == 512 then
        triggerEvent('Change Character', 'Dad', 'Chaotix Pixel');
        triggerEvent('Change Character', 'BF', 'Shinto Pixel');
        setProperty('dad.alpha',0)
        setProperty('gf.alpha',0)
        setProperty('boyfriend.flipX',false)
        ----chaotix & Shinto
    end
    if curStep == 816 then
        triggerEvent('Change Character', 'Dad', 'Chaotix HD');
        triggerEvent('Change Character', 'BF', 'Sonic.EXE Front');
        setProperty('boyfriend.flipX',false)
        setProperty('boyfriend.x',300)
        setProperty('boyfriend.y',700)
        ---exe irrumpe
    end
    if curStep == 880 then
        ---We Are Nintendo
        triggerEvent('Change Character', 'BF', 'Bowser');
        setProperty('boyfriend.x',300)
        setProperty('boyfriend.y',400)
    end
    if curStep == 896 then
        triggerEvent('Change Character', 'Dad', 'Sarvente Demonical');
        setProperty('boyfriend.alpha',0)
        setObjectCamera('dad', 'camHUD')
        setProperty('dad.alpha',1)
        setProperty('dad.x',-950)
        setProperty('dad.y',-250)
        setProperty('dad.flipX',true)
        doTweenAlpha('ShowSarv','dad',0,0.75,'quadOut')
    end
    if curStep == 902 then
        triggerEvent('Change Character', 'Mom', 'Ruv');
        setObjectCamera('mom', 'camHUD')
        setProperty('mom.alpha',1)
        setProperty('mom.x',-600)
        setProperty('mom.y',-350)
        setProperty('mom.flipX',true)
        doTweenAlpha('ShowRuv','mom',0,0.75,'quadOut')
    end
    if curStep == 908 then
        triggerEvent('Change Character', 'GF', 'Selever');
        setObjectCamera('gf', 'camHUD')
        setProperty('gf.alpha',1)
        setProperty('gf.x',100)
        setProperty('gf.y',300)
        setProperty('gf.flipX',true)
        doTweenAlpha('ShowSelever','gf',0,0.75,'quadOut')
    end
    if curStep == 912 then
        ---Ultimate Challenge
        triggerEvent('Change Character', 'BF', 'Mr Sys');
        setProperty('boyfriend.alpha',1)
        setProperty('boyfriend.x',100)
        setProperty('boyfriend.y',500)
    end
    if curStep == 928 then
        triggerEvent('Change Character', 'Dad', 'Whitty Crazy Neo');
        setProperty('boyfriend.alpha',0)
        setObjectCamera('dad', 'camHUD')
        setProperty('dad.alpha',1)
        setProperty('dad.x',300)
        setProperty('dad.y',150)
        setProperty('dad.flipX',true)
        doTweenAlpha('ShowWhitty','dad',0,0.75,'linear')
    end
    if curStep == 934 then
        triggerEvent('Change Character', 'Mom', 'Hex');
        setObjectCamera('mom', 'camHUD')
        setProperty('mom.flipX',true)
        setProperty('mom.alpha',1)
        setProperty('mom.x',300)
        setProperty('mom.y',100)
        doTweenAlpha('ShowHex','mom',0,0.75,'linear')
    end
    if curStep == 940 then
        triggerEvent('Change Character', 'GF', 'Carol Angel');
        setObjectCamera('gf', 'camHUD')
        setProperty('gf.flipX',true)
        setProperty('gf.alpha',1)
        setProperty('gf.x',475)
        setProperty('gf.y',200)
        doTweenAlpha('ShowCarol','gf',0,0.75,'linear')
    end
    if curStep == 944 then
        triggerEvent('Change Character', 'BF', 'Duck Hunt');
        setProperty('boyfriend.alpha',1)
        setProperty('boyfriend.x',300)
        setProperty('boyfriend.y',550)
    end
    if curStep == 960 then
        triggerEvent('Change Character', 'BF', 'Bowser');
        setProperty('boyfriend.x',300)
        setProperty('boyfriend.y',400)
    end
    if curStep == 966 then
        triggerEvent('Change Character', 'BF', 'Mr Sys');
        setProperty('boyfriend.x',100)
        setProperty('boyfriend.y',500)
    end
    if curStep == 972 then
        triggerEvent('Change Character', 'BF', 'Duck Hunt');
        setProperty('boyfriend.x',300)
        setProperty('boyfriend.y',550)
    end
    if curStep == 976 then
        triggerEvent('Change Character', 'BF', 'Senpai Player');
        triggerEvent('Change Character', 'GF', 'Opheebop New');
        triggerEvent('Change Character', 'Dad', 'Pico Neo');
        setObjectCamera('gf', 'camGame')
        setObjectCamera('dad', 'camGame')
        setObjectCamera('mom', 'camGame')
        setProperty('mom.alpha',0)
        setProperty('pico.alpha',0)
        setProperty('dad.alpha', 1)
        setProperty('gf.alpha',1)
    end
    if curStep == 1020 then
        triggerEvent('Change Character', 'Dad', 'Mickey Crazy');
        setProperty('gf.color', getColorFromHex('0x000000'))
        setProperty('dad.color', getColorFromHex('0x000000'))
        setProperty('boyfriend.color', getColorFromHex('0x000000'))
    end
    if curStep == 1168 then
        triggerEvent('Change Character', 'BF', 'Spooky Player');
        setProperty('gf.color', getColorFromHex('0xffffff'))
        setProperty('dad.color', getColorFromHex('0xffffff'))
        setProperty('boyfriend.color', getColorFromHex('0xffffff'))
    end
    if curStep == 1296 then
        triggerEvent('Change Character', 'BF', 'Grey Trainer');
        triggerEvent('Change Character', 'Dad', 'Grey');
        setProperty('boyfriend.flipX', true)
        setProperty('dad.flipX', true)
        setProperty('boyfriend.x', -50)
        setProperty('boyfriend.y', 800)
        setProperty('dad.x', 300)
        setProperty('gf.alpha', 0)
    end
    if curStep == 1552 then
        triggerEvent('Change Character', 'BF', 'Miku Hatsune Ready To Sing');
    end
    if curStep == 1680 then
        triggerEvent('Change Character', 'BF', 'Miku Hatsune Ready To Sing');
    end

    if curStep == 1808 or curStep == 1824 then
        setProperty('camGame.alpha',0)
        setProperty('camHUD.alpha',0)
    end
    if curStep == 1816 then
        setProperty('camGame.alpha',1)
        setProperty('camHUD.alpha',1)
    end
end
function onTweenCompleted(tag)
    if tag == 'ShowHUD' then
        doTweenY('ShowUp','Abajo',-60,1,'backOut')
        doTweenY('ShowDown','Arriba',660,1,'backOut')
    end
end
    
