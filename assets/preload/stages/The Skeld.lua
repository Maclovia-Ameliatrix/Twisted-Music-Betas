local xx = 1075;
local yy = 850;
local xx2 = 1075;
local yy2 = 850;
local ofs = 20;
local followchars = true;
local Susnote = 'BF'

function onCreate()

    makeLuaSprite('BG', 'Impostor/Monotone/SkeldBack', -900, -600);
    scaleObject('BG', 2, 2)
	addLuaSprite('BG', false);

    makeLuaSprite('Floor', 'Impostor/Monotone/Floor', -900, -600);
    scaleObject('Floor', 2, 2)
	addLuaSprite('Floor', false);

    ---------Parasite BF----------

    makeLuaSprite('Base', 'Impostor/Monotone/BackThings', -900, -600);
    scaleObject('Base', 2, 2)
	addLuaSprite('Base', false);

    makeLuaSprite('Reactor', 'Impostor/Monotone/Reactor', -900, -600);
    scaleObject('Reactor', 2, 2)
	addLuaSprite('Reactor', false);
    
    makeLuaSprite('Light', 'Impostor/Monotone/Reactorlight', -900, -600);
    scaleObject('Light', 2, 2)
	addLuaSprite('Light', false);

    ---------Parasite Monotone----------

    makeLuaSprite('BasePurple', 'Impostor/Monotone/backthingspurple', -900, -600);
    scaleObject('BasePurple', 2, 2)
    
    makeLuaSprite('ReactorPurple', 'Impostor/Monotone/ReactorBlue', -900, -600);
    scaleObject('ReactorPurple', 2, 2)
        
    makeLuaSprite('LightPurple', 'Impostor/Monotone/ReactorLightPurple', -900, -600);
    scaleObject('LightPurple', 2, 2)

    ---------Parasite Red----------

    makeLuaSprite('BaseRed', 'Impostor/Monotone/backthingsred', -900, -600);
    scaleObject('BaseRed', 2, 2)
        
    makeLuaSprite('ReactorRed', 'Impostor/Monotone/ReactorRed',-900, -600);
    scaleObject('ReactorRed', 2, 2)
            
    makeLuaSprite('LightRed', 'Impostor/Monotone/ReactorLightRed', -900, -600);
    scaleObject('LightRed', 2, 2)
    
    ---------Parasite Green----------

    makeLuaSprite('BaseGreen', 'Impostor/Monotone/evilejected', -900, -600);
    scaleObject('BaseGreen', 2, 2)

    makeLuaSprite('BuildingGreen', 'Impostor/Monotone/brombom', -900, -1600);
    scaleObject('BuildingGreen', 2, 2)

    makeLuaSprite('OverlayGreen', 'Impostor/Monotone/overlay2', -900, -200);
    scaleObject('OverlayGreen', 2, 2)

    makeLuaSprite('Lines', 'Impostor/Ejected/speedLines', 0, 0);
    setScrollFactor('Lines', 1, 1);
    setObjectCamera('Lines', 'hud')
    scaleObject('Lines', 0.5, 0.5)
    setProperty('Lines.velocity.y', -200000);

    ---------Parasite Black----------

    makeAnimatedLuaSprite('Victoria','Impostor/Finale/defeat', -200, 0)
    addAnimationByPrefix('Victoria', 'Victory', 'defeat' ,24, true)
    scaleObject('Victoria', 1.2, 1.2)

    makeLuaSprite('Deads', 'Impostor/Finale/lol thing', -100, 200);
    scaleObject('Deads', 1.2, 1.2)

    makeLuaSprite('Rojo', 'Impostor/Finale/iluminao omaga', -200, 0);
    scaleObject('Rojo', 1.2, 1.2)

    ---------El Resto XD----------

    makeLuaSprite('Wires', 'Impostor/Monotone/wires1', -900, -600);
    scaleObject('Wires', 2, 2)
    addLuaSprite('Wires', true);
    setObjectOrder('Wires',20);	
    
    makeLuaSprite('Bars', 'HUD/Madness/bars', -15, -15);
    scaleObject('Bars', 1.05,1.05)
    setProperty('Bars.color', getColorFromHex('0x000000'))
    setObjectCamera('Bars', 'camHUD')
	addLuaSprite('Bars', false);

end

function onUpdate()
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
    if getProperty('Lines.y') <= -1000 then
        setProperty('Lines.y', 1000);
    end

    for strumLineNotes = 0,7 do
        if strumLineNotes < 8 then
            setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/'..Susnote)
        end
    end

    for notesLength = 0,getProperty('notes.length') do
        if getPropertyFromGroup('notes', notesLength,'noteType') == '' then
            setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/'..Susnote)
        end
    end
end

function onUpdatePost()
    if curStep == 256 then
        xx = 1000
        xx2 = 1200
    end
    if curStep == 384 then
        yy = 750
        yy2 = 750
        Susnote = 'Cerbera'

        removeLuaSprite('Base', false);
        removeLuaSprite('Reactor', false);
        removeLuaSprite('Light', false);

        addLuaSprite('BasePurple', false);
        addLuaSprite('ReactorPurple', false);
        addLuaSprite('LightPurple', false);
        setProperty('healthBarBG.color', getColorFromHex('0x392c49'))
        setProperty('Bars.color', getColorFromHex('0x392c49'))
        setProperty('scoreTxt.color', getColorFromHex('0x392c49'))
        setProperty('timeBar.color', getColorFromHex('0x392c49'))
    end

    if curStep == 640 or curStep == 2816 then
        Susnote = 'GF'
        removeLuaSprite('BasePurple', false);
        removeLuaSprite('ReactorPurple', false);
        removeLuaSprite('LightPurple', false);

        addLuaSprite('BaseRed', false);
        addLuaSprite('ReactorRed', false);
        addLuaSprite('LightRed', false);
        setProperty('healthBarBG.color', getColorFromHex('0xbb2d30'))
        setProperty('Bars.color', getColorFromHex('0xbb2d30'))
        setProperty('scoreTxt.color', getColorFromHex('0xbb2d30'))
        setProperty('timeBar.color', getColorFromHex('0xbb2d30'))
    end

    if curStep == 896 then
        Susnote = 'Cerbera'
        removeLuaSprite('BaseRed', false);
        removeLuaSprite('ReactorRed', false);
        removeLuaSprite('LightRed', false);

        addLuaSprite('BasePurple', false);
        addLuaSprite('ReactorPurple', false);
        addLuaSprite('LightPurple', false);
        setProperty('healthBarBG.color', getColorFromHex('0x392c49'))
        setProperty('Bars.color', getColorFromHex('0x392c49'))
        setProperty('scoreTxt.color', getColorFromHex('0x392c49'))
        setProperty('timeBar.color', getColorFromHex('0x392c49'))
    end
    if curStep == 1184 then
        Susnote = 'Minishoey'
        removeLuaSprite('BasePurple', false);
        removeLuaSprite('ReactorPurple', false);
        removeLuaSprite('LightPurple', false);

        addLuaSprite('BaseGreen', false);
        addLuaSprite('BuildingGreen', false);
        addLuaSprite('OverlayGreen', false);
        addLuaSprite('Lines', false);
        setProperty('healthBarBG.color', getColorFromHex('0x003315'))
        setProperty('Bars.color', getColorFromHex('0x003315'))
        setProperty('scoreTxt.color', getColorFromHex('0x003315'))
        setProperty('timeBar.color', getColorFromHex('0x003315'))
    end
    
    if curStep == 1696 then
        Susnote = 'Cerbera'
        removeLuaSprite('BaseGreen', false);
        removeLuaSprite('BuildingGreen', false);
        removeLuaSprite('OverlayGreen', false);
        removeLuaSprite('Lines', false);

        addLuaSprite('BasePurple', false);
        addLuaSprite('ReactorPurple', false);
        addLuaSprite('LightPurple', false);
        setProperty('healthBarBG.color', getColorFromHex('0x392c49'))
        setProperty('Bars.color', getColorFromHex('0x392c49'))
        setProperty('scoreTxt.color', getColorFromHex('0x392c49'))
        setProperty('timeBar.color', getColorFromHex('0x392c49'))
    end

    if curStep == 1960 then
        Susnote = 'Mario'
        removeLuaSprite('BasePurple', false);
        removeLuaSprite('ReactorPurple', false);
        removeLuaSprite('LightPurple', false);

        addLuaSprite('Victoria', false);
        addLuaSprite('Deads', false);
        addLuaSprite('Rojo', false);
        setProperty('healthBarBG.color', getColorFromHex('0xBB0000'))
        setProperty('Bars.color', getColorFromHex('0xBB0000'))
        setProperty('timeBar.color', getColorFromHex('0xBB0000'))
        setProperty('scoreTxt.color', getColorFromHex('0xBB0000'))
    end

    if curStep == 2276 or curStep == 3328 then
        Susnote = 'Cerbera'
        removeLuaSprite('Victoria', false);
        removeLuaSprite('Deads', false);
        removeLuaSprite('Rojo', false);

        addLuaSprite('BasePurple', false);
        addLuaSprite('ReactorPurple', false);
        addLuaSprite('LightPurple', false);
        setProperty('healthBarBG.color', getColorFromHex('0x392c49'))
        setProperty('Bars.color', getColorFromHex('0x392c49'))
        setProperty('scoreTxt.color', getColorFromHex('0x392c49'))
        setProperty('timeBar.color', getColorFromHex('0x392c49'))
    end

    if curStep == 2878 or curStep == 3280 then
        Susnote = 'Minishoey'
        removeLuaSprite('BaseRed', false);
        removeLuaSprite('ReactorRed', false);
        removeLuaSprite('LightRed', false);

        addLuaSprite('BaseGreen', false);
        addLuaSprite('BuildingGreen', false);
        addLuaSprite('OverlayGreen', false);
        addLuaSprite('Lines', false);
        setProperty('healthBarBG.color', getColorFromHex('0x003315'))
        setProperty('Bars.color', getColorFromHex('0x003315'))
        setProperty('scoreTxt.color', getColorFromHex('0x003315'))
        setProperty('timeBar.color', getColorFromHex('0x003315'))
    end

    if curStep == 3072 or curStep == 3296 then
        Susnote = 'Mario'
        removeLuaSprite('BaseGreen', false);
        removeLuaSprite('BuildingGreen', false);
        removeLuaSprite('OverlayGreen', false);
        removeLuaSprite('Lines', false);

        addLuaSprite('Victoria', false);
        addLuaSprite('Deads', false);
        addLuaSprite('Rojo', false);
        setProperty('healthBarBG.color', getColorFromHex('0xBB0000'))
        setProperty('Bars.color', getColorFromHex('0xBB0000'))
        setProperty('timeBar.color', getColorFromHex('0xBB0000'))
        setProperty('scoreTxt.color', getColorFromHex('0xBB0000'))
    end

    if curStep == 3198 then
        Susnote = 'GF'
        removeLuaSprite('Victoria', false);
        removeLuaSprite('Deads', false);
        removeLuaSprite('Rojo', false);

        addLuaSprite('BaseRed', false);
        addLuaSprite('ReactorRed', false);
        addLuaSprite('LightRed', false);
        setProperty('healthBarBG.color', getColorFromHex('0xbb2d30'))
        setProperty('Bars.color', getColorFromHex('0xbb2d30'))
        setProperty('timeBar.color', getColorFromHex('0xbb2d30'))
        setProperty('scoreTxt.color', getColorFromHex('0xbb2d30'))
    end
end
