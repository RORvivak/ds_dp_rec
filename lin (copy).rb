class Solution
  attr_accessor :h
  
  def initialize(*a)
    h["rotten"] = []
    h["fresh"] = []
    a.each_index do |e_i|
      e.each_index do |e_i_1|
        if(e_1 == 1)
          h["fresh"].push([e_i][e_i_1])
        elsif(e_1 == 2)
          h["rotten"].push([e_i][e_i_1])
        end  
      end  
    end

    def timer
      infected = []
      directions = []
      max = 0
      directions.push([0,1], [0,-1], [1,0], [-1,0])

      while( !h["fresh"].empty?) do
        h["rotten"].each do |e|
          directions.each do |e_1|
            i = e[0] + e_1[0]
            j = e[1] + e_1[1]
            h["fresh"].reject! do |e|
              if(e == [i][j])
                infected.push([i][j])
              end
            end
        end
        if(infected.empty?)
          p "Can't"
          return false
        end  
        ++max
        h["rotten"] = infected
      end
      p max  
    end  
  end



end    