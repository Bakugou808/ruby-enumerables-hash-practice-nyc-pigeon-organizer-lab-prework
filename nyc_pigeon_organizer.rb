def nyc_pigeon_organizer(data)
  name_hash = Hash.new()
  
  data[:color].each {|k,v| 
    v.each {|name| 
      name_hash[name] = {color: [], gender: [], lives: []}
    }
  }
  puts name_hash
  name_hash.map {|pigeon| 
    data.map {|k, attribute| 
      attribute.map {|k, detail|
        if detail.include?(pigeon)
          name_hash[pigeon][attribute] << detail.to_s 
        end 
      }
    }
  }
  puts name_hash
  name_hash
end
