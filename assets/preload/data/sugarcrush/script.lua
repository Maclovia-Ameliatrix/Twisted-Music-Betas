function onCreate()
    makeLuaSprite('WhiteBar', 'white', 0, 0);
    setObjectCamera('WhiteBar', 'CamHUD')
    setObjectOrder('WhiteBar', 4);
    setProperty('WhiteBar.alpha', 0)
	addLuaSprite('WhiteBar', false);

    makeLuaSprite('OrangeBar', 'white', 0, 200);
    setObjectCamera('OrangeBar', 'CamHUD')
    setProperty('OrangeBar.color', getColorFromHex('0xFF8F00'))
    setObjectOrder('OrangeBar', 5);
    setProperty('OrangeBar.alpha', 0)
	addLuaSprite('OrangeBar', false);

    makeLuaSprite('WhiteBar2', 'white', 0, 500);
    setObjectCamera('WhiteBar2', 'CamHUD')
    setObjectOrder('WhiteBar2', 6);
    setProperty('WhiteBar2.alpha', 0)
	addLuaSprite('WhiteBar2', false);

    makeAnimatedLuaSprite('Nikku', 'Hotline 024/skatepark/octagon/nikku', -1250, 450)
    addAnimationByPrefix('Nikku', 'Hey', 'Nikku Move', 24, true)
    addAnimationByPrefix('Nikku', 'ShowYou', 'Nikku Last Frame', 24, true)
    setObjectCamera('Nikku', 'hud')
    scaleObject('Nikku', 1.5, 1.5)
    setObjectOrder('Nikku', 7);
    setProperty('Nikku.alpha', 0)
    addLuaSprite('Nikku', false)

    makeLuaSprite('Textbox', 'Hotline 024/skatepark/octagon/textbox', -600,575);
    setObjectCamera('Textbox', 'CamHUD')
    scaleObject('Textbox', 1.25, 1.25)
    setObjectOrder('Textbox', 8);
	addLuaSprite('Textbox', false);

    makeAnimatedLuaSprite('OctagonIdea', 'Hotline 024/skatepark/octagon/text', -625,625)
    addAnimationByPrefix('OctagonIdea', 'Subtitles', 'Text', 24, false)
    setObjectCamera('OctagonIdea', 'hud')
    scaleObject('OctagonIdea', 0.5, 0.5)
    setObjectOrder('OctagonIdea', 9);
    setProperty('OctagonIdea.alpha', 0)
    addLuaSprite('OctagonIdea', false)

    makeLuaSprite('Octagon', 'Hotline 024/skatepark/octagon/octagon', 1425,325);
    setObjectCamera('Octagon', 'CamHUD')
    scaleObject('Octagon', 0.65, 0.65)
    setObjectOrder('Octagon', 10);
	addLuaSprite('Octagon', false);

    makeLuaSprite('EndText1', 'Hotline 024/skatepark/octagon/hereletme', 25,750);
    setObjectCamera('EndText1', 'CamHUD')
    scaleObject('EndText1', 0.75, 0.75)
    setObjectOrder('EndText1', 11);
	addLuaSprite('EndText1', false);

    makeLuaSprite('EndText2', 'Hotline 024/skatepark/octagon/showyou', 900,750);
    setObjectCamera('EndText2', 'CamHUD')
    scaleObject('EndText2', 0.75, 0.75)
    setObjectOrder('EndText2', 12);
	addLuaSprite('EndText2', false);

end
function onUpdate()
    songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/80)
    doTweenY(dadTweenY, 'dad', -200+50*math.sin((currentBeat*0.25)*math.pi),0.001)
end

function onStepHit()
    if curStep == 1024 then
        setProperty('SkyFire.alpha', 1)
        setProperty('SkyFireCopy.alpha', 1)
        setProperty('Ground.alpha', 1)
        setProperty('GroundCopy.alpha', 1)
        setProperty('Leaves.alpha', 1)
        setProperty('LeavesCopy.alpha', 1)
        setProperty('NikkuPixel.alpha', 1)
        setProperty('Mierdonic.alpha', 1)
        doTweenX('Tooslow', 'Mierdonic', 450, 7, 'linear')
    end
    if curStep == 1088 then
        setProperty('SkyFire.alpha', 0)
        setProperty('SkyFireCopy.alpha', 0)
        setProperty('Ground.alpha', 0)
        setProperty('GroundCopy.alpha', 0)
        setProperty('Leaves.alpha', 0)
        setProperty('LeavesCopy.alpha', 0)
        setProperty('NikkuPixel.alpha', 0)
        setProperty('Mierdonic.alpha', 0)
    end
    if curStep == 1536 then
        setProperty('WhiteBar.alpha', 1)
        setProperty('OrangeBar.alpha', 1)
        setProperty('WhiteBar2.alpha', 1)
        setProperty('Nikku.alpha', 1)
        setProperty('Textbox.alpha', 1)
        doTweenX('HeyX', 'Nikku', -150, 0.3, 'linear')
        doTweenY('HeyY', 'Nikku', -150, 0.3, 'linear')
        doTweenX('TextX', 'Textbox', 500, 0.3, 'linear')
        doTweenY('TextY', 'Textbox', 75, 0.3, 'linear')
        doTweenX('IdeaX', 'OctagonIdea', 575, 0.3, 'linear')
        doTweenY('IdeaY', 'OctagonIdea', 125, 0.3, 'linear')
    end
    if curStep == 1540 then
        setProperty('OctagonIdea.alpha', 1)
        objectPlayAnimation('OctagonIdea', 'Subtitles')
    end
    if curStep == 1594 then
        setProperty('Octagon.alpha', 1)
        doTweenX('OctagonHey', 'Octagon', 925, 0.25, 'linear')
    end
    if curStep == 1648 then
        setProperty('EndText1.alpha', 1)
        setProperty('EndText2.alpha', 1)
        doTweenX('OctagonBye', 'Octagon', 1425, 0.05, 'linear')
        doTweenX('TextBye', 'Textbox', 1425, 0.05, 'linear')
        doTweenX('IdeaBye', 'OctagonIdea', 1425, 0.05, 'linear')
        doTweenX('OctagonX', 'Nikku', 0, 0.15, 'linear')
    end
    if curStep == 1664 then
        setProperty('WhiteBar.alpha', 0)
        setProperty('OrangeBar.alpha', 0)
        setProperty('WhiteBar2.alpha', 0)
        setProperty('Nikku.alpha', 0)
        setProperty('Octagon.alpha', 0)
        setProperty('Textbox.alpha', 0)
        setProperty('OctagonIdea.alpha', 0)
        setProperty('EndText1.alpha', 0)
        setProperty('EndText2.alpha', 0)
    end
end
function onTweenCompleted(tag) 	
    if tag == "OctagonX" then
        objectPlayAnimation('Nikku','ShowYou')
        doTweenY('EndLet', 'EndText1', 250, 0.15, 'linear')
        doTweenY('EndShow', 'EndText2', 250, 0.15, 'linear')
        setProperty('Nikku.x', 450)
        setProperty('Nikku.y', 100)
    end
end
