function onCreate()

	makeLuaSprite('Sky','EXE/MCM/island/sunset',-550,-1000)
	scaleObject('Sky',1.75,1.75)
	addLuaSprite('Sky')
	setScrollFactor('Sky',0.6,0.6)

    makeLuaSprite('Orange','EXE/MCM/island/sun',-400,-200)
	scaleObject('Orange',1,1)
	addLuaSprite('Orange')
	setScrollFactor('Orange',0.6,0.6)

	makeLuaSprite('Volcano','EXE/MCM/island/volcano',0,-200)
	scaleObject('Volcano',1,1)
	addLuaSprite('Volcano')
	setScrollFactor('Volcano',0.9,0.9)
	
	makeLuaSprite('LeftTree','EXE/MCM/island/treeGroup1',-1500,-300)
	scaleObject('LeftTree',1,1)
	setProperty('LeftTree.angle', -90)
	addLuaSprite('LeftTree')
	setScrollFactor('LeftTree',0.9,0.9)

	makeLuaSprite('SmallTree','EXE/MCM/island/treeGroup2',-300,600)
	scaleObject('SmallTree',1,1)
	setProperty('SmallTree.angle', 90)
	addLuaSprite('SmallTree')
	setScrollFactor('SmallTree',0.9,0.9)

	makeLuaSprite('RightTree','EXE/MCM/island/treeGroup3',1700,-300)
	scaleObject('RightTree',1,1)
	setProperty('RightTree.angle', 90)
	addLuaSprite('RightTree')
	setScrollFactor('RightTree',0.9,0.9)

	makeLuaSprite('Sand','EXE/MCM/island/sand1',-750,-100)
	scaleObject('Sand',1,1)
	addLuaSprite('Sand')
	setScrollFactor('Sand',1,1)

    makeLuaSprite('BackTress','EXE/MCM/island/tree2',-750,-400)
	scaleObject('BackTress',1,1)
	addLuaSprite('BackTress')
	setScrollFactor('BackTress',1,1)

    makeLuaSprite('island','EXE/MCM/island/sand2',-750,-350)
	scaleObject('island',1,1)
	addLuaSprite('island')
	setScrollFactor('island',1,1)

    makeLuaSprite('Frontrees','EXE/MCM/island/treeFg',-750,-400)
	scaleObject('Frontrees',1,1)
	addLuaSprite('Frontrees', true)
	setScrollFactor('Frontrees',1,1)
end

function onUpdate()
	if curStep == 229 then 
		doTweenY('Welcome', 'Sand', -400, 0.1, 'quadOut')
	end
end
function onTweenCompleted(tag)
    if tag == 'Welcome' then
        doTweenX('ToThe', 'Volcano', -600, 0.1, 'quadOut')
    end
	if tag == 'ToThe' then
		doTweenX('Salad', 'LeftTree', -900, 0.1, 'quadOut')
		doTweenAngle('Fred', 'LeftTree', 0, 0.4, 'backOut')
	end
	if tag == 'Salad' then
		doTweenX('Fruit', 'RightTree', 900, 0.1, 'quadOut')
		doTweenAngle('The', 'RightTree', 0, 0.4, 'backOut')
	end
	if tag == 'Fruit' then
		doTweenY('Island', 'SmallTree', -300, 0.1, 'quadOut')
		doTweenAngle('Coconut', 'SmallTree', 0, 0.4, 'backOut')
	end
end