def nyc_pigeon_organizer(data)
  new_hash = {}
    data.each do |hash, info|
      info.each do |key, value|
        value.each do |name|
          if !new_hash.include?(name)
          new_hash[name] = {}
        end

        if !new_hash[name].include?(hash)
          new_hash[name][hash] = []
        end

        if !new_hash[name][hash].include?(key)
          new_hash[name][hash].push(key.to_s)
        end
      end
    end
  end
  new_hash
end