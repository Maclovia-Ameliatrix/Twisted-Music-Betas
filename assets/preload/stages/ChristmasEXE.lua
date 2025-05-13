function onCreate()
    makeLuaSprite('ChristmasSky', 'EXE/Bodrionic.exe/christmas/Sky', -800, -400);
	setLuaSpriteScrollFactor('ChristmasSky', 0.6, 0.6);
	addLuaSprite('ChristmasSky', false);

	makeLuaSprite('ChristmasTrees2', 'EXE/Bodrionic.exe/christmas/Trees2', -800, -300);
	setLuaSpriteScrollFactor('ChristmasTrees2', 0.8, 0.8);
	addLuaSprite('ChristmasTrees2', false);

	makeLuaSprite('ChristmasTrees1', 'EXE/Bodrionic.exe/christmas/Trees1', -800, -250);
	setLuaSpriteScrollFactor('ChristmasTrees1', 0.9, 0.9);
	addLuaSprite('ChristmasTrees1', false);

	makeAnimatedLuaSprite('ChristmasSanic','EXE/Bodrionic.exe/christmas/christma-sanic', -500, 750)
	addAnimationByPrefix('ChristmasSanic', 'Dance', 'Sanic' ,24, false)
	objectPlayAnimation('ChristmasSanic','Dance' ,false)
    setLuaSpriteScrollFactor('ChristmasSanic', 1.0, 1.0);
	addLuaSprite('ChristmasSanic', false)

	makeAnimatedLuaSprite('ChristmasRequital','EXE/Bodrionic.exe/christmas/christma-requital', 1300, 750)
	addAnimationByPrefix('ChristmasRequital', 'Dance', 'Requital' ,24, false)
	objectPlayAnimation('ChristmasRequital','Dance' ,false)
    setLuaSpriteScrollFactor('ChristmasRequital', 1.0, 1.0);
	addLuaSprite('ChristmasRequital', false)

    makeLuaSprite('ChristmasSnow', 'EXE/Bodrionic.exe/christmas/Foreground', -800, -200);
	setLuaSpriteScrollFactor('ChristmasSnow', 1.0, 1.0);
	addLuaSprite('ChristmasSnow', false);

	makeAnimatedLuaSprite('ChristmasSpeaker','EXE/Bodrionic.exe/christmas/speakers', 600, 550)
	addAnimationByPrefix('ChristmasSpeaker', 'Bounce', 'Idle' ,24, false)
	objectPlayAnimation('ChristmasSpeaker','Bounce' ,false)
    setLuaSpriteScrollFactor('ChristmasSpeaker', 1.0, 1.0);
	scaleObject('ChristmasSpeaker', 1.2, 1.2)
	addLuaSprite('ChristmasSpeaker', false)

	makeAnimatedLuaSprite('ChristmasNeedlemouse','EXE/Bodrionic.exe/christmas/christma-needle', 1600, 450)
	addAnimationByPrefix('ChristmasNeedlemouse', 'Dance', 'Needle' ,24, false)
	objectPlayAnimation('ChristmasNeedlemouse','Dance' ,false)
    setLuaSpriteScrollFactor('ChristmasNeedlemouse', 1.0, 1.0);
	scaleObject('ChristmasNeedlemouse', 0.5, 0.5)
	addLuaSprite('ChristmasNeedlemouse', false)

	makeAnimatedLuaSprite('ChristmasLuther','EXE/Bodrionic.exe/christmas/christma-luther', 1000, 450)
	addAnimationByPrefix('ChristmasLuther', 'Dance', 'Luther' ,24, false)
	objectPlayAnimation('ChristmasLuther','Dance' ,false)
    setLuaSpriteScrollFactor('ChristmasLuther', 1.0, 1.0);
	scaleObject('ChristmasLuther', 0.5, 0.5)
	addLuaSprite('ChristmasLuther', false)

	makeAnimatedLuaSprite('ChristmasRerun','EXE/Bodrionic.exe/christmas/christma-rerun', -300, 250)
	addAnimationByPrefix('ChristmasRerun', 'Dance', 'ReRun' ,24, true)
	objectPlayAnimation('ChristmasRerun','Dance' ,false)
    setLuaSpriteScrollFactor('ChristmasRerun', 1.0, 1.0);
	addLuaSprite('ChristmasRerun', false)

	makeAnimatedLuaSprite('ChristmasFleetway','EXE/Bodrionic.exe/christmas/christma-fleetway', -500, 850)
	addAnimationByPrefix('ChristmasFleetway', 'Dance', 'Fleetway' ,24, false)
	objectPlayAnimation('ChristmasFleetway','Dance' ,false)
    setLuaSpriteScrollFactor('ChristmasFleetway', 1.0, 1.0);
	addLuaSprite('ChristmasFleetway', true)

	makeAnimatedLuaSprite('ChristmasCurse','EXE/Bodrionic.exe/christmas/christma-curse', 1500, 950)
	addAnimationByPrefix('ChristmasCurse', 'Dance', 'Curse' ,24, false)
	objectPlayAnimation('ChristmasCurse','Dance' ,false)
    setLuaSpriteScrollFactor('ChristmasCurse', 1.0, 1.0);
	addLuaSprite('ChristmasCurse', true)

	makeAnimatedLuaSprite('ChristmasDevoid','EXE/Bodrionic.exe/christmas/christma-devoid', -50, 1000)
	addAnimationByPrefix('ChristmasDevoid', 'Dance', 'Devoid' ,24, false)
	objectPlayAnimation('ChristmasDevoid','Dance' ,false)
    setLuaSpriteScrollFactor('ChristmasDevoid', 1.0, 1.0);
	addLuaSprite('ChristmasDevoid', true)

	makeAnimatedLuaSprite('ChristmasSunky','EXE/Bodrionic.exe/christmas/christma-sunky', 1050, 1050)
	addAnimationByPrefix('ChristmasSunky', 'Dance', 'Sunky' ,24, false)
	objectPlayAnimation('ChristmasSunky','Dance' ,false)
    setLuaSpriteScrollFactor('ChristmasSunky', 1.0, 1.0);
	addLuaSprite('ChristmasSunky', true)
end

function onBeatHit()
	if curBeat % 1 == 0 then
		objectPlayAnimation('ChristmasSpeaker', 'Bounce');
		objectPlayAnimation('ChristmasSanic', 'Dance');
		objectPlayAnimation('ChristmasRequital', 'Dance');
		objectPlayAnimation('ChristmasNeedlemouse', 'Dance');
		objectPlayAnimation('ChristmasLuther', 'Dance');
		objectPlayAnimation('ChristmasFleetway', 'Dance');
		objectPlayAnimation('ChristmasDevoid', 'Dance');
		objectPlayAnimation('ChristmasCurse', 'Dance');
		objectPlayAnimation('ChristmasSunky', 'Dance');
    end
end