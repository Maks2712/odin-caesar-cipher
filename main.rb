def caesar_cipher (string,shift)
    arr=string.downcase.split("")
    arr.map!{|element| element=element.ord}  
    arr.map! do |element| 
           if element.between?(97,122)
             if (element+shift)>122
                element=96+((element+shift)-122)
             else
               element+shift
             end
           else
             element
           end
    end
    arr.map!{|element| element=element.chr}
  arr.join('').capitalize
  
end

a= caesar_cipher("Xifsf jt kpio!",-1)
print a
