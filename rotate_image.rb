#You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees (clockwise).

#You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.

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