
function onCreate()
	setProperty('skipArrowStartTween',true)
	setProperty('dad.alpha', 0)

    makeLuaSprite('Break1', 'Minor Mods/Corrupted/discharge/break1', 325, 100);
    scaleObject('Break1', 0.5,0.5)

	makeLuaSprite('Break2', 'Minor Mods/Corrupted/discharge/break2', 250, 90);
    scaleObject('Break2', 0.5,0.5)

	makeLuaSprite('Break3', 'Minor Mods/Corrupted/discharge/break3', 185, 50);
    scaleObject('Break3', 0.5,0.5)

	makeLuaSprite('Guitar', 'Minor Mods/Corrupted/discharge/Guitar', 800, 285);
    setProperty('Guitar.angle', -15)
	setProperty('Guitar.alpha', 0)
	addLuaSprite('Guitar', false);
	
	makeAnimatedLuaSprite('effect', 'Minor Mods/Corrupted/discharge/DischargeEffects', -125, -350)
    addAnimationByPrefix('effect', 'broom', 'Crack', 24, false)
    scaleObject('effect', 1.5,1.5)

	makeAnimatedLuaSprite('WhitePortal', 'Minor Mods/Corrupted/discharge/SoulBFPortal', -550, -350)
    addAnimationByPrefix('WhitePortal', 'Loop', 'a nim-portal', 24, true)
    scaleObject('WhitePortal', 2.5,2.5)
	
	makeAnimatedLuaSprite('PurplePortal', 'Minor Mods/Corrupted/discharge/bf discharge portal', 550, 100)
    addAnimationByPrefix('PurplePortal', 'Loop', 'portal_remake', 24, true)
    scaleObject('PurplePortal', 1.5,1.5)

	makeLuaSprite('Black', 'white', 0, 0)
	setProperty('Black.color', getColorFromHex('0x000000'))
	scaleObject('Black', 2,2)
	setObjectCamera('Black', 'camOther')
	setProperty('Black.alpha', 0)

	makeLuaSprite('Rememberthem', 'Minor Mods/Corrupted/discharge/photo', 350, -675);
	scaleObject('Rememberthem', 0.75,0.75)
	setObjectCamera('Rememberthem', 'camOther')
	setProperty('Rememberthem.angle', 60)

	makeLuaSprite('ExitBF1', 'Minor Mods/Corrupted/discharge/Brecha_BF1', 825, 150);

	makeLuaSprite('ExitBF2', 'Minor Mods/Corrupted/discharge/Brecha_BF2', 700, -125);

	makeLuaSprite('ExitEvilBF1', 'Minor Mods/Corrupted/discharge/Brecha_SBF1', 125, -25);

	makeLuaSprite('ExitEvilBF2', 'Minor Mods/Corrupted/discharge/Brecha_SBF2', 100, -300);

	makeAnimatedLuaSprite('Escape', 'Minor Mods/Corrupted/discharge/disGlassBreak', -100, -200)
    addAnimationByPrefix('Escape', 'FromThemind', 'Breaking', 24, false)
	addAnimationByPrefix('Escape', 'Loop', 'Breaking0000', 24, true)
	objectPlayAnimation('Escape', 'Loop')
    scaleObject('Escape', 2,2)
	setProperty('Escape.alpha', 0)

	makeAnimatedLuaSprite('LetsTo', 'Minor Mods/Corrupted/discharge/breakEffectEnd', -300, -350)
    addAnimationByPrefix('LetsTo', 'EndThis', 'break', 24, false)
	objectPlayAnimation('LetsTo', 'EndThis')
    scaleObject('LetsTo', 1.5,1.5)
end
function onStepHit()
	if curStep == 928 then
		for i = 4,7 do
            noteTweenAlpha('AdiosNota'..i, i, 0,1,'quartInOut')
        end
	end
	if curStep == 952 then
		addLuaSprite('Break1', false);
	end
	if curStep == 976 then
		addLuaSprite('Break2', false);
		removeLuaSprite('Break1');
	end
	if curStep == 992 then
		addLuaSprite('Break3', false);
		removeLuaSprite('Break2');
	end
	if curStep == 1020 then
		addLuaSprite('effect', true)
		objectPlayAnimation('effect', 'broom')
	end
	if curStep == 1024 then
		removeLuaSprite('Break3');
		setProperty('dad.alpha', 1)
	end
	if curStep == 1272 then
		for i = 4,7 do
            noteTweenAlpha('AdiosNota'..i, i, 1,1,'quartInOut')
        end
	end
	if curStep == 1408 then
		doTweenAlpha('Evil1', 'healthBar', 1, 1, 'linear')
		doTweenAlpha('Evil2', 'healthBarBG', 1, 1, 'linear')
		doTweenAlpha('Evil3', 'scoreTxt', 1, 1, 'linear')
		doTweenAlpha('Evil4', 'iconP1', 1, 1, 'linear')
		doTweenAlpha('Evil5', 'iconP2', 1, 1, 'linear')
		doTweenAlpha('Evil6', 'timeBarBG', 1, 1, 'linear')
		doTweenAlpha('Evil7', 'timeBar', 1, 1, 'linear')
		doTweenAlpha('Evil8', 'timeTxt', 1, 1, 'linear')
		for i = 0,3 do
            noteTweenAlpha('AdiosNota'..i, i, 1,1,'quartInOut')
        end
	end
	if curStep == 2560 then
		setProperty('Glowfire.alpha', 1)
		setProperty('Fire.alpha', 1)
		setProperty('Plataformfire.alpha', 1)
		setProperty('Leftfire.alpha', 1)
		setProperty('Rightfire.alpha', 1)
	end
	if curStep == 2688 then
		addLuaSprite('WhitePortal', false)
		addLuaSprite('PurplePortal', false)
	end
	if curStep == 3520 then
		addLuaSprite('Black', false)
		addLuaSprite('Rememberthem', false);
		doTweenY('Member', 'Rememberthem', 100, 1, 'SineOut')
		doTweenAngle('Thenm', 'Rememberthem', 0, 1, 'SineOut')
		doTweenAlpha('Yours', 'camHUD', 0.25, 1, 'linear')
		doTweenAlpha('Friends', 'Black', 0.75, 1, 'linear')
	end
	if curStep == 3552 then
		setProperty('camHUD.alpha', 1)
		removeLuaSprite('Glowfire')
		removeLuaSprite('Plataformfire')
		removeLuaSprite('Leftfire')
		removeLuaSprite('Rightfire')
		removeLuaSprite('Fire')
		removeLuaSprite('WhitePortal')
		removeLuaSprite('PurplePortal')
		removeLuaSprite('Black')
		removeLuaSprite('Rememberthem')
	end
	if curStep == 3822 then
		addLuaSprite('ExitBF1', false);
	end
	if curStep == 4014 then
		addLuaSprite('ExitEvilBF1', false);
	end
	if curStep == 4078 then
		removeLuaSprite('ExitBF1');
		removeLuaSprite('ExitEvilBF1');
		addLuaSprite('ExitBF2', false);
		addLuaSprite('ExitEvilBF2', false);
	end
	if curStep == 4142 then
		addLuaSprite('Escape', false);
		doTweenAlpha('End', 'Escape', 1, 6, 'linear')
	end
	if curStep == 4222 then
		doTweenAlpha('This', 'camHUD', 0, 4, 'linear')
		objectPlayAnimation('Escape', 'FromThemind')
	end
	if curStep == 4273 then
		removeLuaSprite('ExitBF2')
		removeLuaSprite('ExitEvilBF2')
		setProperty('Mind.alpha', 1)
		setProperty('TV.alpha', 1)
		removeLuaSprite('Escape')
	end
	if curStep == 4324 then
		addLuaSprite('LetsTo', true);
	end
end

function onUpdate()
	if curStep < 1408 then
		doTweenAlpha('Evil1', 'healthBar', 0, 0.01, 'linear')
		doTweenAlpha('Evil2', 'healthBarBG', 0, 0.01, 'linear')
		doTweenAlpha('Evil3', 'scoreTxt', 0, 0.01, 'linear')
		doTweenAlpha('Evil4', 'iconP1', 0, 0.01, 'linear')
		doTweenAlpha('Evil5', 'iconP2', 0, 0.01, 'linear')
		doTweenAlpha('Evil6', 'timeBarBG', 0, 0.01, 'linear')
		doTweenAlpha('Evil7', 'timeBar', 0, 0.01, 'linear')
		doTweenAlpha('Evil8', 'timeTxt', 0, 0.01, 'linear')
		for i = 0,3 do
            noteTweenAlpha('AdiosNota'..i, i, 0,0.01,'linear')
        end
	end
end
function opponentNoteHit(id, direction, noteType, isSustainNote)  
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health - 0.01)
    end
end
function onEvent(name, v1, v2)
    if name == 'Thoughts' then
    	if v2 == '' then
			makeLuaSprite('Dialogue', 'Minor Mods/Corrupted/discharge/dialogues/'..v1, 0, 0);
			--scaleObject('Dialogue', 0.5,0.5)
			setObjectCamera('Dialogue', 'camOther')
			addLuaSprite('Dialogue', false);
		else if v2 == '0' then
			removeLuaSprite('Dialogue');
			else
				doTweenAlpha('FadeOut', 'Dialogue', 0, v2, 'linear')
			end
		end
    end
	if name == 'Change Character' then
		if v1 == 'BF' and v2 == 'BF Guitar' then
			setProperty('Guitar.alpha', 0)
			else if v1 == 'BF' and v2 == 'bf' then
				setProperty('Guitar.alpha', 1)
			end
		end
	end
end