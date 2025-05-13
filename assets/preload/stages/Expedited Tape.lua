function onCreate()
  
  makeLuaSprite('white', 'white', -650, -725)
  setProperty('white.alpha', 0)
  addLuaSprite('white', false)

  makeLuaSprite('gradiant', 'Mandela/gradient', -650, -725)
  setProperty('gradiant.alpha', 0)
  addLuaSprite('gradiant', false)

  makeLuaSprite('bg', 'Mandela/bg', -540, -725)
  addLuaSprite('bg', false)

  makeLuaSprite('layer2', 'Mandela/Alterlayer2', -540, -725)
  addLuaSprite('layer2', false)

  makeLuaSprite('layer', 'Mandela/layerNORMAL', -540, -725)
  addLuaSprite('layer', true)

  makeLuaSprite('layer3', 'Mandela/layer2', -300, -485)
  setProperty('layer3.alpha', 0)
  scaleObject('layer3', 1, 0.75)
  addLuaSprite('layer3', true)
end

