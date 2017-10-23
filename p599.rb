def find_restaurant(list1, list2)
  names = list1 & list2
  ret = {}
  names.map do |name|
    idx = list1.index(name) + list2.index(name)
    unless ret.has_key?(idx)
      ret[idx] = []
    end
    ret[idx] << name
  end

  ret[ret.keys.min]
end

list1 = ["Shogun", "KFC", "Tapioca Express", "Burger King"]
list2 = ["KFC", "Shogun", "Burger King"]

puts find_restaurant(list1, list2)