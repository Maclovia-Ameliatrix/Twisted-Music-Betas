function onCreate()
	makeLuaSprite('Comic', 'Minor Mods/Rage comic/bg', 0, 300)
	addLuaSprite('Comic', false)

	makeLuaSprite('Desk', 'Minor Mods/Rage comic/deskShit', 150, 800)
	addLuaSprite('Desk', false)

	makeLuaSprite('NoEscape', 'Minor Mods/Rage comic/Window text', 1500, 300)
	addLuaSprite('NoEscape', false)

	makeLuaSprite('EvilPaint', 'Minor Mods/Rage comic/paintings5', 0, 465)
	addLuaSprite('EvilPaint', false)

	makeAnimatedLuaSprite('EvilComic','Minor Mods/Rage comic/bgAnimated',0, 300)
	addAnimationByPrefix('EvilComic','Evil','bgIdle',24,true)
	addLuaSprite('EvilComic', false)

	makeLuaSprite('EvilPictures', 'Minor Mods/Rage comic/screenThing', 525, 850)
	addLuaSprite('EvilPictures', false)

	makeAnimatedLuaSprite('EvilDesk','Minor Mods/Rage comic/deskAnimated',300, 800)
	addAnimationByPrefix('EvilDesk','Evil','deskIdle',24,true)
	addLuaSprite('EvilDesk', false)

	setProperty('NoEscape.alpha', 0)
	setProperty('EvilPaint.alpha', 0)
	setProperty('EvilPictures.alpha', 0)
	setProperty('EvilComic.alpha', 0)
	setProperty('EvilDesk.alpha', 0)
end