class Matcher
  def match(expected, actual, clip_limit, delta) 
    actual = clip(actual, clip_limit)

    return false if different?(actual, expected)

    # Check that each entry is within expected +/- delta
    return false if out_of_range?(expected, actual, delta)

    return true
  end

  def clip(array, limit)
    array.map { |val| [val, limit].min }
  end

  def different?(actual, expected)
    actual.length != expected.length
  end

  def out_of_range?(expected, actual, delta)
    actual.each_index do |i|
      return true if(expected[i] - actual[i]).abs > delta
    end

    false
  end
end
