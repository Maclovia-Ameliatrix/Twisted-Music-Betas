--[[
	CREDITS:
        - script by Zbyszeq#9088
        - overhual and optimized by Cherri#0815
        - modified by Fraze R.I.P
]]--
 
local options = {
    Particle = {
        imagePath = 'Minor Mods/BAR/littleheart',
        name = 'Minor Mods/BAR/littleheart',
        startY = 1000,
        destinationY = -600,
        minimumX = -2000,
        maximumX = 2500,
        speed = 4,
        overlapping = true,
        animated = true,
        commonity = 30,
        scaleX = 2.5,
        scaleY = 2.5,
        animationName = 'littleheart',
        frameRate = 24
    },
    ParticleNum = 10,
    generateParticles = false
}

function onBeatHit( ... )
	
	if curBeat == 72 then
            options.generateParticles = true
    end

    if curBeat == 104 then
            options.generateParticles = false
    end
    
	if curBeat == 136 then
            options.generateParticles = true
    end

    if curBeat == 168 then
            options.generateParticles = false
    end
end


function onUpdate()
    if options.generateParticles and getRandomInt(1, options.Particle.commonity) == 1 then
        options.ParticleNum = options.ParticleNum + 1
        (options.Particle.animated and makeAnimatedLuaSprite or makeLuaSprite)(options.Particle.name .. options.ParticleNum, options.Particle.imagePath, getRandomInt(options.Particle.minimumX, options.Particle.maximumX), options.Particle.startY)
        scaleObject(options.Particle.name .. options.ParticleNum, options.Particle.scaleX+getRandomFloat(-0.5,0.5), options.Particle.scaleY+getRandomFloat(-0.5,0.5))
        addLuaSprite(options.Particle.name .. options.ParticleNum, options.Particle.overlapping)
        doTweenY('particleweeee' .. options.ParticleNum, options.Particle.name .. options.ParticleNum, options.Particle.destinationY, options.Particle.speed+getRandomFloat(-2,2))
        doTweenX('particleweeeeX' .. options.ParticleNum, options.Particle.name .. options.ParticleNum..'.scale', 0, options.Particle.speed+1, 'cubeIn')
        doTweenY('particleweeeeY' .. options.ParticleNum, options.Particle.name .. options.ParticleNum..'.scale', 0, options.Particle.speed+1, 'cubeIn')
        doTweenAlpha('particleweeeeA' .. options.ParticleNum, options.Particle.name .. options.ParticleNum, 0, options.Particle.speed+1, 'cubeIn')
        if options.Particle.animated then 
            addAnimationByPrefix(options.Particle.name .. options.ParticleNum, 'particleanim', options.Particle.animationName, options.Particle.frameRate, true)
        end
    end
end