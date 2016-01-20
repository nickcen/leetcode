def length_of_last_word(s)
  return 0 unless s
  return 0 if s.rstrip == ''

  s.strip.split(/\s/)[-1].length
end