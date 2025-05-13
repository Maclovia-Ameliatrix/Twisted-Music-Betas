function onCreate()
    makeLuaSprite('Cielo','EXE/Mario Locuras/Secret/SkyBox', -1050, -800)
    setScrollFactor('Cielo', 0.2, 0.2)
    addLuaSprite('Cielo', false)

    makeLuaSprite('Arboles','EXE/Mario Locuras/Secret/BackTrees', -1050, -800)
    setScrollFactor('Arboles', 0.6, 0.6)
    addLuaSprite('Arboles', false)

    makeLuaSprite('Pared','EXE/Mario Locuras/Secret/WallAndFloor', -1050, -800)
    setScrollFactor('Pared', 1, 1)
    addLuaSprite('Pared', false)

    makeLuaSprite('Arbusto','EXE/Mario Locuras/Secret/BushesForeground', -1050, -800)
    setScrollFactor('Arbusto', 1.2, 1.2)
    addLuaSprite('Arbusto', true)
end