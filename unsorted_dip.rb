def element_find(arr)
    len = arr.length
    
    i = 0
    current_max = - Float::INFINITY
    # while(i < len - 1) do
    #     if current_max < arr[i]
    #         previous_max = current_max
    #         current_max = arr[i]
    #     end
    #     i = i + 1    
    # end

    # if i == 0 || i == len - 1
    #     puts "-1"
    # else
    #    p previous_max
    # # end 
current_max = - Float::INFINITY
    # w 

    leftmax = []
    rightmin = []
    
    leftmax[0] = arr.first
    i = 1
    while(i<len) do
        # if leftmax[i-1] < arr[i]
            leftmax[i] = [arr[i-1], leftmax[i-1]].max
        # end
        i+=1
    end
    
    rightmin[len-1] = arr.last
    i = len - 2
    while(i>=-1) do
        # p i
        # p arr[i]
        # p rightmin
       rightmin[i] = [arr[i+1], rightmin[i+1]].min
        i-=1
    end 

    i = 0
    while(i < len - 1) do
        # p rightmin
        # p leftmax
        if leftmax[i] < arr[i] && rightmin[i] > arr[i]
            p arr[i] 
            return
        end    
        i+=1   
    end 
    print -1
    return -1        
end  

element_find([5, 1, 4, 3, 6, 8, 10, 7, 9])