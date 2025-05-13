function onCreate()
    
    makeLuaSprite('Montania', 'EXE/Pokemon/Mountain/bg', -300, -300);
    scaleObject('Montania', 1, 1)
	addLuaSprite('Montania', false);

    makeLuaSprite('Charizard', 'EXE/Pokemon/Mountain/Charizard', 50, -50);
    scaleObject('Charizard', 0.55, 0.55)
	addLuaSprite('Charizard', false);

    makeLuaSprite('Blastoise', 'EXE/Pokemon/Mountain/Blastoise', -350, -100);
    scaleObject('Blastoise', 0.6, 0.6)
	addLuaSprite('Blastoise', false);

    makeLuaSprite('TeamPokemon', 'EXE/Pokemon/Mountain/Pokemons', 250, -25);
    scaleObject('TeamPokemon', 0.45, 0.45)
	addLuaSprite('TeamPokemon', false);

    makeAnimatedLuaSprite('Typhlosion', 'EXE/Pokemon/Mountain/TYPHLOSION_MECHANIC', 350, 750)
    addAnimationByIndicesLoop('Typhlosion', 'idle','TYPHLOSION MECHANIC','0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14',24, true)
    addAnimationByIndices('Typhlosion', 'Flame', 'TYPHLOSION MECHANIC', '1516,17,18,19,20,21,22,23,24,25,26,27,28,29',24, false)
    objectPlayAnimation('Typhlosion', 'idle', true)
	addLuaSprite('Typhlosion', true)

    makeLuaSprite('Overlay', 'EXE/Pokemon/Mountain/fog', 0, 0)
    setObjectCamera('Overlay', 'camOther')
    addLuaSprite('Overlay', false)
end