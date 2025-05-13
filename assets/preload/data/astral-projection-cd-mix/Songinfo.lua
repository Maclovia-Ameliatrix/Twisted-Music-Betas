function onCreate()
    makeLuaSprite('songinfo1', 'freeplaySongText/barText', -1200, 365);
	setObjectCamera('songinfo1', 'hud');
	scaleObject('songinfo1', 1.2, 1.2);
	addLuaSprite('songinfo1', true);
	
	makeAnimatedLuaSprite('songinfo2', 'freeplaySongText/vinyl', -900, 400);
	setLuaSpriteScrollFactor('songinfo2', 1.1, 1.1);
	scaleObject('songinfo2', 1,1);
	setObjectCamera('songinfo2', 'hud');
	addAnimationByPrefix('songinfo2', 'vinylslide', 'vinyl', 20, true);
	addLuaSprite('songinfo2', true);
	
	makeLuaSprite('songinfo3', 'freeplaySongText/astral-projection-cd-mix', -950, 395);
	setObjectCamera('songinfo3', 'hud');
	scaleObject('songinfo3', 0.65, 0.65);
	addLuaSprite('songinfo3', true);
end

function onStepHit()
	if curStep == 1 then
	
		doTweenX('SongInfo2TweenX', 'songinfo1', -10, 2.6, 'expoOut');
		doTweenX('SongInfo1TweenX', 'songinfo2', 10, 2.6, 'expoOut');
		doTweenX('SongInfo3TweenX', 'songinfo3', 80, 2.6, 'expoOut');
	end
	if curStep == 32 then
	    doTweenX('SongInfosonginfo11TweenX', 'songinfo1', -900, 2.6, 'expoIn');
		doTweenX('SongInfosonginfo12TweenX', 'songinfo2', -900, 2.6, 'expoIn');
		doTweenX('SongInfosonginfo13TweenX', 'songinfo3', -900, 2.6, 'expoIn');
	end
end

function onTweenCompleted(tag)
	if tag == 'SongInfosonginfo11TweenX' then
	    setProperty('songinfo1.visible', false);
		removeLuaSprite('songinfo1', true);
		end
	if tag == 'SongInfosonginfo12TweenX' then
	    setProperty('songinfo2.visible', false);
		removeLuaSprite('songinfo2', true);
		end
	if tag == 'SongInfosonginfo13TweenX' then
		setProperty('songinfo3.visible', false);
		removeLuaSprite('songinfo3', true);
	end
end