def arraycalc(x_array, y_arrays, &block)
    tmp = []

    x_array.each_with_index { |i, index|
        tmp.push(block.call(x_array[index], y_arrays[index]))
    }
    return tmp
end
  

result = arraycalc([1,2,3], [4,5,6]) { |x, y|
    x * y
}

print(result.to_s + "\n")