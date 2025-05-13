function onCreate()

	makeLuaSprite('Rojo','amorverse/hell/JGHOST 1',-500, -300)
	setScrollFactor('Rojo',0, 0)
	scaleObject('Rojo', 0.9, 0.9)
	addLuaSprite('Rojo')

	makeLuaSprite('Figuras','amorverse/hell/JGHOST 1_2',-500, -300)
	setScrollFactor('Figuras',0.3, 0.3)
	scaleObject('Figuras', 0.9, 0.9)
	addLuaSprite('Figuras')

    makeLuaSprite('Bosque','amorverse/hell/JGHOST 2',-900, -500)
	setScrollFactor('Bosque',1.0, 1.0)
	scaleObject('Bosque', 1.1, 1.1)
	addLuaSprite('Bosque')

    makeLuaSprite('Arboles','amorverse/hell/JGHOST 3',-900, -500)
	setScrollFactor('Arboles',1.0, 1.0)
	scaleObject('Arboles', 1.1, 1.1)
	addLuaSprite('Arboles')

    makeLuaSprite('Piso','amorverse/hell/JGHOST 4',-900, -500)
	setScrollFactor('Piso',1.0, 1.0)
	scaleObject('Piso', 1.1, 1.1)
	addLuaSprite('Piso')
end