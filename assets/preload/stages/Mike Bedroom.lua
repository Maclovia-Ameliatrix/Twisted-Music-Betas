function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'Mike Dead'); --Character json file for the death animation
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'GameOver/DissensionDeath'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'GameOverMusic/LostCauseLoop'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'GameOverMusic/LostCauseEnd'); --put in mods/music/

	makeLuaSprite('Room', 'EXE/Pokemon/Mikes Room/back', -300, 0);
	scaleObject('Room', 1.25, 1.25);
    addLuaSprite('Room', false);

    makeLuaSprite('PortraitBros', 'EXE/Pokemon/Mikes Room/portrait', -300, 0);
	scaleObject('PortraitBros', 1.25, 1.25);
    addLuaSprite('PortraitBros', false);

    makeLuaSprite('Bed', 'EXE/Pokemon/Mikes Room/bed', -300, 0);
	scaleObject('Bed', 1.25, 1.25);
    addLuaSprite('Bed', false);

    makeLuaSprite('Pillow', 'EXE/Pokemon/Mikes Room/pillow', -300, 0);
	scaleObject('Pillow', 1.25, 1.25);
    addLuaSprite('Pillow', false);

    makeLuaSprite('Overlay', 'EXE/Pokemon/Mikes Room/redoverlay', 0, 0)
    setObjectCamera('Overlay', 'camOther')
    setProperty('Overlay.alpha', 0)
    addLuaSprite('Overlay', true)

    setObjectOrder('dadGroup',2)
    setObjectOrder('momGroup',7)
end