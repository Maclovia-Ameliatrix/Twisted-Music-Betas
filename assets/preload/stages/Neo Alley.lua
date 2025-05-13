function onCreate()
	makeAnimatedLuaSprite('NeoBG', 'Neo/Other Mods/BallisticBackground', 0, 400)
    addAnimationByPrefix('NeoBG', 'idle', 'Background Whitty Moving', 24, true)
    objectPlayAnimation('NeoBG', 'idle', true)
    addLuaSprite('NeoBG', false)
end