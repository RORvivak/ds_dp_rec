def rotate(matrix)
    matrix_index = matrix.length - 1
    c = 0
    for i in matrix_index.downto(0) do
        for j in (0..matrix_index) do
            matrix[matrix_index + j + 1] = [] if matrix[matrix_index + j + 1].nil?
            matrix[matrix_index + j+1][c] = matrix[i][j]
            
        end    
    c+=1
    end
    matrix.shift(matrix_index + 1)
    return (matrix[matrix_index+1..matrix.length-1])
end