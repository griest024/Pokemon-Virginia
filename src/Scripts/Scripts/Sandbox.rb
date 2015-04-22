class DebugTerrainTags
  
  # testing
  
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

    