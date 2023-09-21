
def quicksort(array, from=0, to=nil)
    to = array.length-1 if to == nil
    return array if from >= to 

    pivot = from 
    (pivot+1..to).each do |idx|
        if array[idx] < array[pivot]
            temp = array[idx]
            array[idx] = array[pivot+1]
            array[pivot+1] = array[pivot]
            array[pivot] = temp
            pivot+1
        end 
    end

    quicksort(array,from, pivot-1)
    quicksort(array,pivot+1,to)

    return array
end

array = [10, 5, 8, 45, 62, 77, 43, 74, 88, 11, 20, 24, 52,  17, 23, 14, 54, 13, 27, 3, 44, 75, 35, 129, 321, 212, 155, 189, 111]

puts quicksort(array)


 

# Algoritmo de ordenação, ele ordena em ordem crescente.
# O merge sort tem duas partes, uma primeira parte para encontrar o pivot, e a segunda para incrementar e decrementar o pivot.
# Ele percorre todos os arrays usando o pivot, e para compara-los, direita(maior) e esquerda(menor). Adicionando um ao valor ou subtraindo