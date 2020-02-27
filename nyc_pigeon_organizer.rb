def nyc_pigeon_organizer(data)
  name_hash = Hash.new()
  
  data[:color].each {|k,v| 
    v.each {|name| 
      name_hash[name] = {:color => [], :gender => [], :lives => []}
    }
  }
  puts name_hash
  name_hash.map {|pigeon| 
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
