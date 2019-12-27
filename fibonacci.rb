def fibs n
  # returns first n members of fibonacci sequence
  fibNums = []

  fibNums << 0
  return fibNums if n == 1

  fibNums << 1
  return fibNums if n == 2

  (n-2).times do fibNums << fibNums[-1] + fibNums[-2] end

  return fibNums
end

def fibs_rec n
  return [0]    if n == 0
  return [0,1]  if n == 1
  return fibs_rec(n-1) << fibs_rec(n-1)[-1] + fibs_rec(n-1)[-2]
end