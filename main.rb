def caesar_cipher (string=" ",shift=0)
    arr=string.downcase.split("")
    arr.map!{|element| element=element.ord}
    arr.map! 
        do |element| 
            if ((element+shift)>122)
                element = 97+(element+shift-122)
            end
            if ((element+shift).between?(97,122))
                element+=shift
            end
    end
    arr.map!{|element| element=element.chr}
    arr
    
end