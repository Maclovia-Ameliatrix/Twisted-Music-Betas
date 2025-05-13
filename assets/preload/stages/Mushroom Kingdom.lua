function onCreate()
    makeLuaSprite('Castillo','EXE/Mario Locuras/EXE1/Castillo fondo de hasta atras',-1400,-850)
    setScrollFactor('Castillo',0.6,0.6)
    addLuaSprite('Castillo', false)

    makeLuaSprite('Arboles','EXE/Mario Locuras/EXE1/Arboles y sombra',-1480,-1050)
    addLuaSprite('Arboles', false)

    makeLuaSprite('Ladrillos','EXE/Mario Locuras/EXE1/CLadrillosPapus',-1450,-650)
    addLuaSprite('Ladrillos', false)

    makeLuaSprite('Piso','EXE/Mario Locuras/EXE1/Suelo y brillo atmosferico',-1450,-850)
    addLuaSprite('Piso', false)
    
    makeLuaSprite('Oscuro','EXE/Mario Locuras/EXE1/dark',-1450,-850)
    addLuaSprite('Piso', true)
end