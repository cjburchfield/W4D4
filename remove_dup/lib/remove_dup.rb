def remove_dup(arr)
    duped = []

    (0...arr.length).each do |i|
        if !duped.include?(arr[i])
            duped << arr[i]
        end
    end

    duped
end