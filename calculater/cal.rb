
# go to the Terminal of calculater folder
# 
# run commend: ruby cal.rb


puts "Enter a value :"
val = gets.chomp


array=val.split(" ")

first = array[0]
second = array[1]


def change(valr)
  
   val=valr.to_r
  
   if val>0
     if val.to_i>0
       int1=val-val.to_i
       if int1==0
         return val.to_i.to_s
       else
         return val.to_i.to_s+" "+int1.to_s
       end    
     else
       return val.to_s
     end          
   end
   
   if val<0
     if val.to_i<0
       int1=val-val.to_i
       if int1==0
         return "("+val.to_i.to_s+")"
       else
         return "("+val.to_i.to_s+" "+int1.to_s+")"
       end    
     else
       return "("+val.to_s+")"
     end          
   end
   
   if val==0
       return valr.to_s       
   end   
end


def mulzero(val1,val2)
  val3=val1.split("/")[1].to_i
  val4=val2.split("/")[1].to_i
  
  return "0/"+(val3*val4).to_s
end


puts change(first)+"+"+change(second)+"="+change(first.to_r+second.to_r)
puts change(first)+"-"+change(second)+"="+change(first.to_r-second.to_r)

if second.to_r==0 or first.to_r==0
	puts change(first)+"*"+change(second)+"="+mulzero(first,second)
else
	puts change(first)+"*"+change(second)+"="+change(first.to_r*second.to_r)
end

if second.to_r==0
  puts "Inf"
else
  puts change(first)+"/"+change(second)+"="+change(first.to_r/second.to_r)
end


