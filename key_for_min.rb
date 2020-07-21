# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  low_key = nil
  low_value = nil
  name_hash.each do |k, v|
    if low_value == nil || low_value > v
      low_value = v
      low_key = k
    end
  end
  low_key
end

# second solution.
def key_for_min_value(name_hash)
  values_array = name_hash.map{|key, value| value}.sort# . sort will return the smallest value for numbers
  name_hash.each{|key, value| return key if value == values_array[0]}
  nil
end
