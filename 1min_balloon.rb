# @param {Integer[][]} points
# @return {Integer}
# 452. Minimum Number of Arrows to Burst Balloons
def find_min_arrow_shots(points)
    arrow_min = -Float::INFINITY
    points.sort_by!(&:last).count{|s,e| arrow_min=e  if s>arrow_min}
    
end