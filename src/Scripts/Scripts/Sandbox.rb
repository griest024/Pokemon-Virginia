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


class DebugEditor
  
  
  def DebugEditor.setWeather(map_id,*weather_prob)
    metadata=nil
    mapinfos=pbLoadRxData("Data/MapInfos")
    metadata=load_data("Data/metadata.dat")
    map=map_id
    loop do
      data=[]
      properties=(map==0) ? MapScreenScene::GLOBALMETADATA :
                            MapScreenScene::LOCALMAPS
      WeatherEffectProperty.set(nil,nil,3,30)
      for i in 0...properties.length
        data.push(metadata[map] ? metadata[map][i+1] : nil)
      end
      for i in 0...properties.length
        if !metadata[map]
          metadata[map]=[]
        end
        metadata[map][i+1]=data[i]
      end
    end
    pbSerializeMetadata(metadata,mapinfos) if metadata
    echoln(pbGetMetadata(map_id,MetadataWeather))
  end
  
end


    