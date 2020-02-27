def nyc_pigeon_organizer(data)
  name_hash = Hash.new()
  
  data[:color].each {|k,v| 
    v.each {|name| 
      name_hash[name] = {color: [], gender: [], lives: []}
    }
  }
  
  name_hash.map {|pigeon| 
    data.map {|attribute| 
      attribute.map {|detail|
        if detail.?(pigeon)
          name_hash[pigeon][attribute] << detail.to_s 
        end 
      }
    }
  }
  name_hash
end
