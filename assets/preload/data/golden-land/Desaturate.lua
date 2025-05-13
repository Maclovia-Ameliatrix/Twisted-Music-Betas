local shaderName = "desaturation"
function onCreate()
    shaderCoordFix() -- initialize a fix for textureCoord when resizing game window

    makeLuaSprite("desaturation")
    makeGraphic("shaderImage", screenWidth, screenHeight)
    makeLuaSprite("tvcrt")
    makeGraphic("shaderImage", screenWidth, screenHeight)
    setSpriteShader("shaderImage", "desaturation")
    setSpriteShader("shaderImage", "tvcrt")


    runHaxeCode([[
        var shaderName = "]] .. shaderName .. [[";
        
        game.initLuaShader(shaderName);
        
        var shader0 = game.createRuntimeShader(shaderName);
        game.camGame.setFilters([new ShaderFilter(shader0)]);
        game.getLuaObject("desaturation").shader = shader0; // setting it into temporary sprite so luas can set its shader uniforms/properties
        game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("desaturation").shader)]);
        game.camOther.setFilters([new ShaderFilter(game.getLuaObject("desaturation").shader)]);
        return;
    ]])
end

function shaderCoordFix()
    runHaxeCode([[
        resetCamCache = function(?spr) {
            if (spr == null || spr.filters == null) return;
            spr.__cacheBitmap = null;
            spr.__cacheBitmapData = null;
        }
        
        fixShaderCoordFix = function(?_) {
            resetCamCache(game.camGame.flashSprite);
            resetCamCache(game.camHUD.flashSprite);
            resetCamCache(game.camOther.flashSprite);
        }
    
        FlxG.signals.gameResized.add(fixShaderCoordFix);
        fixShaderCoordFix();
        return;
    ]])
end

function onDestroy()
    runHaxeCode([[
        FlxG.signals.gameResized.remove(fixShaderCoordFix);
        return;
    ]])
end