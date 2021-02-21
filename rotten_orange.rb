class Solution
  attr_accessor :h, :max
  
  def initialize(a)
    @max = 0
    @h = {}
    @h["rotten"] = []
    @h["fresh"] = []
    a.each_with_index do |e, i|
      e.each_with_index do |e_1, e_i_1|
    
        if(e_1 == 1)
          h["fresh"].push([i, e_i_1])
        elsif(e_1 == 2)
          h["rotten"].push([i, e_i_1])
        end  
      end  
    end
    # p h
  end  

  def timer
    infected = []
    directions = []
    # max = 0
    directions.push([0,1], [0,-1], [1,0], [-1,0])

    while( !h["fresh"].empty?) do
      @h["rotten"].each do |e|
        directions.each do |e_1|
          i = e[0] + e_1[0]
          j = e[1] + e_1[1]
          @h["fresh"].reject! do |e|
            if(e == [i,j])
              infected.push([i,j])
            end
          end
        end
      end
      if(infected.empty?)
        p "Can't"
        return false
      end  
      @h["rotten"] = infected
      @max = @max + 1
    end  
  p @max  
  end
end    

grid = [[2,1,0,2,1],[1,0,1,2,1],[1,0,0,2,1]]
# grid = [[2,0,1,1,1],[0,0,0,0,1],[1,1,0,1,1]]


s = Solution.new(grid)
# p s.h
s.timer