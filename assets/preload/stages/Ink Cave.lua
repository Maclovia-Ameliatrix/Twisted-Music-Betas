
function onCreate()
	makeLuaSprite('bg','Indie/Bendy/BACKBACKgROUND',-600,-800)
	addLuaSprite('bg')

	makeLuaSprite('SecondBG','Indie/Bendy/BackgroundwhereDEEZNUTSfitINYOmOUTH',-1000,-800)
	addLuaSprite('SecondBG')

	makeLuaSprite('ThirdBG','Indie/Bendy/MidGrounUTS',-1000,-800)
	addLuaSprite('ThirdBG')

	makeLuaSprite('FG','Indie/Bendy/ForegroundEEZNUTS',1200,-600)
	addLuaSprite('FG', true)
	setScrollFactor('FG',1.2, 1.2)
	setObjectOrder('gfGroup',2);
	
end