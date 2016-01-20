# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  l = 0
  r = n

  while r - l > 1
    t = (r + l) / 2
    if is_bad_version(t)
      r = t
    else
      l = t
    end
  end

  is_bad_version(l) ? l : r
end