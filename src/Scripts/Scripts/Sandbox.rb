class DebugTerrainTags
  
  # testingzsdgfdsasdfds
  
  
  def initialize
    echo("Terrain tag: ")
    echoln(pbGetTerrainTag)
    echo("Is encounter possible? ")
    echoln($PokemonEncounters.isEncounterPossibleHere?)
    echo("Encounter type: ")
    echoln($PokemonEncounters.pbEncounterType)
    echo("pbIsShallowsTag?(pbGetTerrainTag($game_player)): ")
    echoln(pbIsShallowsTag?(pbGetTerrainTag($game_player)))
    echo("isShallows? ")
    echoln($PokemonEncounters.isShallows?)
    echo("isSand? ")
    echoln($PokemonEncounters.isSand?)
  end
  
end


class Debugger

  def initialize

  end
  
  
end

  

class DebugEditor
  
  
  def self.setWeather(map_id,weather,prob)
    data = [weather,prob]
    pbSetMapMetadata(map_id,6,data)
  end
  
end


    