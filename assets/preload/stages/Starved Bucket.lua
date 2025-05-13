function onCreate()

	makeLuaSprite('StarvedWater','EXE/MCM/Starved/Sky',-750,-400)
	scaleObject('StarvedWater',1,1)
	addLuaSprite('StarvedWater')
	setScrollFactor('StarvedWater',0.7,0.7)

	makeLuaSprite('StarvedBucket','EXE/MCM/Starved/inside',-750,-400)
	scaleObject('StarvedBucket',1,1)
	addLuaSprite('StarvedBucket')

	makeLuaSprite('StarvedSpongebobDead','EXE/MCM/Starved/dead',-300,250)
	scaleObject('StarvedSpongebobDead',0.65,0.65)
	addLuaSprite('StarvedSpongebobDead')

	makeLuaSprite('StarvedChain','EXE/MCM/Starved/chain',-500,-300)
	scaleObject('StarvedChain',1.45,1.45)
	addLuaSprite('StarvedChain',true)
end