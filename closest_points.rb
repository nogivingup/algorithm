class Point 
    attr_accessor :x, :y
end 

class Closest
    def bruteforce(points)
        min_dist = Float::MAX
        min_points = []
        for i in 0...points.length
            for j in (i+1)...points.length
                dist = distance(points[i], points[j])
                puts dist
                if min_dist >= dist
                    min_dist = dist
                    min_points = [points[i], points[j]]
                end
            end
        end
        return min_dist, min_points
    end
    
    def distance(p1, p2)
        #distance = Math.hypot((p1.x - p2.x), (p1.y - p2.y))
        distance = Math.sqrt((p1.x - p2.x)**2 + (p1.y - p2.y)**2)
    end
    
    def find_pairs(points)
        
        if points.length <= 3 
            return bruteforce(points)
        end
        
        
    end
end

points = [Point.new(2, 2), Point.new(4, 2), Point.new(5, 1)]
closest = Closest.new
min_dist, min_pts = closest.bruteforce(points)

min_dist, min_pts = closest.find_pairs(points)
#points2 = Array.new(100) {Point.new(rand, rand)}