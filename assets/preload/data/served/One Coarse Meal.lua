function onUpdate()
    setProperty("timeBar.color",getColorFromHex("0x097969"))
    if mustHitSection then
        triggerEvent('Camera Follow Pos', '800', '700')
    else
        triggerEvent('Camera Follow Pos', '600', '700')
    end
    if curStep == 176 then
        cameraFlash('game','0xffffff', 0.5)
        setProperty('Sky.alpha', 0);	
        setProperty('Coral.alpha', 0);	
        setProperty('Ground.alpha', 0);	
        
        setProperty('Sky2.alpha', 1);	
        setProperty('Coral2.alpha', 1);	
        setProperty('Coral3.alpha', 1);	
        setProperty('Ground2.alpha', 1);
    end
    if curStep == 1068 then
        setProperty('bus.alpha', 1);
        doTweenX('showup','bus', -650, 0.5, 'cubeOut')

    end
    if curStep == 1072 then
        cameraFlash('game','0xffffff', 1)
        setProperty('bus.alpha', 0);
        doTweenZoom('asf', 'camGame', 0.3, 1, 'cubeOut')
        setProperty('defaultCamZoom', 0.3)
        setProperty('Sky2.alpha', 0);	
        setProperty('Coral2.alpha', 0);	
        setProperty('Coral3.alpha', 0);	
        setProperty('Ground2.alpha', 0);

        setProperty('Pillar.alpha', 1)
        setProperty('Pillar2.alpha', 1)
    end
    if curStep == 1332 or curStep == 1712 or curStep == 1840 or curStep == 1968 then
        cameraFlash('game','0xffffff', 1)
    end
       
    if curStep == 1536 then
        setProperty('Light.alpha', 1);
        setProperty('Ancesters.alpha', 1);
        doTweenY('showup2','Light', -600, 15, 'cubeOut')
        doTweenY('showup','Ancesters', 500, 15, 'cubeOut')   
    end
    
    if curStep == 1968 then
        setProperty('Whale.alpha', 0)
        setProperty('Whale2.alpha', 0)
        setProperty('Whale3.alpha', 0)
        setProperty('Whale4.alpha', 0)
        setProperty('Whale5.alpha', 0)
        setProperty('Whale6.alpha', 0)
        setProperty('Light.alpha', 0);
        setProperty('Ancesters.alpha', 0);
    end
        
    if curStep == 2108 then
        setProperty('camHUD.alpha', 0)
        setProperty('camGame.alpha', 0);
    end
end