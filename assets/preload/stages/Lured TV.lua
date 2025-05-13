function onCreate()
	makeLuaSprite('Basement', 'Mandela/basement', -700, -825);
	addLuaSprite('Basement', false);

	makeLuaSprite('DoYouUnderstand', 'Mandela/basement-2', -700, -825);
	setProperty('DoYouUnderstand.alpha', 0)
	addLuaSprite('DoYouUnderstand', false);

	makeLuaSprite('CatAlternate', 'Mandela/basement-cat', -700, -825);
	setProperty('CatAlternate.alpha', 0)
	addLuaSprite('CatAlternate', false);

	makeLuaSprite('BadApple', 'white', -650, -450)
	setProperty('BadApple.alpha', 0)
	addLuaSprite('BadApple', false)

	makeLuaSprite('TV', 'Mandela/TV', 187, 0);
	addLuaSprite('TV', false);

	makeLuaSprite('BlackDown', 'white', 434, 564);
	setProperty('BlackDown.color', getColorFromHex('0x000000'))
	scaleObject('BlackDown', 0.09, 0.0073)
	addLuaSprite('BlackDown', true);

	makeLuaSprite('Car', 'Mandela/car', -150, -75);
	scaleObject('Car', 1.25, 1.25)
	addLuaSprite('Car', false);

	makeLuaSprite('Chair', 'Mandela/chair', -250, 25);
	scaleObject('Chair', 1.25, 1.25)
	addLuaSprite('Chair', false);
	
	makeLuaSprite('Room', 'Mandela/room', -200, -75);
	scaleObject('Room', 1.25, 1.25)
	addLuaSprite('Room', false);

	makeLuaSprite('Bars', 'Mandela/bars', -200, -100);
	scaleObject('Bars', 1.25, 1.25)
	addLuaSprite('Bars', true);

	makeLuaText('Middle', '', '1500', -100, 300)
    setTextAlignment('Middle', 'center')
    setTextSize('Middle', '100')
    addLuaText('Middle')
	setObjectCamera('Middle', 'camOther')
    setTextFont('Middle', 'vcr.ttf')

    makeLuaText('Adam', '', '450', 50, 500)
    setTextAlignment('Adam', 'center')
    setTextSize('Adam', '35')
    addLuaText('Adam')
	setObjectCamera('Adam', 'camOther')
    setTextFont('Adam', 'vcr.ttf')

    makeLuaText('Jonah', '', '450', 750, 500)
    setTextAlignment('Jonah', 'center')
    setTextSize('Jonah', '35')
    addLuaText('Jonah')
	setObjectCamera('Jonah', 'camOther')
    setTextFont('Jonah', 'vcr.ttf')

	setProperty('Car.alpha', 0)
	setProperty('Chair.alpha', 0)
	setProperty('Room.alpha', 0)
	setProperty('Bars.alpha', 0)

end

function onUpdate()
	setObjectOrder('gfGroup',6)
	triggerEvent('Camera Follow Pos', 600, 350)
end

function onEvent(name, v1, v2)
    if name == 'Middle Lyrics' then
        setTextString('Middle', v1)
    end
    if name == 'Jonah Lyrics' then
        setTextString('Jonah', v1)
    end
    if name == 'Adam Lyrics' then
        setTextString('Adam', v1)
    end
    if name == 'Meow' then
        setProperty('CatAlternate.alpha', 1)
        runTimer('Meow', 0.25)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'Meow' then
        setProperty('CatAlternate.alpha', 0)
    end
end