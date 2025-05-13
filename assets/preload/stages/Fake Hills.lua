function onCreate()
----Background shit
	makeLuaSprite('sky', 'EXE/Bodrionic.exe/hog/bg', -1200, -500);
	setLuaSpriteScrollFactor('sky', 0, 0);
	scaleObject('sky', 1, 1);
    addLuaSprite('sky', false)

    makeLuaSprite('motains', 'EXE/Bodrionic.exe/hog/motains', -500, -100);
	setLuaSpriteScrollFactor('motains', 0.2, 0.2);
	scaleObject('motains', 1.1, 1.1);
    addLuaSprite('motains', false)

    makeAnimatedLuaSprite('Waterfall','EXE/Bodrionic.exe/hog/Waterfalls', -850, 100)
	addAnimationByPrefix('Waterfall', 'Fall', 'British' ,24,true)
	objectPlayAnimation('Waterfall','Fall' ,true)
    setLuaSpriteScrollFactor('Waterfall', 0.2, 0.2);
    addLuaSprite('Waterfall', false)

    makeAnimatedLuaSprite('hills','EXE/Bodrionic.exe/hog/HillsandHills', -400, 100)
	addAnimationByPrefix('hills', 'Wiii', 'DumbassMF' ,24,true)
	objectPlayAnimation('hills','Wiii' ,true)
    setLuaSpriteScrollFactor('hills', 0.5, 0.5);
    addLuaSprite('hills', false)

    makeLuaSprite('PalmTree', 'EXE/Bodrionic.exe/hog/trees', -300, -300);
	setLuaSpriteScrollFactor('PalmTree', 0.8, 0.8);
	scaleObject('PalmTree', 1, 1);
    addLuaSprite('PalmTree', false)

    makeLuaSprite('floor', 'EXE/Bodrionic.exe/hog/floor', -500, 500);
	setLuaSpriteScrollFactor('floor', 1, 1);
	scaleObject('floor', 1.25, 1.25);
    addLuaSprite('floor', false)

    makeLuaSprite('Rock', 'EXE/Bodrionic.exe/hog/rocks', -500, 500);
	setLuaSpriteScrollFactor('Rock', 1.25, 1.25);
	scaleObject('Rock', 1.25, 1.25);
    addLuaSprite('Rock', true)
----Scorched Hills
	makeLuaSprite('Dark', 'EXE/Bodrionic.exe/hog/blast/Sunset', -1200, -500);
	setLuaSpriteScrollFactor('Dark', 0, 0);
	scaleObject('Dark', 1, 1);
	addLuaSprite('Dark', false)

    makeLuaSprite('BlackSun', 'EXE/Bodrionic.exe/hog/blast/Mountains', -500, -100);
	setLuaSpriteScrollFactor('BlackSun', 0.2, 0.2);
	scaleObject('BlackSun', 1.1, 1.1);
    addLuaSprite('BlackSun', false)

	makeAnimatedLuaSprite('BlackWater','EXE/Bodrionic.exe/hog/blast/Waterfalls', -850, 100)
	addAnimationByPrefix('BlackWater', 'Fall', 'British' ,24,true)
	objectPlayAnimation('BlackWater','Fall' ,true)
    setLuaSpriteScrollFactor('BlackWater', 0.2, 0.2);
    addLuaSprite('BlackWater', false)

	makeLuaSprite('Whithered', 'EXE/Bodrionic.exe/hog/blast/Hills', -405, 110);
	setLuaSpriteScrollFactor('Whithered', 0.5, 0.5);
	scaleObject('Whithered', 1.09, 1.09);
    addLuaSprite('Whithered', false)

	makeAnimatedLuaSprite('Monitor','EXE/Bodrionic.exe/hog/blast/Monitor', 975, 150)
	addAnimationByPrefix('Monitor', 'Off', 'Monitor',24,true)
	addAnimationByPrefix('Monitor', 'Fatal','Fatalerror',24,false)
	addAnimationByPrefix('Monitor', 'Innocence','NMI',24,false)
	addAnimationByPrefix('Monitor', 'Sarah','Needlemouse',24,false)
	addAnimationByPrefix('Monitor', 'Starved','Storved',24,false)
	objectPlayAnimation('Monitor','Off')
    setLuaSpriteScrollFactor('Monitor', 0.5, 0.5);
    addLuaSprite('Monitor', false)

	makeLuaSprite('PalmDead', 'EXE/Bodrionic.exe/hog/blast/Plants', -300, -300);
	setLuaSpriteScrollFactor('PalmDead', 0.8, 0.8);
	scaleObject('PalmDead', 1.25, 1.25);
    addLuaSprite('PalmDead', false)

    makeLuaSprite('Ground', 'EXE/Bodrionic.exe/hog/blast/Floor', -500, 500);
	setLuaSpriteScrollFactor('Ground', 1, 1);
	scaleObject('Ground', 1.5, 1.5);
    addLuaSprite('Ground', false)

    makeLuaSprite('Obsidian', 'EXE/Bodrionic.exe/hog/blast/Rocks', -500, 500);
	setLuaSpriteScrollFactor('Obsidian', 1.25, 1.25);
	scaleObject('Obsidian', 1.25, 1.25);
    addLuaSprite('Obsidian', true)

	setProperty('Dark.alpha', 0)
	setProperty('BlackSun.alpha', 0)
	setProperty('BlackWater.alpha', 0)
	setProperty('Whithered.alpha', 0)
	setProperty('Monitor.alpha', 0)
	setProperty('PalmDead.alpha', 0)
	setProperty('Ground.alpha', 0)
	setProperty('Obsidian.alpha', 0)
end

function onStepHit()
	if curStep % 16 == 0 and curStep > 863 then
		Cameos = getRandomInt(1,4)
		if Cameos == 1 then 
			objectPlayAnimation('Monitor', 'Fatal')
		elseif Cameos == 2 then
			objectPlayAnimation('Monitor', 'Innocence')
		elseif Cameos == 3 then
			objectPlayAnimation('Monitor', 'Sarah')
		elseif Cameos == 4 then
			objectPlayAnimation('Monitor', 'Starved')
		end
	end

end