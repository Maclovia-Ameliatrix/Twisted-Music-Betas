function onCreate()
	makeLuaSprite('Cuarto', 'Mandela/BackgroundEncounter', -250, 550);
	scaleObject('Cuarto', 1.25, 1.25);
    addLuaSprite('Cuarto', false);

    makeLuaSprite('DoorOpen', 'Mandela/DoorOpen', -250, 550);
	scaleObject('DoorOpen', 1.25, 1.25);
    addLuaSprite('DoorOpen', false);

    makeLuaSprite('DoorBreak', 'Mandela/Door3', -250, 550);
	scaleObject('DoorBreak', 1.25, 1.25);
    setProperty('DoorBreak.alpha', 0)
    addLuaSprite('DoorBreak', false);

    makeLuaSprite('DoorDamage', 'Mandela/Door2', -250, 550);
	scaleObject('DoorDamage', 1.25, 1.25);
    setProperty('DoorDamage.alpha', 0)
    addLuaSprite('DoorDamage', false);

    makeLuaSprite('Door', 'Mandela/Door1', -250, 550);
    scaleObject('Door', 1.25, 1.25);
    setProperty('Door.alpha', 0)
    addLuaSprite('Door', false);

    makeLuaSprite('Window', 'Mandela/Window1', -250, 550);
    scaleObject('Window', 1.25, 1.25);
    addLuaSprite('Window', false);

    makeLuaSprite('WindowBreak', 'Mandela/Window2', -250, 550);
    scaleObject('WindowBreak', 1.25, 1.25);
    setProperty('WindowBreak.alpha', 0)
    addLuaSprite('WindowBreak', false);

    makeLuaSprite('Curtains', 'Mandela/Curtains', -250, 550);
    scaleObject('Curtains', 1.25, 1.25);
    addLuaSprite('Curtains', false);

    makeAnimatedLuaSprite('PoliceLight', 'Mandela/PoliceLights', -250, 550)
    addAnimationByPrefix('PoliceLight', 'idle', 'lights', 24, true)
    scaleObject('PoliceLight', 1.25, 1.25);
    setProperty('PoliceLight.alpha', 0)
    addLuaSprite('PoliceLight',false)

    makeLuaSprite('Table', 'Mandela/Table', -250, 550);
    scaleObject('Table', 1.25, 1.25);
    addLuaSprite('Table', false);

    setObjectOrder('Table',13);

end