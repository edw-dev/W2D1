# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        return nil if self.empty?
        self.max - self.min
    end
    def average
        return nil if self.empty? || self[0].to_i != self[0]
        (self.sum).to_f/(self.length * 1.0)
    end
    def median
        return nil if self.empty?
        sorted = self.sort
        len = self.length
        if len % 2 != 0
            return sorted[len/2]
        else
            return (sorted[len/2]+sorted[(len/2)-1])/2.0
        end
    end
    def counts
        hash = {}
        self.each do |ele| 
            if !hash.has_key?(ele)
                hash[ele] = 1
            else
                hash[ele] += 1
            end
        end
        hash
    end
    def my_count(arg)
        count =0
        self.each do |ele| 
            count += 1 if ele == arg
        end
        count
    end
    def my_index(arg)
        self.each_with_index {|ele, idx| return idx if arg == ele}
        nil
    end
    def my_uniq
        newarr = []
        self.each {|ele| newarr << ele if !newarr.include?(ele) }
        newarr
    end
    def my_transpose
        newarr = Array.new(self.length) {Array.new(self[0].length)}
        self.each_with_index do |subarr, idx1|
            subarr.each_with_index do |ele, idx2|
                newarr[idx2][idx1] = ele
            end
        end
        newarr
    end




end
