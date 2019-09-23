def nyc_pigeon_organizer(data)
  new_pigeon_hash = {}
  
  data.each do |color_gender_lives, value|
    value.each do |key, all_names|
      all_names.each do |name|
        if new_pigeon_hash[name].nil?
          new_pigeon_hash[name] = {}
        end
        
        if new_pigeon_hash[name][color_gender_lives].nil?
          new_pigeon_hash[name][color_gender_lives] = []
        end
        
        new_pigeon_hash[name][color_gender_lives].push(key.to_s)
      end
    end
  end
  
  new_pigeon_hash
end
