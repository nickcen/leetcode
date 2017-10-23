def find_lu_slength(a, b)
  return -1 if a == b
  [a.length, b.length].max
end