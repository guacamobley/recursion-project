def merge_sort ary
  #split the lists into smaller lists, until each list is size 1
  #join the small lists together by seeing whose first element is smaller
  #
  if ary.length < 2
    return ary
  end

  ary1 = ary[0...ary.length/2]
  ary2 = ary[ary.length/2..-1]

  ary1 = merge_sort(ary1)
  ary2 = merge_sort(ary2)

  newAry = []

  until ary1.empty?
    if ary2.empty?
      newAry.push(ary1.shift)
    elsif ary1[0] < ary2[0]
      newAry.push(ary1.shift)
    else
      newAry.push(ary2.shift)
    end
  end

  until ary2.empty?
    newAry.push(ary2.shift)
  end

  return newAry
end
