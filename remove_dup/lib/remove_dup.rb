def remove_dup(arr)
    duped = []

    (0...arr.length).each do |i|
        if !duped.include?(arr[i])
            duped << arr[i]
        end
    end

    duped
end

def two_sum(arr)
    pairs = []

    arr.each_with_index do |el1, i1|
        arr.each_with_index do |el2, i2|
            if i2 > i1 && el1 + el2 == 0
                pairs.push([i1, i2])
            end
        end
    end

    pairs
end


def my_transpose(arr)

 row = arr.length
col = arr[0].length
final = []
(0...row).each do |i|
  res = []
  (0...col).each do |j|
    res << arr[j][i]
  end
  final << res
end
    final
end
