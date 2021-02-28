require_relative 'matrix'
require_relative '../module/methods'
require_relative '../module/operations'
require_relative '../module/showmatrix'
# Classe main
class Main
  include Methods
  include Operations
  include Showmatrix
=begin
Matrizes para o método de Gauss sem pivotação
m = [[ 4,  -2,   -3,   6,   12], # Matriz estendida
     [-6,   7,  6.5,  -6, -6.5],
     [ 1, 7.5, 6.25, 5.5,   16],
     [-12, 22, 15.5,  -1,   17] ]

m = [ [4, 2, 2,  4],
      [2, 5, 3,-12],
      [2, 1, 3,  8] ]

m = [[3, 2, 2],
     [1, 4, 3]]
=end

#  matriz_a = Matrix.new([[4, 2, 2, 4]], 'v', 'c')
#  matriz_b = Matrix.new([[4, 2, 2, 4]], 'v', 'c')

  matriz_a = Matrix.new([ [4, 2, 2,  4],
      [2, 5, 3,-12],
      [2, 1, 3,  8] ])
  matriz_b = Matrix.new([ [4, 2, 2,  4],
      [2, 5, 3,-12],
      [2, 1, 3,  8] ])

  matriz_a.show_matrix
  r = Matrix.new(Operations.sum(matriz_a, matriz_b))
  r.show_matrix
end
