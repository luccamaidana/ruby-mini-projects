def bubble_sort(array)
  aux = 0
  for i in 0 ... (array.length - 1)
    for j in i + 1 ... (array.length) 
      if array[i] > array[j]
        aux = array[i]
        array[i] = array[j]
        array[j] = aux
      end
    end
  end
  p array
end

bubble_sort([4,3,78,2,0,2])