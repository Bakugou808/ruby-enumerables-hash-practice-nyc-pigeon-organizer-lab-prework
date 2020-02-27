def nyc_pigeon_organizer(data)
  name_hash = Hash.new()
  

  
  data.each {|k,sub_hash|
    sub_hash.each {|key, arr|
      arr.each {|name|
        if name_hash[name]
          name_hash[name][k] = [] 
        else 
          name_hash[name] = {}
          name_hash[name][k] = []
      }
    }
  }
  puts name_hash
  name_hash.map {|pigeon, hash_value| 
    data.map {|akey, attribute_hash| 
      attribute_hash.map {|dkey, detail_hash|
        if detail_hash.include?(pigeon)
          name_hash[pigeon][akey] << dkey.to_s 
        end 
      }
    }
  }
  puts name_hash
  name_hash
end
